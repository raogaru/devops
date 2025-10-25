# Use Amazon Linux 2023 as base
FROM amazonlinux:2023

# Set environment variables
ENV LANG=en_US.UTF-8 
ENV LC_ALL=en_US.UTF-8

# Update and install basic tools
RUN dnf update -y && \
    dnf install -y glibc-langpack-en && \
    dnf clean all

# Set working directory
WORKDIR /app

# Default command (can be overridden)
CMD ["/bin/bash"]

