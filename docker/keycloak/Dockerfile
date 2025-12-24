FROM quay.io/keycloak/keycloak:24.0.1

# Enable health & metrics endpoints
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV KC_HTTP_ENABLED=true
#ENV KC_LOG_LEVEL=DEBUG
ENV KC_LOG=file
ENV KC_LOG_FILE=/opt/keycloak/data/keycloak.log

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin
ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://c-postgres:5432/keycloak
ENV KC_DB_USERNAME=keycloak
ENV KC_DB_PASSWORD=keycloak
ENV KC_HOSTNAME_STRICT=false

COPY raogaru.json /opt/keycloak/data/import/

# Build the optimized runtime
RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

CMD ["start"]

#CMD ["start","--import-realm"]

