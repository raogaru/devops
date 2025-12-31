# Use the official Elasticsearch image as base
FROM docker.elastic.co/elasticsearch/elasticsearch:8.14.3

# Set environment variables (optional overrides)
ENV discovery.type=single-node
ENV ES_JAVA_OPTS="-Xms1g -Xmx1g"

# Copy custom configuration (if you have one)
# Put elasticsearch.yml in the same directory as this Dockerfile
COPY elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# Install additional plugins (example: analysis-icu)
RUN elasticsearch-plugin install --batch analysis-icu

# Expose Elasticsearch API port
EXPOSE 9200

# Data volume
VOLUME ["/usr/share/elasticsearch/data"]

# Default command
CMD ["eswrapper"]

