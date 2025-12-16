#!/usr/bin/env python3
# ################################################################################
# csvgen.py
#
# Generate CSV files based on csvgen.yaml
# - Uses tabgen.py-like random expressions, implemented in Python
# - Supports "random" mode (random columns) or named tables with pre-chosen columns
#
# Usage:
#   python3 csvgen.py person
#   python3 csvgen.py random
#   python3 csvgen.py person --files 3
# ################################################################################

import argparse
import csv
import hashlib
import os
import random
import re
import sys
import uuid
from dataclasses import dataclass
from datetime import date, datetime, time, timedelta
from pathlib import Path

import yaml


# -----------------------------
# Helpers: parsing type strings
# -----------------------------

_NUMERIC_RE = re.compile(r"^\s*numeric\s*\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*$", re.IGNORECASE)
_CHAR_RE    = re.compile(r"^\s*char\s*\(\s*(\d+)\s*\)\s*$", re.IGNORECASE)
_VARCHAR_RE = re.compile(r"^\s*varchar\s*\(\s*(\d+)\s*\)\s*$", re.IGNORECASE)
_VARCHAR2_RE = re.compile(r"^\s*varchar2\s*\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*$", re.IGNORECASE)

_SIMPLE_TYPES = {
    "smallint", "integer", "int", "bigint",
    "numeric",  # bare numeric allowed (we'll pick p/s)
    "real", "double precision",
    "text", "uuid", "boolean",
    "date", "time", "timestamp",
    "jsonb", "bytea",
}

def _norm_type(t: str) -> str:
    return " ".join(t.strip().lower().split())

@dataclass(frozen=True)
class TypeMeta:
    base: str
    args: tuple

def parse_type_meta(type_str: str) -> TypeMeta:
    """
    Supports:
      - numeric(p,s)
      - char(n)
      - varchar(n)
      - varchar2(min,max)  (min..max length)
      - simple types like integer, date, timestamp, jsonb, bytea, etc.
      - bare numeric => choose random (like tabgen make_numeric_definition)
    """
    t = type_str.strip()
    m = _NUMERIC_RE.match(t)
    if m:
        p = int(m.group(1))
        s = int(m.group(2))
        if p < 1 or s < 0 or s >= p:
            raise ValueError(f"Invalid numeric(p,s): {type_str}")
        return TypeMeta("numeric", (p, s))

    m = _CHAR_RE.match(t)
    if m:
        n = int(m.group(1))
        if n < 1:
            raise ValueError(f"Invalid char(n): {type_str}")
        return TypeMeta("char", (n,))

    m = _VARCHAR_RE.match(t)
    if m:
        n = int(m.group(1))
        if n < 1:
            raise ValueError(f"Invalid varchar(n): {type_str}")
        return TypeMeta("varchar", (n,))

    m = _VARCHAR2_RE.match(t)
    if m:
        a = int(m.group(1))
        b = int(m.group(2))
        if a < 1 or b < a:
            raise ValueError(f"Invalid varchar2(min,max): {type_str}")
        return TypeMeta("varchar2", (a, b))

    nt = _norm_type(t)
    # accept "int" synonym
    if nt == "int":
        nt = "integer"

    if nt not in _SIMPLE_TYPES:
        raise ValueError(f"Unsupported type: {type_str}")

    if nt == "numeric":
        # bare numeric => choose p/s like tabgen.make_numeric_definition()
        p = random.randint(4, 12)
        s = random.randint(0, min(3, p - 1))
        return TypeMeta("numeric", (p, s))

    return TypeMeta(nt, ())


# ---------------------------------------
# Tabgen-like value generation (Python)
# ---------------------------------------

def _md5_hex_of_random() -> str:
    # tabgen uses md5(random()::text); we mimic with md5 of random float string
    s = repr(random.random()).encode("utf-8")
    return hashlib.md5(s).hexdigest()

def gen_value(meta: TypeMeta):
    t = meta.base

    if t == "smallint":
        return int(random.random() * 32767)

    if t == "integer":
        return int(random.random() * 2147483647)

    if t == "bigint":
        # keep within signed bigint (Python can handle bigger, but match intent)
        return int(random.random() * 9223372036854775807)

    if t == "numeric":
        p, s = meta.args
        # tabgen SQL: (random()*(10^(p-s)-1))::numeric(p,s)
        max_int_digits = p - s
        max_whole = (10 ** max_int_digits) - 1
        x = random.random() * max_whole
        # round to scale s; keep as string to preserve fixed scale if desired
        fmt = f"{{:.{s}f}}"
        return fmt.format(round(x, s))

    if t == "real":
        return float(random.random() * 10000)

    if t == "double precision":
        return float(random.random() * 10000)

    if t == "char":
        (n,) = meta.args
        # tabgen: substr(md5(random()::text),1,n)
        return _md5_hex_of_random()[:n]

    if t == "varchar":
        (n,) = meta.args
        # tabgen: substr(md5(...),1,(1+floor(random()*n)::int))
        ln = 1 + int(random.random() * n)
        return _md5_hex_of_random()[:ln]

    if t == "varchar2":
        a, b = meta.args
        ln = random.randint(a, b)
        return _md5_hex_of_random()[:ln]

    if t == "text":
        return _md5_hex_of_random()[:30]

    if t == "uuid":
        return str(uuid.uuid4())

    if t == "boolean":
        return "true" if (random.random() > 0.5) else "false"

    if t == "date":
        # tabgen: DATE '1970-01-01' + (random()*20000)::int
        base = date(1970, 1, 1)
        days = int(random.random() * 20000)
        return (base + timedelta(days=days)).isoformat()

    if t == "time":
        # tabgen: TIME '00:00' + ((random()*86400)::int * interval '1 second')
        secs = int(random.random() * 86400)
        hh = secs // 3600
        mm = (secs % 3600) // 60
        ss = secs % 60
        return f"{hh:02d}:{mm:02d}:{ss:02d}"

    if t == "timestamp":
        # tabgen: TIMESTAMP '2000-01-01' + ((random()*365*50) * interval '1 day')
        base = datetime(2000, 1, 1)
        days = int(random.random() * (365 * 50))
        dt = base + timedelta(days=days)
        return dt.strftime("%Y-%m-%d %H:%M:%S")

    if t == "jsonb":
        # tabgen jsonb_build_object('k', substr(md5(...),1,4), 'v', floor(random()*100))
        k = _md5_hex_of_random()[:4]
        v = int(random.random() * 100)
        # produce JSON text suitable for a CSV field
        return f'{{"k":"{k}","v":{v}}}'

    if t == "bytea":
        # tabgen: decode(substring(md5(...) for 8), 'hex') => 4 bytes
        hx = _md5_hex_of_random()[:8]
        # represent like Postgres bytea hex style (common): \xDEADBEEF
        return r"\x" + hx

    # fallback
    return ""


# -----------------------------
# YAML config loading
# -----------------------------

def load_yaml(path: Path) -> dict:
    if not path.exists():
        raise FileNotFoundError(f"Config file not found: {path}")
    with path.open("r") as f:
        cfg = yaml.safe_load(f)
    if not isinstance(cfg, dict):
        raise ValueError("csvgen.yaml must be a YAML mapping/object at top level")
    return cfg

def ensure_dir(p: Path):
    p.mkdir(parents=True, exist_ok=True)

def as_list_cols(cols):
    if cols is None:
        return []
    if isinstance(cols, list):
        return [str(x).strip() for x in cols if str(x).strip()]
    if isinstance(cols, str):
        return [c.strip() for c in cols.split(",") if c.strip()]
    raise ValueError(f"Invalid cols format (must be list or comma-string): {cols!r}")


# -----------------------------
# Main generator
# -----------------------------

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("table_name", help='table name from "tables:" in csvgen.yaml OR "random"')
    ap.add_argument("--config", default="csvgen.yaml", help="Path to csvgen.yaml")
    ap.add_argument("--files", type=int, default=1, help="Number of CSV files to generate")
    ap.add_argument("--seed", type=int, default=None, help="Random seed (optional)")
    args = ap.parse_args()

    if args.seed is not None:
        random.seed(args.seed)

    cfg = load_yaml(Path(args.config))

    config = cfg.get("config", {}) or {}
    output_dir = Path(config.get("output_dir", "out"))
    file_prefix = str(config.get("file_prefix", "data"))

    min_columns = int(config.get("min_columns", 5))
    max_columns = int(config.get("max_columns", 20))
    min_rows = int(config.get("min_rows", 100))
    max_rows = int(config.get("max_rows", 1000))

    ensure_dir(output_dir)

    # Columns pool
    columns_pool = cfg.get("columns", [])
    if not isinstance(columns_pool, list) or not columns_pool:
        raise ValueError('csvgen.yaml must contain a non-empty "columns:" list')

    col_by_name = {}
    for c in columns_pool:
        if not isinstance(c, dict):
            raise ValueError("Each item in columns must be a mapping with name/type")
        name = str(c.get("name", "")).strip()
        typ = str(c.get("type", "")).strip()
        if not name or not typ:
            raise ValueError(f"Invalid column entry (needs name/type): {c}")
        col_by_name[name] = parse_type_meta(typ)

    # Tables
    tables = cfg.get("tables", []) or []
    if not isinstance(tables, list):
        raise ValueError('"tables" must be a list')

    table_def = None
    if args.table_name.lower() != "random":
        for t in tables:
            if isinstance(t, dict) and str(t.get("name", "")).strip() == args.table_name:
                table_def = t
                break
        if table_def is None:
            raise ValueError(f'Table "{args.table_name}" not found under tables: in csvgen.yaml')

    for i in range(1, args.files + 1):
        # Determine rows/cols for this file
        rows = random.randint(min_rows, max_rows)

        if args.table_name.lower() == "random":
            col_count = random.randint(min_columns, max_columns)
            if col_count > len(columns_pool):
                col_count = len(columns_pool)
            chosen_names = random.sample(list(col_by_name.keys()), col_count)
            out_name = f"{file_prefix}_random_{run_ts}-{i:03d}.csv"
        else:
            chosen_names = as_list_cols(table_def.get("cols"))
            if not chosen_names:
                raise ValueError(f'Table "{args.table_name}" has empty cols')
            missing = [c for c in chosen_names if c not in col_by_name]
            if missing:
                raise ValueError(
                    f'Table "{args.table_name}" references columns not in columns: {missing}'
                )
            out_name = f"{file_prefix}_{args.table_name}_{run_ts}-{i:03d}.csv"

        out_path = output_dir / out_name

        # Write CSV
        with out_path.open("w", newline="") as f:
            w = csv.writer(f)
            w.writerow(chosen_names)
            for _ in range(rows):
                row = [gen_value(col_by_name[c]) for c in chosen_names]
                w.writerow(row)

        print(f"Wrote {out_path} (rows={rows}, cols={len(chosen_names)})")


if __name__ == "__main__":
    try:
        run_ts = datetime.now().strftime("%Y%m%d-%H%M%S")
        main()
    except Exception as e:
        print(f"ERROR: {e}", file=sys.stderr)
        sys.exit(2)

# ################################################################################
