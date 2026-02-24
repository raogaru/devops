#!/usr/bin/env python3
# proccall.py — PostgreSQL procedure/function benchmark runner

from __future__ import annotations

import argparse
import csv
import json
import math
import os
import random
import string
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
NULL_TOKENS = {"", "null", "NULL", "none", "None", "\\N"}

# =============================================================================
# Data model
# =============================================================================

# --------------------------------------------------------------------------------
# Routine Parameters Definition from YAML
@dataclass
class RoutineParameters:
    name: str
    type: str


# --------------------------------------------------------------------------------
# Routine Definition from YAML
@dataclass
class RoutineDefinition:
    routine_name: str
    routine_kind: str  # "procedure" | "function"
    routine_desc: str
    parameters: List[RoutineParameters]

    # Optional per-routine overrides (None -> use CLI defaults)
    param_style: Optional[str] = None                # "named" | "positional"
    capture_mode: Optional[str] = None               # "none" | "vector" | "scalar"
    iterations: Optional[int] = None		     # integer - number of calls to be made
    warmup: Optional[int] = None		     # default 0
    shuffle: Optional[bool] = None                   # shuffle sample data. default false
    transaction: Optional[str] = None                # "rollback" | "commit"
    expected_ms: Optional[float] = None	             # integer (milli seconds)
    timeout_ms: Optional[float] = None	             # integer (milli seconds)


# --------------------------------------------------------------------------------
# Fully-resolved configuration for a single routine after applying YAML overrides + CLI defaults.
@dataclass
class EffectiveRoutineConfig:
    routine_seq: int
    routine_name: str
    routine_kind: str
    routine_desc: str
    parameters: List[RoutineParameters]
    param_style: str
    capture_mode: str
    expected_ms: float
    iterations: int
    warmup: int
    shuffle: bool
    seed: int
    transaction: str
    timeout_ms: float


# --------------------------------------------------------------------------------
# One recorded (non-warmup) execution of a routine.
@dataclass
class RunResult:
    routine_seq: int
    routine_name: str
    routine_kind: str
    routine_desc: str
    iter_no: int
    sample_row: int
    exec_good: bool
    elapsed_ms: float
    error_text: str
    rowcount: int = 0     # used for vector capture
    value: str = ""       # used for scalar capture
    timed_out: bool = False


# =============================================================================
# Parsing / casting helpers
# =============================================================================


# --------------------------------------------------------------------------------
# Convert CSV cell string -> Python value suitable for psycopg parameter binding.
def parse_csv_literal(csv_value: str, pg_type: str) -> Any:
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


# --------------------------------------------------------------------------------
# Build ordered param_values list from a CSV sample row (parameter order is YAML order).
def build_param_values_from_sample_row(parameters: List[RoutineParameters], sample_row: Dict[str, str]) -> List[Any]:
    param_values_from_csv: List[Any] = []
    for p in parameters:
        if p.name not in sample_row:
            raise ValueError(f"Sample row missing required column: {p.name}")
        param_values_from_csv.append(parse_csv_literal(sample_row[p.name], p.type))
    return param_values_from_csv


# --------------------------------------------------------------------------------
# Open a new psycopg connection with dict_row cursor factory by default.
def open_connection(dsn: str) -> psycopg.Connection:
    return psycopg.connect(dsn, row_factory=dict_row)


# --------------------------------------------------------------------------------
# Build CALL/SELECT statement for procedure/function.
# param_style=named:   CALL p(a => %s, b => %s)
# param_style=positional: CALL p(%s, %s)
def build_call_sql(
    routine_name: str, 
    routine_kind: str, 
    param_style: str, 
    parameters: List[RoutineParameters]) -> str:

    kind_l = (routine_kind or "").lower()
    if kind_l not in {"procedure", "function"}:
        raise ValueError(f"{routine_name}: invalid routine_kind={routine_kind}")

    style_l = (param_style or "").lower()
    if style_l not in {"named", "positional"}:
        raise ValueError(f"{routine_name}: invalid param_style={param_style}")

    placeholders: List[str] = []
    if style_l == "named":
        for p in parameters:
            placeholders.append(f"{p.name} => %s")
    else:
        placeholders = ["%s"] * len(parameters)

    params_for_sql = ", ".join(placeholders)
    if kind_l == "procedure":
        return f"CALL {routine_name}({params_for_sql})"
    else:
        return f"SELECT * FROM {routine_name}({params_for_sql})"


# --------------------------------------------------------------------------------
# Consume one row if the cursor produced a result (some CALLs may return).
def consume_one_row_if_present(cur: psycopg.Cursor) -> None:
    try:
        cur.fetchone()
    except Exception:
        return

# --------------------------------------------------------------------------------
# Fetch all rows and return the number of rows fetched.
def fetch_all_rowcount(cur: psycopg.Cursor) -> int:
    rows = cur.fetchall()
    return len(rows) if rows else 0


# --------------------------------------------------------------------------------
# Read first cell of first row as a scalar return (stringified)
def fetch_function_scalar_value(cur: psycopg.Cursor) -> str:
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


# --------------------------------------------------------------------------------
# For procedures that return OUT parameters as a row (driver-dependent), attempt to read one row.
def fetch_proc_out_as_value(cur: psycopg.Cursor) -> str:
    row = cur.fetchone()
    if not row:
        return ""
    if isinstance(row, dict):
        return json.dumps(row, ensure_ascii=False, default=str)
    if isinstance(row, (list, tuple)):
        return json.dumps(list(row), ensure_ascii=False, default=str)
    return str(row)


# --------------------------------------------------------------------------------
# Compute percentile using linear interpolation (0<=p<=100).
def percentile(values: List[float], p: float) -> float:
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


# --------------------------------------------------------------------------------
# Return avg/min/max and common percentiles. Empty dict if no values.
def percentile_summary_ms(values: List[float]) -> Dict[str, float]:
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


# --------------------------------------------------------------------------------
# Load DSN and routine definitions from YAML.
def load_yaml_config(
    yaml_path: str,
    p_verbose_config: bool
) -> Tuple[str, List[RoutineDefinition]]:
    with open(yaml_path, "r", encoding="utf-8") as f:
        yaml_obj = yaml.safe_load(f)

    yaml_dsn = yaml_obj.get("dsn")
    if not yaml_dsn:
        raise ValueError("Missing 'dsn' in YAML config")
    if p_verbose_config:
        print(f"YAML:")

    # display dns config
    if yaml_dsn and p_verbose_config:
        print(f"  dsn: configured in YAML")
        dsn_parts = yaml_dsn.split()
        for dsn_part in dsn_parts:
            key, value = dsn_part.split("=", 1)
            if key != "password":
                print(f"    {key}={value}")
            else:
                print(f"    {key}=**********")

    yaml_routines = yaml_obj.get("routines")
    if yaml_routines is None:
        raise ValueError("Missing 'routines' in YAML config")

    if p_verbose_config:
        print(f"  routines: configued in YAML")
        print(f"    routines_count: {len(yaml_routines)}")

    yaml_routine_definitions: List[RoutineDefinition] = []

    routine_seq = 0
    for current_routine in yaml_routines:
        routine_name = current_routine.get("routine_name")
        if not routine_name:
            raise ValueError("Missing 'routine_name' under routines in YAML")

        routine_kind = (current_routine.get("routine_kind") or "procedure")
        routine_kind = str(routine_kind).lower()
        if routine_kind not in {"procedure", "function"}:
            raise ValueError(f"{routine_name}: invalid routine_kind={routine_kind} (must be procedure|function)")
        routine_desc = str(current_routine.get("routine_desc") or "").strip()

        parameters = [RoutineParameters(p["name"], p["type"]) for p in current_routine.get("parameters", [])]

        param_style = current_routine.get("param_style")
        if param_style is not None:
            param_style = str(param_style).lower()

        capture_mode = current_routine.get("capture_mode")
        if capture_mode is not None:
            capture_mode = str(capture_mode).lower()

        transaction = current_routine.get("transaction")
        if transaction is not None:
            transaction = str(transaction).lower()
            if transaction not in {"commit", "rollback"}:
                raise ValueError(f"{routine_name}: invalid transaction={transaction} (must be commit|rollback)")

        yaml_routine_definitions.append(
            RoutineDefinition(
                routine_name=routine_name,
                routine_kind=routine_kind,
                routine_desc=routine_desc,
                parameters=parameters,
                param_style=param_style,
                capture_mode=capture_mode,
                expected_ms=(float(current_routine["expected_ms"]) if "expected_ms" in current_routine else None),
                iterations=(int(current_routine["iterations"]) if "iterations" in current_routine else None),
                warmup=(int(current_routine["warmup"]) if "warmup" in current_routine else None),
                shuffle=(bool(current_routine["shuffle"]) if "shuffle" in current_routine else None),
                transaction=transaction,
                timeout_ms=(float(current_routine["timeout_ms"]) if "timeout_ms" in current_routine else None),
            )
        )
        if p_verbose_config:
            routine_seq = routine_seq+1
            print(f"    {routine_seq}. {routine_kind} {routine_name}")

    if not yaml_routine_definitions:
        raise ValueError("No routines defined under 'routines'")

    return yaml_dsn, yaml_routine_definitions


# --------------------------------------------------------------------------------
# Load sample data from <samples_dir>/<routine_name>.csv.  Validates required parameter columns exist.
def load_sample_rows(
    samples_dir: str, 
    object_name: str, 
    parameters: List[RoutineParameters], 
    p_verbose_sample: bool
) -> List[Dict[str, str]]:

    if p_verbose_sample:
        print(f"SAMPLE:")

    csv_filename = f"{object_name}.csv"
    csv_path = os.path.join(samples_dir, csv_filename)

    if p_verbose_sample:
        print(f"  sample file: {csv_path}")

    if not os.path.exists(csv_path):
        raise FileNotFoundError(f"Sample file {csv_path} not found for {object_name} ")

    sample_rows: List[Dict[str, str]] = []
    with open(csv_path, "r", encoding="utf-8", newline="") as f:
        reader = csv.DictReader(f)
        for row in reader:
            sample_rows.append(row)

    if p_verbose_sample:
        print(f"  sample rows: {len(sample_rows)}")

    if not sample_rows:
        raise ValueError(f"Sample file for {object_name} is empty: {csv_path}")

    csv_cols = set(sample_rows[0].keys())
    if p_verbose_sample:
        print(f"  csvfile columns: {csv_cols} ")

    required_cols = {p.name for p in parameters}
    if p_verbose_sample:
        print(f"  routine columns: {required_cols} ")

    missing_cols = required_cols - csv_cols
    if missing_cols:
        raise ValueError(f"{object_name}: sample file missing columns: {sorted(missing_cols)}")

    if p_verbose_sample:
        print(f"  missing columns: {missing_cols}")

    return sample_rows

# --------------------------------------------------------------------------------
# Apply YAML overrides (if present) on top of CLI defaults.
def resolve_effective_config(
    rd: RoutineDefinition,
    *,
    routine_seq: int,
    cli_args_iterations: int,
    cli_args_warmup: int,
    cli_args_shuffle: bool,
    cli_args_param_style: str,
    cli_args_capture_mode: str,
    cli_args_expected_ms: float,
    cli_args_transaction: str,
    cli_args_timeout_ms: float,
    cli_args_seed: int,
) -> EffectiveRoutineConfig:
    param_style = (rd.param_style or cli_args_param_style).lower()
    if param_style not in {"named", "positional"}:
        raise ValueError(f"{rd.name}: invalid effective param_style={param_style}")

    capture_mode = (rd.capture_mode or cli_args_capture_mode or "none").lower()
    if capture_mode not in {"none", "vector", "scalar"}:
        raise ValueError(f"{rd.routine_name}: invalid effective capture_mode={capture_mode}")

    transaction = (rd.transaction or cli_args_transaction or "rollback").lower()
    if transaction not in {"rollback", "commit"}:
        raise ValueError(f"{rd.routine_name}: invalid effective transaction={transaction} (must be commit|rollback)")

    return EffectiveRoutineConfig(
        routine_seq=int(routine_seq),
        routine_name=rd.routine_name,
        routine_kind=rd.routine_kind,
        routine_desc=rd.routine_desc or "",
        parameters=rd.parameters,
        param_style=param_style,
        capture_mode=capture_mode,
        expected_ms=float(rd.expected_ms if rd.expected_ms is not None else cli_args_expected_ms),
        iterations=int(rd.iterations if rd.iterations is not None else cli_args_iterations),
        warmup=int(rd.warmup if rd.warmup is not None else cli_args_warmup),
        shuffle=bool(rd.shuffle if rd.shuffle is not None else cli_args_shuffle),
        seed=int(cli_args_seed),
        transaction=transaction,
        timeout_ms=float(rd.timeout_ms if rd.timeout_ms is not None else cli_args_timeout_ms),
    )

# --------------------------------------------------------------------------------
# Execute one procedure/function for warmup+iterations calls.
def run_benchmark_for_one_routine(
    *,
    dsn: str,
    cfg: EffectiveRoutineConfig,
    sample_rows: List[Dict[str, str]],
    verbose_params: bool,
    debug: bool,
) -> List[RunResult]:
    call_sql = build_call_sql(cfg.routine_name, cfg.routine_kind, cfg.param_style, cfg.parameters)
    if debug:
        print(f"  SQL={call_sql}")

    rng = random.Random(cfg.seed)
    sample_indexes = list(range(len(sample_rows)))
    if cfg.shuffle:
        rng.shuffle(sample_indexes)

    run_results_array: List[RunResult] = []
    conn = open_connection(dsn)

    try:
        total_calls = cfg.warmup + cfg.iterations

        for call_no in range(1, total_calls + 1):
            sample_idx = sample_indexes[(call_no - 1) % len(sample_indexes)]
            sample_row = sample_rows[sample_idx]
            param_values = build_param_values_from_sample_row(cfg.parameters, sample_row)

            if verbose_params:
                if call_no > cfg.warmup:
                    print(f"  call#={call_no}  sample#={sample_idx} param_values={param_values}")
                else:
                    print(f"  warm#={call_no}  sample#={sample_idx} param_values={param_values}")

            # initialize for each call
            exec_good = True
            error_text = ""
            timed_out = False
            fetched_rowcount = 0
            fetched_value = ""

            # Stable cursor name for refcursor mode.
            cursor_name = "rc"

            exec_start_time = time.perf_counter()
            if debug:
                print(f"           exec_start_time={exec_start_time}")

            try:
                # One iteration = one transaction scope
                try:
                    with conn.transaction():
                        with conn.cursor() as cur:
                            if cfg.timeout_ms > 0:
                                if debug:
                                    print(f"           execute: SET LOCAL statement_timeout = {int(cfg.timeout_ms)}")
                                cur.execute(f"SET LOCAL statement_timeout = {int(cfg.timeout_ms)}")

                            # find refcursor parameter
                            if cfg.routine_kind == "procedure" and cfg.capture_mode == "vector":

                                # identify param_index with parameter name = p_refcur
                                #cursor_param_index = next( (i for i, p in enumerate(cfg.parameters) if p.name == "p_refcur"), None)
                                #if cursor_param_index is None:
                                #    raise ValueError(f"{cfg.routine_name}: refcursor param named 'p_refcur' needed for capture_mode=vecto")
                                #param_values[cursor_param_index] = cursor_name

                                # identify param_index with parameter type = refcursor
                                cursor_param_index = next( (i for i, p in enumerate(cfg.parameters) if p.type and "refcursor" in p.type.lower()), None)
                                if cursor_param_index is None:
                                    raise ValueError(f"{cfg.routine_name}: capture_mode=vector requires refcursor parameter")
                                cursor_name = str(param_values[cursor_param_index])

                                # Validate safe SQL identifier (prevent injection)
                                if not re.match(r"^[A-Za-z_][A-Za-z0-9_]*$", cursor_name):
                                    raise ValueError( f"{cfg.routine_name}: invalid cursor name '{cursor_name}' " f"(must match [A-Za-z_][A-Za-z0-9_]*)")

                                if debug:
                                    print(f"           execute: {call_sql}({param_values})")
                                cur.execute(call_sql, param_values)

                                fetch_stmt = pg_sql.SQL("FETCH ALL FROM {}").format(pg_sql.Identifier(cursor_name))
                                if debug:
                                    print(f"           execute: FETCH ALL FROM {cursor_name}")
                                cur.execute(fetch_stmt)
                                fetched_rowcount = fetch_all_rowcount(cur)
                                if debug:
                                    print(f"           fetched_rowcount={fetched_rowcount}")

                                #Optional CLOSE (end of transaction will close anyway)
                                try:
                                    close_stmt = pg_sql.SQL("CLOSE {}").format(pg_sql.Identifier(cursor_name))
                                    if debug:
                                        print(f"           execute: CLOSE {cursor_name}")
                                    cur.execute(close_stmt)
                                except Exception:
                                    pass

                            elif cfg.routine_kind == "procedure" and cfg.capture_mode == "scalar":
                                if debug:
                                    print(f"           execute: ${call_sql}({param_values})")
                                cur.execute(call_sql, param_values)
                                fetched_value = fetch_proc_out_as_value(cur)
                                if debug:
                                    print(f"           fetched_value={fetched_value}")

                            elif cfg.routine_kind == "function" and cfg.capture_mode == "vector":
                                if debug:
                                    print(f"           execute: ${call_sql}({param_values})")
                                cur.execute(call_sql, param_values)
                                fetched_rowcount = fetch_all_rowcount(cur)
                                if debug:
                                    print(f"           fetched_rowcount={fetched_rowcount}")

                            elif cfg.routine_kind == "function" and cfg.capture_mode == "scalar":
                                if debug:
                                    print(f"           execute: ${call_sql}({param_values})")
                                cur.execute(call_sql, param_values)
                                fetched_value = fetch_function_scalar_value(cur)
                                if debug:
                                    print(f"           fetched_value={fetched_value}")

                            else:
                                cur.execute(call_sql, param_values)
                                consume_one_row_if_present(cur)

                            # Force rollback unless transaction=commit
                            if cfg.transaction != "commit":
                                raise Rollback()
                                if debug:
                                    print(f"           execute: ROLLBACK;")

                except Rollback:
                    # Expected for transaction=rollback: iteration ends with rollback
                    pass

            except pg_errors.QueryCanceled as e:
                exec_good = False
                timed_out = True
                error_text = f"QueryCanceled: {e}"
                # Connection is in aborted state; close and reopen
                try:
                    conn.close()
                except Exception:
                    pass
                conn = open_connection(dsn)

            except Exception as e:
                exec_good = False
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

            exec_end_time = time.perf_counter()
            elapsed_ms = (exec_end_time - exec_start_time) * 1000.0

            if debug:
                print(f"           DEBUG: exec_good={exec_good} timed_out={timed_out} elapsed_ms={elapsed_ms} rowcount={fetched_rowcount}")


            if call_no > cfg.warmup:
                run_results_array.append(
                    RunResult(
                        routine_seq=cfg.routine_seq,
                        routine_name=cfg.routine_name,
                        routine_kind=cfg.routine_kind,
                        routine_desc=cfg.routine_desc,
                        iter_no=call_no - cfg.warmup,
                        sample_row=sample_idx,
                        exec_good=exec_good,
                        elapsed_ms=elapsed_ms,
                        error_text=error_text,
                        rowcount=fetched_rowcount,
                        value=fetched_value,
                        timed_out=timed_out,
                    )
                )

    finally:
        try:
            conn.close()
        except Exception:
            pass

    return run_results_array

# --------------------------------------------------------------------------------
# Build one-row-per-routine summary for summary.csv - Percentiles are computed from successful executions only.
def summarize_routine_results(
    run_results: List[RunResult], 
    cfg: EffectiveRoutineConfig
) -> Dict[str, Any]:
    exec_good_a = [r.elapsed_ms for r in run_results if r.exec_good]
    exec_fail_a = [r for r in run_results if not r.exec_good]
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
        "routine_seq": cfg.routine_seq,
        "routine_name": cfg.routine_name,
        "routine_kind": cfg.routine_kind,
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
        "first_error": exec_fail_a[0].error_text if exec_fail_a else "",
    }

# --------------------------------------------------------------------------------
# Create the CLI argument parser.
def build_cli_arg_parser() -> argparse.ArgumentParser:

    ap = argparse.ArgumentParser(description="PostgreSQL procedure/function benchmark runner)")

    ap.add_argument("--config", required=True, 
                    help="YAML file with DSN and routine definitions")

    ap.add_argument("--samples-dir", required=True, 
                    help="Directory containing <routine_name>.csv sample data CSV files")

    ap.add_argument("--details-output", default="benchmark_details.csv", 
                    help="Output CSV with per-call timings")

    ap.add_argument("--summary-output", default="benchmark_summary.csv",
                    help="Output CSV with one-row-per-proc summary metrics")

    ap.add_argument("--iterations", type=int, default=10, 
                    help="Default iterations per routine if not configured per routine in YAML")

    ap.add_argument("--warmup", type=int, default=1, 
                    help="Default warmup calls per routine if not configured per routine in YAML")

    ap.add_argument("--shuffle", action="store_true", 
                    help="Default 'shuffle sample data if not configured per routine in YAML")

    ap.add_argument("--seed", type=int, default=1234, 
                    help="Random seed (used when shuffle is enabled) if not configured per routine in YAML")

    ap.add_argument("--param-style", choices=["named", "positional"], default="named",
                    help="Default param_style for calling rotunues if not configured per routine in YAML")

    ap.add_argument("--capture-mode", choices=["none", "vector", "scalar"], default="none",
                    help="Default capture_mode of result(s) if not configured per routine in YAML")

    ap.add_argument("--transaction", choices=["rollback", "commit"], default="rollback",
                    help="Default transaction behavior: rollback (default) or commit if not configured per routine in YAML")

    ap.add_argument("--expected-ms", type=float, default=500.0, 
                    help="Default expected_ms if not configured per routine in YAML")

    ap.add_argument("--timeout-ms", type=float, default=0.0,
                    help="Default per-call timeout_ms (0 means no timeout) if not configured per routine in YAML")

    ap.add_argument("--verbose-config", action="store_true",
                    help="Print effective config immediately before running each routine")

    ap.add_argument("--verbose-params", action="store_true", 
                    help="Print parameter values for each call")

    ap.add_argument("--verbose-sample", action="store_true", 
                    help="Print sample parameter values mapping for each routine call")

    ap.add_argument("--debug", action="store_true",
                    help="Enable debug logging (implies --verbose-config and additional execution details)")

    return ap


# --------------------------------------------------------------------------------
# Best-effort masking of passwords in DSN strings for logs.
def mask_dsn(dsn: str) -> str:
    if not dsn:
        return dsn
    # key=value style
    dsn = re.sub(r"(password\s*=\s*)([^\s]+)", r"\1***", dsn, flags=re.IGNORECASE)
    # URI style: postgresql://user:pass@host/db
    dsn = re.sub(r"(://[^/:\s]+:)([^@/\s]+)(@)", r"\1***\3", dsn)
    return dsn


# --------------------------------------------------------------------------------
# main
def main() -> int:
    # parse command line arguments
    cli_args = build_cli_arg_parser().parse_args()

    if cli_args.debug or cli_args.verbose_config:
        print(f"INPUT:")

    if cli_args.debug:
        cli_args.verbose_config = True
        print(f"  Debug enabled")

    if cli_args.verbose_config:
        cli_args.verbose_config = True
        print(f"  Config Verbose enabled")

    if cli_args.verbose_params:
        print(f"  Parameters Verbose enabled")

    if cli_args.verbose_sample:
        print(f"  Sample Data Verbose enabled")

    if cli_args.verbose_config and os.path.isfile(cli_args.config):
        print(f"  yaml config: {cli_args.config}")

    if cli_args.verbose_config:
        print(f"  details output: {cli_args.details_output}")
        print(f"  summary output: {cli_args.summary_output}")

    if cli_args.param_style:
        print(f"  parameter style: {cli_args.param_style}")

    if cli_args.capture_mode:
        print(f"  capture mode: {cli_args.capture_mode}")

    if cli_args.transaction:
        print(f"  transaction: {cli_args.transaction}")

    if cli_args.iterations:
        print(f"  iterations: {cli_args.iterations}")

    if cli_args.warmup:
        print(f"  warmup: {cli_args.warmup}")

    if cli_args.shuffle:
        print(f"  shuffle samples: {cli_args.shuffle}")

    if cli_args.seed:
        print(f"  seed: {cli_args.seed}")

    if cli_args.timeout_ms:
        print(f"  timeout_ms: {cli_args.timeout_ms}")

    if cli_args.expected_ms:
        print(f"  expected_ms: {cli_args.expected_ms}")

    dsn, routine_definitions = load_yaml_config(cli_args.config, cli_args.verbose_config)

    all_results: List[RunResult] = []
    per_routine_results: Dict[Tuple[str, str], List[RunResult]] = {}
    effective_cfg_by_name_kind: Dict[Tuple[str, str], EffectiveRoutineConfig] = {}

    if cli_args.verbose_config:
        print(f"LOOP:")

    for routine_seq, routine_def in enumerate(routine_definitions, start=1):
        effective_cfg = resolve_effective_config(
            routine_def,
            routine_seq=routine_seq,
            cli_args_iterations=cli_args.iterations,
            cli_args_warmup=cli_args.warmup,
            cli_args_shuffle=cli_args.shuffle,
            cli_args_param_style=cli_args.param_style,
            cli_args_capture_mode=cli_args.capture_mode,
            cli_args_expected_ms=cli_args.expected_ms,
            cli_args_transaction=cli_args.transaction,
            cli_args_timeout_ms=cli_args.timeout_ms,
            cli_args_seed=cli_args.seed,
        )
        effective_cfg_by_name_kind[(effective_cfg.routine_name, effective_cfg.routine_kind)] = effective_cfg

        print(f"\n================================================================================")
        print(f"==> [{effective_cfg.routine_seq}] Running {effective_cfg.routine_kind.upper()} {effective_cfg.routine_name}")

        routine_hash = random_string = ''.join(random.choices(string.ascii_letters + string.digits, k=30)) 

        if cli_args.verbose_config:
            print("CONFIG:")
            print(f"  routine_seq={effective_cfg.routine_seq}")
            print(f"  routine_name={effective_cfg.routine_name}")
            print(f"  routine_kind={effective_cfg.routine_kind}")
            print(f"  routine_desc={effective_cfg.routine_desc}")
            print(f"  routine_hash={routine_hash}")
            print(f"  param_style={effective_cfg.param_style}")
            print(f"  capture_mode={effective_cfg.capture_mode}")
            print(f"  iterations={effective_cfg.iterations}")
            print(f"  warmup={effective_cfg.warmup}")
            print(f"  shuffle={effective_cfg.shuffle}")
            print(f"  seed={effective_cfg.seed}")
            print(f"  transaction={effective_cfg.transaction}")
            print(f"  timeout_ms={effective_cfg.timeout_ms}")
            print(f"  expected_ms={effective_cfg.expected_ms}")
            print(f"  parameters={[p.name + ':' + p.type for p in effective_cfg.parameters]}")

        sample_rows = load_sample_rows(cli_args.samples_dir, effective_cfg.routine_name, effective_cfg.parameters, cli_args.verbose_sample)

        print(f"EXECUTION:")
        print(f"  start time:", datetime.now())

        run_results = run_benchmark_for_one_routine(
            dsn=dsn,
            cfg=effective_cfg,
            sample_rows=sample_rows,
            verbose_params=cli_args.verbose_params or cli_args.debug,
            debug=cli_args.debug,
        )

        print(f"  end time:", datetime.now())

        per_routine_results[(effective_cfg.routine_name, effective_cfg.routine_kind)] = run_results
        all_results.extend(run_results)

        exec_good_a = [r.elapsed_ms for r in run_results if r.exec_good]
        exec_fail_a = [r for r in run_results if not r.exec_good]
        exec_timeout_a = [r for r in run_results if r.timed_out]

        stats = percentile_summary_ms(exec_good_a)

        execution_status = "OK" if len(exec_fail_a) == 0 else "FAILED"
        execution_status_symbol = "✅" if len(exec_fail_a) == 0 else "❌"

        response_time_status = "OK"
        response_time_status_symbol = "✅"
        if stats and stats["p95_ms"] > effective_cfg.expected_ms:
            response_time_status = "FAILED"
            response_time_status_symbol = "❌"

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
            f"  execution={execution_status}{execution_status_symbol} "
            f"  response={response_time_status}{response_time_status_symbol} "
            f"(expected_p95<={effective_cfg.expected_ms:.3f}ms"
        )
        if exec_fail_a:
            first = exec_fail_a[0]
            print(f"    First error: iter={first.iter_no} sample_row={first.sample_row} {first.error_text}")

    print(f"\n================================================================================")
    print(f"OUTPUT:")
    # Write per-call results
    with open(cli_args.details_output, "w", encoding="utf-8", newline="") as f:
        writer = csv.writer(f)
        writer.writerow([
            "routine_seq", "routine_name", "routine_kind", "routine_desc",
            "param_style", "capture_mode","transaction","shuffle",
            "timeout_ms", "expected_ms", "warmup",  "iterations", 
            "iter_no", "sample_row#", "exec_success", "exec_timed_out", "elapsed_ms",
            "rowcount", "value", "error_text",
        ])

        for r in all_results:
            cfg = effective_cfg_by_name_kind.get((r.routine_name, r.routine_kind))
            writer.writerow([
                r.routine_seq,
                r.routine_name,
                r.routine_kind,
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
                r.exec_good,
                r.timed_out,
                f"{r.elapsed_ms:.3f}",
                r.rowcount,
                r.value,
                r.error_text,
            ])

    print(f"Wrote detailed results to: {cli_args.details_output}")

    # Write per-proc summary results
    with open(cli_args.summary_output, "w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=[
                "routine_seq", "routine_name", "routine_kind", "routine_desc",
                "param_style", "capture_mode", "transaction","shuffle","timeout_ms", "expected_ms",
                "warmup", "iterations", "exec_total", "exec_success", "exec_failed", "exec_timeouts",
                "tps", "total_ms", "avg_ms", "min_ms", "max_ms", "p80_ms", "p90_ms", "p95_ms", "p99_ms",
                "execution_pass", "response_pass", "overall_pass",
                "first_error",
            ],
        )
        writer.writeheader()

        for (routine_name, routine_kind), cfg in effective_cfg_by_name_kind.items():
            run_results = per_routine_results.get((routine_name, routine_kind), [])
            writer.writerow(summarize_routine_results(run_results, cfg))

    print(f"Wrote summary results to: {cli_args.summary_output}")
    print(f"\nCompleted")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

# --------------------------------------------------------------------------------
# EOF
# --------------------------------------------------------------------------------
