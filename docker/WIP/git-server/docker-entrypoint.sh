#!/bin/sh
set -e

# Generate host keys if missing
ssh-keygen -A

# Ensure git user has .ssh
mkdir -p /var/lib/git/.ssh
chown -R git:git /var/lib/git
chmod 700 /var/lib/git/.ssh

# If you mounted a keys file, copy it in
if [ -f /keys/authorized_keys ]; then
  cp /keys/authorized_keys /var/lib/git/.ssh/authorized_keys
  chown git:git /var/lib/git/.ssh/authorized_keys
  chmod 600 /var/lib/git/.ssh/authorized_keys
fi

# Ensure repos dir ownership
chown -R git:git /repos

# Start OpenSSH (logs to stderr)
exec /usr/sbin/sshd -D -e

