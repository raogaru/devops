# Use official Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root to install extra packages (optional)
USER root

# Example: install git and nano
RUN apt-get update && apt-get install -y git nano docker.io && rm -rf /var/lib/apt/lists/*

# Switch back to jenkins user
USER jenkins

# Copy Groovy scripts for initial run
#RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
#COPY 01-default-user.groovy /usr/share/jenkins/ref/init.groovy.d/

# Copy plugin list and install plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt

