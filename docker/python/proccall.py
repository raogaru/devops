#!/usr/bin/env python3
"""
bench_proc_calls.py — PostgreSQL procedure/function benchmark runner
"""

from __future__ import annotations

import argparse
import csv
import json
import math
import os
import random
import re
import statistics
import time
from dataclasses import dataclass
from datetime import date, datetime
from typing import Any, Dict, List, Optional, Tuple

import psycopg
import yaml
from psycopg import Rollback
from psycopg import errors as pg_errors
from psycopg import sql as pg_sql
from psycopg.rows import dict_row

RED = "\033[31m"
GREEN = "\033[32m"
YELLOW = "\033[33m"
BLUE = "\033[34m"
RESET = "\033[0m"

# =============================================================================
# Data model
# =============================================================================

@dataclass
class ProcParam:
    """A single procedure/function argument definition from YAML."""
    name: str
    type: str  # PostgreSQL type name (e.g., int4, text, timestamptz, refcursor)


@dataclass
class ProcDef:
    """
    Routine definition from YAML.

    Many fields are optional: if they are None, the CLI default is used.
    """
    name: str
    kind: str  # "procedure" | "function"
    routine_desc: str
    params: List[ProcParam]

    # Optional per-routine overrides (None -> use CLI defaults)
    param_style: Optional[str] = None                # "named" | "positional"
    capture_mode: Optional[str] = None               # "none" | "vector" | "scalar"
    iterations: Optional[int] = None		     # integer
    warmup: Optional[int] = None
    shuffle: Optional[bool] = None                   
    transaction: Optional[str] = None                # "rollback" | "commit"
    expected_ms: Optional[float] = None	             # integer (milli seconds)
    timeout_ms: Optional[float] = None	             # integer (milli seconds)


@dataclass
class EffectiveProcConfig:
    """
    Fully-resolved configuration for a single routine after applying:
      YAML overrides (if provided) + CLI defaults.
    """
    seq: int
    name: str
    kind: str
    routine_desc: str
    params: List[ProcParam]

    param_style: str
    capture_mode: str
    expected_ms: float

    iterations: int
    warmup: int
    shuffle: bool
    seed: int

    transaction: str          # "rollback" | "commit"
    timeout_ms: float


@dataclass
class RunResult:
    """One recorded (non-warmup) execution of a routine."""
    seq: int
    routine_name: str
    routine_type: str
    routine_desc: str
    iter_no: int
    sample_row: int
    ok: bool
    elapsed_ms: float
    error: str
    rowcount: int = 0     # used for vector capture
    value: str = ""       # used for scalar capture
    timed_out: bool = False


# =============================================================================
# Parsing / casting helpers
# =============================================================================

NULL_TOKENS = {"", "null", "NULL", "none", "None", "\\N"}


def parse_csv_literal(csv_value: str, pg_type: str) -> Any:
    """
    Convert CSV cell string -> Python value suitable for psycopg parameter binding.
    Keeps it conservative: if we don't recognize a type, return the raw string.
    """
    if csv_value is None:
        return None

    v = str(csv_value)
    if v in NULL_TOKENS:
        return None

    t = (pg_type or "").lower()

    # Common numeric types
    if any(x in t for x in ["int", "serial", "smallint", "bigint"]):
        return int(v)
    if any(x in t for x in ["numeric", "decimal", "real", "double", "float"]):
        return float(v)

    # Booleans
    if t in {"bool", "boolean"}:
        return v.lower() in {"1", "t", "true", "y", "yes"}

    # Dates/times (leave as string; PG can cast)
    if any(x in t for x in ["date", "time", "timestamp", "timestamptz", "interval"]):
        return v

    # JSON/JSONB
    if t in {"json", "jsonb"}:
        try:
            return json.loads(v)
        except Exception:
            return v

    # UUID (leave as string)
    if "uuid" in t:
        return v

    # refcursor should be passed as cursor name string
    if "refcursor" in t:
        return v

    return v


def build_args_from_sample_row(params: List[ProcParam], sample_row: Dict[str, str]) -> List[Any]:
    """Build ordered args list from a CSV sample row (parameter order is YAML order)."""
    args: List[Any] = []
    for p in params:
        if p.name not in sample_row:
            raise ValueError(f"Sample row missing required column: {p.name}")
        args.append(parse_csv_literal(sample_row[p.name], p.type))
    return args


def open_connection(dsn: str) -> psycopg.Connection:
    """Open a new psycopg connection with dict_row cursor factory by default."""
    return psycopg.connect(dsn, row_factory=dict_row)


def build_call_sql(name: str, kind: str, param_style: str, params: List[ProcParam]) -> str:
    """
    Build CALL/SELECT statement for procedure/function.
    - named:   CALL p(a => %s, b => %s)
    - positional: CALL p(%s, %s)
    """
    kind_l = (kind or "").lower()
    if kind_l not in {"procedure", "function"}:
        raise ValueError(f"{name}: invalid kind={kind}")

    style_l = (param_style or "").lower()
    if style_l not in {"named", "positional"}:
        raise ValueError(f"{name}: invalid param_style={param_style}")

    placeholders: List[str] = []
    if style_l == "named":
        for p in params:
            placeholders.append(f"{p.name} => %s")
    else:
        placeholders = ["%s"] * len(params)

    args_sql = ", ".join(placeholders)
    if kind_l == "procedure":
        return f"CALL {name}({args_sql})"
    else:
        return f"SELECT * FROM {name}({args_sql})"


def consume_one_row_if_present(cur: psycopg.Cursor) -> None:
    """Consume one row if the cursor produced a result (some CALLs may return)."""
    try:
        cur.fetchone()
    except Exception:
        return


def fetch_all_rowcount(cur: psycopg.Cursor) -> int:
    """Fetch all rows and return the number of rows fetched."""
    rows = cur.fetchall()
    return len(rows) if rows else 0


def fetch_function_scalar_value(cur: psycopg.Cursor) -> str:
    """Read first cell of first row as a scalar return (stringified)."""
    row = cur.fetchone()
    if not row:
        return ""
    if isinstance(row, dict):
        if not row:
            return ""
        return str(next(iter(row.values())))
    if isinstance(row, (list, tuple)):
        return str(row[0]) if row else ""
    return str(row)


def fetch_proc_out_as_value(cur: psycopg.Cursor) -> str:
    """
    For procedures that return OUT params as a row (driver-dependent), attempt to read one row.
    """
    row = cur.fetchone()
    if not row:
        return ""
    if isinstance(row, dict):
        return json.dumps(row, ensure_ascii=False, default=str)
    if isinstance(row, (list, tuple)):
        return json.dumps(list(row), ensure_ascii=False, default=str)
    return str(row)


def percentile(values: List[float], p: float) -> float:
    """Compute percentile using linear interpolation (0<=p<=100)."""
    if not values:
        return 0.0
    if p <= 0:
        return min(values)
    if p >= 100:
        return max(values)

    xs = sorted(values)
    k = (len(xs) - 1) * (p / 100.0)
    f = math.floor(k)
    c = math.ceil(k)
    if f == c:
        return xs[int(k)]
    d0 = xs[int(f)] * (c - k)
    d1 = xs[int(c)] * (k - f)
    return d0 + d1


def percentile_summary_ms(values: List[float]) -> Dict[str, float]:
    """Return avg/min/max and common percentiles. Empty dict if no values."""
    if not values:
        return {}

    return {
        "avg_ms": statistics.mean(values),
        "min_ms": min(values),
        "max_ms": max(values),
        "p80_ms": percentile(values, 80),
        "p90_ms": percentile(values, 90),
        "p95_ms": percentile(values, 95),
        "p99_ms": percentile(values, 99),
    }


def build_execution_preview(cfg: EffectiveProcConfig, call_sql: str, cursor_name: str = "rc") -> str:
    """Human-readable preview of the logical execution steps."""
    begin_stmt = "BEGIN;"
    end_stmt = "COMMIT;" if cfg.transaction == "commit" else "ROLLBACK;"

    if cfg.kind == "procedure" and cfg.capture_mode == "vector":
        return "\n".join(
            [
                f"  {begin_stmt}",
                f"  {call_sql}",
                f"  FETCH ALL FROM {cursor_name};",
                f"  {end_stmt}",
            ]
        )
    return "\n".join(
        [
            f"  {begin_stmt}",
            f"  {call_sql}",
            f"  {end_stmt}",
        ]
    )


def load_yaml_config(yaml_path: str) -> Tuple[str, List[ProcDef]]:
    """Load DSN and routine definitions from YAML."""
    with open(yaml_path, "r", encoding="utf-8") as f:
        yaml_obj = yaml.safe_load(f)

    dsn = yaml_obj.get("dsn")
    if not dsn:
        raise ValueError("Missing 'dsn' in YAML config")

    # Back-compat: allow either 'procedures' (older) or 'routines' (newer)
    items = yaml_obj.get("routines")
    if items is None:
        items = yaml_obj.get("procedures", [])

    proc_defs: List[ProcDef] = []
    for item in items:
        obj_name = item.get("routine_name") or item.get("name")
        if not obj_name:
            raise ValueError("Routine entry is missing 'routine_name'")

        obj_kind = (item.get("routine_type") or item.get("kind") or "procedure")
        obj_kind = str(obj_kind).lower()
        if obj_kind not in {"procedure", "function"}:
            raise ValueError(f"{obj_name}: invalid routine_type={obj_kind} (must be procedure|function)")

        routine_desc = str(item.get("routine_desc") or "").strip()

        params = [ProcParam(p["name"], p["type"]) for p in item.get("params", [])]

        param_style = item.get("param_style")
        if param_style is not None:
            param_style = str(param_style).lower()

        capture_mode = item.get("capture_mode")
        if capture_mode is not None:
            capture_mode = str(capture_mode).lower()

        # Transaction behavior:
        # - New: 'transaction': commit|rollback
        # - Old: 'commit_each': true|false  (true => commit, false => rollback)
        txn = item.get("transaction")
        if txn is not None:
            txn = str(txn).lower()
        elif "commit_each" in item:
            txn = "commit" if bool(item.get("commit_each")) else "rollback"
        else:
            txn = None

        proc_defs.append(
            ProcDef(
                name=obj_name,
                kind=obj_kind,
                routine_desc=routine_desc,
                params=params,
                param_style=param_style,
                capture_mode=capture_mode,
                expected_ms=(float(item["expected_ms"]) if "expected_ms" in item else None),
                iterations=(int(item["iterations"]) if "iterations" in item else None),
                warmup=(int(item["warmup"]) if "warmup" in item else None),
                shuffle=(bool(item["shuffle"]) if "shuffle" in item else None),
                transaction=txn,
                timeout_ms=(float(item["timeout_ms"]) if "timeout_ms" in item else None),
            )
        )

    if not proc_defs:
        raise ValueError("No routines defined under 'routines' (or 'procedures')")

    return dsn, proc_defs


def load_sample_rows(samples_dir: str, object_name: str, params: List[ProcParam], *, debug: bool = False) -> List[Dict[str, str]]:
    """
    Load sample data from <samples_dir>/<object_name>.csv.
    Validates required parameter columns exist.
    """
    csv_filename = f"{object_name}.csv"
    csv_path = os.path.join(samples_dir, csv_filename)
    if not os.path.exists(csv_path):
        raise FileNotFoundError(f"Sample file not found for {object_name}: {csv_path}")


    sample_rows: List[Dict[str, str]] = []
    with open(csv_path, "r", encoding="utf-8", newline="") as f:
        reader = csv.DictReader(f)
        for row in reader:
            sample_rows.append(row)

    if debug and sample_rows:
        print(f"SAMPLE DATA:")
        print(f"  sample csv: {csv_path}")
        print(f"  sample rows: {len(sample_rows)}")
        print(f"  sample columns: {list(sample_rows[0].keys())}")

    if not sample_rows:
        raise ValueError(f"Sample file for {object_name} is empty: {csv_path}")

    required_cols = {p.name for p in params}
    csv_cols = set(sample_rows[0].keys())
    missing = required_cols - csv_cols
    if missing:
        raise ValueError(f"{object_name}: sample file missing columns: {sorted(missing)}")

    return sample_rows


def resolve_effective_config(
    proc: ProcDef,
    *,
    seq: int,
    default_iterations: int,
    default_warmup: int,
    default_shuffle: bool,
    default_param_style: str,
    default_capture_mode: str,
    default_expected_ms: float,
    default_transaction: str,
    default_timeout_ms: float,
    seed: int,
) -> EffectiveProcConfig:
    """Apply YAML overrides (if present) on top of CLI defaults."""
    param_style = (proc.param_style or default_param_style).lower()
    if param_style not in {"named", "positional"}:
        raise ValueError(f"{proc.name}: invalid effective param_style={param_style}")

    capture_mode = (proc.capture_mode or default_capture_mode or "none").lower()
    if capture_mode not in {"none", "vector", "scalar"}:
        raise ValueError(f"{proc.name}: invalid effective capture_mode={capture_mode}")

    transaction = (proc.transaction or default_transaction or "rollback").lower()
    if transaction not in {"rollback", "commit"}:
        raise ValueError(f"{proc.name}: invalid effective transaction={transaction} (must be commit|rollback)")

    return EffectiveProcConfig(
        seq=int(seq),
        name=proc.name,
        kind=proc.kind,
        routine_desc=proc.routine_desc or "",
        params=proc.params,
        param_style=param_style,
        capture_mode=capture_mode,
        expected_ms=float(proc.expected_ms if proc.expected_ms is not None else default_expected_ms),
        iterations=int(proc.iterations if proc.iterations is not None else default_iterations),
        warmup=int(proc.warmup if proc.warmup is not None else default_warmup),
        shuffle=bool(proc.shuffle if proc.shuffle is not None else default_shuffle),
        seed=int(seed),
        transaction=transaction,
        timeout_ms=float(proc.timeout_ms if proc.timeout_ms is not None else default_timeout_ms),
    )


def print_config_block(cfg: EffectiveProcConfig) -> None:
    """Print effective config for a routine in a readable block."""
    print("CONFIG:")
    print(f"  seq={cfg.seq}")
    print(f"  routine_name={cfg.name}")
    print(f"  routine_type={cfg.kind}")
    print(f"  routine_desc={cfg.routine_desc}")
    print(f"  param_style={cfg.param_style}")
    print(f"  capture_mode={cfg.capture_mode}")
    print(f"  iterations={cfg.iterations}")
    print(f"  warmup={cfg.warmup}")
    print(f"  shuffle={cfg.shuffle}")
    print(f"  seed={cfg.seed}")
    print(f"  transaction={cfg.transaction}")
    print(f"  timeout_ms={cfg.timeout_ms}")
    print(f"  expected_ms={cfg.expected_ms}")
    print(f"  params={[p.name + ':' + p.type for p in cfg.params]}")


def run_benchmark_for_one_object(
    *,
    dsn: str,
    cfg: EffectiveProcConfig,
    sample_rows: List[Dict[str, str]],
    verbose_params: bool,
    debug: bool,
) -> List[RunResult]:
    """
    Execute one procedure/function for warmup+iterations calls.

    Capturing behavior is controlled by cfg.capture_mode.
    """
    call_sql = build_call_sql(cfg.name, cfg.kind, cfg.param_style, cfg.params)
    if debug:
        print(f"  SQL={call_sql}")

    rng = random.Random(cfg.seed)
    sample_indexes = list(range(len(sample_rows)))
    if cfg.shuffle:
        rng.shuffle(sample_indexes)

    results: List[RunResult] = []
    conn = open_connection(dsn)

    try:
        total_calls = cfg.warmup + cfg.iterations

        for call_no in range(1, total_calls + 1):
            sample_idx = sample_indexes[(call_no - 1) % len(sample_indexes)]
            sample_row = sample_rows[sample_idx]
            args = build_args_from_sample_row(cfg.params, sample_row)

            if verbose_params:
                if call_no > cfg.warmup:
                    print(f"  call#={call_no}  sample#={sample_idx} args={args}")
                else:
                    print(f"  warm#={call_no}  sample#={sample_idx} args={args}")

            ok = True
            error_text = ""
            timed_out = False
            captured_rowcount = 0
            captured_value = ""

            # Stable cursor name for refcursor mode.
            cursor_name = "rc"

            start = time.perf_counter()
            try:
                # One iteration = one transaction scope
                try:
                    with conn.transaction():
                        with conn.cursor() as cur:
                            if cfg.timeout_ms > 0:
                                cur.execute(f"SET LOCAL statement_timeout = {int(cfg.timeout_ms)}")

                            # --- Capture modes ---
                            if cfg.kind == "procedure" and cfg.capture_mode == "vector":
                                cursor_param_index = next(
                                    (i for i, p in enumerate(cfg.params) if p.name == "p_refcur"), None
                                )
                                if cursor_param_index is None:
                                    raise ValueError(
                                        f"{cfg.name}: capture_mode=vector requires refcursor param named 'p_refcur'"
                                    )

                                # Pass cursor name so the procedure opens that cursor in THIS transaction
                                args[cursor_param_index] = cursor_name

                                cur.execute(call_sql, args)

                                fetch_stmt = pg_sql.SQL("FETCH ALL FROM {}").format(pg_sql.Identifier(cursor_name))
                                cur.execute(fetch_stmt)
                                captured_rowcount = fetch_all_rowcount(cur)

                                # Optional CLOSE (end of transaction will close anyway)
                                try:
                                    close_stmt = pg_sql.SQL("CLOSE {}").format(pg_sql.Identifier(cursor_name))
                                    cur.execute(close_stmt)
                                except Exception:
                                    pass

                            elif cfg.kind == "procedure" and cfg.capture_mode == "scalar":
                                cur.execute(call_sql, args)
                                captured_value = fetch_proc_out_as_value(cur)

                            elif cfg.kind == "function" and cfg.capture_mode == "vector":
                                cur.execute(call_sql, args)
                                captured_rowcount = fetch_all_rowcount(cur)

                            elif cfg.kind == "function" and cfg.capture_mode == "scalar":
                                cur.execute(call_sql, args)
                                captured_value = fetch_function_scalar_value(cur)

                            else:
                                cur.execute(call_sql, args)
                                consume_one_row_if_present(cur)

                            # Force rollback unless transaction=commit
                            if cfg.transaction != "commit":
                                raise Rollback()

                except Rollback:
                    # Expected for transaction=rollback: iteration ends with rollback
                    pass

            except pg_errors.QueryCanceled as e:
                ok = False
                timed_out = True
                error_text = f"QueryCanceled: {e}"
                # Connection is in aborted state; close and reopen
                try:
                    conn.close()
                except Exception:
                    pass
                conn = open_connection(dsn)

            except Exception as e:
                ok = False
                error_text = f"{type(e).__name__}: {e}"

                # If the connection is broken, reopen to continue
                try:
                    if conn.closed:
                        conn = open_connection(dsn)
                except Exception:
                    try:
                        conn.close()
                    except Exception:
                        pass
                    conn = open_connection(dsn)

            end = time.perf_counter()
            elapsed_ms = (end - start) * 1000.0

            if debug:
                print(f"        ok={ok} timed_out={timed_out} elapsed_ms={elapsed_ms} rowcount={captured_rowcount}")


            if call_no > cfg.warmup:
                results.append(
                    RunResult(
                        seq=cfg.seq,
                        routine_name=cfg.name,
                        routine_type=cfg.kind,
                        routine_desc=cfg.routine_desc,
                        iter_no=call_no - cfg.warmup,
                        sample_row=sample_idx,
                        ok=ok,
                        elapsed_ms=elapsed_ms,
                        error=error_text,
                        rowcount=captured_rowcount,
                        value=captured_value,
                        timed_out=timed_out,
                    )
                )

    finally:
        try:
            conn.close()
        except Exception:
            pass

    return results


def summarize_proc(run_results: List[RunResult], cfg: EffectiveProcConfig) -> Dict[str, Any]:
    """
    Build a one-row-per-procedure summary suitable for summary.csv.
    Percentiles are computed from successful executions only.
    """
    exec_good_a = [r.elapsed_ms for r in run_results if r.ok]
    exec_fail_a = [r for r in run_results if not r.ok]
    exec_timeout_a = [r for r in run_results if r.timed_out]

    total_ms = sum(r.elapsed_ms for r in run_results)
    # TPS: successful executions per second over total recorded time.
    tps = (len(exec_good_a) / (total_ms / 1000.0)) if total_ms > 0 else 0.0

    stats = percentile_summary_ms(exec_good_a)  # {} if none

    execution_pass = (len(exec_fail_a) == 0)
    response_pass = True
    if stats and stats.get("p95_ms", 0.0) > cfg.expected_ms:
        response_pass = False

    overall_pass = execution_pass and response_pass

    def fmt_stat(key: str) -> str:
        return f"{stats[key]:.6f}" if stats and key in stats else ""

    return {
        "seq": cfg.seq,
        "routine_name": cfg.name,
        "routine_type": cfg.kind,
        "routine_desc": cfg.routine_desc,
        "param_style": cfg.param_style,
        "capture_mode": cfg.capture_mode,
        "transaction": cfg.transaction,
        "shuffle": cfg.shuffle,
        "timeout_ms": cfg.timeout_ms,
        "expected_ms": f"{cfg.expected_ms:.3f}",
        "warmup": cfg.warmup,
        "iterations": cfg.iterations,

        "exec_total": len(run_results),
        "exec_success": len(exec_good_a),
        "exec_failed": len(exec_fail_a),
        "exec_timeouts": len(exec_timeout_a),
        "tps": f"{tps:.3f}",

        "total_ms": f"{total_ms:.3f}",
        "avg_ms": fmt_stat("avg_ms"),
        "min_ms": fmt_stat("min_ms"),
        "max_ms": fmt_stat("max_ms"),
        "p80_ms": fmt_stat("p80_ms"),
        "p90_ms": fmt_stat("p90_ms"),
        "p95_ms": fmt_stat("p95_ms"),
        "p99_ms": fmt_stat("p99_ms"),

        "execution_pass": execution_pass,
        "response_pass": response_pass,
        "overall_pass": overall_pass,
        "first_error": exec_fail_a[0].error if exec_fail_a else "",
    }


# =============================================================================
# CLI / main
# =============================================================================

def build_arg_parser() -> argparse.ArgumentParser:
    """Create the CLI argument parser."""
    ap = argparse.ArgumentParser(description="PostgreSQL procedure/function benchmark runner (psycopg3)")

    ap.add_argument("--config", required=True, help="YAML file with DSN and routine definitions")
    ap.add_argument("--samples-dir", required=True, help="Directory containing <routine_name>.csv sample files")
    ap.add_argument("--details-output", default="bench_results.csv", help="Output CSV with per-call timings")
    ap.add_argument("--summary-output", default="summary.csv",
                    help="Output CSV with one-row-per-proc summary metrics")

    ap.add_argument("--iterations", type=int, default=100, help="Default recorded iterations per procedure/function")
    ap.add_argument("--warmup", type=int, default=10, help="Default warmup iterations per procedure/function")
    ap.add_argument("--shuffle", action="store_true", help="Default 'shuffle (true if set)")
    ap.add_argument("--param-style", choices=["named", "positional"], default="named",
                    help="Default param_style if not set per proc in YAML")
    ap.add_argument("--capture-mode", choices=["none", "vector", "scalar"], default="none",
                    help="Default capture_mode if not set per proc in YAML")
    ap.add_argument("--expected-ms", type=float, default=500.0, help="Default expected_ms if not set per proc in YAML")
    ap.add_argument("--transaction", choices=["rollback", "commit"], default="rollback",
                    help="Default transaction behavior: rollback (default) or commit")
    ap.add_argument("--timeout-ms", type=float, default=0.0,
                    help="Default per-call timeout_ms (0 means no timeout)")
    ap.add_argument("--seed", type=int, default=1234, help="Random seed (used when shuffle is enabled)")
    ap.add_argument("--verbose-params", action="store_true", help="Print parameter values for each call")
    ap.add_argument("--verbose-config", action="store_true",
                    help="Print effective config immediately before running each routine")
    ap.add_argument("--debug", action="store_true",
                    help="Enable debug logging (implies --verbose-config and additional execution details)")

    return ap


def mask_dsn(dsn: str) -> str:
    """Best-effort masking of passwords in DSN strings for logs."""
    if not dsn:
        return dsn
    # key=value style
    dsn = re.sub(r"(password\s*=\s*)([^\s]+)", r"\1***", dsn, flags=re.IGNORECASE)
    # URI style: postgresql://user:pass@host/db
    dsn = re.sub(r"(://[^/:\s]+:)([^@/\s]+)(@)", r"\1***\3", dsn)
    return dsn


def main() -> int:
    args = build_arg_parser().parse_args()

    if args.debug:
        args.verbose_config = True

    dsn, proc_defs = load_yaml_config(args.config)

    if args.debug:
        print(f"INPUT:")
        print(f"  config_file: {args.config}")
        print(f"  dsn: {mask_dsn(dsn)}")
        print(f"  details output: {args.details_output}")
        print(f"  summary output: {args.summary_output}")
        print(f"  routines={len(proc_defs)}")

    all_results: List[RunResult] = []
    per_proc_results: Dict[Tuple[str, str], List[RunResult]] = {}
    effective_cfg_by_name_kind: Dict[Tuple[str, str], EffectiveProcConfig] = {}

    for seq, proc_def in enumerate(proc_defs, start=1):
        effective_cfg = resolve_effective_config(
            proc_def,
            seq=seq,
            default_iterations=args.iterations,
            default_warmup=args.warmup,
            default_shuffle=args.shuffle,
            default_param_style=args.param_style,
            default_capture_mode=args.capture_mode,
            default_expected_ms=args.expected_ms,
            default_transaction=args.transaction,
            default_timeout_ms=args.timeout_ms,
            seed=args.seed,
        )
        effective_cfg_by_name_kind[(effective_cfg.name, effective_cfg.kind)] = effective_cfg

        print(f"\n--------------------------------------------------------------------------------")
        desc_part = f" - {effective_cfg.routine_desc}" if effective_cfg.routine_desc else ""
        print(f"==> [{effective_cfg.seq}] Running {effective_cfg.kind.upper()} {effective_cfg.name}{desc_part}")

        sample_rows = load_sample_rows(args.samples_dir, effective_cfg.name, effective_cfg.params, debug=args.debug)

        call_sql_preview = build_call_sql(
            effective_cfg.name,
            effective_cfg.kind,
            effective_cfg.param_style,
            effective_cfg.params,
        )

        # Print logical execution preview (BEGIN/CALL/FETCH/ROLLBACK)
        print("SQL:")
        print(build_execution_preview(effective_cfg, call_sql_preview, cursor_name="rc"))

        if args.verbose_config:
            print_config_block(effective_cfg)

        print(f"EXECUTION:")
        print(f"  Start time:", datetime.now())

        run_results = run_benchmark_for_one_object(
            dsn=dsn,
            cfg=effective_cfg,
            sample_rows=sample_rows,
            verbose_params=args.verbose_params or args.debug,
            debug=args.debug,
        )
        per_proc_results[(effective_cfg.name, effective_cfg.kind)] = run_results
        all_results.extend(run_results)

        exec_good_a = [r.elapsed_ms for r in run_results if r.ok]
        exec_fail_a = [r for r in run_results if not r.ok]
        exec_timeout_a = [r for r in run_results if r.timed_out]

        stats = percentile_summary_ms(exec_good_a)

        execution_status = "OK" if len(exec_fail_a) == 0 else "FAILED"
        response_time_status = "OK"
        if stats and stats["p95_ms"] > effective_cfg.expected_ms:
            response_time_status = "FAILED"

        print(f"  End time:", datetime.now())
        if stats:
            print(
                f"METRICS:"
                f"\n  exec_success={len(exec_good_a)} exec_failed={len(exec_fail_a)} exec_timeouts={len(exec_timeout_a)}"
                f" tps={(len(exec_good_a)/(sum(r.elapsed_ms for r in run_results)/1000.0)) if sum(r.elapsed_ms for r in run_results)>0 else 0.0:.3f}"
                f"\n  tot={sum(r.elapsed_ms for r in run_results):.3f}ms avg={stats['avg_ms']:.3f}ms"
                f" min={stats['min_ms']:.3f}ms max={stats['max_ms']:.3f}ms"
                f"\n  p80={stats['p80_ms']:.3f}ms p90={stats['p90_ms']:.3f}ms"
                f" p95={stats['p95_ms']:.3f}ms p99={stats['p99_ms']:.3f}ms"
            )
        else:
            print(
                f"    METRICS:"
                f"\n      exec_success={len(exec_good_a)} exec_failed={len(exec_fail_a)} exec_timeouts={len(exec_timeout_a)}"
            )

        print(
            f"  execution={execution_status} response={response_time_status} "
            f"(expected_p95<={effective_cfg.expected_ms:.3f}ms"
        )
        if exec_fail_a:
            first = exec_fail_a[0]
            print(f"    First error: iter={first.iter_no} sample_row={first.sample_row} {first.error}")

    print(f"\n--------------------------------------------------------------------------------")
    # Write per-call results
    with open(args.details_output, "w", encoding="utf-8", newline="") as f:
        writer = csv.writer(f)
        writer.writerow([
            "seq", "routine_name", "routine_type", "routine_desc",
            "param_style", "capture_mode","transaction","shuffle",
            "timeout_ms", "expected_ms", "warmup",  "iterations", 
            "iter_no", "sample_row#", "exec_success", "exec_timed_out", "elapsed_ms",
            "rowcount", "value", "error",
        ])

        for r in all_results:
            cfg = effective_cfg_by_name_kind.get((r.routine_name, r.routine_type))
            writer.writerow([
                r.seq,
                r.routine_name,
                r.routine_type,
                r.routine_desc,
                cfg.param_style if cfg else "",
                cfg.capture_mode if cfg else "",
                cfg.transaction if cfg else "",
                cfg.shuffle if cfg else "",
                cfg.timeout_ms if cfg else "",
                f"{cfg.expected_ms:.3f}" if cfg else "",
                cfg.warmup if cfg else "",
                cfg.iterations if cfg else "",
                r.iter_no,
                r.sample_row,
                r.ok,
                r.timed_out,
                f"{r.elapsed_ms:.3f}",
                r.rowcount,
                r.value,
                r.error,
            ])

    print(f"Wrote detailed results to: {args.details_output}")

    # Write per-proc summary results
    with open(args.summary_output, "w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=[
                "seq", "routine_name", "routine_type", "routine_desc",
                "param_style", "capture_mode", "transaction","shuffle","timeout_ms", "expected_ms",
                "warmup", "iterations", "exec_total", "exec_success", "exec_failed", "exec_timeouts",
                "tps", "total_ms", "avg_ms", "min_ms", "max_ms", "p80_ms", "p90_ms", "p95_ms", "p99_ms",
                "execution_pass", "response_pass", "overall_pass",
                "first_error",
            ],
        )
        writer.writeheader()

        for (name, kind), cfg in effective_cfg_by_name_kind.items():
            run_results = per_proc_results.get((name, kind), [])
            writer.writerow(summarize_proc(run_results, cfg))

    print(f"Wrote summary results to: {args.summary_output}")
    print(f"Completed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

