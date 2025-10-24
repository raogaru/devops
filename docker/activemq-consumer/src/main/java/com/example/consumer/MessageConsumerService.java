package com.example.consumer;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.Random;

@Service
public class MessageConsumerService {

    private final JmsTemplate jmsTemplate;
    private final List<String> queueNames;
    private final Random random = new Random();

    public MessageConsumerService(JmsTemplate jmsTemplate,
                                  @Value("${app.queue-names}") String queuesCsv) {
        this.jmsTemplate = jmsTemplate;
        this.queueNames = Arrays.asList(queuesCsv.split(","));
    }

    @Scheduled(fixedRateString = "5000") // Initial trigger; actual sleep will randomize interval
    public void consumeRandomQueue() throws InterruptedException {
        String queue = queueNames.get(random.nextInt(queueNames.size()));

        // Receive a message (non-blocking)
        Object msg = jmsTemplate.receiveAndConvert(queue);

        if (msg != null) {
            System.out.println(" Received from " + queue + ": " + msg);
        } else {
            System.out.println("No message in " + queue);
        }

        // Sleep for a random duration between 5s and 10s
        long sleepTime = 5000 + random.nextInt(5001); // 5000–10000 ms
        Thread.sleep(sleepTime);
    }
}

