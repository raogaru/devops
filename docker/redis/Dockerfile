FROM redis:7.2

# Copy custom config
COPY redis.conf /usr/local/etc/redis/redis.conf

# Start Redis with custom config
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]

EXPOSE 6379

