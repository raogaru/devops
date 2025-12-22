#!/usr/bin/python3
# ============================================================
# PostgreSQL data comparison tool
# rdb_datacomp.py
# rdb_datacomp.py [pgdatacomp.yaml]
# methods section: all methods will be tested with fail faster approach
# ============================================================

import sys
import yaml
import psycopg2
import hashlib
import random

# ============================================================
# CONFIG
# ============================================================

def load_config(path="datacomp.yaml"):
    with open(path, "r") as f:
        cfg = yaml.safe_load(f)
    validate_config(cfg)
    return cfg


def validate_config(cfg):
    for sec in ("source", "target", "compare", "methods"):
        if sec not in cfg:
            raise ValueError(f"Missing required section: {sec}")

    compare = cfg["compare"]
    if "schema" not in compare or "tables" not in compare:
        raise ValueError("compare.schema and compare.tables are required")

    tables = compare["tables"]
    if not (tables == "all" or isinstance(tables, list)):
        raise ValueError("compare.tables must be 'all' or a list")


# ============================================================
# DB
# ============================================================

def connect_db(cfg):
    return psycopg2.connect( host=cfg["host"], port=cfg["port"], dbname=cfg["database"], user=cfg["user"], password=cfg["password"],)

def fetch_all_tables(conn, schema):
    sql = """
        SELECT c.relname
        FROM pg_class c
        JOIN pg_namespace n ON n.oid = c.relnamespace
        WHERE n.nspname = %s
          AND c.relkind = 'r'
        ORDER BY c.relname
    """
    with conn.cursor() as cur:
        cur.execute(sql, (schema,))
        return [r[0] for r in cur.fetchall()]


def resolve_tables(conn, schema, tables_cfg):
    if isinstance(tables_cfg, str):
        if tables_cfg.lower() != "all":
            raise ValueError("tables must be 'all' or list")
        return fetch_all_tables(conn, schema)

    if isinstance(tables_cfg, list):
        if tables_cfg == ["all"]:
            print("⚠️  Warning: use 'tables: all' instead of '- all'")
            return fetch_all_tables(conn, schema)
        return tables_cfg

    raise ValueError("Invalid tables configuration")


# ============================================================
# COMPARE METHOD: COLUMN - Compare column names and column order
# ============================================================

def compare_columns(src, tgt, schema, table):
    sql = """
        SELECT string_agg(column_name, ',' ORDER BY ordinal_position) AS column_list
        FROM information_schema.columns WHERE table_schema=%s AND table_name=%s
    """
    with src.cursor() as c1, tgt.cursor() as c2:
        c1.execute(sql, (schema, table))
        c2.execute(sql, (schema, table))
        return c1.fetchone()[0], c2.fetchone()[0]

# ============================================================
# COMPARE METHOD: ROWCNT - Total row count of the table
# ============================================================

def compare_rowcnt(src, tgt, schema, table):
    sql = f"SELECT count(*) FROM {schema}.{table}"
    with src.cursor() as c1, tgt.cursor() as c2:
        c1.execute(sql)
        c2.execute(sql)
        return c1.fetchone()[0], c2.fetchone()[0]


# ============================================================
# COMPARE METHOD: CHKSUM - md5 check sum of row to match
# ============================================================

def table_chksum(conn, schema, table, ignore_cols=None):
    ignore_cols = ignore_cols or []

    col_sql = """
        SELECT column_name
        FROM information_schema.columns
        WHERE table_schema = %s
          AND table_name = %s
        ORDER BY ordinal_position
    """

    with conn.cursor() as cur:
        cur.execute(col_sql, (schema, table))
        cols = [c[0] for c in cur.fetchall() if c[0] not in ignore_cols]

    if not cols:
        return None

    col_expr = " || '|' || ".join(cols)

    sql = f"""
        SELECT md5(string_agg(md5({col_expr}::text), ''))
        FROM {schema}.{table}
    """

    with conn.cursor() as cur:
        cur.execute(sql)
        return cur.fetchone()[0]


# ============================================================
# COMPARE METHOD: SAMPLE
# ============================================================

def sample_rows(conn, schema, table, percent):
    sql = f"SELECT * FROM {schema}.{table} TABLESAMPLE SYSTEM (%s)"
    with conn.cursor() as cur:
        cur.execute(sql, (percent,))
        return cur.fetchall()


# ============================================================
# RUNNER
# ============================================================

def run_compare(cfg):
    src = connect_db(cfg["source"])
    tgt = connect_db(cfg["target"])

    schema = cfg["compare"]["schema"]
    tables_cfg = cfg["compare"]["tables"]
    methods = cfg["methods"]
    opts = cfg.get("options", {})

    tables = resolve_tables(src, schema, tables_cfg)

    print(f"\nSchema: {schema}")
    print(f"Tables ({len(tables)}): {', '.join(tables)}\n")

    for table in tables:
        print(f"\n▶ Table: {table}")

        if "column" in methods:
            src_colnames, tgt_colnames = compare_columns( src, tgt, schema, table)
            if (src_colnames == tgt_colnames):
                print(f"  ✓ column match: source={len(src_colnames)} target={len(tgt_colnames)}")
            else:
                print(f"  ✗ column mismatch: source={len(src_colnames)} target={len(tgt_colnames)}")
                print(f"  source={src_colnames}")
                print(f"  target={tgt_colnames}")
                continue

        if "rowcnt" in methods:
            src_rowcnt, tgt_rowcnt = compare_rowcnt(src, tgt, schema, table)
            if (src_rowcnt == tgt_rowcnt):
                print(f"  ✓ rowcnt match: source={src_rowcnt} target={tgt_rowcnt}")
            else:
                print(f"  ✗ rowcnt mismatch: source={src_rowcnt} target={tgt_rowcnt}")
                continue

        if "chksum" in methods:
            src_chksum = table_chksum( src, schema, table, opts.get("ignore_columns"))
            tgt_chksum = table_chksum( tgt, schema, table, opts.get("ignore_columns"))
            if (src_chksum == tgt_chksum):
                print(f"  ✓ chksum match: source={src_chksum} target={tgt_chksum}")
            else:
                print(f"  ✗ chksum mismatch: source={src_chksum} target={tgt_chksum}")
                continue

        if "sample" in methods:
            pct = opts.get("sample_percent", 5)
            src_sample = sample_rows(src, schema, table, pct)
            tgt_sample = sample_rows(tgt, schema, table, pct)
            if (src_sample == tgt_sample):
                print(f"  ✓ sample match: source={len(src_sample)} target={len(tgt_sample)}")
            else:
                print(f"  ✗ sample mismatch: source={len(src_sample)} target={len(tgt_sample)}")
                continue

    src.close()
    tgt.close()


# ============================================================
# CLI
# ============================================================

def main():
    cfg_file = sys.argv[1] if len(sys.argv) > 1 else "pgdatacomp.yaml"
    cfg = load_config(cfg_file)
    run_compare(cfg)


if __name__ == "__main__":
    main()

