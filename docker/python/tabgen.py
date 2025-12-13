#!/usr/local/bin/python3
# ################################################################################
# tabgen.py
#
# Generate PostgreSQL tables (regular or partitioned) for benchmarking
# - INSERT expressions unchanged
# - Partition rules enforced
# - PRIMARY KEY includes partition key when partitioned
# ################################################################################

import sys
import random
import yaml
from pathlib import Path
from pathlib import Path

# --------------------------------------------------------------
# Load configuration
# --------------------------------------------------------------

CONFIG_FILE = sys.argv[1] if len(sys.argv) > 1 else "tabgen.yaml"

cfg_path = Path(CONFIG_FILE)
if not cfg_path.exists():
    raise FileNotFoundError(f"Config file not found: {cfg_path}")

with cfg_path.open("r") as f:
    cfg = yaml.safe_load(f)

if "input" not in cfg or "output" not in cfg:
    raise ValueError("Config must contain 'input' and 'output' sections")

inp = cfg["input"]
out = cfg["output"]

# --------------------------------------------------------------
# Base configuration
# --------------------------------------------------------------

table_schema        = inp["table_schema"]
table_name_prefix   = inp["table_name_prefix"]
table_count         = int(inp["table_count"])
column_name_prefix  = inp["column_name_prefix"]
column_count_min    = int(inp["column_count_min"])
column_count_max    = int(inp["column_count_max"])
table_rows_min      = int(inp["table_rows_min"])
table_rows_max      = int(inp["table_rows_max"])

# --------------------------------------------------------------
# Partition configuration (OPTIONAL)
# --------------------------------------------------------------

part_cfg = inp.get("partition", {}) or {}

partition_enabled  = bool(part_cfg.get("enabled", False))
partition_type_cfg = part_cfg.get("type", "random").lower()
partition_cnt_min  = int(part_cfg.get("partition_count_min", 3))
partition_cnt_max  = int(part_cfg.get("partition_count_max", 8))

partition_types = ["list", "hash", "range"]

# --------------------------------------------------------------
# Validation
# --------------------------------------------------------------

assert table_count > 0, "table_count must be > 0"
assert table_count <= 1000, "table_count must be <= 1000"
assert column_count_min >= 1, "column_count_min >=1"
assert column_count_max <= 500, "column_count_min >=1"
assert column_count_min <= column_count_max, "column_count_min must be <= column_count_max"
assert table_rows_min >= 0, "table_rows_min must be >= 0"
assert table_rows_max <= 10000000, "table_rows_max must be <= 10000000"
assert table_rows_min <= table_rows_max, "table_rows_min must be <= table_rows_max"
assert partition_cnt_min >=1, "partition_cnt_min must be >= 1"
assert partition_cnt_max <=10, "partition_cnt_max must be <= 10"

# --------------------------------------------------------------
# Output files
# --------------------------------------------------------------

create_table_file   = out["create_table_file"]
drop_table_file     = out["drop_table_file"]
insert_table_file   = out["insert_table_file"]
analyze_table_file  = out["analyze_table_file"]
truncate_table_file = out["truncate_table_file"]
select_table_file   = out["select_table_file"]

# --------------------------------------------------------------
# Ensure output directories exist
# --------------------------------------------------------------

def ensure_parent(path):
    Path(path).parent.mkdir(parents=True, exist_ok=True)

for f in out.values():
    ensure_parent(f)

# --------------------------------------------------------------
# Data types
# --------------------------------------------------------------

pg_types = [
    "smallint","integer","bigint","numeric","real","double precision",
    "char","varchar","text","uuid","boolean","date","time",
    "timestamp","jsonb","bytea"
]

# --------------------------------------------------------------
# Metadata generators
# --------------------------------------------------------------

def make_numeric_definition():
    p = random.randint(4, 12)
    s = random.randint(0, min(3, p - 1))
    return ("numeric", p, s)

def make_char_definition():
    n = random.randint(1, 20)
    return ("char", n)

def make_varchar_definition():
    n = random.randint(1, 50)
    return ("varchar", n)

def ddl_from_meta(meta):
    if meta[0] == "numeric":
        return f"numeric({meta[1]},{meta[2]})"
    if meta[0] == "char":
        return f"char({meta[1]})"
    if meta[0] == "varchar":
        return f"varchar({meta[1]})"
    return meta[0]

# --------------------------------------------------------------
# SQL Expression Generators (UNCHANGED)
# --------------------------------------------------------------

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

def sql_expr_from_meta(meta):
    t = meta[0]
    if t == "smallint":
        return "floor(random()*32767)::smallint"
    if t == "integer":
        return "floor(random()*2147483647)::int"
    if t == "bigint":
        return "floor(random()*9223372036854775807)::bigint"
    if t == "numeric":
        return sql_expr_numeric(meta[1], meta[2])
    if t == "real":
        return "(random()*10000)::real"
    if t == "double precision":
        return "(random()*10000)::double precision"
    if t == "char":
        return sql_expr_char(meta[1])
    if t == "varchar":
        return sql_expr_varchar(meta[1])
    if t == "text":
        return "substr(md5(random()::text),1,30)"
    if t == "uuid":
        return "gen_random_uuid()"
    if t == "boolean":
        return "(random() > 0.5)"
    if t == "date":
        return "DATE '1970-01-01' + (random()*20000)::int"
    if t == "time":
        return "TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')"
    if t == "timestamp":
        return "TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')"
    if t == "jsonb":
        return sql_expr_jsonb()
    if t == "bytea":
        return "decode(substring(md5(random()::text) for 8), 'hex')"
    return "NULL"

# --------------------------------------------------------------
# Main generation loop
# --------------------------------------------------------------

ddl_output      = []
insert_output   = []
drop_output     = []
analyze_output  = []
truncate_output = []
select_output   = []

for t in range(1, table_count + 1):

    tabname = f"{table_name_prefix}{t}"
    fqtn = f"{table_schema}.{tabname}"

    drop_output.append(f"DROP TABLE IF EXISTS {fqtn} CASCADE;")
    analyze_output.append(f"ANALYZE {fqtn};")
    truncate_output.append(f"TRUNCATE {fqtn};")
    select_output.append(f"SELECT count(1) FROM {fqtn};")

    # ---------------------------
    # Choose partition type first
    # ---------------------------

    if partition_enabled:
        ptype = (
            random.choice(partition_types)
            if partition_type_cfg == "random"
            else partition_type_cfg
        )
    else:
        ptype = None

    # ---------------------------
    # Column generation
    # ---------------------------

    column_count = random.randint(column_count_min, column_count_max)
    columns = []

    if partition_enabled:
        part_col = f"{column_name_prefix}1"

        if ptype == "list":
            part_meta = ("numeric", 1, 0)
        elif ptype == "hash":
            part_meta = ("integer",)
        elif ptype == "range":
            part_meta = (random.choice(["integer", "date"]),)
        else:
            raise ValueError(f"Invalid partition type: {ptype}")

        columns.append((part_col, part_meta))
        start_idx = 2
    else:
        start_idx = 1

    for c in range(start_idx, column_count + 1):
        colname = f"{column_name_prefix}{c}"
        dtype = random.choice(pg_types)

        if dtype == "numeric":
            meta = make_numeric_definition()
        elif dtype == "char":
            meta = make_char_definition()
        elif dtype == "varchar":
            meta = make_varchar_definition()
        else:
            meta = (dtype,)

        columns.append((colname, meta))

    # ---------------------------
    # CREATE TABLE
    # ---------------------------

    ddl = [f"CREATE TABLE {fqtn} ("]

    if partition_enabled:
        ddl.append("    id BIGSERIAL")
    else:
        ddl.append("    id BIGSERIAL PRIMARY KEY")

    for cname, meta in columns:
        ddl.append(f"    ,{cname} {ddl_from_meta(meta)}")

    # Primary key definition
    if partition_enabled:
        ddl.append(f"    ,PRIMARY KEY (id, {part_col})")

#    ddl[-1] = ddl[-1].rstrip(",")

    if partition_enabled:
        ddl.append(f") PARTITION BY {ptype.upper()} ({part_col});\n")
    else:
        ddl.append(");\n")

    ddl_output.extend(ddl)

    # ---------------------------
    # Child partitions
    # ---------------------------

    if partition_enabled:
        pcount = random.randint(partition_cnt_min, partition_cnt_max)

        if ptype == "hash":
            for i in range(pcount):
                ddl_output.append( f"CREATE TABLE {fqtn}_p{i} PARTITION OF {fqtn} FOR VALUES WITH (MODULUS {pcount}, REMAINDER {i});" )

        elif ptype == "list":
            values = list(range(0, 10))
            random.shuffle(values)
            chunks = [values[i::pcount] for i in range(pcount)]

            for i, vals in enumerate(chunks):
                ddl_output.append( f"CREATE TABLE {fqtn}_p{i} PARTITION OF {fqtn} FOR VALUES IN ({', '.join(map(str, vals))});" )

        elif ptype == "range":
            if part_meta[0] == "integer":
                start = 0
                step = 1000000
                for i in range(pcount):
                    ddl_output.append( f"CREATE TABLE {fqtn}_p{i} PARTITION OF {fqtn} FOR VALUES FROM ({start}) TO ({start + step});" )
                    start += step
                ddl_output.append( f"CREATE TABLE {fqtn}_px PARTITION OF {fqtn} FOR VALUES FROM ({start}) TO (2147483647);" )
            if part_meta[0] == "date":
                start = 1970
                step = 10
                for i in range(pcount):
                    ddl_output.append( f"CREATE TABLE {fqtn}_p{i} PARTITION OF {fqtn} FOR VALUES FROM ('{start}-01-01') TO ('{start + step}-01-01');" )
                    start += step
                ddl_output.append( f"CREATE TABLE {fqtn}_px PARTITION OF {fqtn} FOR VALUES FROM ('{start}-01-01') TO ('9999-01-01');" )

        ddl_output.append("")

    # ---------------------------
    # INSERT (UNCHANGED)
    # ---------------------------

    rows_per_table = random.randint(table_rows_min, table_rows_max)
    exprs = [sql_expr_from_meta(meta) for _, meta in columns]

    insert_output.append(
        f"INSERT INTO {fqtn} ({','.join(c for c,_ in columns)})\n"
        f"SELECT {', '.join(exprs)}\n"
        f"FROM generate_series(1, {rows_per_table});\n"
    )

# --------------------------------------------------------------
# Write files
# --------------------------------------------------------------

Path(drop_table_file).write_text("\n".join(drop_output))
Path(create_table_file).write_text("\n".join(ddl_output))
Path(insert_table_file).write_text("\n".join(insert_output))
Path(analyze_table_file).write_text("\n".join(analyze_output))
Path(truncate_table_file).write_text("\n".join(truncate_output))
Path(select_table_file).write_text("\n".join(select_output))

print("Generated:",
      drop_table_file,
      create_table_file,
      insert_table_file,
      analyze_table_file,
      truncate_table_file,
      select_table_file)

# ################################################################################

