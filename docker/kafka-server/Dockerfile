FROM eclipse-temurin:17-jre

ENV KAFKA_VERSION=4.1.0 \
    SCALA_VERSION=2.13 \
    KAFKA_HOME=/opt/kafka

ENV PATH="$KAFKA_HOME/bin:$PATH"

WORKDIR /opt

RUN apt-get update && apt-get install -y curl bash jq && rm -rf /var/lib/apt/lists/*

COPY kafka.tgz /tmp/kafka.tgz
#OR
#RUN curl -fsSL https://archive.apache.org/dist/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz -o /tmp/kafka.tgz

RUN tar -xzf /tmp/kafka.tgz -C /opt && \
    rm -f /tmp/kafka.tgz && \
    mv /opt/kafka_${SCALA_VERSION}-${KAFKA_VERSION} /opt/kafka && \
    apt-get purge -y --auto-remove curl jq && \
    rm -rf /var/lib/apt/lists/*

# Create storage
RUN mkdir -p /var/lib/kafka
VOLUME ["/var/lib/kafka"]

# Copy config
COPY server.properties ${KAFKA_HOME}/config/kraft/server.properties
COPY start-kafka.sh ${KAFKA_HOME}/start-kafka.sh

RUN chmod +x ${KAFKA_HOME}/start-kafka.sh

EXPOSE 9092 19092 9093

WORKDIR ${KAFKA_HOME}

ENTRYPOINT ["./start-kafka.sh"]

