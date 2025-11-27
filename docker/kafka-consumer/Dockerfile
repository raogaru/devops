FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY target/kafka-consumer-1.0.0.jar app.jar
ENV KAFKA_BOOTSTRAP_SERVERS=c-kafka:9092
ENTRYPOINT ["java", "-jar", "app.jar"]

