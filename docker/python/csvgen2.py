#!/usr/bin/env python3
# ################################################################################
# Read Postgres schema table column definitions and then generate csv files compatable to load into postgres
# ################################################################################
import psycopg2
import yaml
import random
import csv
import threading
import time
import logging
from pathlib import Path
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor

# ==================================================
# Load configuration
# ==================================================

CONFIG_FILE = "csvgen2.yaml"

with open(CONFIG_FILE) as f:
    cfg = yaml.safe_load(f)

db = cfg["database"]
schema = cfg["schema"]["name"]
tables_cfg = cfg["schema"]["tables"]

out_cfg = cfg["output"]
OUTPUT_DIR = Path(out_cfg["output_dir"])
MIN_ROWS = out_cfg["min_rows"]
MAX_ROWS = out_cfg["max_rows"]
INTERVAL_SEC = out_cfg["interval_sec"]

THREADS = cfg["parallelism"]["threads"]

opts = cfg.get("options", {})
RANDOM_SEED = opts.get("random_seed")
LOG_FILE = opts.get("log_file", "pg_csvgen.log")

if RANDOM_SEED is not None:
    random.seed(RANDOM_SEED)

# ==================================================
# Logging setup
# ==================================================

logging.basicConfig(
    filename=LOG_FILE,
    level=logging.INFO,
    format="%(asctime)s | %(levelname)s | %(message)s"
)

log = logging.getLogger("pg_csvgen")

# ==================================================
# Thread-safe globals
# ==================================================

id_sequences = {}
file_counters = {}
logged_columns = set()

id_lock = threading.Lock()
counter_lock = threading.Lock()
logged_lock = threading.Lock()

# ==================================================
# Database helpers
# ==================================================

def get_conn():
    return psycopg2.connect(
        host=db["host"],
        port=db["port"],
        dbname=db["name"],
        user=db["user"],
        password=db["password"]
    )

def discover_tables(conn):
    if tables_cfg != "all":
        return tables_cfg

    sql = """
    SELECT tablename
    FROM pg_catalog.pg_tables
    WHERE schemaname = %s
    ORDER BY tablename
    """
    with conn.cursor() as cur:
        cur.execute(sql, (schema,))
        return [r[0] for r in cur.fetchall()]

# ==================================================
# Column metadata
# ==================================================

COLUMN_SQL = """
SELECT
    column_name,
    data_type,
    character_maximum_length,
    numeric_precision,
    numeric_scale,
    ordinal_position
FROM information_schema.columns
WHERE table_schema = %s
  AND table_name = %s
ORDER BY ordinal_position
"""

# ==================================================
# Deterministic ID generator
# ==================================================

def next_id(table):
    with id_lock:
        id_sequences.setdefault(table, 0)
        id_sequences[table] += 1
        return id_sequences[table]

# ==================================================
# Value generators (non-id)
# ==================================================

def gen_value(col):
    dt = col["data_type"]

    if dt in ("smallint", "integer", "bigint"):
        return random.randint(1, 1_000_000)

    if dt in ("numeric", "decimal"):
        p = col["numeric_precision"] or 10
        s = col["numeric_scale"] or 2
        return round(random.uniform(1, 10 ** (p - s)), s)

    if dt in ("real", "double precision"):
        return round(random.uniform(1, 10000), 4)

    if dt in ("character varying", "varchar"):
        ln = col["character_maximum_length"] or 20
        return f"str_{random.randint(1, 10**6)}"[:ln]

    if dt == "character":
        ln = col["character_maximum_length"] or 1
        return "X" * ln

    if dt == "text":
        return f"text_{random.randint(1, 10**6)}"

    if dt == "boolean":
        return random.choice([True, False])

    if dt == "date":
        return datetime.utcnow().date().isoformat()

    if dt.startswith("timestamp"):
        return datetime.utcnow().isoformat(sep=" ")

    if dt == "uuid":
        import uuid
        return str(uuid.uuid4())

    return None

# ==================================================
# CSV generation per table (threaded)
# ==================================================

def generate_csv_for_table(table):
    conn = get_conn()
    cur = conn.cursor()

    cur.execute(COLUMN_SQL, (schema, table))
    rows = cur.fetchall()

    if not rows:
        log.warning("No columns found for %s.%s", schema, table)
        conn.close()
        return

    columns = [
        {
            "name": r[0],
            "data_type": r[1],
            "character_maximum_length": r[2],
            "numeric_precision": r[3],
            "numeric_scale": r[4],
            "pos": r[5],
        }
        for r in rows
    ]

    # Log column metadata ONCE per table
    with logged_lock:
        if table not in logged_columns:
            log.info( "[COLUMNS] schema=%s table=%s columns=[%s]", schema, table,
                ", ".join(f"{c['name']}:{c['data_type']}" for c in columns)
            )
            logged_columns.add(table)

    row_count = random.randint(MIN_ROWS, MAX_ROWS)

    ts = datetime.utcnow().strftime("%Y-%m-%d-%H-%M-%S")
    table_dir = OUTPUT_DIR / table
    table_dir.mkdir(parents=True, exist_ok=True)

    csv_file = table_dir / f"{ts}.csv"

    with counter_lock:
        file_counters.setdefault(table, 0)
        file_counters[table] += 1
        file_no = file_counters[table]

    print(f"▶ {table}: rows={row_count} file={csv_file}")

    with csv_file.open("w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow([c["name"] for c in columns])

        for _ in range(row_count):
            row = []
            for idx, c in enumerate(columns):
                if idx == 0 and c["name"].lower() == "id":
                    row.append(next_id(table))
                else:
                    row.append(gen_value(c))
            writer.writerow(row)

    log.info( "[FILE] ts=%s table=%s #=%d file=%s rows=%d",
        datetime.utcnow().strftime("%Y-%m-%d-%H:%M:%S"), table, file_no, csv_file, row_count)

    conn.close()

# ==================================================
# Main continuous loop
# ==================================================

conn = get_conn()
tables = discover_tables(conn)
conn.close()

print(f"▶ Schema: {schema}")
print(f"▶ Tables: {tables}")
print(f"▶ Threads: {THREADS}")
print(f"▶ Interval: {INTERVAL_SEC} sec")
print(f"▶ Log file: {LOG_FILE}")

executor = ThreadPoolExecutor(max_workers=THREADS)

try:
    while True:
        start = time.time()
        for t in tables:
            executor.submit(generate_csv_for_table, t)
        elapsed_sec = (time.time() - start)
        sleep_sec = max(0, INTERVAL_SEC - elapsed_sec)
        time.sleep(sleep_sec)

except KeyboardInterrupt:
    print("\n⏹ Stopping CSV generator...")
    executor.shutdown(wait=True)

