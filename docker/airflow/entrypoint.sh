#!/bin/bash
set -e

echo "⏳ Waiting for PostgreSQL at c-postgres:5432..."
until pg_isready -h c-postgres -p 5432 -U airflow; do
  sleep 2
done

echo "✅ PostgreSQL is ready!"

# Initialize database (idempotent)
airflow db migrate

# Create admin user if not exists
airflow users create \
  --username admin \
  --firstname Admin \
  --lastname User \
  --role Admin \
  --email admin@example.com \
  --password admin || true

# Start scheduler in background
airflow scheduler &

# Start webserver (foreground)
exec airflow webserver

