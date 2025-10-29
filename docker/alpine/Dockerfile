# Start from Alpine Linux
FROM alpine:3.20

# Set environment variables
ENV TZ=UTC
ENV LANG=en_US.UTF-8

# Update packages and install common utilities
RUN apk update && apk upgrade && \
    apk add --no-cache bash curl vim

# Set working directory
WORKDIR /app

# Copy files from host (optional)
# COPY . /app

# Default command (opens shell)
CMD ["/bin/sh"]

