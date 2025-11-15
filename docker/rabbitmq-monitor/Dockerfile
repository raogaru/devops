FROM eclipse-temurin:17-jre
WORKDIR /app
COPY target/rabbitmq-monitor.jar /app/app.jar
#EXPOSE 8090
ENV TZ=UTC
ENTRYPOINT ["java","-jar","/app/app.jar"]
