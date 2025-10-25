# Use the official PostgreSQL base image
FROM postgres:latest

# Set environment variables for PostgreSQL
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=postgres

# Expose the default PostgreSQL port
EXPOSE 5432

#VOLUME v-postgres

# Copy any initialization scripts into the entrypoint directory
# These scripts will be executed when the container is first created
#COPY init.sql /docker-entrypoint-initdb.d/
