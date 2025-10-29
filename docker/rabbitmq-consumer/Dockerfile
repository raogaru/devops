FROM eclipse-temurin:17-jre
ENV TZ=UTC \
    JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport -XX:MaxRAMPercentage=75.0"
WORKDIR /app
COPY target/rabbitmq-consumer.jar /app/
EXPOSE 8082
ENTRYPOINT ["java","-jar","/app/rabbitmq-consumer.jar"]

