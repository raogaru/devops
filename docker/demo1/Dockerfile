# ---- Stage 1: Build (optional if you already have the JAR) ----
# FROM maven:3.9.6-eclipse-temurin-17 AS build
#WORKDIR /app
#COPY . .
#RUN mvn clean package -DskipTests

# ---- Stage 2: Run ----
FROM openjdk:17-jdk-slim

# Set app directory
WORKDIR /demo

# Copy JAR from target folder into the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose application port (default 8080)
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java","-jar","app.jar"]

