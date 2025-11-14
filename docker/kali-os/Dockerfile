FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

# Update system + install basic tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        kali-tools-top10 \
        nmap \
        curl \
        wget \
        git \
        net-tools \
        iputils-ping \
        python3 \
        python3-pip \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# Default command: open shell
CMD ["/bin/bash"]

