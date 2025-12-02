FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Zabbix version
ENV ZBX_VERSION=6.4
ENV POSTGRES_HOST=c-postgres
ENV POSTGRES_PORT=5432
ENV POSTGRES_DB=zabbix
ENV POSTGRES_USER=zabbix
ENV POSTGRES_PASS=zabbix

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget gnupg lsb-release curl apache2 supervisor iputils-ping locales \
    php php-mysql php-pgsql php-gd php-bcmath php-mbstring php-xml php-ldap php-json php-curl \
    && rm -rf /var/lib/apt/lists/*

# Locale fix for Zabbix frontend
RUN locale-gen en_US.UTF-8 \
    && update-locale LANG=en_US.UTF-8 \

ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

# Add Zabbix repository
RUN wget https://repo.zabbix.com/zabbix/${ZBX_VERSION}/ubuntu/pool/main/z/zabbix-release/zabbix-release_${ZBX_VERSION}-1+ubuntu22.04_all.deb \
    && dpkg -i zabbix-release_${ZBX_VERSION}-1+ubuntu22.04_all.deb \
    && apt-get update

# Install Zabbix server + frontend
RUN apt-get install -y \
    zabbix-server-pgsql \
    zabbix-frontend-php \
    zabbix-apache-conf \
    zabbix-sql-scripts \
    && rm -rf /var/lib/apt/lists/*

# PHP timezone
RUN sed -i 's|; php_value date.timezone.*|php_value date.timezone UTC|' /etc/apache2/conf-enabled/zabbix.conf

# Supervisor config
RUN printf "[supervisord]\nnodaemon=true\n\n\
[program:zabbix]\ncommand=/usr/sbin/zabbix_server\n\n\
[program:apache]\ncommand=/usr/sbin/apachectl -D FOREGROUND\n" > /etc/supervisor/conf.d/supervisord.conf

RUN gunzip /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz

COPY zabbix_server.conf /etc/zabbix/

EXPOSE 80 10051

CMD ["/usr/bin/supervisord"]

