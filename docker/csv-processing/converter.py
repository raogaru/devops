# Python script to convert files between - csv json xml parquet formats
import os
import json
import shutil
import pandas as pd
import yaml
import logging
import msgpack
import argparse
import time
import xml.etree.ElementTree as ET
from datetime import datetime

# --- Configuration ---
SOURCE_DIR = os.getenv("SOURCE_DIR", "/data/processed")
TARGET_DIR = os.getenv("TARGET_DIR", "/data/converted")
LOG_FILE = os.getenv("CONVERTER_LOG", "/data/converter.log")

os.makedirs(TARGET_DIR, exist_ok=True)

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
)

# ------------------------------------------------------------
# Hybrid Configuration (ENV + CLI)
# ------------------------------------------------------------
def get_interval():
    """Get interval (ENV or CLI override)."""
    parser = argparse.ArgumentParser(add_help=False)
    parser.add_argument("--interval", type=int, help="Seconds between runs (overrides ENV if set)")
    parser.add_argument("--format", help="Target format override (e.g. json, xml, parquet)")
    args, _ = parser.parse_known_args()
    interval = args.interval or int(os.getenv("INTERVAL_SECONDS", "30"))
    target_format = args.format or os.getenv("TARGET_FORMAT", "json")
    return interval, target_format

# ------------------------------------------------------------
# Directory Setup
# ------------------------------------------------------------
def ensure_dirs():
    for d in [SOURCE_DIR, TARGET_DIR, os.path.dirname(LOG_FILE)]:
        os.makedirs(d, exist_ok=True)

# --- Conversion Functions (same as before) ---
def csv_to_json(csv_path, json_path):
    df = pd.read_csv(csv_path)
    df.to_json(json_path, orient="records", indent=4)

def json_to_csv(json_path, csv_path):
    with open(json_path, "r", encoding="utf-8") as f:
        data = json.load(f)
    if isinstance(data, dict):
        data = [data]
    pd.DataFrame(data).to_csv(csv_path, index=False)

def json_to_xml(json_path, xml_path):
    with open(json_path, "r", encoding="utf-8") as f:
        data = json.load(f)
    if isinstance(data, dict):
        data = [data]
    root = ET.Element("root")
    for item in data:
        rec = ET.SubElement(root, "record")
        for k, v in item.items():
            ET.SubElement(rec, str(k)).text = str(v)
    ET.ElementTree(root).write(xml_path, encoding="utf-8", xml_declaration=True)

def csv_to_xml(csv_path, xml_path):
    df = pd.read_csv(csv_path)
    root = ET.Element("root")
    for _, row in df.iterrows():
        rec = ET.SubElement(root, "record")
        for col, val in row.items():
            ET.SubElement(rec, str(col)).text = str(val)
    ET.ElementTree(root).write(xml_path, encoding="utf-8", xml_declaration=True)

def csv_to_parquet(csv_path, parquet_path):
    df = pd.read_csv(csv_path)
    df.to_parquet(parquet_path, index=False)

def json_to_yaml(json_path, yaml_path):
    with open(json_path, "r", encoding="utf-8") as f:
        data = json.load(f)
    with open(yaml_path, "w", encoding="utf-8") as y:
        yaml.safe_dump(data, y, sort_keys=False)

def yaml_to_json(yaml_path, json_path):
    with open(yaml_path, "r", encoding="utf-8") as y:
        data = yaml.safe_load(y)
    with open(json_path, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=4)

def csv_to_excel(csv_path, excel_path):
    df = pd.read_csv(csv_path)
    df.to_excel(excel_path, index=False)

def excel_to_csv(excel_path, csv_path):
    df = pd.read_excel(excel_path)
    df.to_csv(csv_path, index=False)

def json_to_msgpack(json_path, msgpack_path):
    with open(json_path, "r", encoding="utf-8") as f:
        data = json.load(f)
    with open(msgpack_path, "wb") as out:
        out.write(msgpack.packb(data))

def msgpack_to_json(msgpack_path, json_path):
    with open(msgpack_path, "rb") as f:
        data = msgpack.unpackb(f.read(), raw=False)
    with open(json_path, "w", encoding="utf-8") as out:
        json.dump(data, out, indent=4)

# --- Main Conversion Dispatcher ---
def convert_file(filename, target_format):
    src_path = os.path.join(SOURCE_DIR, filename)
    name, ext = os.path.splitext(filename)
    dest_path = os.path.join(TARGET_DIR, f"{name}.{target_format}")
    ext, target_format = ext.lower(), target_format.lower()

    try:
        if ext == ".csv" and target_format == "json":
            csv_to_json(src_path, dest_path)
        elif ext == ".json" and target_format == "csv":
            json_to_csv(src_path, dest_path)
        elif ext == ".json" and target_format == "xml":
            json_to_xml(src_path, dest_path)
        elif ext == ".csv" and target_format == "xml":
            csv_to_xml(src_path, dest_path)
        elif ext == ".csv" and target_format == "parquet":
            csv_to_parquet(src_path, dest_path)
        elif ext == ".json" and target_format == "yaml":
            json_to_yaml(src_path, dest_path)
        elif ext == ".yaml" and target_format == "json":
            yaml_to_json(src_path, dest_path)
        elif ext == ".csv" and target_format in ["xlsx", "xls"]:
            csv_to_excel(src_path, dest_path)
        elif ext in [".xlsx", ".xls"] and target_format == "csv":
            excel_to_csv(src_path, dest_path)
        elif ext == ".json" and target_format == "msgpack":
            json_to_msgpack(src_path, dest_path)
        elif ext == ".msgpack" and target_format == "json":
            msgpack_to_json(src_path, dest_path)
        else:
            logging.info(f"Unsupported conversion: {ext} → {target_format}")
            return

        # ✅ Move source file after successful conversion
        new_src_path = os.path.join(TARGET_DIR, filename)
        #shutil.move(src_path, new_src_path)
        #logging.info(f"Converted {SOURCE_DIR}/{filename} → {TARGET_DIR}/ and moved original to {new_src_path}")

        logging.info(f"Converted {SOURCE_DIR}/{filename} → {new_src_path}")

    except Exception as e:
        logging.error(f"Error converting {filename}: {e}")

# --- Scheduled Loop ---
if __name__ == "__main__":
    INTERVAL_SECONDS, TARGET_FORMAT = get_interval()
    ensure_dirs()

    logging.info(f"🌀 file-format-converter started | interval={INTERVAL_SECONDS}s | target={TARGET_FORMAT}")
    while True:
        logging.info("=" * 80)
        files = [f for f in os.listdir(SOURCE_DIR) if os.path.isfile(os.path.join(SOURCE_DIR, f))]
        if not files:
            logging.info(f"No source files found in {SOURCE_DIR}")
        else:
            for f in files:
                convert_file(f, TARGET_FORMAT)
        logging.info("✅ Conversion cycle completed.")
        logging.info("=" * 80)
        logging.info(f"Sleeping {INTERVAL_SECONDS}s...")
        time.sleep(INTERVAL_SECONDS)

