# Use the official mongo-express image as base
FROM mongo-express:1.0.2-20

# Set maintainer info (optional)
#LABEL maintainer="raogaru.com" \
#      description="Dockerfile for Mongo Express admin interface"

# Environment variables
# These should match your MongoDB container settings
ENV ME_CONFIG_MONGODB_SERVER=mongodb \
    ME_CONFIG_MONGODB_PORT=27017 \
    ME_CONFIG_MONGODB_ENABLE_ADMIN=true \
    ME_CONFIG_SITE_BASEURL=/ \
    ME_CONFIG_SITE_PORT=8081 \
    ME_CONFIG_MONGODB_AUTH_DATABASE=admin

# Optional: MongoDB authentication credentials
# (can be overridden at runtime with -e)
ENV ME_CONFIG_MONGODB_ADMINUSERNAME=admin \
    ME_CONFIG_MONGODB_ADMINPASSWORD=admin123

# Expose web UI port
EXPOSE 8081

# Start mongo-express
CMD ["tini", "--", "node", "app"]

