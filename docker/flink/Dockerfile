FROM apache/flink:1.18.1-scala_2.12-java11

ENV FLINK_HOME=/opt/flink
ENV PATH="$FLINK_HOME/bin:$PATH"
ENV CSV_INPUT_DIR=/data/incoming
ENV CSV_POLL_SECONDS=5
ENV CSV_SKIP_HEADER=true
ENV FLINK_PROPERTIES="taskmanager.numberOfTaskSlots: 4"
ENV JAVA_TOOL_OPTIONS="--add-opens=java.base/java.lang=ALL-UNNAMED"

RUN mkdir -p ${CSV_INPUT_DIR}

WORKDIR ${FLINK_HOME}

COPY target/flink-csv-stream-1.0.0.jar ${FLINK_HOME}/usrlib/app.jar

EXPOSE 8081 6123 6124 6125

#CMD ["bash", "-c", "${FLINK_HOME}/bin/flink run -c com.raogaru.flink.CsvDirectoryStreamingJob ${FLINK_HOME}/usrlib/app.jar"]

CMD ["bash", "-c", "start-cluster.sh && bin/flink run -d -c com.raogaru.flink.CsvDirectoryStreamingJob usrlib/app.jar && tail -f /opt/flink/log/*.log"]

