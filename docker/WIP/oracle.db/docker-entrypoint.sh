#!/bin/bash

# Start listener and database
echo "Starting Oracle Listener..."
lsnrctl start

echo "Starting Oracle XE..."
sqlplus / as sysdba <<EOF
startup;
alter system register;
exit;
EOF

# Keep container alive
exec "$@"

