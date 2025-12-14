FROM apache/spark:3.5.1

USER root

ENV SPARK_HOME=/opt/spark
ENV PATH=$SPARK_HOME/bin:$PATH
ENV ICEBERG_VERSION=1.5.2
ENV ICEBERG_JAR=iceberg-spark-runtime-3.5_2.12-${ICEBERG_VERSION}.jar

RUN mkdir -p /opt/iceberg/jars 
RUN curl -L https://repo1.maven.org/maven2/org/apache/iceberg/iceberg-spark-runtime-3.5_2.12/${ICEBERG_VERSION}/${ICEBERG_JAR} -o /opt/iceberg/jars/${ICEBERG_JAR}

RUN mkdir -p /data/incoming /data/warehouse
#     chown -R spark:spark /data

COPY iceberg_streaming_job.py /opt/job/iceberg_streaming_job.py
COPY spark-submit.sh /opt/job/spark-submit.sh

RUN chmod +x /opt/job/spark-submit.sh && \
    chown -R spark:spark /opt/job /opt/iceberg

USER spark
WORKDIR /opt/job

ENTRYPOINT ["/opt/job/spark-submit.sh"]

