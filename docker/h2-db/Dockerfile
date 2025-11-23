# Use lightweight JRE base image
FROM eclipse-temurin:17-jre

# Set environment variables
ENV H2_VERSION=2.2.224 \
    H2_HOME=/opt/h2 \
    H2_PORT=9092 \
    H2_WEB_PORT=8082 \
    TZ=UTC

# Create folder for H2
RUN mkdir -p $H2_HOME

WORKDIR $H2_HOME

# Download H2 jar
RUN curl -L -o h2.jar https://repo1.maven.org/maven2/com/h2database/h2/${H2_VERSION}/h2-${H2_VERSION}.jar

# Expose ports:
#  - 9092: TCP database port
#  - 8082: Web console
EXPOSE 9092 8082

# Start H2 server
ENTRYPOINT ["java", "-cp", "h2.jar", "org.h2.tools.Server"]
CMD ["-tcp", "-tcpAllowOthers", "-tcpPort", "9092", "-web", "-webAllowOthers", "-webPort", "8082"]

