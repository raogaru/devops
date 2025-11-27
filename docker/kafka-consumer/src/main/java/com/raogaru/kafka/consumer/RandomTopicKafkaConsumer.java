package com.raogaru.kafka.consumer.service;

import org.apache.kafka.clients.consumer.Consumer;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.kafka.core.ConsumerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Random;

@Service
public class RandomTopicKafkaConsumer {

    private static final Logger log = LoggerFactory.getLogger(RandomTopicKafkaConsumer.class);

    private final ConsumerFactory<String, String> consumerFactory;

    private final List<String> topics = List.of(
            "topic1", "topic2", "topic3", "topic4", "topic5"
    );

    private final Random random = new Random();

    @Value("${kafka.consumer.max-poll-records:10}")
    private int maxPollRecords;

    public RandomTopicKafkaConsumer(ConsumerFactory<String, String> consumerFactory) {
        this.consumerFactory = consumerFactory;
    }

    // ✅ Interval driven by kafka.consumer.interval.ms
    @Scheduled(fixedRateString = "${kafka.consumer.interval.ms:5000}")
    public void pollRandomTopic() {

        String topic = topics.get(random.nextInt(topics.size()));

        log.info("🎯 Polling random topic: {} at {}", topic, LocalDateTime.now());

        try (Consumer<String, String> consumer = consumerFactory.createConsumer()) {

            consumer.subscribe(List.of(topic));

            ConsumerRecords<String, String> records =
                    consumer.poll(Duration.ofSeconds(1));

            if (records.isEmpty()) {
                log.info("ℹ️ No messages in {}", topic);
            }

            for (ConsumerRecord<String, String> record : records) {
                log.info("📥 Consumed | topic={} | partition={} | offset={} | key={} | value={}",
                        record.topic(),
                        record.partition(),
                        record.offset(),
                        record.key(),
                        record.value());
            }

            consumer.commitSync();
        }
        catch (Exception ex) {
            log.error("❌ Error while polling Kafka", ex);
        }
    }
}

