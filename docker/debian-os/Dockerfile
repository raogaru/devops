FROM debian:bookworm

# Avoid interactive apt dialogs
ENV DEBIAN_FRONTEND=noninteractive

# Install common tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends bash curl ca-certificates iputils-ping nano \
    && rm -rf /var/lib/apt/lists/*

# Working directory
WORKDIR /app

# Copy your script/application
#COPY run.sh /app/run.sh

# Make executable
#RUN chmod +x /app/run.sh

# Default command
#CMD ["/app/run.sh"]
CMD ["/bin/sh"]

