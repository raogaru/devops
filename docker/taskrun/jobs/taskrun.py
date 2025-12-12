#!/usr/local/bin/python3
# ################################################################################
# Python script to read input yaml file and run tasks on postgres
# Refer job.yaml for requirements definition
# ################################################################################
import yaml
import psycopg2
import time
import hashlib
import os
import errno
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime
#from playsound import playsound

# -----------------------------------------
# Utilities
# -----------------------------------------
def advisory_key(task_id):
    return int(hashlib.sha256(task_id.encode()).hexdigest(), 16) % (2**31)

def log_result(conn, group, result, dry_run):
    with conn.cursor() as cur:
        cur.execute("""
            INSERT INTO pg_task_run
              (group_name, task_id, status, attempts, duration_sec, error_message, dry_run)
            VALUES (%s,%s,%s,%s,%s,%s,%s)
        """, (
            group,
            result["task"],
            result["status"],
            result["attempts"],
            result["duration"],
            result.get("error"),
            dry_run
        ))


# -----------------------------------------
# SQL loader (inline or sql_file)
# -----------------------------------------
_sql_file_cache = {}

def load_sql(task):
    task_id = task["id"]

    has_sql = "sql" in task
    has_file = "sql_file" in task

    if has_sql and has_file:
        raise ValueError(
            f"Task '{task_id}': both 'sql' and 'sql_file' are defined"
        )

    if not has_sql and not has_file:
        raise ValueError(
            f"Task '{task_id}': either 'sql' or 'sql_file' must be defined"
        )

    # Inline SQL
    if has_sql:
        sql = task["sql"]
        if not sql.strip():
            raise ValueError(
                f"Task '{task_id}': inline 'sql' is empty"
            )
        return sql, "sql"

    # SQL from file
    path = task["sql_file"]

    if not isinstance(path, str) or not path.strip():
        raise ValueError(
            f"Task '{task_id}': sql_file path is empty or invalid"
        )

    if not os.path.exists(path):
        raise FileNotFoundError(
            errno.ENOENT,
            f"Task '{task_id}': sql_file does not exist",
            path
        )

    if not os.path.isfile(path):
        raise ValueError(
            f"Task '{task_id}': sql_file is not a regular file: {path}"
        )

    if not os.access(path, os.R_OK):
        raise PermissionError(
            errno.EACCES,
            f"Task '{task_id}': permission denied reading sql_file",
            path
        )

    # Read & cache
    if path not in _sql_file_cache:
        with open(path, "r", encoding="utf-8") as f:
            sql = f.read()

        if not sql.strip():
            raise ValueError(
                f"Task '{task_id}': sql_file is empty: {path}"
            )

        _sql_file_cache[path] = sql

    return _sql_file_cache[path], "sql_file"

# -----------------------------------------
# SQL Execution with Locks + Retry
# -----------------------------------------
def run_task(dsn, group, task, defaults, execution_cfg):
    retries   = task.get("retries", defaults["retries"])
    delay     = task.get("retry_delay_sec", defaults["retry_delay_sec"])
    timeout   = task.get("statement_timeout_sec", defaults["statement_timeout_sec"])
    dry_run   = execution_cfg["dry_run"]

    attempt = 0
    start = datetime.now()

    while True:
        attempt += 1
        try:
            with psycopg2.connect(dsn) as conn:
                conn.autocommit = True
                with conn.cursor() as cur:

                    key = advisory_key(task["id"])
                    cur.execute("SELECT pg_try_advisory_lock(%s)", (key,))
                    if not cur.fetchone()[0]:
                        raise Exception("advisory lock already held")

                    if not dry_run:
                        cur.execute(f"SET statement_timeout = {timeout * 1000}")
                        try:
                            sql, sql_src = load_sql(task)
                        except Exception as e:
                            raise RuntimeError(str(e))
                        cur.execute(sql)

                    cur.execute("SELECT pg_advisory_unlock(%s)", (key,))
                    duration = (datetime.now() - start).total_seconds()

                    res = {
                        "task": task["id"],
                        "status": "SUCCESS",
                        "attempts": attempt,
                        "duration": duration,
                        "sql_src": sql_src
                    }

                    log_result(conn, group, res, dry_run)
                    return res

        except Exception as e:
            if attempt > retries:
                duration = (datetime.now() - start).total_seconds()
                res = {
                    "task": task["id"],
                    "status": "FAILED",
                    "attempts": attempt,
                    "duration": duration,
                    "sql_src": task.get("sql") and "sql" or "sql_file",
                    "error": str(e)
                }
                with psycopg2.connect(dsn) as conn:
                    conn.autocommit = True
                    log_result(conn, group, res, dry_run)
                return res

            time.sleep(delay)

# -----------------------------------------
# Dependency-Aware Group Runner
# -----------------------------------------
from concurrent.futures import ThreadPoolExecutor, FIRST_COMPLETED, wait
import time

def run_group(dsn, group, defaults, execution_cfg):
    print(f"\n▶ Group: {group['name']}")

    # -----------------------------------------
    # GROUP SKIP FUNCTIONALITY
    skip_group = group.get("skip", False)
    if skip_group:
        print(f"    group:{group['name']} SKIPPED")
        return

    group_start_time = datetime.now()
    print(f"    group:{group['name']} start_time: {group_start_time}")

    # -----------------------------------------
    # NORMAL EXECUTION
    repeat = group.get("repeat", 1)  
    max_workers = group.get("parallel", 1)  

    for iteration in range(1, repeat + 1):
        if (repeat > 1):
            print(f"    Iteration:{iteration}/{repeat}")
    
        tasks = {t["id"]: t for t in group["tasks"]}
        deps  = {t["id"]: set(t.get("depends_on", [])) for t in group["tasks"]}
    
        completed = {}
        running   = {}
        failed    = False
    
        executor = ThreadPoolExecutor(max_workers=max_workers)
    
        def ready_tasks():
            return [
                tid for tid, d in deps.items()
                if not d and tid not in completed and tid not in running
            ]
    
        try:
            while len(completed) < len(tasks):
    
                for tid in ready_tasks():
                    if len(running) >= max_workers:
                        break
    
                    future = executor.submit(
                        run_task,
                        dsn,
                        group["name"],
                        tasks[tid],
                        defaults,
                        execution_cfg
                    )
                    running[future] = tid
    
                if not running:
                    raise RuntimeError(
                        "Deadlock detected (unsatisfied dependencies or cycle)"
                    )
    
                done, _ = wait(running.keys(), return_when=FIRST_COMPLETED)
    
                for f in done:
                    tid = running.pop(f)
                    result = f.result()
                    completed[tid] = result
    
                    print(
                        f"  ✓ task:{tid:35} | {result['status']} | "
                        f"attempts={result['attempts']} | "
                        f"{result['duration']:.2f}s"
                    )
    
                    for d in deps.values():
                        d.discard(tid)
    
                    if result["status"] == "FAILED":
                        policy = tasks[tid].get(
                            "on_failure",
                            execution_cfg["default_on_failure"]
                        )
    
                        if policy == "abort":
                            print(f"  ✗ {tid} FAILED: {result.get('error')}")
                            raise RuntimeError(f"Task {tid} failed (abort policy)")

        finally:
            executor.shutdown(wait=False)

    group_end_time = datetime.now()
    group_duration = (group_end_time - group_start_time).total_seconds()
    print(f"    group:{group['name']} end_time: {group_end_time}")
    print(f"    group:{group['name']} duration: {group_duration:.2f}s")

# -----------------------------------------
# Main
# -----------------------------------------
def main(cfg_file):
    with open(cfg_file) as f:
        cfg = yaml.safe_load(f)

    for group in cfg["groups"]:
        run_group(
            cfg["database"]["dsn"],
            group,
            cfg["defaults"],
            cfg["execution"]
        )

if __name__ == "__main__":
    import sys
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument("config", help="tasks.yaml")
    parser.add_argument(
        "--dry-run", action="store_true",
        help="Do not execute SQL, only simulate"
    )
    parser.add_argument(
        "--run", action="store_true",
        help="Execute SQL for real"
    )

    args = parser.parse_args()

    if args.dry_run and args.run:
        print("ERROR: use only one of --dry-run or --run")
        sys.exit(1)

    with open(args.config) as f:
        cfg = yaml.safe_load(f)

    # CLI overrides YAML
    if args.dry_run:
        cfg["execution"]["dry_run"] = True
    elif args.run:
        cfg["execution"]["dry_run"] = False

    main_start_time = datetime.now()
    print(f"Main start_time: {main_start_time}")
    main_cfg = cfg
    for group in main_cfg["groups"]:
        run_group(
            main_cfg["database"]["dsn"],
            group,
            main_cfg["defaults"],
            main_cfg["execution"]
        )

    main_end_time = datetime.now()
    print(f"Main end_time: {main_end_time}")
    print(f"\nCompleted")

# ################################################################################
