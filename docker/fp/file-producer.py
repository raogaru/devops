# Produce CSV files every INTERVAL SECONDS with rows between MIN_ROWS and MAX_ROWS and place in incoming dir
import os
import csv
import time
import random
import string
import logging
from datetime import datetime

# ------------------------------------------------------------
# Configuration
# ------------------------------------------------------------
OUTPUT_DIR = os.getenv("OUTPUT_DIR", "./incoming")
LOG_FILE = os.getenv("LOG_FILE", "/data/producer.log")
INTERVAL_SECONDS = int(os.getenv("INTERVAL_SECONDS", "10"))
MIN_ROWS = int(os.getenv("MIN_ROWS", "5"))
MAX_ROWS = int(os.getenv("MAX_ROWS", "25"))

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s"
)

# ------------------------------------------------------------
# Utility Functions
# ------------------------------------------------------------
def ensure_dir(path):
    os.makedirs(path, exist_ok=True)

def random_string(n=8):
    """Generate a random alphanumeric string."""
    return ''.join(random.choices(string.ascii_uppercase + string.digits, k=n))

def generate_csv_file(filepath, rows):
    """Generate a CSV file with random data."""
    headers = ["id", "name", "value"]
    with open(filepath, "w", newline="") as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(headers)
        for i in range(rows):
            writer.writerow([i + 1, random_string(), random.randint(100, 9999)])
    logging.info(f"Generated CSV: {filepath} with {rows} rows")

def append_to_log(timestamp, filename, rows):
    """Append a record to /data/producer.log"""
    # Create file if it doesn't exist and write header
    file_exists = os.path.exists(LOG_FILE)
    with open(LOG_FILE, "a", newline="") as logf:
        writer = csv.writer(logf)
        if not file_exists:
            writer.writerow(["datetime", "filename", "rows"])
        writer.writerow([timestamp, filename, rows])

# ------------------------------------------------------------
# Main Producer Loop
# ------------------------------------------------------------
def main():
    ensure_dir(OUTPUT_DIR)
    ensure_dir(os.path.dirname(LOG_FILE))
    logging.info("🧾 file-producer microservice started.")

    while True:
        # Generate unique filename
        timestamp = datetime.utcnow().strftime("%Y%m%d_%H%M%S")
        filename = f"data_{timestamp}.csv"
        filepath = os.path.join(OUTPUT_DIR, filename)

        # Random number of rows
        rows = random.randint(MIN_ROWS, MAX_ROWS)

        # Generate CSV and update log
        generate_csv_file(filepath, rows)
        append_to_log(datetime.utcnow().isoformat(), filename, rows)

        logging.info(f"Logged to {LOG_FILE}: {filename}, {rows} rows")
        time.sleep(INTERVAL_SECONDS)

if __name__ == "__main__":
    main()

