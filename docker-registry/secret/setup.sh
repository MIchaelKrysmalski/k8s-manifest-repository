cat <<EOF > /etc/rancher/k3s/registries.yaml
mirrors:
  registry.${DOMAIN}:
    endpoint:
      - "https://registry.${DOMAIN}"
configs:
  "registry.${DOMAIN}":
    auth:
      username: ${REGISTRY_USERNAME}
      password: ${REGISTRY_PASSWORD}
EOF