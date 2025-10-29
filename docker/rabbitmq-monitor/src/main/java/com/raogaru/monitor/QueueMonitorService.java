package com.raogaru.monitor.service;

import com.fasterxml.jackson.databind.JsonNode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;
import reactor.util.retry.Retry;

import java.time.Duration;
import java.util.*;

@Service
@RestController
public class QueueMonitorService {

    private static final Logger log = LoggerFactory.getLogger(QueueMonitorService.class);
    private final WebClient webClient;

    @Value("${rabbitmq.management.vhost:/}")
    private String vhost;

    @Value("${monitor.interval.ms:5000}")
    private long intervalMs;

    public QueueMonitorService(WebClient webClient) {
        this.webClient = webClient;
    }

    /** Poll queue depths and log changes safely */
    @Scheduled(initialDelay = 10000, fixedDelayString = "${monitor.interval.ms:5000}")
    public void pollQueueDepths() {
        getQueueDepths()
            // retry once for transient connection closures
            .retryWhen(Retry.backoff(1, Duration.ofSeconds(2))
                    .filter(ex -> ex instanceof org.springframework.web.reactive.function.client.WebClientRequestException))
            .subscribe(
                depths -> depths.forEach((q, c) ->
                    log.info("📊 Queue: {} → {} messages", q, c)
                ),
                error -> log.warn("⚠️  Management API request failed: {}", error.getMessage())
            );
    }

    /** REST endpoint: GET /metrics/queues */
    @GetMapping("/metrics/queues")
    public Mono<Map<String, Integer>> getQueueDepths() {
        return webClient.get()
                .uri("/api/queues/{vhost}", vhost)
                .retrieve()
                .bodyToMono(JsonNode.class)
                .map(json -> {
                    Map<String, Integer> result = new LinkedHashMap<>();
                    json.forEach(q -> {
                        String name = q.get("name").asText();
                        int messages = q.get("messages").asInt();
                        result.put(name, messages);
                    });
                    return result;
                })
                .onErrorResume(e -> {
                    log.warn("⚠️  Error fetching queues: {}", e.getMessage());
                    return Mono.just(Collections.emptyMap());
                });
    }
}

