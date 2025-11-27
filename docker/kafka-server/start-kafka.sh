#!/bin/bash
set -e

KAFKA_HOME=/opt/kafka
DATA_DIR=/var/lib/kafka

if [ ! -f "$DATA_DIR/meta.properties" ]; then
  echo "Formatting Kafka storage (KRaft)..."
  CLUSTER_ID=$($KAFKA_HOME/bin/kafka-storage.sh random-uuid)
  $KAFKA_HOME/bin/kafka-storage.sh format \
    -t $CLUSTER_ID \
    -c $KAFKA_HOME/config/kraft/server.properties
fi

echo "Starting Kafka..."
exec $KAFKA_HOME/bin/kafka-server-start.sh \
  $KAFKA_HOME/config/kraft/server.properties

