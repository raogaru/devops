FROM eclipse-temurin:17-jdk

WORKDIR /app
COPY target/kafka-producer-1.0.0.jar app.jar

ENV KAFKA_PRODUCER_INTERVAL_MS=1000
ENV KAFKA_BOOTSTRAP_SERVERS=c-kafka:9092

ENTRYPOINT ["java", "-jar", "app.jar"]

