#!/usr/bin/env python3
#  ################################################################################
"""
csvstats.py : Read set of CSV files and provide stats for each file and cumulative for a given numberic column

Usage: csvstats.py <column_number> <csv-files-prefix>
Example: csvstats.py 3 sales_
  -> processes sales_*.csv
"""

import csv
import sys
from pathlib import Path

def process_files(column_number, prefix):
    col_idx = column_number - 1

    # Find CSV files matching prefix
    csv_files = sorted(Path(".").glob(f"{prefix}*.csv"))

    if not csv_files:
        print(f"❌ No CSV files found matching prefix '{prefix}*.csv'")
        sys.exit(1)

    # Cumulative stats
    total_files = 0
    total_rows = 0
    total_sum = 0.0
    total_min = None
    total_max = None

    for csv_path in csv_files:
        file_rows = 0
        file_sum = 0.0
        file_min = None
        file_max = None

        with csv_path.open(newline="", encoding="utf-8") as f:
            reader = csv.reader(f)
            header = next(reader, None)  # skip header

            for row in reader:
                if len(row) <= col_idx:
                    continue

                try:
                    val = float(row[col_idx])
                except ValueError:
                    continue

                file_rows += 1
                file_sum += val
                file_min = val if file_min is None else min(file_min, val)
                file_max = val if file_max is None else max(file_max, val)

        if file_rows == 0:
            print(f"\n⚠️  {csv_path.name} contains no valid numeric rows")
            continue

        file_avg = file_sum / file_rows

        # Update cumulative stats
        total_files += 1
        total_rows += file_rows
        total_sum += file_sum
        total_min = file_min if total_min is None else min(total_min, file_min)
        total_max = file_max if total_max is None else max(total_max, file_max)
        total_avg = total_sum / total_rows

        # Output
        print("\n" + "-" * 140)
        print(f"|FILE                                     |         ROWS |                       SUM |             MIN |             MAX |             AVG |")
        print(f"|{csv_path.name:<40} | {file_rows:12d} | {file_sum:25.2f} | {file_min:15.2f} | {file_max:15.2f} | {file_avg:15.2f} |")
        print(f"|Cumulative files processed  {total_files:12d} | {total_rows:12d} | {total_sum:25.2f} | {total_min:15.2f} | {total_max:15.2f} | {total_avg:15.2f} |")
        print("" + "-" * 140)

def main():
    if len(sys.argv) != 3:
        print("Usage:  csvstats.py <column-number> <csv-files-prefix>")
        print("\nExample:")
        print("  python csv_stats_by_prefix.py 4 orders_")
        sys.exit(1)

    try:
        column_number = int(sys.argv[1])
        if column_number <= 0:
            raise ValueError
    except ValueError:
        print("❌ column_number must be a positive integer")
        sys.exit(1)

    prefix = sys.argv[2]

    process_files(column_number, prefix)

if __name__ == "__main__":
    main()

#  ################################################################################
