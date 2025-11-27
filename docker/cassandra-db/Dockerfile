FROM cassandra:4.1

ENV MAX_HEAP_SIZE=2G \
    HEAP_NEWSIZE=512M

ENV CASSANDRA_CLUSTER_NAME="my-cluster" \
    CASSANDRA_SEEDS="c-cassandra-db" \
    CASSANDRA_DC=dc1 \
    CASSANDRA_RACK=rack1

COPY cassandra.yaml /etc/cassandra/cassandra.yaml

EXPOSE 7000 7001 7199 9042 9160

VOLUME ["/var/lib/cassandra"]

CMD ["cassandra", "-f"]

