package com.raogaru.consumer;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.time.Instant;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

@Service
public class MessageConsumerService {

    private final JmsTemplate jmsTemplate;
    private final List<String> queueNames;
    private final Random random = new Random();

    public MessageConsumerService(
            JmsTemplate jmsTemplate,
            @Value("${queue-names}") String queuesCsv) {

        this.jmsTemplate = jmsTemplate;
        this.queueNames = Arrays.asList(queuesCsv.split(","));
    }

    // Use the value from application.properties
    @Scheduled(fixedRateString = "${consumer.interval.ms}")
    public void consumeRandomQueue() {

        String queue = queueNames.get(random.nextInt(queueNames.size()));

        Object msg = jmsTemplate.receiveAndConvert(queue);

        if (msg != null) {
            System.out.println("[" + Instant.now() + "] Received from " + queue + ": " + msg);
        } else {
            System.out.println("[" + Instant.now() + "] No message in " + queue);
        }
    }
}

