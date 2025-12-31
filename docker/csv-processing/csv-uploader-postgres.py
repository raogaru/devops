# Upload CSV files data every INTERVAL SECONDS into postgres database - move from processed to uploaded dir 
import os
import time
import csv
import psycopg2
import logging
import shutil
from datetime import datetime

# ------------------------------------------------------------
# Environment Configuration
# ------------------------------------------------------------
INTERVAL_SECONDS = int(os.getenv("INTERVAL_SECONDS", "30"))
PROCESSED_DIR = os.getenv("PROCESSED_DIR", "/data/processed")
UPLOADED_DIR = os.getenv("UPLOADED_DIR", "/data/uploaded")
FAILED_DIR = os.getenv("FAILED_DIR", "/data/failed")
UPLOADER_LOG = os.getenv("UPLOADER_LOG", "/data/uploader.log")
DB_HOST = os.getenv("POSTGRES_HOST", "postgres")
DB_PORT = int(os.getenv("POSTGRES_PORT", "5432"))
DB_NAME = os.getenv("POSTGRES_DB", "postgres")
DB_USER = os.getenv("POSTGRES_USER", "postgres")
DB_PASS = os.getenv("POSTGRES_PASSWORD", "postgres")
TARGET_TABLE = os.getenv("TARGET_TABLE", "csv_data")

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s"
)

# ------------------------------------------------------------
# Utility Functions
# ------------------------------------------------------------
def ensure_dirs():
    for d in [PROCESSED_DIR, UPLOADED_DIR, FAILED_DIR, os.path.dirname(UPLOADER_LOG)]:
        os.makedirs(d, exist_ok=True)

def append_to_log(filename, status, rows_inserted):
    """Append upload event to /data/uploader.log"""
    file_exists = os.path.exists(UPLOADER_LOG)
    with open(UPLOADER_LOG, "a", newline="") as logf:
        writer = csv.writer(logf)
        if not file_exists:
            writer.writerow(["datetime", "filename", "status", "rows_inserted"])
        writer.writerow([
            datetime.utcnow().isoformat() + "Z",
            filename,
            status,
            rows_inserted
        ])

def get_db_connection():
    """Create a PostgreSQL connection."""
    return psycopg2.connect(
        host=DB_HOST,
        port=DB_PORT,
        database=DB_NAME,
        user=DB_USER,
        password=DB_PASS
    )

def ensure_table_exists():
    """Ensure the target table exists."""
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute(f"""
        CREATE TABLE IF NOT EXISTS {TARGET_TABLE} (
            id SERIAL PRIMARY KEY,
            csv_filename TEXT NOT NULL,
            record_id INT,
            name TEXT,
            value INT,
            uploaded_at TIMESTAMPTZ DEFAULT NOW()
        );
    """)
    conn.commit()
    cur.close()
    conn.close()

def upload_csv_to_postgres(filepath):
    """Read a CSV file and insert its contents into PostgreSQL."""
    conn = get_db_connection()
    cur = conn.cursor()
    inserted = 0
    filename = os.path.basename(filepath)
    try:
        with open(filepath, newline="") as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                cur.execute(
                    f"""
                    INSERT INTO {TARGET_TABLE} (csv_filename, record_id, name, value)
                    VALUES (%s, %s, %s, %s)
                    """,
                    (filename, row.get("id"), row.get("name"), row.get("value"))
                )
                inserted += 1
        conn.commit()
        logging.info(f"✅ Uploaded {inserted} rows from {filename} to table '{TARGET_TABLE}'")
        append_to_log(filename, "success", inserted)
        return True
    except Exception as e:
        conn.rollback()
        logging.error(f"❌ Failed to upload {filename}: {e}")
        append_to_log(filename, "failure", inserted)
        return False
    finally:
        cur.close()
        conn.close()

def handle_file(filename):
    """Process one CSV file for upload."""
    src = os.path.join(PROCESSED_DIR, filename)
    if not filename.lower().endswith(".csv"):
        logging.info(f"Skipping non-CSV file: {filename}")
        return
    success = upload_csv_to_postgres(src)
    dest_dir = UPLOADED_DIR if success else FAILED_DIR
    shutil.move(src, os.path.join(dest_dir, filename))
    logging.info(f"Moved {filename} to {dest_dir}")

# ------------------------------------------------------------
# Main Loop
# ------------------------------------------------------------
def main():
    ensure_dirs()
    ensure_table_exists()
    logging.info(f"📤 file-uploader started. Checking {PROCESSED_DIR} every {INTERVAL_SECONDS}s")

    while True:
        files = sorted(
            [f for f in os.listdir(PROCESSED_DIR)
             if f.lower().endswith(".csv") and os.path.isfile(os.path.join(PROCESSED_DIR, f))]
        )
        if not files:
            logging.debug("No new files to upload.")
        for f in files:
            handle_file(f)
        time.sleep(INTERVAL_SECONDS)

if __name__ == "__main__":
    main()

