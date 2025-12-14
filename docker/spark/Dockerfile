FROM eclipse-temurin:17-jre

ENV SPARK_VERSION=3.5.1
ENV HADOOP_VERSION=3
ENV SPARK_HOME=/opt/spark
ENV PATH=$SPARK_HOME/bin:$PATH

RUN apt-get update && \
    apt-get install -y curl bash python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Download Spark (includes PySpark)
RUN curl -L https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
    | tar -xz -C /opt && \
    ln -s /opt/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} $SPARK_HOME

WORKDIR /opt/spark

CMD ["spark-shell"]

