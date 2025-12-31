FROM neo4j:5.17-community

# Expose HTTP, HTTPS, and Bolt ports
EXPOSE 7474 7473 7687

# Optional defaults (can be overridden at runtime)
ENV NEO4J_AUTH=neo4j/admin123

# Persist data by default
VOLUME ["/data", "/logs", "/import", "/plugins"]
