#!/usr/bin/env python3
"""
splitsql.py - Reads a PostgreSQL SQL file and splits it into multiple files, one SQL statement per file.

Features:
- Handles semicolons inside:
    * single quotes
    * double quotes
    * dollar-quoted blocks ($$ or $tag$)
    * single-line comments (-- ...)
    * multi-line comments (/* ... */)

Usage: splitsql.py --input-sql input.sql --output-dir out_sql --output-file-prefix stmt
"""

import argparse
import os
import re
from pathlib import Path


def split_sql_statements(sql_text: str):
    """
    Splits SQL text into statements safely,
    respecting PostgreSQL quoting rules.
    """

    statements = []
    current = []

    in_single_quote = False
    in_double_quote = False
    in_line_comment = False
    in_block_comment = False
    in_dollar_quote = False
    dollar_tag = None

    i = 0
    length = len(sql_text)

    while i < length:
        ch = sql_text[i]
        nxt = sql_text[i + 1] if i + 1 < length else ""

        # Handle line comment
        if in_line_comment:
            current.append(ch)
            if ch == "\n":
                in_line_comment = False
            i += 1
            continue

        # Handle block comment
        if in_block_comment:
            current.append(ch)
            if ch == "*" and nxt == "/":
                current.append(nxt)
                in_block_comment = False
                i += 2
            else:
                i += 1
            continue

        # Handle dollar quote block
        if in_dollar_quote:
            current.append(ch)
            if sql_text.startswith(dollar_tag, i):
                current.extend(dollar_tag[1:])
                i += len(dollar_tag)
                in_dollar_quote = False
            else:
                i += 1
            continue

        # Detect start of line comment
        if ch == "-" and nxt == "-":
            current.append(ch)
            current.append(nxt)
            in_line_comment = True
            i += 2
            continue

        # Detect start of block comment
        if ch == "/" and nxt == "*":
            current.append(ch)
            current.append(nxt)
            in_block_comment = True
            i += 2
            continue

        # Detect start of dollar quote
        if ch == "$":
            match = re.match(r"\$[a-zA-Z0-9_]*\$", sql_text[i:])
            if match:
                dollar_tag = match.group(0)
                current.append(dollar_tag)
                i += len(dollar_tag)
                in_dollar_quote = True
                continue

        # Handle single quotes
        if ch == "'" and not in_double_quote:
            current.append(ch)
            if not in_single_quote:
                in_single_quote = True
            else:
                # check for escaped ''
                if nxt == "'":
                    current.append(nxt)
                    i += 2
                    continue
                else:
                    in_single_quote = False
            i += 1
            continue

        # Handle double quotes
        if ch == '"' and not in_single_quote:
            current.append(ch)
            in_double_quote = not in_double_quote
            i += 1
            continue

        # Statement delimiter
        if ch == ";" and not any(
            [in_single_quote, in_double_quote, in_line_comment,
             in_block_comment, in_dollar_quote]
        ):
            current.append(ch)
            statement = "".join(current).strip()
            if statement:
                statements.append(statement)
            current = []
            i += 1
            continue

        # Normal character
        current.append(ch)
        i += 1

    # Add final statement if exists
    final_stmt = "".join(current).strip()
    if final_stmt:
        statements.append(final_stmt)

    return statements


def main():
    parser = argparse.ArgumentParser(
        description="Split PostgreSQL SQL file into one statement per file."
    )

    parser.add_argument("--input-sql", required=True, help="Input SQL file")
    parser.add_argument("--output-dir", required=True, help="Output directory")
    parser.add_argument("--output-file-prefix", required=True,
                        help="Prefix for output files")

    args = parser.parse_args()

    input_path = Path(args.input_sql)
    output_dir = Path(args.output_dir)
    prefix = args.output_file_prefix

    if not input_path.exists():
        raise FileNotFoundError(f"Input file not found: {input_path}")

    output_dir.mkdir(parents=True, exist_ok=True)

    sql_text = input_path.read_text(encoding="utf-8")

    statements = split_sql_statements(sql_text)

    print(f"Found {len(statements)} SQL statements.")

    for idx, stmt in enumerate(statements, start=1):
        filename = output_dir / f"{prefix}_{idx:04d}.sql"
        filename.write_text(stmt.strip() + "\n", encoding="utf-8")
        print(f"Written: {filename}")

    print("Done.")


if __name__ == "__main__":
    main()
