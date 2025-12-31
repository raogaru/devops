FROM --platform=linux/amd64 oraclelinux:8

ENV ORACLE_PASSWORD=Password123 \
    ORACLE_PWD=Password123 \
    ORACLE_BASE=/opt/oracle \
    ORACLE_HOME=/opt/oracle/product/21c/dbhomeXE \
    ORACLE_SID=XE \
    ORACLE_CHARACTERSET=AL32UTF8

# Prereqs
RUN dnf install -y oracle-database-preinstall-21c unzip net-tools \
    && dnf clean all

# Copy RPM
COPY oracle-database-xe-21c-1.0-1.ol8.x86_64.rpm /tmp/oracle-xe.rpm

# Install RPM
RUN dnf install -y /tmp/oracle-xe.rpm \
    && rm -f /tmp/oracle-xe.rpm

# SILENT CONFIGURATION (NO PROMPTS)
#RUN /etc/init.d/oracle-xe-21c configure

EXPOSE 1521 5500

VOLUME ["/opt/oracle/oradata"]

CMD ["/bin/bash"]

