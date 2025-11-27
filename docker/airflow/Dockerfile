FROM apache/airflow:2.9.1-python3.10

USER root
RUN apt-get update && apt-get install -y postgresql-client && rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER airflow

# Airflow environment
ENV AIRFLOW__CORE__EXECUTOR=LocalExecutor \
    AIRFLOW__DATABASE__SQL_ALCHEMY_CONN=postgresql+psycopg2://airflow:airflow@c-postgres:5432/airflow \
    AIRFLOW__CORE__LOAD_EXAMPLES=False \
    AIRFLOW__WEBSERVER__EXPOSE_CONFIG=True

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]

