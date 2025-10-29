# Use the official Apache HTTP Server image from Docker Hub
FROM httpd:2.4

# Copy your custom website content into the container
COPY ./html/ /usr/local/apache2/htdocs/

# Expose port 80 for HTTP
EXPOSE 80

# (Optional) If you want to customize httpd.conf
# COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

# The base image already provides CMD ["httpd-foreground"]

