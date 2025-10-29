package com.raogaru.consumer.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.nio.charset.StandardCharsets;
import java.util.Random;

@Component
public class MessageConsumer {

    private static final Logger log = LoggerFactory.getLogger(MessageConsumer.class);
    private static final String[] QUEUES = {"queue1", "queue2", "queue3", "queue4", "queue5"};
    private final RabbitTemplate rabbitTemplate;
    private final Random random = new Random();

    @Value("${consumer.interval.ms:2000}")
    private long intervalMs;

    public MessageConsumer(RabbitTemplate rabbitTemplate) {
        this.rabbitTemplate = rabbitTemplate;
    }

    /**
     * Periodically consumes exactly ONE message from a randomly chosen queue.
     * Runs every ${consumer.interval.ms} milliseconds.
     */
    @Scheduled(fixedDelayString = "${consumer.interval.ms:2000}")
    public void consumeRandomQueue() {
        String queue = QUEUES[random.nextInt(QUEUES.length)];
        Message msg = rabbitTemplate.receive(queue);

        if (msg != null) {
            String body = new String(msg.getBody(), StandardCharsets.UTF_8);
            log.info(" Consumed from {} :: {}", queue, body);
        } else {
            log.info(" No messages available in {}", queue);
        }
    }
}

