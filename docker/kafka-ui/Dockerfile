# Use official Kafka-UI release from Provectus
FROM provectuslabs/kafka-ui:latest

# You can override these defaults in docker run or docker-compose
ENV KAFKA_CLUSTERS_0_NAME=my-kafka-cluster
ENV KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=c-kafka:9092
#ENV KAFKA_CLUSTERS_0_ZOOKEEPER=zookeeper:2181
#ENV KAFKA_CLUSTERS_0_METRICS_PORT=9100

# Optional: If you have a schema registry
# ENV KAFKA_CLUSTERS_0_SCHEMAREGISTRY=http://schema-registry:8081

# Default UI listen port
ENV SERVER_PORT=8080
EXPOSE ${SERVER_PORT}

# Entry point — Kafka-UI binary already included in base image
CMD ["java", "-jar", "kafka-ui-api.jar"]

