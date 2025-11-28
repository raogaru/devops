FROM grafana/grafana:10.4.2

# Switch to root to install plugins and copy files
USER root

# Set timezone
ENV TZ=UTC

# (Optional) Install Grafana CLI plugins at build time
# Add or remove plugins as needed
RUN grafana-cli plugins install grafana-clock-panel && \
    grafana-cli plugins install grafana-piechart-panel

# Create directories for provisioning
RUN mkdir -p /etc/grafana/provisioning/datasources \
             /etc/grafana/provisioning/dashboards \
             /var/lib/grafana/dashboards

# Copy provisioning configs (optional)
# COPY provisioning/datasources/*.yaml /etc/grafana/provisioning/datasources/
# COPY provisioning/dashboards/*.yaml  /etc/grafana/provisioning/dashboards/

# Copy prebuilt dashboards (optional)
# COPY dashboards/*.json /var/lib/grafana/dashboards/

# Set admin credentials (can be overridden in docker-compose)
ENV GF_SECURITY_ADMIN_USER=admin
ENV GF_SECURITY_ADMIN_PASSWORD=admin
ENV GF_USERS_ALLOW_SIGN_UP=false

# Expose Grafana UI
EXPOSE 3000

# Switch back to grafana user
USER grafana

