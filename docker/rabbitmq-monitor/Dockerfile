FROM eclipse-temurin:17-jre
WORKDIR /app
COPY target/rabbitmq-monitor.jar /app/
EXPOSE 8090
ENV TZ=UTC
ENTRYPOINT ["java","-jar","/app/rabbitmq-monitor.jar"]
