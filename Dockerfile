FROM quay.io/keycloak/keycloak:24.0

# Set admin username/password (can also be passed at runtime with -e)
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin123

# Build Keycloak server
RUN /opt/keycloak/bin/kc.sh build

# Start Keycloak in production mode (connects to remote Postgres via KC_DB_URL at runtime)
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]
