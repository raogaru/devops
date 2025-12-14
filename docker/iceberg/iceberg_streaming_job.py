from pyspark.sql import SparkSession
from pyspark.sql.types import StructType, StructField, StringType
from pyspark.sql.functions import input_file_name
from datetime import datetime

spark = (
    SparkSession.builder
    .appName("Iceberg-Streaming-Ingest")
    .getOrCreate()
)

spark.sparkContext.setLogLevel("WARN")  # 🔕 Reduce Spark noise

INPUT_DIR = "/data/incoming"
WAREHOUSE_DB = "local.db"
TABLE = f"{WAREHOUSE_DB}.incoming_data"

# -----------------------------
# Schema (required)
# -----------------------------
schema = StructType([
    StructField("id", StringType(), True),
    StructField("name", StringType(), True),
    StructField("value", StringType(), True)
])

# -----------------------------
# Create database & table
# -----------------------------
spark.sql(f"CREATE DATABASE IF NOT EXISTS {WAREHOUSE_DB}")

spark.sql(f"""
CREATE TABLE IF NOT EXISTS {TABLE} (
    id STRING,
    name STRING,
    value STRING,
    _source_file STRING
)
USING iceberg
""")

# -----------------------------
# Streaming read
# -----------------------------
stream_df = (
    spark.readStream
    .schema(schema)
    .option("header", "true")
    .option("maxFilesPerTrigger", 5)
    .csv(INPUT_DIR)
    .withColumn("_source_file", input_file_name())
)

# -----------------------------
# Custom batch processor
# -----------------------------
from pyspark.sql.functions import col, count, sum as sum_
from datetime import datetime

def process_batch(df, batch_id):
    if df.isEmpty():
        print(f"[{datetime.now()}] ⏳ Batch {batch_id}: no new files")
        return

    print(f"\n[{datetime.now()}] 📥 Batch {batch_id} started")

    # Per-file stats
    stats = (
        df.groupBy("_source_file")
          .agg(
              count("*").alias("row_count"),
              sum_(col("value").cast("double")).alias("total_value")
          )
          .collect()
    )

    batch_rows = 0
    batch_value = 0.0

    for r in stats:
        rows = r["row_count"]
        total = r["total_value"] or 0.0

        print(
            f"   • {r['_source_file']} → "
            f"rows={rows}, total_value={total}"
        )

        batch_rows += rows
        batch_value += total

    print(
        f"  Batch summary → rows={batch_rows}, "
        f"total_value={batch_value}"
    )

    # Write to Iceberg
    df.writeTo(TABLE).append()

    print(f"[{datetime.now()}] ✅ Batch {batch_id} committed to Iceberg\n")

# -----------------------------
# Streaming write
# -----------------------------
query = (
    stream_df.writeStream
    .foreachBatch(process_batch)
    .option("checkpointLocation", "/data/warehouse/_checkpoints/incoming_data")
    .start()
)

print("🚀 Iceberg streaming ingestion started, waiting for files...")
query.awaitTermination()

