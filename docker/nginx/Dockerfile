# Use the official Nginx base image
FROM nginx:latest

# Maintainer info (optional)
LABEL maintainer="you@example.com"

# Copy your custom Nginx configuration (optional)
# Replace `nginx.conf` with your own config file if needed
COPY nginx.conf /etc/nginx/nginx.conf

# Copy website files (HTML, JS, CSS) into the default web root
COPY ./html /usr/share/nginx/html

# Expose port 80 for HTTP
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

