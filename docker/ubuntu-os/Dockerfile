FROM ubuntu:22.04

# Disable interactive prompts during build
ENV DEBIAN_FRONTEND=noninteractive

# Update packages and install basic tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates curl bash iputils-ping nano \
    && rm -rf /var/lib/apt/lists/*

# Create a working directory
WORKDIR /app

# Copy your application files
#COPY run.sh /app/run.sh

# Make script executable
#RUN chmod +x /app/run.sh

# Default command
#CMD ["/app/run.sh"]
CMD ["/bin/sh"]

