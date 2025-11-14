# Use official MongoDB image as the base
FROM mongo:7.0

# Maintainer info
LABEL maintainer="raogaru.com <dev@raogaru.com>"

# Set environment variables (can be overridden at runtime)
ENV MONGO_INITDB_ROOT_USERNAME=admin \
    MONGO_INITDB_ROOT_PASSWORD=admin123 \
    MONGO_INITDB_DATABASE=raodb

# Expose MongoDB port
EXPOSE 27017

# Create directories for data and config
RUN mkdir -p /data/db /data/configdb

COPY mongod.conf /etc/mongod.conf
CMD ["mongod"]

#COPY mongod.conf /etc/mongod.conf
#CMD ["mongod", "--config", "/etc/mongod.conf"]

