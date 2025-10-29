FROM eclipse-temurin:17-jre
ENV TZ=UTC \
    JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport -XX:MaxRAMPercentage=75.0"
WORKDIR /app
COPY target/rabbitmq-producer.jar /app/
EXPOSE 8081
ENTRYPOINT ["java","-jar","/app/rabbitmq-producer.jar"]
