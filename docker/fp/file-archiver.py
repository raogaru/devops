# Archive CSV files every INTERVAL SECONDS - delete from processed dir
import os
import time
import logging
import argparse
import csv
from datetime import datetime

# ------------------------------------------------------------
# Hybrid Configuration (ENV + CLI)
# ------------------------------------------------------------
def get_config():
    parser = argparse.ArgumentParser(description="File Closure Service")
    parser.add_argument("--interval", type=int, help="Interval in seconds between cleanup runs")
    parser.add_argument("--max_age", type=int, help="Delete files older than this many seconds")
    args = parser.parse_args()

    interval = args.interval or int(os.getenv("INTERVAL_SECONDS", "60"))
    max_age = args.max_age or int(os.getenv("MAX_FILE_AGE_SECONDS", "3600"))
    return interval, max_age

# ------------------------------------------------------------
# Directories and Logging
# ------------------------------------------------------------
PROCESSED_DIR = os.getenv("PROCESSED_DIR", "./processed")
LOG_FILE = os.getenv("ARCHIVER_LOG", "/data/archiver.log")

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
)

# ------------------------------------------------------------
# Utility Functions
# ------------------------------------------------------------
def ensure_dirs():
    """Ensure processed and log directories exist."""
    os.makedirs(PROCESSED_DIR, exist_ok=True)
    os.makedirs(os.path.dirname(LOG_FILE), exist_ok=True)

def append_to_log(filename, age_seconds):
    """Append deletion record to /data/archiver.log"""
    ensure_dirs()
    file_exists = os.path.exists(LOG_FILE)
    with open(LOG_FILE, "a", newline="") as logf:
        writer = csv.writer(logf)
        if not file_exists:
            writer.writerow(["datetime", "filename", "age_seconds"])
        writer.writerow([
            datetime.utcnow().isoformat() + "Z",
            filename,
            int(age_seconds)
        ])

# ------------------------------------------------------------
# Core Cleanup Logic
# ------------------------------------------------------------
def delete_old_files(max_age):
    """Delete files older than max_age seconds from the processed directory."""
    ensure_dirs()
    now = time.time()
    deleted_count = 0

    files = [
        f for f in os.listdir(PROCESSED_DIR)
        if os.path.isfile(os.path.join(PROCESSED_DIR, f))
    ]

    for filename in files:
        path = os.path.join(PROCESSED_DIR, filename)
        try:
            age_seconds = now - os.path.getmtime(path)
            if age_seconds > max_age:
                os.remove(path)
                append_to_log(filename, age_seconds)
                logging.info(f"🗑️ Deleted {filename} (age: {int(age_seconds)}s)")
                deleted_count += 1
        except Exception as e:
            logging.error(f"Failed to delete {filename}: {e}")

    if deleted_count == 0:
        logging.info("No old files to delete.")
    else:
        logging.info(f"✅ Deleted {deleted_count} old file(s).")

# ------------------------------------------------------------
# Main Loop
# ------------------------------------------------------------
if __name__ == "__main__":
    INTERVAL_SECONDS, MAX_FILE_AGE = get_config()
    ensure_dirs()
    logging.info(
        f"file-archiver started. Checking {PROCESSED_DIR} every {INTERVAL_SECONDS}s; "
        f"deleting files older than {MAX_FILE_AGE}s."
    )

    while True:
        delete_old_files(MAX_FILE_AGE)
        logging.info(f"Sleeping {INTERVAL_SECONDS}s before next cleanup...")
        time.sleep(INTERVAL_SECONDS)

