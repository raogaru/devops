package com.raogaru.kafka.producer.service;

import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Random;
import java.util.UUID;

@Service
@EnableScheduling
public class RandomMessageProducer {

    private final KafkaTemplate<String, String> kafkaTemplate;
    private final List<String> topics = List.of("topic1", "topic2", "topic3", "topic4", "topic5");
    private final Random random = new Random();

    public RandomMessageProducer(KafkaTemplate<String, String> kafkaTemplate) {
        this.kafkaTemplate = kafkaTemplate;
    }

    //Scheduled(fixedRate = 1000)
    @Scheduled(fixedRateString = "${kafka.producer.interval.ms:1000}")
    public void sendRandomMessage() {
        String topic = topics.get(random.nextInt(topics.size()));
        String message = String.format( "%s-%d @ %s", UUID.randomUUID().toString(), 1000+random.nextInt(9000), LocalDateTime.now());
        kafkaTemplate.send(topic, message);
        System.out.printf("[%s] Sent to %s: %s%n", LocalDateTime.now(), topic, message);
    }
}

