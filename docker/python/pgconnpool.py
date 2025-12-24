#!/usr/bin/python3
# ################################################################################
# python script to simulate connection pool
# ################################################################################
import time
import random
import threading
import yaml
from pathlib import Path
from psycopg_pool import ConnectionPool

# --------------------------------------------------
# Load configuration
# --------------------------------------------------

CONFIG_FILE = "pgconnpool.yaml"

cfg_path = Path(CONFIG_FILE)
if not cfg_path.exists():
    raise FileNotFoundError(f"Config file not found: {cfg_path}")

with cfg_path.open() as f:
    cfg = yaml.safe_load(f)

# --------------------------------------------------
# Database / DSN
# --------------------------------------------------
db = cfg["database"]
DSN = ( f"dbname={db['name']} user={db['user']} password={db['password']} host={db['host']} port={db['port']}")

# --------------------------------------------------
# Pool configuration
# --------------------------------------------------
pool_cfg = cfg["pool"]
pool = ConnectionPool(
    conninfo=DSN,
    min_size=pool_cfg["min_size"],
    max_size=pool_cfg["max_size"],
    max_idle=pool_cfg["max_idle"],
    timeout=pool_cfg["timeout"]
)

# --------------------------------------------------
# Workload configuration
# --------------------------------------------------

work = cfg["workload"]

SLEEP_MIN = work["worker_sleep"]["min"]
SLEEP_MAX = work["worker_sleep"]["max"]

WAVE_COUNT = work["waves"]["count"]
WAVE_MIN_CONN = work["waves"]["min_connections"]
WAVE_MAX_CONN = work["waves"]["max_connections"]
WAVE_PAUSE = work["waves"]["pause_between_waves"]

# --------------------------------------------------
# Worker logic
# --------------------------------------------------

def worker(worker_id):
    with pool.connection() as conn:
        with conn.cursor() as cur:
            cur.execute("SELECT pg_backend_pid()")
            pid = cur.fetchone()[0]
            sleep_time = random.uniform(SLEEP_MIN, SLEEP_MAX)
            print( f"[worker {worker_id:03d}] PID={pid} sleep={sleep_time:.2f}s pool={pool.get_stats()}")
            time.sleep(sleep_time)

# --------------------------------------------------
# Wave runner
# --------------------------------------------------
def run_wave(connections):
    threads = []
    for i in range(connections):
        t = threading.Thread(target=worker, args=(i,))
        t.start()
        threads.append(t)
    for t in threads:
        t.join()

# --------------------------------------------------
# Main simulation loop
# --------------------------------------------------

for wave in range(1, WAVE_COUNT + 1):
    wave_size = random.randint(WAVE_MIN_CONN, WAVE_MAX_CONN)
    print(f"\n=== Wave {wave}/{WAVE_COUNT}: requested {wave_size} connections ===")
    run_wave(wave_size)
    time.sleep(WAVE_PAUSE)

