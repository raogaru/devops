#!/usr/local/bin/python3
# ################################################################################
# python script to generate DDL scripts to create, drop, truncate, analyze, insert into random tables
# change config parameters below before you run. no arguments.
# ################################################################################

# --------------------------------------------------------------
# IMPORT 
import random
import uuid
import json
import yaml
from pathlib import Path

with open("tabgen.yaml") as f:
    config = yaml.safe_load(f)

# --------------------------------------------------------------
# Load configuration
# --------------------------------------------------------------

CONFIG_FILE = "tabgen.yaml"

cfg_path = Path(CONFIG_FILE)
if not cfg_path.exists():
    raise FileNotFoundError(f"Config file not found: {cfg_path}")

with cfg_path.open() as f:
    cfg = yaml.safe_load(f)

if "input" not in cfg or "output" not in cfg:
    raise ValueError("Config must contain 'input' and 'output' sections")

inp = cfg["input"]
out = cfg["output"]

# --------------------------------------------------------------
# Configuration (from YAML)
# --------------------------------------------------------------

table_schema        = inp["table_schema"]
table_name_prefix   = inp["table_name_prefix"]
table_count         = int(inp["table_count"])
column_name_prefix  = inp["column_name_prefix"]
column_count_min    = int(inp["column_count_min"])
column_count_max    = int(inp["column_count_max"])
table_rows_min      = int(inp["table_rows_min"])
table_rows_max      = int(inp["table_rows_max"])

create_table_file   = out["create_table_file"]
drop_table_file     = out["drop_table_file"]
insert_table_file   = out["insert_table_file"]
analyze_table_file  = out["analyze_table_file"]
truncate_table_file = out["truncate_table_file"]
select_table_file   = out["select_table_file"]
bench_table_file    = out.get("bench_table_file")

# --------------------------------------------------------------
# Validation
# --------------------------------------------------------------

assert table_count > 0, "table_count must be > 0"
assert column_count_min <= column_count_max, "Invalid column count range"
assert table_rows_min <= table_rows_max, "Invalid row count range"

# --------------------------------------------------------------
# Ensure output directories exist
# --------------------------------------------------------------

def ensure_parent(path):
    Path(path).parent.mkdir(parents=True, exist_ok=True)

for f in out.values():
    ensure_parent(f)

# --------------------------------------------------------------
# Data types used
pg_types = ["smallint","integer","bigint","numeric","real","double precision","char","varchar","text","uuid","boolean","date","time","timestamp","jsonb","bytea"]

# --------------------------------------------------------------
# Metadata Generators (DDL definitions)

def make_numeric_definition():
    p = random.randint(4, 12)
    s = random.randint(0, min(3, p - 1))
    return f"numeric({p},{s})", ("numeric", p, s)

def make_char_definition():
    n = random.randint(1, 20)
    return f"char({n})", ("char", n)

def make_varchar_definition():
    n = random.randint(1, 50)
    return f"varchar({n})", ("varchar", n)

# --------------------------------------------------------------
# SQL Expression Generators (used in INSERT SELECT)

def sql_expr_numeric(p, s):
    return f"(random()*(10^({p}-{s})-1))::numeric({p},{s})"

def sql_expr_char(n):
    return f"substr(md5(random()::text),1,{n})"

def sql_expr_varchar(n):
    return f"substr(md5(random()::text),1,(1+floor(random()*{n})::int))"

def sql_expr_jsonb():
    return (
        "jsonb_build_object("
        "  'k', substr(md5(random()::text),1,4), "
        "  'v', floor(random()*100)"
        ")"
    )

# --------------------------------------------------------------
# Main Script

ddl_output = []
insert_output = []
drop_output = []
analyze_output = []
truncate_output = []
select_output = []

for t in range(1, table_count + 1):

    tabname = f"{table_name_prefix}{t}"

    # Add DROP statement
    drop_output.append(f"DROP TABLE IF EXISTS {table_schema}.{tabname} CASCADE;")
    analyze_output.append(f"ANALYZE {table_schema}.{tabname} ;")
    truncate_output.append(f"TRUNCATE {table_schema}.{tabname} ;")
    select_output.append(f"SELECT count(1) FROM {table_schema}.{tabname} ;")

    # Build CREATE TABLE
    ddl = [f"CREATE TABLE {table_schema}.{tabname} (", "    id BIGSERIAL PRIMARY KEY"]

    col_meta = []      # Stores ("type", optional args...)

    column_count = random.randint(column_count_min, column_count_max)

    # Generate columns
    for c in range(1, column_count + 1):
        colname = f"{column_name_prefix}{c}"
        dtype = random.choice(pg_types)

        if dtype == "numeric":
            decl, meta = make_numeric_definition()
        elif dtype == "char":
            decl, meta = make_char_definition()
        elif dtype == "varchar":
            decl, meta = make_varchar_definition()
        else:
            decl = dtype
            meta = (dtype,)

        ddl.append(f"    ,{colname} {decl}")
        col_meta.append(meta)

    ddl.append(");\n")
    ddl_output.extend(ddl)

    # Pick random number of rows for generate_series()
    rows_per_table = random.randint(table_rows_min, table_rows_max)

    # Build SQL expressions for INSERT SELECT
    exprs = []

    for meta in col_meta:
        base_type = meta[0]

        if base_type == "smallint":
            exprs.append("floor(random()*32767)::smallint")

        elif base_type == "integer":
            exprs.append("floor(random()*2147483647)::int")

        elif base_type == "bigint":
            exprs.append("floor(random()*9223372036854775807)::bigint")

        elif base_type == "numeric":
            p, s = meta[1], meta[2]
            exprs.append(sql_expr_numeric(p, s))

        elif base_type == "real":
            exprs.append("(random()*10000)::real")

        elif base_type == "double precision":
            exprs.append("(random()*10000)::double precision")

        elif base_type == "char":
            n = meta[1]
            exprs.append(sql_expr_char(n))

        elif base_type == "varchar":
            n = meta[1]
            exprs.append(sql_expr_varchar(n))

        elif base_type == "text":
            exprs.append("substr(md5(random()::text),1,30)")

        elif base_type == "uuid":
            exprs.append("gen_random_uuid()")

        elif base_type == "boolean":
            exprs.append("(random() > 0.5)")

        elif base_type == "date":
            exprs.append("DATE '1970-01-01' + (random()*20000)::int")

        elif base_type == "time":
            exprs.append("TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')")

        elif base_type == "timestamp":
            exprs.append("TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')")

        elif base_type == "jsonb":
            exprs.append(sql_expr_jsonb())

        elif base_type == "bytea":
            exprs.append("decode(substring(md5(random()::text) for 8), 'hex')")

        else:
            exprs.append("NULL")

    # Build INSERT ... SELECT with generate_series
    insert_output.append(
        f"INSERT INTO {table_schema}.{tabname} ("
        f"{','.join(f'{column_name_prefix}{i}' for i in range(1,column_count+1))})\n"
        f"SELECT {', '.join(exprs)}\n"
        f"FROM generate_series(1, {rows_per_table});\n"
    )

# Write files
with open(drop_table_file, "w") as f:
    f.write("\n".join(drop_output))

with open(create_table_file, "w") as f:
    f.write("\n".join(ddl_output))

with open(insert_table_file, "w") as f:
    f.write("\n".join(insert_output))

with open(analyze_table_file, "w") as f:
    f.write("\n".join(analyze_output))

with open(truncate_table_file, "w") as f:
    f.write("\n".join(truncate_output))

with open(select_table_file, "w") as f:
    f.write("\n".join(select_output))

print("Generated:", drop_table_file, create_table_file, insert_table_file, analyze_table_file, truncate_table_file, select_table_file)

# ################################################################################
