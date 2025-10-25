ui = true

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

storage "file" {
  path = "/vault/data"
}

# Explicit API address (external clients use this)
api_addr = "http://localhost:8200"

