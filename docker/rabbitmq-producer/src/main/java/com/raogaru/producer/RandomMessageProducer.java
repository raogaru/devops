package com.raogaru.producer.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.Instant;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

@Component
public class RandomMessageProducer {

    private static final Logger log = LoggerFactory.getLogger(RandomMessageProducer.class);
    private static final String[] QUEUES = {"queue1", "queue2", "queue3", "queue4", "queue5"};
    private final RabbitTemplate rabbitTemplate;
    private final Random rnd = new Random();
    private final ObjectMapper mapper = new ObjectMapper();
    private final AtomicLong counter = new AtomicLong();

    // Allows dynamic control via property (used only for logging)
    @Value("${producer.payload.size:16}")
    private int payloadSize;

    public RandomMessageProducer(RabbitTemplate rabbitTemplate) {
        this.rabbitTemplate = rabbitTemplate;
    }

    // Schedule driven by property producer.interval.ms (defaults to 1000ms)
    @Scheduled(fixedDelayString = "${producer.interval.ms:1000}")
    public void sendRandomMessage() {
        String queue = QUEUES[rnd.nextInt(QUEUES.length)];
        long n = counter.incrementAndGet();

        Map<String, Object> msg = Map.of(
                "id", UUID.randomUUID().toString(),
                "ts", Instant.now().toString(),
                "n", n,
                "queue", queue,
                "payload", randomAlphaNum(payloadSize)
        );

        try {
            String body = mapper.writeValueAsString(msg);
            rabbitTemplate.convertAndSend("", queue, body);
            log.info(" Sent to {} :: {}", queue, body);
        } catch (Exception e) {
            log.error("❌ Failed to send to {}: {}", queue, e.getMessage(), e);
        }
    }

    private String randomAlphaNum(int len) {
        if (len <= 0) return "";
        final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder sb = new StringBuilder(len);
        for (int i = 0; i < len; i++) sb.append(chars.charAt(rnd.nextInt(chars.length())));
        return sb.toString();
    }
}

