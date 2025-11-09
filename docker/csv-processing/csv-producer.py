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
INCOMING_DIR = os.getenv("INCOMING_DIR", "/data/incoming")
PRODUCER_LOG = os.getenv("PRODUCER_LOG", "/data/producer.log")
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
    logging.info(f"Generated CSV: file={filepath} rows={rows}")

def append_to_log(timestamp, filename, rows):
    """Append a record to PRODUCER_LOG"""
    # Create file if it doesn't exist and write header
    file_exists = os.path.exists(PRODUCER_LOG)
    with open(PRODUCER_LOG, "a", newline="") as logf:
        writer = csv.writer(logf)
        if not file_exists:
            writer.writerow(["datetime", "filename", "rows"])
        writer.writerow([timestamp, filename, rows])
    #logging.info(f"Logged to {PRODUCER_LOG}: file={filename}, rors={rows}")

# ------------------------------------------------------------
# Main Producer Loop
# ------------------------------------------------------------
def main():
    ensure_dir(INCOMING_DIR)
    ensure_dir(os.path.dirname(PRODUCER_LOG))
    logging.info("🧾 file-producer microservice started.")

    while True:
        # Generate unique filename
        timestamp = datetime.utcnow().strftime("%Y%m%d_%H%M%S")
        filename = f"data_{timestamp}.csv"
        filepath = os.path.join(INCOMING_DIR, filename)

        # Random number of rows
        rows = random.randint(MIN_ROWS, MAX_ROWS)

        # Generate CSV and update log
        generate_csv_file(filepath, rows)
        append_to_log(datetime.utcnow().isoformat(), filename, rows)

        time.sleep(INTERVAL_SECONDS)

if __name__ == "__main__":
    main()

