# Use the official RabbitMQ image with management plugin
FROM rabbitmq:3.13-management

# Set environment variables for default user and password
ENV RABBITMQ_DEFAULT_USER=admin
ENV RABBITMQ_DEFAULT_PASS=admin
ENV RABBITMQ_DEFAULT_VHOST=/

# Expose ports:
# 5672 -> AMQP protocol
# 15672 -> HTTP management UI
EXPOSE 5672 15672

# Optional: copy custom configuration (uncomment if you have one)
#COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

# Copy optional definitions (for queues, exchanges, users, etc.)
# COPY definitions.json /etc/rabbitmq/definitions.json

# Define volume for persistence
VOLUME ["/var/lib/rabbitmq"]

# ENV RABBITMQ_CONFIG_FILE=/etc/rabbitmq/rabbitmq

# Start RabbitMQ server
CMD ["rabbitmq-server"]

# The base image already runs `rabbitmq-server`

