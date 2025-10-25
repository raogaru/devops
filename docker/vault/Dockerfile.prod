# Use the official Vault image
FROM hashicorp/vault:1.16

ENV VAULT_SKIP_VERIFY=true
ENV VAULT_ADDR='http://localhost:8200'

EXPOSE 8200

COPY vault.hcl /vault/config

