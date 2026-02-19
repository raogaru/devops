#!/usr/bin/env python3
"""
FILE: bench_proc_calls_gencfg.py

PURPOSE: 
1. Connect to database provide as dsn (argument)
2. filter schema name (argument) for procedures|functions|both (kind argument) for procedures with naem (include argument)
3. read procedures/function definitions along with arguments
4. produce output file (arguemnt)
5. This output file will be used by bench_proc_calls.py for running benchmark

Example:
bench_proc_calls_gencfg.py \
    --dsn "host=localhost port=5432 dbname=postgres user=postgres password=postgres" \
    --schema "bench" --include "p_%" --kinds procedures --output proc_call_benchmark_procedures.yaml

"""
# --------------------------------------------------------------------------------
 
import argparse
from dataclasses import dataclass
from typing import List, Optional, Dict, Any, Tuple

import psycopg
import yaml

def as_text(v) -> str:
    """Convert psycopg-returned values to plain str safely."""
    if v is None:
        return ""
    if isinstance(v, (bytes, bytearray)):
        return v.decode("utf-8", errors="replace")
    if isinstance(v, memoryview):
        return v.tobytes().decode("utf-8", errors="replace")
    return str(v)


@dataclass
class ParamInfo:
    name: str
    pg_type: str


@dataclass
class RoutineInfo:
    schema: str
    name: str
    kind: str
    params: List[ParamInfo]


def _build_like_filter(include: Optional[str], exclude: Optional[str]) -> str:
    clauses = []
    if include:
        clauses.append("p.proname LIKE %(include)s")
    if exclude:
        clauses.append("p.proname NOT LIKE %(exclude)s")
    return (" AND " + " AND ".join(clauses)) if clauses else ""


def fetch_routines(
    conn: psycopg.Connection,
    schema: Optional[str],
    kinds: str,
    include: Optional[str],
    exclude: Optional[str],
) -> List[RoutineInfo]:
    kind_filter = {
        "procedures": "p.prokind = 'p'",
        "functions":  "p.prokind = 'f'",
        "both":       "p.prokind IN ('p','f')",
    }[kinds]

    schema_filter = ""
    if schema:
        schema_filter = "AND n.nspname = %(schema)s"

    like_filter = _build_like_filter(include, exclude)

    # Force TEXT output for schema/name/type/mode to prevent bytes in Python
    sql = f"""
    WITH base AS (
      SELECT
        n.nspname::text AS schema_name,
        p.proname::text AS routine_name,
        p.prokind::text AS prokind,
        p.oid           AS prooid,
        p.proargtypes::oid[] AS arg_types,
        p.proargnames        AS arg_names,
        p.proargmodes        AS arg_modes
      FROM pg_proc p
      JOIN pg_namespace n ON n.oid = p.pronamespace
      WHERE {kind_filter}
        {schema_filter}
        {like_filter}
        AND n.nspname NOT IN ('pg_catalog','information_schema')
    ),
    expanded AS (
      SELECT
        b.schema_name,
        b.routine_name,
        b.prokind,
        a.ord AS ord,
        a.arg_type_oid AS arg_type_oid,
        CASE
          WHEN b.arg_names IS NULL THEN NULL
          ELSE b.arg_names[a.ord]
        END AS arg_name,
        CASE
          WHEN b.arg_modes IS NULL THEN 'i'
          ELSE b.arg_modes[a.ord]
        END AS arg_mode
      FROM base b
      CROSS JOIN LATERAL (
        SELECT x.ord, x.arg_type_oid
        FROM unnest(b.arg_types) WITH ORDINALITY AS x(arg_type_oid, ord)
      ) a
    )
    SELECT
      e.schema_name::text,
      e.routine_name::text,
      e.prokind::text,
      e.ord,
      pg_catalog.format_type(e.arg_type_oid, NULL)::text AS arg_type,
      e.arg_name::text,
      e.arg_mode::text
    FROM expanded e
    WHERE e.arg_mode IN ('i','b','v')
    ORDER BY e.schema_name, e.routine_name, e.ord;
    """

    params: Dict[str, Any] = {}
    if schema:
        params["schema"] = schema
    if include:
        params["include"] = include
    if exclude:
        params["exclude"] = exclude

    rows = conn.execute(sql, params).fetchall()

    routines: Dict[str, RoutineInfo] = {}
    for schema_name, routine_name, prokind, ord_, arg_type, arg_name, arg_mode in rows:
        schema_name = as_text(schema_name)
        routine_name = as_text(routine_name)
        prokind = as_text(prokind)
        arg_type = as_text(arg_type)
        arg_name = as_text(arg_name)

        kind = "procedure" if prokind == "p" else "function"
        fqname = f"{schema_name}.{routine_name}"

        if fqname not in routines:
            routines[fqname] = RoutineInfo(schema=schema_name, name=routine_name, kind=kind, params=[])

        pname = (arg_name or "").strip()
        if not pname:
            pname = f"p{ord_}"

        routines[fqname].params.append(ParamInfo(name=pname, pg_type=arg_type))

    # Add routines with zero args
    sql_zero = f"""
    SELECT
      n.nspname::text AS schema_name,
      p.proname::text AS routine_name,
      p.prokind::text AS prokind
    FROM pg_proc p
    JOIN pg_namespace n ON n.oid = p.pronamespace
    WHERE {kind_filter}
      {schema_filter}
      {like_filter}
      AND n.nspname NOT IN ('pg_catalog','information_schema')
      AND p.pronargs = 0
    ORDER BY 1,2;
    """
    for schema_name, routine_name, prokind in conn.execute(sql_zero, params).fetchall():
        schema_name = as_text(schema_name)
        routine_name = as_text(routine_name)
        prokind = as_text(prokind)

        fqname = f"{schema_name}.{routine_name}"
        if fqname not in routines:
            kind = "procedure" if prokind == "p" else "function"
            routines[fqname] = RoutineInfo(schema=schema_name, name=routine_name, kind=kind, params=[])

    return [routines[k] for k in sorted(routines.keys())]


def to_yaml_config(dsn: str, routines: List[RoutineInfo], param_style: str) -> Dict[str, Any]:
    dsn = as_text(dsn).strip()
    out: List[Dict[str, Any]] = []

    for r in routines:
        fqname = f"{r.schema}.{r.name}"
        out.append(
            {
                "routine_name": fqname,
                "routine_type": r.kind,                  # procedure|function
                "routine_desc": fqname,                  # descriptive label (edit as needed)
                "expected_ms": 500,                      # ms
                "timeout_ms": 2000,                      # ms
                "transaction": "rollback",               # rollback (default) or commit
                "warmup": 1,                             # 1
                "iterations": 10,                        # 10
                "param_style": param_style,
                "params": [{"name": p.name, "type": p.pg_type} for p in r.params],
            }
        )

    return {"dsn": dsn, "routines": out}


def main() -> int:
    ap = argparse.ArgumentParser(description="Generate benchmark_proc_calls.py YAML from PostgreSQL catalog")
    ap.add_argument("--dsn", required=True, help="PostgreSQL DSN string")
    ap.add_argument("--schema", default=None, help="Schema name to scan")
    ap.add_argument("--kinds", choices=["procedures", "functions", "both"], default="procedures")
    ap.add_argument("--include", default=None, help="LIKE pattern e.g. 'p_%'")
    ap.add_argument("--exclude", default=None, help="Exclude LIKE pattern")
    ap.add_argument("--param-style", choices=["named", "positional"], default="named")
    ap.add_argument("--output", default="bench_config.yaml")
    args = ap.parse_args()

    dsn = as_text(args.dsn).strip()

    with psycopg.connect(dsn) as conn:
        routines = fetch_routines(conn, args.schema, args.kinds, args.include, args.exclude)

    cfg = to_yaml_config(dsn, routines, args.param_style)

    with open(args.output, "w", encoding="utf-8") as f:
        yaml.safe_dump(cfg, f, sort_keys=False, allow_unicode=True)

    print(f"Wrote {len(routines)} routines to {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

# --------------------------------------------------------------------------------
# END
# --------------------------------------------------------------------------------
