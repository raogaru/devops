package com.raogaru.monitor;

import jakarta.jms.QueueBrowser;
import jakarta.jms.Session;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jms.core.BrowserCallback;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class QueueMonitorService {

    private final JmsTemplate jmsTemplate;
    private final List<String> queueNames;

    public QueueMonitorService(
            JmsTemplate jmsTemplate,
            @Value("${queue-names}") String queuesCsv
    ) {
        this.jmsTemplate = jmsTemplate;
        this.queueNames = Arrays.asList(queuesCsv.split(","));
    }

    // ⬅ Schedule driven by application.properties
    @Scheduled(fixedDelayString = "${monitor.interval.ms}")
    public void logQueueCounts() {

        System.out.println("---------------------------------------------------");
        System.out.println(" ActiveMQ Queue Stats @ " + new Date());
        System.out.println("---------------------------------------------------");

        for (String queue : queueNames) {
            try {
                Integer count = jmsTemplate.browse(queue, new BrowserCallback<Integer>() {
                    @Override
                    public Integer doInJms(Session session, QueueBrowser browser) throws jakarta.jms.JMSException {

                        Enumeration<?> enumeration = browser.getEnumeration();
                        int c = 0;

                        while (enumeration.hasMoreElements()) {
                            enumeration.nextElement();
                            c++;
                        }
                        return c;
                    }
                });

                System.out.printf("  %-10s : %d messages%n", queue, count);

            } catch (Exception e) {
                System.out.printf("  %-10s : ERROR (%s)%n", queue, e.getMessage());
            }
        }

        System.out.println();
    }
}

