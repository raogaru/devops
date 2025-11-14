FROM fedora:40

# Avoid interactive prompts
ENV TERM=xterm \
    LANG=en_US.UTF-8

# Update system and install useful tools
RUN dnf -y update && \
    dnf -y install bash curl nano iputils ca-certificates \
    && dnf clean all

# Create app directory
WORKDIR /app

# Copy script or application
#COPY run.sh /app/run.sh

# Mark executable
#RUN chmod +x /app/run.sh

# Default command
#CMD ["/app/run.sh"]
CMD ["/bin/sh"]

