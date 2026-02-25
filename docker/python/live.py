#!/usr/bin/env python3
import sys, time, traceback
from io import StringIO

def run_step(step_name: str, total: int, fn):
    log = StringIO()
    start = time.perf_counter()

    try:
        for i in range(1, total + 1):
            msg = fn(i, log)  # work writes details to log
            sys.stdout.write(f"\r[{step_name}] {i}/{total} {msg}")
            sys.stdout.flush()

        elapsed = (time.perf_counter() - start) * 1000
        sys.stdout.write("\r" + " " * 120 + "\r")
        print(f"[{step_name}] ✅ done  items={total}  elapsed_ms={elapsed:.1f}")
        return True

    except Exception:
        elapsed = (time.perf_counter() - start) * 1000
        sys.stdout.write("\r" + " " * 120 + "\r")
        print(f"[{step_name}] ❌ FAILED  at_item={i}  elapsed_ms={elapsed:.1f}")
        print("---- step log (expanded due to failure) ----")
        print(log.getvalue())
        print("---- exception ----")
        print(traceback.format_exc())
        return False

def example_work(i, log):
    # pretend work
    time.sleep(0.01)
    if i % 100 == 0:
        log.write(f"processed chunk ending at {i}\n")
    #if i == 333:
    #    raise RuntimeError("boom")
    return ""

for code in range(ord('A'), ord('Z') + 1):
    run_step("Step "+chr(code), 50, example_work)
