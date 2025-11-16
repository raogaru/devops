package com.raogaru.producer;

import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.time.Instant;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

@Service
public class MessageProducerService {

    private final JmsTemplate jmsTemplate;

    @Value("${queue-names}")
    private String queueNamesString;

    // NEW: scheduler interval (ms)
    @Value("${producer.interval.ms:1000}")
    private long schedulerIntervalMs;

    private List<String> queueNames;
    private final Random random = new Random();

    public MessageProducerService(JmsTemplate jmsTemplate) {
        this.jmsTemplate = jmsTemplate;
    }

    @PostConstruct
    public void init() {
        // Convert comma-separated string into list
        queueNames = Arrays.asList(queueNamesString.split(","));
        System.out.println("Queue names loaded: " + queueNames);
        System.out.println("Scheduler interval set to: " + schedulerIntervalMs + " ms");
    }

    // Updated: dynamic interval using fixedRateString
    @Scheduled(fixedRateString = "${producer.interval.ms}")
    public void sendRandomMessage() {
        if (queueNames == null || queueNames.isEmpty()) {
            System.out.println("No queues configured.");
            return;
        }
        // Pick a random queue
        String queue = queueNames.get(random.nextInt(queueNames.size()));

        // Generate random message
        String msg = String.format(
                "Message{id=%d, timestamp=%s, queue=%s, value=%d}",
                random.nextInt(100000),
                Instant.now(),
                queue,
                random.nextInt(1000)
        );

        // Send message to the chosen queue
        jmsTemplate.convertAndSend(queue, msg);
        System.out.println("Sent to " + queue + ": " + msg);
    }
}

