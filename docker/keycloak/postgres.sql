CREATE DATABASE keycloak;
CREATE USER keycloak WITH ENCRYPTED PASSWORD 'keycloak';
ALTER USER keycloak Superuser;
GRANT ALL PRIVILEGES ON DATABASE keycloak TO keycloak;

