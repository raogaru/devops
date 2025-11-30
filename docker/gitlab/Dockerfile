FROM gitlab/gitlab-ce:latest

ENV TZ=America/New_York

# Optional helper tools
RUN apt-get update &&  \
    apt-get install -y --no-install-recommends vim curl less net-tools iputils-ping dnsutils && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80 443 22

VOLUME ["/etc/gitlab", "/var/log/gitlab", "/var/opt/gitlab"]

