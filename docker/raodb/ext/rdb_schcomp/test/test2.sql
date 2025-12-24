SET client_min_messages TO WARNING;

DROP DATABASE IF EXISTS test2;
CREATE DATABASE test2 WITH ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE   = 'en_US.UTF-8' TEMPLATE = template0;

DROP ROLE IF EXISTS same_role_1;
DROP ROLE IF EXISTS same_role_2;
DROP ROLE IF EXISTS same_role_3;
DROP ROLE IF EXISTS "PGQ_same_role_4";
CREATE ROLE same_role_1;
CREATE ROLE same_role_2;
CREATE ROLE same_role_3;
CREATE ROLE "PGQ_same_role_4";

RESET client_min_messages;

\c test2

-- fdw tests
CREATE EXTENSION postgres_fdw;
CREATE EXTENSION file_fdw;

\i dellstore.sql

\i to-server.sql

\i to-table.sql

\i to-index.sql

\i to-sequence.sql

\i to-domain.sql

\i to-function.sql

\i to-extension.sql

\i to-language.sql

\i to-schema.sql

--\i to-eventtrigger.sql

\i to-cast.sql

\i to-collation.sql

\i to-view.sql

\i to-matview.sql

\i to-fdw.sql

\i to-statistics.sql

--\i to-user-mapping.sql

\i to-publication.sql
