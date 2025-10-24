# Use an official Eclipse Temurin JDK 17 base image
FROM eclipse-temurin:17-jre

# Set environment variables
ENV ACTIVEMQ_VERSION=5.19.1
ENV ACTIVEMQ_HOME=/opt/activemq
ENV PATH=$ACTIVEMQ_HOME/bin:$PATH

# Install curl and download ActiveMQ
RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://archive.apache.org/dist/activemq/${ACTIVEMQ_VERSION}/apache-activemq-${ACTIVEMQ_VERSION}-bin.tar.gz \
    | tar -xz -C /opt && \
    mv /opt/apache-activemq-${ACTIVEMQ_VERSION} $ACTIVEMQ_HOME && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# 🩹 Patch: Allow external access to Web Console
RUN sed -i 's/127\.0\.0\.1/0.0.0.0/g' $ACTIVEMQ_HOME/conf/jetty.xml

# Expose ports: 8161 for Web Console. 61616 for OpenWire
EXPOSE 8161 61616

# Set working directory
WORKDIR $ACTIVEMQ_HOME

# Optional: create a non-root user for security
RUN useradd -ms /bin/bash activemq && \
    chown -R activemq:activemq $ACTIVEMQ_HOME
USER activemq

# Start ActiveMQ in console mode
CMD ["bin/activemq", "console"]

