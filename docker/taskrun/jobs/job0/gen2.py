import random
import uuid
import json

# --------------------------------------------------------------
# Configuration
# --------------------------------------------------------------
table_schema = "public"
table_name_prefix = "b"
table_count = 100
column_name_prefix = "c"
column_count_min = 5
column_count_max = 20
table_rows_min = 10000
table_rows_max = 50000

create_table_file = "c.sql"
drop_table_file = "d.sql"
insert_table_file = "i.sql"

# --------------------------------------------------------------
# Data types used
# --------------------------------------------------------------
pg_types = ["smallint","integer","bigint","numeric","real","double precision","char","varchar","text","uuid","boolean","date","time","timestamp","jsonb","bytea"]

# --------------------------------------------------------------
# Metadata Generators (DDL definitions)
# --------------------------------------------------------------

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
# --------------------------------------------------------------
def sql_expr_numeric(p, s):
    return f"(random()*(10^({p}-{s})))::numeric({p},{s})"

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
# --------------------------------------------------------------
ddl_output = []
insert_output = []
drop_output = []

for t in range(1, table_count + 1):

    tabname = f"{table_name_prefix}{t}"

    # Add DROP statement
    drop_output.append(f"DROP TABLE IF EXISTS {tabname} CASCADE;")

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

print("Generated:", drop_table_file, create_table_file, insert_table_file)

