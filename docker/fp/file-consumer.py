# Consume CSV files every INTERVAL SECONDS - move from incoming to processing to processed dirs
import os
import time
import shutil
import logging
import argparse
from datetime import datetime
import csv

# ------------------------------------------------------------
# Hybrid Configuration (ENV + CLI)
# ------------------------------------------------------------
def get_interval():
    parser = argparse.ArgumentParser(description="File Consumer Service")
    parser.add_argument(
        "--interval",
        type=int,
        help="Interval in seconds between scheduled runs (overrides ENV if set)",
    )
    args = parser.parse_args()
    return args.interval or int(os.getenv("INTERVAL_SECONDS", "30"))

# ------------------------------------------------------------
# Directories and Logging
# ------------------------------------------------------------
INCOMING_DIR = os.getenv("INCOMING_DIR", "./incoming")
PROCESSING_DIR = os.getenv("PROCESSING_DIR", "./processing")
PROCESSED_DIR = os.getenv("PROCESSED_DIR", "./processed")
FAILED_DIR = os.getenv("FAILED_DIR", "./failed")
LOG_FILE = os.getenv("CONSUMER_LOG", "/data/consumer.log")

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
)

# ------------------------------------------------------------
# Utility Functions
# ------------------------------------------------------------
def ensure_dirs():
    """Ensure all working directories exist."""
    for d in [INCOMING_DIR, PROCESSING_DIR, PROCESSED_DIR, FAILED_DIR, os.path.dirname(LOG_FILE)]:
        os.makedirs(d, exist_ok=True)

def is_file_ready(filepath):
    """Ensure file is not being written by another process."""
    try:
        size1 = os.path.getsize(filepath)
        time.sleep(1)
        size2 = os.path.getsize(filepath)
        return size1 == size2
    except FileNotFoundError:
        return False

def append_to_log(filename, status, bytes_count):
    """Append a log entry to consumer.log in CSV format."""
    ensure_dirs()
    file_exists = os.path.exists(LOG_FILE)
    with open(LOG_FILE, "a", newline="") as f:
        writer = csv.writer(f)
        if not file_exists:
            writer.writerow(["datetime", "filename", "status", "bytes"])
        writer.writerow([
            datetime.utcnow().isoformat() + "Z",
            filename,
            status,
            bytes_count
        ])

# ------------------------------------------------------------
# Core File Processing
# ------------------------------------------------------------
def process_file(filepath):
    """Simulate file processing logic — replace with your business logic."""
    try:
        logging.info(f"Processing {filepath}")
        with open(filepath, "r") as f:
            content = f.read()
            logging.info(f"Read {len(content)} bytes from {os.path.basename(filepath)}")
        # Example: simulate processing (e.g., parse, store, forward)
        return True, len(content)
    except Exception as e:
        logging.error(f"Error processing file {filepath}: {e}")
        return False, 0

def handle_file(filename):
    """Handle a single file safely."""
    src = os.path.join(INCOMING_DIR, filename)
    temp = os.path.join(PROCESSING_DIR, filename)

    if not is_file_ready(src):
        logging.info(f"Skipping {filename} (still being copied)")
        return

    shutil.move(src, temp)
    success, bytes_count = process_file(temp)
    dest_dir = PROCESSED_DIR if success else FAILED_DIR
    shutil.move(temp, os.path.join(dest_dir, filename))
    status = "processed" if success else "failed"

    # Log to consumer.log
    append_to_log(filename, status, bytes_count)

    logging.info(f"File {filename} marked as {status} and moved to {dest_dir}")

# ------------------------------------------------------------
# Main Scheduled Task
# ------------------------------------------------------------
def run_once():
    """Run one processing cycle, ordered by creation time (oldest first), only .csv files."""
    ensure_dirs()
    logging.info("📂 file-consumer scheduled run started.")

    # Collect only regular .csv files
    files = [
        f for f in os.listdir(INCOMING_DIR)
        if f.lower().endswith(".csv") and os.path.isfile(os.path.join(INCOMING_DIR, f))
    ]

    # Sort files by creation time (ctime)
    files.sort(key=lambda f: (os.path.getctime(os.path.join(INCOMING_DIR, f)), f))

    if not files:
        logging.info("No new CSV files found in incoming directory.")
    else:
        logging.info(f"Found {len(files)} CSV file(s) to process:")
        for f in files:
            ctime = time.strftime(
                "%Y-%m-%d %H:%M:%S",
                time.localtime(os.path.getctime(os.path.join(INCOMING_DIR, f))),
            )
            logging.info(f"  {f} (created: {ctime})")

    for f in files:
        handle_file(f)

    logging.info("✅ file-consumer run completed.")

# ------------------------------------------------------------
# Main Loop
# ------------------------------------------------------------
if __name__ == "__main__":
    INTERVAL_SECONDS = get_interval()
    ensure_dirs()
    logging.info(f"file-consumer started. Running every {INTERVAL_SECONDS} seconds.")
    while True:
        run_once()
        logging.info(f"Sleeping for {INTERVAL_SECONDS} seconds before next cycle...")
        time.sleep(INTERVAL_SECONDS)

