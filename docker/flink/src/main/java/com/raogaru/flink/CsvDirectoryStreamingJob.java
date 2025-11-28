package com.raogaru.flink;

import org.apache.flink.api.common.eventtime.WatermarkStrategy;
import org.apache.flink.connector.file.src.FileSource;
import org.apache.flink.connector.file.src.reader.TextLineInputFormat;
import org.apache.flink.core.fs.Path;
import org.apache.flink.streaming.api.datastream.DataStream;
import org.apache.flink.streaming.api.environment.StreamExecutionEnvironment;

import java.time.Duration;

public class CsvDirectoryStreamingJob {

    public static void main(String[] args) throws Exception {

        // ✅ Read from ENV with safe defaults
        String inputDir = System.getenv().getOrDefault(
                "CSV_INPUT_DIR", "/data/incoming"
        );

        long pollSeconds = Long.parseLong(
                System.getenv().getOrDefault("CSV_POLL_SECONDS", "5")
        );

        boolean skipHeader = Boolean.parseBoolean(
                System.getenv().getOrDefault("CSV_SKIP_HEADER", "true")
        );

        System.out.println("=================================");
        System.out.println("Starting CSV Streaming Job");
        System.out.println("Input Dir    : " + inputDir);
        System.out.println("Poll Seconds : " + pollSeconds);
        System.out.println("Skip Header  : " + skipHeader);
        System.out.println("=================================");

        // ✅ Flink environment
        StreamExecutionEnvironment env =
                StreamExecutionEnvironment.getExecutionEnvironment();

        // ✅ File source with continuous directory monitoring
        FileSource<String> source = FileSource
                .forRecordStreamFormat(
                        new TextLineInputFormat(),
                        new Path(inputDir)
                )
                .monitorContinuously(Duration.ofSeconds(pollSeconds))
                .build();

        DataStream<String> lines = env.fromSource(
                source,
                WatermarkStrategy.noWatermarks(),
                "csv-file-source"
        );

        // ✅ Optional header skipping + basic cleanup
        DataStream<String> cleaned = lines
                .filter(line -> line != null && !line.trim().isEmpty())
                .filter(line -> {
                    if (!skipHeader) return true;
                    return !line.toLowerCase().startsWith("id,");
                });

        // ✅ Final stream output (replace with Kafka/Postgres later)
        cleaned
                .map(line -> "CSV Row => " + line)
                .print();

        env.execute("CSV Directory Streaming Job");
    }
}

