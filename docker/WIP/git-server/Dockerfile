# Git server via SSH using Alpine
FROM alpine:3.20

# Install git + OpenSSH
RUN apk add --no-cache git openssh

# Create "git" system user with git-shell (no interactive login)
RUN adduser -D -H -s /usr/bin/git-shell -u 10001 git \
 && mkdir -p /var/lib/git /repos /home/git \
 && chown -R git:git /var/lib/git /repos /home/git

# Harden sshd (keys only, git user only)
RUN sed -i \
  -e 's/^#\?PasswordAuthentication.*/PasswordAuthentication no/' \
  -e 's/^#\?PermitRootLogin.*/PermitRootLogin no/' \
  -e 's/^#\?PubkeyAuthentication.*/PubkeyAuthentication yes/' \
  -e '$aAllowUsers git' \
  /etc/ssh/sshd_config \
 && printf "Subsystem sftp /bin/false\n" >> /etc/ssh/sshd_config

# Where you'll mount your authorized_keys (read-only) and keep repos
VOLUME ["/keys", "/repos"]

# Simple entrypoint: set up host keys, authorized_keys, perms, then run sshd
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 22
USER root
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

