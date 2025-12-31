FROM python:3.11-slim

RUN apt-get update && apt-get install -y curl unzip git ca-certificates vim \
    && rm -rf /var/lib/apt/lists/*

# Install Databricks CLI (new unified CLI)
RUN curl -fsSL https://raw.githubusercontent.com/databricks/setup-cli/main/install.sh | sh

#ENV DATABRICKS_HOST=https://adb-123456.7.azuredatabricks.net \
#ENV DATABRICKS_TOKEN=xxxxxx \

RUN databricks version

# Create non-root user (recommended)
RUN useradd -m databricks
USER databricks
WORKDIR /home/databricks

#ENTRYPOINT ["databricks"]
#CMD ["--help"]

CMD ["/bin/bash"]
