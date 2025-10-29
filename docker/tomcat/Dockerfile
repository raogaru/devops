# Start from the official Tomcat base image
FROM tomcat:10.1-jdk17-temurin

# Set environment variables (optional)
ENV TZ=UTC
ENV CATALINA_OPTS="-Xms512M -Xmx1024M"

# Copy your WAR file into Tomcat’s webapps directory to access as http://localhost:8062/helloworld/
#COPY target/helloworld.war /usr/local/tomcat/webapps/

# Copy your WAR file into Tomcat’s webapps directory to access as http://localhost:8062/
COPY target/helloworld.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

