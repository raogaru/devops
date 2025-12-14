#!/bin/bash
set -e

/opt/spark/bin/spark-submit \
  --master local[*] \
  --conf spark.sql.extensions=org.apache.iceberg.spark.extensions.IcebergSparkSessionExtensions \
  --conf spark.sql.catalog.local=org.apache.iceberg.spark.SparkCatalog \
  --conf spark.sql.catalog.local.type=hadoop \
  --conf spark.sql.catalog.local.warehouse=/data/warehouse \
  --conf spark.sql.shuffle.partitions=4 \
  --jars /opt/iceberg/jars/iceberg-spark-runtime-3.5_2.12-1.5.2.jar \
  /opt/job/iceberg_streaming_job.py

