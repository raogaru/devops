#!/usr/bin/env python3
"""
bench_proc_calls.py — PostgreSQL procedure/function benchmark runner (psycopg3)

Highlights
----------
- Reads DSN + procedure/function definitions from YAML.
- Reads sample CSV per object: <object_name>.csv from --samples-dir.
- Executes warmup + iterations and records per-call timing.
- Supports capture_mode:
    * procedure + vector: expects refcursor param named 'p_refcur' and FETCH ALL FROM <cursor>
    * procedure + scalar: reads OUT params row from CALL
    * function  + vector: fetches all rows
    * function  + scalar: fetches one row
- IMPORTANT for REFCURSOR:
    Each iteration is executed in a single transaction scope:
        BEGIN; CALL ...; FETCH ALL FROM rc; ROLLBACK/COMMIT;
  Implemented using psycopg3 transaction context manager.
  If commit_each is False (default), we force rollback by raising psycopg.Rollback().

Timeout behavior
----------------
If timeout_ms > 0:
  - SET LOCAL statement_timeout is applied for each call (and for refcursor FETCH ALL).
  - On QueryCanceled, the connection is closed and recreated, then the benchmark continues.
"""

from __future__ import annotations

import argparse
import csv
import json
import math
import os
import random
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
    Procedure/function definition from YAML.

    Many fields are optional: if they are None, the CLI default is used.
    """
    name: str
    kind: str  # "procedure" | "function"
    params: List[ProcParam]

    # Optional per-proc overrides (None -> use CLI defaults)
    param_style: Optional[str] = None                # "named" | "positional"
    capture_mode: Optional[str] = None               # "none" | "vector" | "scalar"
    iterations: Optional[int] = None
    warmup: Optional[int] = None
    shuffle: Optional[bool] = None
    commit_each: Optional[bool] = None
    expected_ms: Optional[float] = None
    timeout_ms: Optional[float] = None


@dataclass
class EffectiveProcConfig:
    """
    Fully-resolved configuration for a single procedure/function after applying:
      YAML overrides (if provided) + CLI defaults.
    """
    name: str
    kind: str
    params: List[ProcParam]

    param_style: str
    capture_mode: str
    expected_ms: float

    iterations: int
    warmup: int
    shuffle: bool
    seed: int

    commit_each: bool
    timeout_ms: float


@dataclass
class RunResult:
    """One recorded (non-warmup) execution of a procedure/function."""
    proc_name: str
    kind: str
    iter_no: int
    sample_row: int
    ok: bool
    duration_ms: float
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
    Convert a string read from CSV into a Python object suitable for psycopg parameter binding.
    """
    if csv_value is None:
        return None

    stripped = csv_value.strip()
    if stripped in NULL_TOKENS:
        return None

    t = pg_type.lower().strip()

    if t in {"int2", "smallint", "int4", "integer", "int8", "bigint", "oid"}:
        return int(stripped)

    if t in {"numeric", "decimal", "float4", "real", "float8", "double precision", "money"}:
        return float(stripped) if ("." in stripped or "e" in stripped.lower()) else int(stripped)

    if t in {"bool", "boolean"}:
        sl = stripped.lower()
        if sl in {"t", "true", "1", "y", "yes"}:
            return True
        if sl in {"f", "false", "0", "n", "no"}:
            return False
        raise ValueError(f"Invalid boolean literal: {stripped}")

    if t == "date":
        return date.fromisoformat(stripped)

    if t in {"timestamp", "timestamp without time zone", "timestamptz", "timestamp with time zone"}:
        return datetime.fromisoformat(stripped)

    if t in {"json", "jsonb"}:
        return json.loads(stripped)

    # For unknown types, send as text
    return stripped


def build_args_from_sample_row(params: List[ProcParam], csv_row: Dict[str, str]) -> List[Any]:
    """
    Convert a CSV row to a positional parameter list (matching the YAML param order).
    Even for named param_style we use positional placeholders (%s) with "name => %s".
    """
    return [parse_csv_literal(csv_row.get(p.name, ""), p.type) for p in params]


# =============================================================================
# SQL generation
# =============================================================================

def build_call_sql(object_name: str, kind: str, param_style: str, params: List[ProcParam]) -> str:
    """
    Generate SQL for a single CALL/SELECT statement.

    Named style:
      CALL sch.p(a => %s::int4, b => %s::text)
      SELECT sch.f(a => %s::int4, b => %s::text)

    Positional style:
      CALL sch.p(%s::int4, %s::text)
      SELECT sch.f(%s::int4, %s::text)
    """
    if param_style not in {"named", "positional"}:
        raise ValueError(f"{object_name}: invalid param_style={param_style}")

    placeholder_parts: List[str] = []
    for p in params:
        if param_style == "named":
            placeholder_parts.append(f"{p.name} => %s::{p.type}")
        else:
            placeholder_parts.append(f"%s::{p.type}")

    arg_list = ", ".join(placeholder_parts)

    if kind == "procedure":
        return f"CALL {object_name}({arg_list})"
    if kind == "function":
        return f"SELECT {object_name}({arg_list})"
    raise ValueError(f"{object_name}: unknown kind={kind}")


def build_execution_preview(cfg: EffectiveProcConfig, call_sql: str, cursor_name: str = "rc") -> str:
    """
    Human-readable preview of the *logical* unit of work for one iteration.
    BEGIN/COMMIT/ROLLBACK are managed by psycopg transaction context manager.
    """
    end_stmt = "COMMIT;" if cfg.commit_each else "ROLLBACK;"

    if cfg.kind == "procedure" and cfg.capture_mode == "vector":
        return "\n".join([
            "BEGIN;",
            f"{call_sql};",
            f"FETCH ALL FROM {cursor_name};",
            end_stmt,
        ])

    return "\n".join([
        "BEGIN;",
        f"{call_sql};",
        end_stmt,
    ])


# =============================================================================
# YAML config + sample CSV loading
# =============================================================================

def load_yaml_config(yaml_path: str) -> Tuple[str, List[ProcDef]]:
    """Load DSN and procedure/function definitions from YAML."""
    with open(yaml_path, "r", encoding="utf-8") as f:
        yaml_obj = yaml.safe_load(f)

    dsn = yaml_obj.get("dsn")
    if not dsn:
        raise ValueError("Missing 'dsn' in YAML config")

    proc_defs: List[ProcDef] = []
    for item in yaml_obj.get("procedures", []):
        obj_name = item["name"]
        obj_kind = (item.get("kind", "procedure") or "procedure").lower()
        if obj_kind not in {"procedure", "function"}:
            raise ValueError(f"{obj_name}: invalid kind={obj_kind} (must be procedure|function)")

        params = [ProcParam(p["name"], p["type"]) for p in item.get("params", [])]

        param_style = item.get("param_style")
        if param_style is not None:
            param_style = str(param_style).lower()

        capture_mode = item.get("capture_mode")
        if capture_mode is not None:
            capture_mode = str(capture_mode).lower()

        proc_defs.append(
            ProcDef(
                name=obj_name,
                kind=obj_kind,
                params=params,
                param_style=param_style,
                capture_mode=capture_mode,
                expected_ms=(float(item["expected_response_time"]) if "expected_response_time" in item else None),
                iterations=(int(item["iterations"]) if "iterations" in item else None),
                warmup=(int(item["warmup"]) if "warmup" in item else None),
                shuffle=(bool(item["shuffle"]) if "shuffle" in item else None),
                commit_each=(bool(item["commit_each"]) if "commit_each" in item else None),
                timeout_ms=(float(item["timeout_ms"]) if "timeout_ms" in item else None),
            )
        )

    if not proc_defs:
        raise ValueError("No procedures/functions defined under 'procedures'")

    return dsn, proc_defs


def load_sample_rows(samples_dir: str, object_name: str, params: List[ProcParam]) -> List[Dict[str, str]]:
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

    if not sample_rows:
        raise ValueError(f"No sample rows in {csv_path}")

    present_cols = set(sample_rows[0].keys())
    missing_cols = [p.name for p in params if p.name not in present_cols]
    if missing_cols:
        raise ValueError(f"{csv_path} missing required columns: {missing_cols}")

    return sample_rows


# =============================================================================
# Statistics + result capture helpers
# =============================================================================

def percentile_summary_ms(durations_ms: List[float]) -> Dict[str, float]:
    """Compute count/avg/min/max and p80/p90/p95/p99 using linear interpolation."""
    if not durations_ms:
        return {}

    sorted_ms = sorted(durations_ms)

    def pct(p: float) -> float:
        if len(sorted_ms) == 1:
            return sorted_ms[0]
        k = (len(sorted_ms) - 1) * p
        f = math.floor(k)
        c = math.ceil(k)
        if f == c:
            return sorted_ms[int(k)]
        return sorted_ms[f] * (c - k) + sorted_ms[c] * (k - f)

    return {
        "count": float(len(sorted_ms)),
        "avg_ms": statistics.mean(sorted_ms),
        "min_ms": min(sorted_ms),
        "p80_ms": pct(0.80),
        "p90_ms": pct(0.90),
        "p95_ms": pct(0.95),
        "p99_ms": pct(0.99),
        "max_ms": max(sorted_ms),
    }


def consume_one_row_if_present(cursor) -> None:
    """If a statement produced a result set, fetch one row to let the server finish cheaply."""
    try:
        if cursor.description is not None:
            cursor.fetchone()
    except Exception:
        pass


def as_string(value: Any) -> str:
    """Convert a captured value into a stable string for CSV output."""
    if value is None:
        return "NULL"
    if isinstance(value, (dict, list)):
        return json.dumps(value, default=str, ensure_ascii=False)
    return str(value)


def fetch_proc_out_as_value(cursor) -> str:
    """For CALL ... with OUT params, Postgres returns a single row containing OUT values."""
    if cursor.description is None:
        return ""
    row = cursor.fetchone()
    if row is None:
        return ""

    if isinstance(row, dict):
        if len(row) == 1:
            return as_string(next(iter(row.values())))
        return json.dumps(row, default=str, ensure_ascii=False)

    return as_string(row)


def fetch_function_scalar_value(cursor) -> str:
    """For scalar function SELECT f(...), fetch first row and stringify it."""
    if cursor.description is None:
        return ""
    row = cursor.fetchone()
    if row is None:
        return ""

    if isinstance(row, dict):
        if len(row) == 1:
            return as_string(next(iter(row.values())))
        return json.dumps(row, default=str, ensure_ascii=False)

    return as_string(row)


def fetch_all_rowcount(cursor) -> int:
    """Fetch all rows and return count (used for vector capture)."""
    if cursor.description is None:
        return 0
    return len(cursor.fetchall())


# =============================================================================
# Benchmark execution
# =============================================================================

def open_connection(dsn: str):
    """Create a new database connection suitable for benchmarking."""
    conn = psycopg.connect(dsn, row_factory=dict_row)
    conn.autocommit = False
    return conn


def resolve_effective_config(
    proc: ProcDef,
    *,
    default_iterations: int,
    default_warmup: int,
    default_shuffle: bool,
    default_param_style: str,
    default_capture_mode: str,
    default_expected_ms: float,
    default_commit_each: bool,
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

    return EffectiveProcConfig(
        name=proc.name,
        kind=proc.kind,
        params=proc.params,
        param_style=param_style,
        capture_mode=capture_mode,
        expected_ms=float(proc.expected_ms if proc.expected_ms is not None else default_expected_ms),
        iterations=int(proc.iterations if proc.iterations is not None else default_iterations),
        warmup=int(proc.warmup if proc.warmup is not None else default_warmup),
        shuffle=bool(proc.shuffle if proc.shuffle is not None else default_shuffle),
        seed=int(seed),
        commit_each=bool(proc.commit_each if proc.commit_each is not None else default_commit_each),
        timeout_ms=float(proc.timeout_ms if proc.timeout_ms is not None else default_timeout_ms),
    )


def print_config_block(cfg: EffectiveProcConfig) -> None:
    """Print effective config for a procedure/function in a readable block."""
    print(f"    CONFIG:")
    print(f"      name={cfg.name}")
    print(f"      kind={cfg.kind}")
    print(f"      param_style={cfg.param_style}")
    print(f"      capture_mode={cfg.capture_mode}")
    print(f"      iterations={cfg.iterations} ")
    print(f"      warmup={cfg.warmup}")
    print(f"      shuffle={cfg.shuffle}")
    print(f"      seed={cfg.seed}")
    print(f"      commit_each={cfg.commit_each}")
    print(f"      timeout_ms={cfg.timeout_ms}")
    print(f"      expected_ms={cfg.expected_ms}")
    print(f"      params={[p.name + ':' + p.type for p in cfg.params]}")


def run_benchmark_for_one_object(
    *,
    dsn: str,
    cfg: EffectiveProcConfig,
    sample_rows: List[Dict[str, str]],
    verbose_params: bool,
) -> List[RunResult]:
    """
    Execute one procedure/function for warmup+iterations calls.

    Capturing behavior is controlled by cfg.capture_mode.
    """
    call_sql = build_call_sql(cfg.name, cfg.kind, cfg.param_style, cfg.params)

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

            if cfg.shuffle and sample_idx:
                rng.shuffle(sample_indexes)

            sample_row = sample_rows[sample_idx]
            args = build_args_from_sample_row(cfg.params, sample_row)

            if verbose_params:
                print(f"    call#={call_no} sample#={sample_idx} args={args}")

            ok = True
            error_text = ""
            timed_out = False
            captured_rowcount = 0
            captured_value = ""

            # Use a stable cursor name for refcursor mode.
            # If you want uniqueness per call: cursor_name = f"benchcur_{call_no}"
            cursor_name = "rc"

            start = time.perf_counter()
            try:
                # One iteration = one transaction scope
                try:
                    with conn.transaction():
                        with conn.cursor() as cur:
                            if cfg.timeout_ms > 0:
                                cur.execute("SET LOCAL statement_timeout = %s", (int(cfg.timeout_ms),))

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

                            # Force rollback unless commit_each is enabled
                            if not cfg.commit_each:
                                raise Rollback()

                except Rollback:
                    # Expected for commit_each=False: iteration ends with rollback
                    pass

            except pg_errors.QueryCanceled as e:
                ok = False
                timed_out = True
                error_text = f"TIMEOUT(QueryCanceled): {e}"
                try:
                    conn.close()
                except Exception:
                    pass
                conn = open_connection(dsn)

            except Exception as e:
                ok = False
                error_text = f"{type(e).__name__}: {e}"
                try:
                    conn.rollback()
                except Exception:
                    try:
                        conn.close()
                    except Exception:
                        pass
                    conn = open_connection(dsn)

            end = time.perf_counter()
            elapsed_ms = (end - start) * 1000.0

            if call_no > cfg.warmup:
                results.append(
                    RunResult(
                        proc_name=cfg.name,
                        kind=cfg.kind,
                        iter_no=call_no - cfg.warmup,
                        sample_row=sample_idx,
                        ok=ok,
                        duration_ms=elapsed_ms,
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


# =============================================================================
# CLI + main
# =============================================================================

def build_arg_parser() -> argparse.ArgumentParser:
    """Create the CLI argument parser."""
    ap = argparse.ArgumentParser(description="PostgreSQL procedure/function benchmark runner (psycopg3)")

    ap.add_argument("--config", required=True, help="YAML file with DSN and procedure/function definitions")
    ap.add_argument("--samples-dir", required=True, help="Directory containing <proc.name>.csv sample files")
    ap.add_argument("--output", default="bench_results.csv", help="Output CSV with per-call timings")

    ap.add_argument("--iterations", type=int, default=100, help="Default recorded iterations per procedure/function")
    ap.add_argument("--warmup", type=int, default=10, help="Default warmup iterations per procedure/function")
    ap.add_argument("--shuffle", action="store_true", help="Default shuffle (true if set)")
    ap.add_argument("--param-style", choices=["named", "positional"], default="named",
                    help="Default param_style if not set per proc in YAML")
    ap.add_argument("--capture-mode", choices=["none", "vector", "scalar"], default="none",
                    help="Default capture_mode if not set per proc in YAML")
    ap.add_argument("--expected-ms", type=float, default=500.0, help="Default expected_ms if not set per proc in YAML")
    ap.add_argument("--commit-each", action="store_true",
                    help="Default commit_each (if not set, default is rollback each call)")
    ap.add_argument("--timeout-ms", type=float, default=0.0,
                    help="Default per-call timeout_ms (0 means no timeout)")
    ap.add_argument("--seed", type=int, default=1234, help="Random seed (used when shuffle is enabled)")
    ap.add_argument("--verbose-params", action="store_true", help="Print parameter values for each call")
    ap.add_argument("--verbose-config", action="store_true",
                    help="Print effective config immediately before running each proc/function")

    return ap


def main() -> int:
    args = build_arg_parser().parse_args()

    dsn, proc_defs = load_yaml_config(args.config)

    all_results: List[RunResult] = []
    effective_cfg_by_name_kind: Dict[Tuple[str, str], EffectiveProcConfig] = {}

    for proc_def in proc_defs:
        effective_cfg = resolve_effective_config(
            proc_def,
            default_iterations=args.iterations,
            default_warmup=args.warmup,
            default_shuffle=args.shuffle,
            default_param_style=args.param_style,
            default_capture_mode=args.capture_mode,
            default_expected_ms=args.expected_ms,
            default_commit_each=args.commit_each,
            default_timeout_ms=args.timeout_ms,
            seed=args.seed,
        )
        effective_cfg_by_name_kind[(effective_cfg.name, effective_cfg.kind)] = effective_cfg

        print(f"\n--------------------------------------------------------------------------------")
        print(f"==> Running {effective_cfg.kind.upper()} {effective_cfg.name}")

        sample_rows = load_sample_rows(args.samples_dir, effective_cfg.name, effective_cfg.params)

        call_sql_preview = build_call_sql(
            effective_cfg.name,
            effective_cfg.kind,
            effective_cfg.param_style,
            effective_cfg.params,
        )

        # Print logical execution preview (BEGIN/CALL/FETCH/ROLLBACK)
        print("    SQL:")
        print(build_execution_preview(effective_cfg, call_sql_preview, cursor_name="rc"))

        if args.verbose_config:
            print_config_block(effective_cfg)
            print(f"      param_count={len(effective_cfg.params)}")
            print(f"      data_samples={len(sample_rows)}")

        print(f"    EXECUTION:")
        run_results = run_benchmark_for_one_object(
            dsn=dsn,
            cfg=effective_cfg,
            sample_rows=sample_rows,
            verbose_params=args.verbose_params,
        )
        all_results.extend(run_results)

        ok_times = [r.duration_ms for r in run_results if r.ok]
        failures = [r for r in run_results if not r.ok]
        timeouts = [r for r in run_results if r.timed_out]

        stats = percentile_summary_ms(ok_times)

        execution_status = "OK" if len(failures) == 0 else "FAILED"
        response_time_status = "OK"
        if stats and stats["p95_ms"] > effective_cfg.expected_ms:
            response_time_status = "FAILED"

        if stats:
            print(
                f"    METRICS:"
                f"\n      success={len(ok_times)} failed={len(failures)} timeouts={len(timeouts)}"
                f"\n      avg={stats['avg_ms']:.3f}ms min={stats['min_ms']:.3f}ms max={stats['max_ms']:.3f}ms"
                f"\n      p80={stats['p80_ms']:.3f}ms p90={stats['p90_ms']:.3f}ms "
                f"p95={stats['p95_ms']:.3f}ms p99={stats['p99_ms']:.3f}ms"
            )
        else:
            print(f"    OK=0 ERR={len(failures)} TIMEOUTS={len(timeouts)} | (no successful timings to summarize)")

        print(
            f"    STATUS: excecution={execution_status} response={response_time_status}  "
            f"expected_p95<={effective_cfg.expected_ms:.3f}ms"
        )
        if failures:
            first = failures[0]
            print(f"    First error: iter={first.iter_no} sample_row={first.sample_row} {first.error}")

    # Write per-call results
    with open(args.output, "w", encoding="utf-8", newline="") as f:
        writer = csv.writer(f)
        writer.writerow([
            "proc_name", "kind", "param_style", "capture_mode",
            "expected_ms", "iterations", "warmup", "commit_each", "timeout_ms", "shuffle",
            "iter_no", "sample_row", "ok", "timed_out", "duration_ms",
            "rowcount", "value", "error",
        ])

        for r in all_results:
            cfg = effective_cfg_by_name_kind.get((r.proc_name, r.kind))
            writer.writerow([
                r.proc_name,
                r.kind,
                cfg.param_style if cfg else "",
                cfg.capture_mode if cfg else "",
                f"{cfg.expected_ms:.3f}" if cfg else "",
                cfg.iterations if cfg else "",
                cfg.warmup if cfg else "",
                cfg.commit_each if cfg else "",
                cfg.timeout_ms if cfg else "",
                cfg.shuffle if cfg else "",
                r.iter_no,
                r.sample_row,
                r.ok,
                r.timed_out,
                f"{r.duration_ms:.6f}",
                r.rowcount,
                r.value,
                r.error,
            ])

    print(f"\nWrote detailed results to: {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

