CREATE DATABASE kanboard;
CREATE USER kanboard WITH ENCRYPTED PASSWORD 'kanboard';
ALTER USER kanboard Superuser;
GRANT ALL PRIVILEGES ON DATABASE kanboard TO kanboard;

