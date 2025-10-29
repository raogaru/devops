package com.raogaru.producer.config;

import org.springframework.amqp.core.Queue;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RabbitConfig {

    @Bean public Queue queue1() { return new Queue("queue1", true); }
    @Bean public Queue queue2() { return new Queue("queue2", true); }
    @Bean public Queue queue3() { return new Queue("queue3", true); }
    @Bean public Queue queue4() { return new Queue("queue4", true); }
    @Bean public Queue queue5() { return new Queue("queue5", true); }
}

