#!/usr/bin/env python3
# ------------------------------------------------------------------------------------
"""
FILE: bench_proc_calls.py

PURPOSE: 
1. read config file (argument) with all procedure/function names and their arguemnts and data types
2. read sample data from samples-dir (argument) 
3. execute procedures/functions with arguments values from csv files
4. produce output file (argument) with execution details

Examples:
bench_proc_calls.py --config bench_proc_calls.yaml --samples-dir scripts/proc_call_sample_data --iterations 100 --warmup 0 --output bench_proc_calls.out

"""

# ------------------------------------------------------------------------------------

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
from typing import Any, Dict, List, Tuple

import yaml
import psycopg
from psycopg.rows import dict_row


# ----------------------------
# Data model
# ----------------------------
@dataclass
class ProcParam:
    name: str
    type: str


@dataclass
class ProcDef:
    name: str
    kind: str              # "procedure" | "function"
    param_style: str       # "named" | "positional"
    params: List[ProcParam]


# ----------------------------
# Parsing / casting helpers
# ----------------------------
_NULL_TOKENS = {"", "null", "NULL", "none", "None", "\\N"}


def parse_scalar(val: str, pg_type: str) -> Any:
    if val is None:
        return None
    s = val.strip()
    if s in _NULL_TOKENS:
        return None

    t = pg_type.lower().strip()

    if t in {"int2", "smallint", "int4", "integer", "int8", "bigint", "oid"}:
        return int(s)

    if t in {"numeric", "decimal", "float4", "real", "float8", "double precision", "money"}:
        return float(s) if ("." in s or "e" in s.lower()) else int(s)

    if t in {"bool", "boolean"}:
        if s.lower() in {"t", "true", "1", "y", "yes"}:
            return True
        if s.lower() in {"f", "false", "0", "n", "no"}:
            return False
        raise ValueError(f"Invalid boolean literal: {s}")

    if t == "date":
        return date.fromisoformat(s)

    if t in {"timestamp", "timestamp without time zone", "timestamptz", "timestamp with time zone"}:
        return datetime.fromisoformat(s)

    if t in {"json", "jsonb"}:
        return json.loads(s)

    return s


# ----------------------------
# SQL generation (psycopg placeholders)
# ----------------------------
def make_sql(proc: ProcDef) -> str:
    """
    psycopg placeholders are %s (pyformat). Do NOT use $1/$2 in the SQL string.

    Named:
      CALL sch.p(p_a => %s::int4, p_b => %s::text)
      SELECT sch.f(p_a => %s::int4, p_b => %s::text)

    Positional:
      CALL sch.p(%s::int4, %s::text)
      SELECT sch.f(%s::int4, %s::text)
    """
    if proc.param_style not in {"named", "positional"}:
        raise ValueError(f"{proc.name}: invalid param_style={proc.param_style}")

    parts: List[str] = []
    for p in proc.params:
        if proc.param_style == "named":
            parts.append(f"{p.name} => %s::{p.type}")
        else:
            parts.append(f"%s::{p.type}")

    args = ", ".join(parts)

    if proc.kind == "procedure":
        return f"CALL {proc.name}({args})"
    if proc.kind == "function":
        # Prefer SELECT proc(...) over SELECT * FROM proc(...) to handle scalar returns cleanly
        return f"SELECT {proc.name}({args})"
    raise ValueError(f"{proc.name}: unknown kind={proc.kind}")


# ----------------------------
# Config + Samples
# ----------------------------
def load_config(path: str) -> Tuple[str, List[ProcDef]]:
    with open(path, "r", encoding="utf-8") as f:
        cfg = yaml.safe_load(f)

    dsn = cfg.get("dsn")
    if not dsn:
        raise ValueError("Missing 'database' in YAML config")

    procs: List[ProcDef] = []
    for item in cfg.get("procedures", []):
        name = item["name"]
        kind = item.get("kind", "procedure").lower()
        param_style = item.get("param_style", "named").lower()
        params = [ProcParam(p["name"], p["type"]) for p in item.get("params", [])]
        procs.append(ProcDef(name=name, kind=kind, param_style=param_style, params=params))

    if not procs:
        raise ValueError("No procedures defined under 'procedures'")

    return dsn, procs


def load_samples_csv(samples_dir: str, proc: ProcDef) -> List[Dict[str, str]]:
    # proc.name might contain schema (schema.proc). Use last part for filename safety if you want.
    filename = f"{proc.name}.csv"
    path = os.path.join(samples_dir, filename)
    if not os.path.exists(path):
        raise FileNotFoundError(f"test data file not found for {proc.name}: {path}")

    rows: List[Dict[str, str]] = []
    with open(path, "r", encoding="utf-8", newline="") as f:
        reader = csv.DictReader(f)
        for r in reader:
            rows.append(r)

    if not rows:
        raise ValueError(f"No sample rows in {path}")

    cols = set(rows[0].keys())
    missing = [p.name for p in proc.params if p.name not in cols]
    if missing:
        raise ValueError(f"{path} missing required columns: {missing}")

    return rows


def row_to_args(proc: ProcDef, row: Dict[str, str]) -> List[Any]:
    # Order must match YAML params order because %s placeholders are positional.
    return [parse_scalar(row.get(p.name, ""), p.type) for p in proc.params]


# ----------------------------
# Benchmark + summary
# ----------------------------
@dataclass
class RunResult:
    proc_name: str
    kind: str
    iter_no: int
    sample_row: int
    ok: bool
    duration_ms: float
    error: str


def summarize(durations: List[float]) -> Dict[str, float]:
    if not durations:
        return {}
    d_sorted = sorted(durations)

    def pct(p: float) -> float:
        if len(d_sorted) == 1:
            return d_sorted[0]
        k = (len(d_sorted) - 1) * p
        f = math.floor(k)
        c = math.ceil(k)
        if f == c:
            return d_sorted[int(k)]
        return d_sorted[f] * (c - k) + d_sorted[c] * (k - f)

    return {
        "count": float(len(durations)),
        "avg_ms": statistics.mean(durations),
        "min_ms": min(durations),
        "p50_ms": pct(0.50),
        "p90_ms": pct(0.90),
        "p95_ms": pct(0.95),
        "p99_ms": pct(0.99),
        "max_ms": max(durations),
    }


def _consume_result_if_any(cur) -> None:
    """
    If the statement produced a result set, consume one row (cheap) so server finishes it.
    Works for scalar functions, set-returning functions (first row), etc.
    """
    try:
        if cur.description is not None:
            cur.fetchone()
    except Exception:
        # Don't let result consumption break the benchmark
        pass


def run_proc(
    dsn: str,
    proc: ProcDef,
    sql: str,
    samples: List[Dict[str, str]],
    iterations: int,
    warmup: int,
    shuffle: bool,
    commit_each: bool,
    seed: int,
) -> List[RunResult]:
    rnd = random.Random(seed)
    idxs = list(range(len(samples)))
    if shuffle:
        rnd.shuffle(idxs)

    results: List[RunResult] = []

    with psycopg.connect(dsn, row_factory=dict_row) as conn:
        conn.autocommit = False
        with conn.cursor() as cur:
            total = warmup + iterations
            for i in range(1, total + 1):
                sample_idx = idxs[(i - 1) % len(idxs)]
                row = samples[sample_idx]
                args = row_to_args(proc, row)

                ok = True
                err = ""
                t0 = time.perf_counter()
                try:
                    # Key fix: sql contains %s placeholders, args length matches them.
                    cur.execute(sql, args)

                    # For functions, consume one row if any
                    if proc.kind == "function":
                        _consume_result_if_any(cur)

                    if commit_each:
                        conn.commit()
                    else:
                        conn.rollback()
                except Exception as e:
                    ok = False
                    err = f"{type(e).__name__}: {e}"
                    conn.rollback()
                t1 = time.perf_counter()

                if i > warmup:
                    results.append(
                        RunResult(
                            proc_name=proc.name,
                            kind=proc.kind,
                            iter_no=i - warmup,
                            sample_row=sample_idx,
                            ok=ok,
                            duration_ms=(t1 - t0) * 1000.0,
                            error=err,
                        )
                    )

    return results


def main() -> int:
    ap = argparse.ArgumentParser(description="PostgreSQL procedure/function benchmark runner (psycopg3)")
    ap.add_argument("--config", required=True, help="YAML file with DSN and procedure definitions")
    ap.add_argument("--samples-dir", required=True, help="Directory with <proc.name>.csv files")
    ap.add_argument("--iterations", type=int, default=100, help="Recorded iterations per procedure")
    ap.add_argument("--warmup", type=int, default=10, help="Warmup iterations per procedure (not recorded)")
    ap.add_argument("--shuffle", action="store_true", help="Shuffle sample rows before cycling")
    ap.add_argument(
        "--commit-each",
        action="store_true",
        help="Commit each call. Default is rollback each call to reduce side-effects.",
    )
    ap.add_argument("--output", default="bench_results.csv", help="Output CSV with per-call timings")
    ap.add_argument("--seed", type=int, default=1234, help="Random seed (used if --shuffle)")
    args = ap.parse_args()

    dsn, procs = load_config(args.config)

    all_results: List[RunResult] = []

    for proc in procs:
        sql = make_sql(proc)
        samples = load_samples_csv(args.samples_dir, proc)

        print(f"\n==> Running {proc.kind.upper()} {proc.name}")
        print(f"    SQL: {sql}")
        print(f"    style={proc.param_style} params={len(proc.params)} samples={len(samples)} warmup={args.warmup} iterations={args.iterations}")

        res = run_proc(
            dsn=dsn,
            proc=proc,
            sql=sql,
            samples=samples,
            iterations=args.iterations,
            warmup=args.warmup,
            shuffle=args.shuffle,
            commit_each=args.commit_each,
            seed=args.seed,
        )
        all_results.extend(res)

        ok_durations = [r.duration_ms for r in res if r.ok]
        bad = [r for r in res if not r.ok]
        s = summarize(ok_durations)
        if s:
            print(
                f"    OK={len(ok_durations)} ERR={len(bad)} | "
                f"avg={s['avg_ms']:.3f}ms p95={s['p95_ms']:.3f}ms p99={s['p99_ms']:.3f}ms max={s['max_ms']:.3f}ms"
            )
        if bad:
            print(f"    First error: iter={bad[0].iter_no} sample_row={bad[0].sample_row} {bad[0].error}")

    with open(args.output, "w", encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(["proc_name", "kind", "iter_no", "sample_row", "ok", "duration_ms", "error"])
        for r in all_results:
            w.writerow([r.proc_name, r.kind, r.iter_no, r.sample_row, r.ok, f"{r.duration_ms:.6f}", r.error])

    print(f"\nWrote detailed results to: {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

# ------------------------------------------------------------------------------------
# END
# ------------------------------------------------------------------------------------
