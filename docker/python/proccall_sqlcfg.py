#!/usr/bin/env python3
"""
proccall_sqlfile_gencfg.py — generate proccall.py YAML config from a directory of .sql files

What it does
------------
- Scans --input-directory for *.sql files whose *basename* starts with --input-file-prefix
  (example: prefix="bench." matches "bench.s_t_list3.sql").
- For each SQL file, generates a YAML routine entry:
    - routine_name: <basename without .sql>
    - routine_kind: sqlfile
    - routine_desc: derived from file (optional) or auto text
    - parameters: extracted named bind variables like :p_id

Bind variable parsing
--------------------
- Extracts occurrences of :<name> where <name> is [A-Za-z_][A-Za-z0-9_]*
- Ignores PostgreSQL type casts '::' via a negative lookbehind.

Description extraction (optional)
--------------------------------
If the SQL file begins with a comment line like:
    -- desc: select statement with bind variables
or:
    /* desc: ... */
that text is used as routine_desc. Otherwise a default description is generated.

Output YAML structure
---------------------
By default we output:
    routines:
      - routine_name: ...
        ...

If you want additional top-level keys (e.g., dsn), add them manually or use --wrap-with-dsn.

Examples
--------
1) Generate YAML from files in scripts/sql/ starting with bench. :
   ./proccall_sqlcfg.py \
     --input-directory scripts/sql \
     --input-file-prefix bench. \
     --output-yaml proccall.generated.yaml

2) Set defaults:
   ./proccall_sqlcfg.py \
     --input-directory scripts/sql \
     --input-file-prefix bench. \
     --default-expected-ms 1300 \
     --default-timeout-ms 2000 \
     --default-transaction commit \
     --default-warmups 1 \
     --default-executions 2
"""

from __future__ import annotations

import argparse
import re
from pathlib import Path
from typing import Dict, List, Set, Tuple, Optional

import yaml


# Match :param_name but NOT :: (type cast)
BIND_RE = re.compile(r"(?<!:):([A-Za-z_][A-Za-z0-9_]*)")


def extract_bind_params(sql_text: str) -> List[str]:
    """Return sorted unique bind parameter names found as :name (excluding :: casts)."""
    names = set(BIND_RE.findall(sql_text))
    return sorted(names)


def extract_desc(sql_text: str) -> Optional[str]:
    """
    Try to extract a description from the top of the SQL file.

    Supports:
      -- desc: ...
      /* desc: ... */
    Only checks early part of the file (first ~2KB) to keep it cheap.
    """
    head = sql_text[:2048]

    # -- desc: ...
    for line in head.splitlines():
        s = line.strip()
        if not s:
            continue
        m = re.match(r"--\s*desc\s*:\s*(.+)\s*$", s, flags=re.IGNORECASE)
        if m:
            return m.group(1).strip()
        # stop scanning after first non-comment non-empty line
        if not s.startswith("--"):
            break

    # /* desc: ... */
    m = re.search(r"/\*\s*desc\s*:\s*(.+?)\s*\*/", head, flags=re.IGNORECASE | re.DOTALL)
    if m:
        return " ".join(m.group(1).strip().split())

    return None


def build_routine_entry(
    sql_file: Path,
    *,
    routine_name: str,
    default_fetch_mode: str,
    default_expected_ms: int,
    default_timeout_ms: int,
    default_transaction: str,
    default_warmups: int,
    default_executions: int,
    default_param_style: str,
    default_param_type: str,
) -> Dict:
    sql_text = sql_file.read_text(encoding="utf-8", errors="replace")
    params = extract_bind_params(sql_text)
    desc = extract_desc(sql_text)

    if not desc:
        if params:
            desc = f"SQL statement with bind variables ({', '.join(params)})"
        else:
            desc = "SQL statement (no bind variables)"

    entry = {
        "routine_name": routine_name,
        "routine_kind": "sqlfile",
        "routine_desc": desc,
        "fetch_mode": default_fetch_mode,
        "expected_ms": int(default_expected_ms),
        "timeout_ms": int(default_timeout_ms),
        "transaction": default_transaction,
        "warmups": int(default_warmups),
        "executions": int(default_executions),
        "param_style": default_param_style,
        "parameters": [{"name": p, "type": default_param_type} for p in params],
    }
    return entry


def parse_args() -> argparse.Namespace:
    p = argparse.ArgumentParser(
        description="Generate proccall.py YAML config from a directory of .sql files."
    )
    p.add_argument("--input-directory", required=True, help="Directory containing .sql files.")
    p.add_argument(
        "--input-file-prefix",
        default="",
        help="Only include .sql files whose basename starts with this prefix (default: include all).",
    )
    p.add_argument(
        "--strip-prefix",
        default="",
        help="If provided, strip this prefix from routine_name (applied after basename without .sql is computed).",
    )
    p.add_argument("--output-yaml", required=True, help="Output YAML file path.")

    # Defaults for generated entries
    p.add_argument("--default-fetch-mode", default="none", choices=["none", "scalar", "vector", "cursor"],
                   help="Default fetch_mode to set for sqlfile routines (default: none).")
    p.add_argument("--default-expected-ms", type=int, default=1300)
    p.add_argument("--default-timeout-ms", type=int, default=2000)
    p.add_argument("--default-transaction", default="commit", choices=["commit", "rollback"])
    p.add_argument("--default-warmups", type=int, default=1)
    p.add_argument("--default-executions", type=int, default=2)
    p.add_argument("--default-param-style", default="named", choices=["named", "positional"])
    p.add_argument("--default-param-type", default="bigint", help="Parameter type to assign in YAML (default: bigint).")

    # Optional wrapping
    p.add_argument(
        "--wrap-with-dsn",
        default=None,
        help="If provided, output will be {dsn: <value>, routines: [...]}.",
    )

    return p.parse_args()


def main() -> int:
    args = parse_args()

    in_dir = Path(args.input_directory).expanduser().resolve()
    if not in_dir.exists() or not in_dir.is_dir():
        raise SystemExit(f"--input-directory not found or not a directory: {in_dir}")

    prefix = args.input_file_prefix or ""
    sql_files = sorted([p for p in in_dir.glob("*.sql") if p.name.startswith(prefix)])

    if not sql_files:
        raise SystemExit(f"No .sql files found in {in_dir} with prefix {prefix!r}")

    routines = []
    for f in sql_files:
        base = f.stem  # basename without .sql
        routine_name = base
        if args.strip_prefix and routine_name.startswith(args.strip_prefix):
            routine_name = routine_name[len(args.strip_prefix):]

        entry = build_routine_entry(
            f,
            routine_name=routine_name,
            default_fetch_mode=args.default_fetch_mode,
            default_expected_ms=args.default_expected_ms,
            default_timeout_ms=args.default_timeout_ms,
            default_transaction=args.default_transaction,
            default_warmups=args.default_warmups,
            default_executions=args.default_executions,
            default_param_style=args.default_param_style,
            default_param_type=args.default_param_type,
        )
        routines.append(entry)

    out_obj: Dict = {"routines": routines}
    if args.wrap_with_dsn is not None:
        out_obj = {"dsn": args.wrap_with_dsn, "routines": routines}

    out_path = Path(args.output_yaml).expanduser()
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(
        yaml.safe_dump(out_obj, sort_keys=False, allow_unicode=True),
        encoding="utf-8",
    )

    print(f"Wrote YAML with {len(routines)} routine(s) to: {out_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
