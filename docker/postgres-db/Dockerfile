FROM postgres:latest
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=postgres
EXPOSE 5432

# Copy any initialization scripts into the entrypoint directory
# These scripts will be executed when the container is first created
#COPY init.sql /docker-entrypoint-initdb.d/
