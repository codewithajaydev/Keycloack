FROM quay.io/keycloak/keycloak:24.0
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin123
EXPOSE 8080
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]
