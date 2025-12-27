-- ============================================================
-- RDB_AUDIT Comprehensive DDL Test Script
-- ============================================================
/*
| Object Type   | Operations                      |
| ------------- | ------------------------------- |
| Schema        | CREATE / ALTER / DROP           |
| Table         | CREATE / ALTER / RENAME / DROP  |
| Index         | CREATE / ALTER / DROP           |
| Sequence      | CREATE / ALTER / DROP           |
| Type Enum     | CREATE / ALTER / DROP           |
| Domain        | CREATE / ALTER / DROP           |
| Function      | CREATE / ALTER / DROP           |
| Procedure     | CREATE / ALTER / DROP           |
| Trigger       | CREATE / DROP                   |
| Rule          | CREATE / DROP                   |
| View          | CREATE / ALTER / DROP           |
| Mat View      | CREATE / REFRESH / DROP         |
| Role          | CREATE / ALTER / DROP           |
| Collation     | CREATE / ALTER / DROP           |
| Language      | CREATE / ALTER                  |
| FDW / Server  | CREATE / ALTER / DROP           |
| ------------- | ------------------------------- |
*/

SET client_min_messages = notice;

-- ------------------------------------------------------------
-- SCHEMA
-- ------------------------------------------------------------
CREATE SCHEMA rdb_audit_test;
ALTER SCHEMA rdb_audit_test RENAME TO rdb_audit_test2;
DROP SCHEMA rdb_audit_test2 CASCADE;

CREATE SCHEMA rdb_audit_test;
SET search_path TO rdb_audit_test;

-- ------------------------------------------------------------
-- TABLE
-- ------------------------------------------------------------
CREATE TABLE t1 ( id   BIGINT PRIMARY KEY, name TEXT, created_at TIMESTAMP DEFAULT now());
ALTER TABLE t1 ADD COLUMN salary NUMERIC(10,2);
ALTER TABLE t1 ALTER COLUMN name SET NOT NULL;
ALTER TABLE t1 RENAME COLUMN salary TO income;
ALTER TABLE t1 RENAME TO t2;


-- ------------------------------------------------------------
-- DML
-- ------------------------------------------------------------
INSERT INTO t2 (id, name) values (10,'name1');
UPDATE t2 set name='name2' where id=10;
DELETE from t2 where id=10;

-- ------------------------------------------------------------
-- INDEX
-- ------------------------------------------------------------
CREATE INDEX idx_t1_name ON t2(name);
ALTER INDEX idx_t1_name RENAME TO idx_t1_name_new;
DROP INDEX idx_t1_name_new;

-- ------------------------------------------------------------
-- SEQUENCE
-- ------------------------------------------------------------
CREATE SEQUENCE seq_test START 100;
ALTER SEQUENCE seq_test RESTART WITH 200;
DROP SEQUENCE seq_test;

-- ------------------------------------------------------------
-- TYPE
-- ------------------------------------------------------------
CREATE TYPE mood AS ENUM ('sad', 'ok', 'happy');
ALTER TYPE mood ADD VALUE 'ecstatic';
DROP TYPE mood;

-- ------------------------------------------------------------
-- DOMAIN
-- ------------------------------------------------------------
CREATE DOMAIN positive_int INTEGER CHECK (VALUE > 0);
ALTER DOMAIN positive_int ADD CONSTRAINT gt_10 CHECK (VALUE > 10);
DROP DOMAIN positive_int;

-- ------------------------------------------------------------
-- FUNCTION
-- ------------------------------------------------------------
CREATE OR REPLACE FUNCTION f_add(a INT, b INT) RETURNS INT LANGUAGE plpgsql AS $$ BEGIN RETURN a + b; END; $$;
ALTER FUNCTION f_add(INT, INT) OWNER TO CURRENT_USER;
DROP FUNCTION f_add(INT, INT);

-- ------------------------------------------------------------
-- PROCEDURE
-- ------------------------------------------------------------
CREATE OR REPLACE PROCEDURE p_insert_test(val TEXT) LANGUAGE plpgsql AS $$ BEGIN val:=''; END; $$;
ALTER PROCEDURE p_insert_test(TEXT) OWNER TO CURRENT_USER;
DROP PROCEDURE p_insert_test(TEXT);

-- ------------------------------------------------------------
-- TRIGGER
-- ------------------------------------------------------------
CREATE OR REPLACE FUNCTION trg_fn() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN NEW.created_at:=now(); RETURN NEW; END; $$;
CREATE TRIGGER trg_before_insert BEFORE INSERT ON t2 FOR EACH ROW EXECUTE FUNCTION trg_fn();
DROP TRIGGER trg_before_insert ON t2;
DROP FUNCTION trg_fn();

-- ------------------------------------------------------------
-- RULE
-- ------------------------------------------------------------
CREATE RULE t1_insert_rule AS ON INSERT TO t2 DO ALSO INSERT INTO t2 VALUES (999, 'rule_row', now());
DROP RULE t1_insert_rule ON t2;

-- ------------------------------------------------------------
-- VIEW
-- ------------------------------------------------------------
CREATE VIEW v_t1 AS SELECT id, name FROM t2;
ALTER VIEW v_t1 RENAME TO v_t1_new;
DROP VIEW v_t1_new;

-- ------------------------------------------------------------
-- MATERIALIZED VIEW
-- ------------------------------------------------------------
CREATE MATERIALIZED VIEW mv_t1 AS SELECT count(*) FROM t2;
REFRESH MATERIALIZED VIEW mv_t1;
DROP MATERIALIZED VIEW mv_t1;

-- ------------------------------------------------------------
-- ROLE
-- ------------------------------------------------------------
CREATE ROLE rdb_audit_role LOGIN PASSWORD 'test123';
ALTER ROLE rdb_audit_role SET work_mem = '16MB';
REVOKE ALL ON SCHEMA rdb_audit_test FROM rdb_audit_role;
DROP ROLE rdb_audit_role;

-- ------------------------------------------------------------
-- COLLATION (requires libc locale)
-- ------------------------------------------------------------
CREATE COLLATION my_collation (LOCALE = 'C');
ALTER COLLATION my_collation RENAME TO my_collation_new;
DROP COLLATION my_collation_new;

-- ------------------------------------------------------------
-- LANGUAGE
-- ------------------------------------------------------------
--CREATE EXTENSION IF NOT EXISTS plpython3u;
--ALTER LANGUAGE plpython3u OWNER TO CURRENT_USER;
-- language cannot be dropped if extension-owned

-- ------------------------------------------------------------
-- FDW + SERVER
-- ------------------------------------------------------------
CREATE EXTENSION IF NOT EXISTS postgres_fdw;

CREATE SERVER rdb_audit_server FOREIGN DATA WRAPPER postgres_fdw OPTIONS (host 'localhost', dbname 'postgres', port '5432');
ALTER SERVER rdb_audit_server OPTIONS (SET dbname 'postgres');

-- ------------------------------------------------------------
-- FOREIGN TABLE
-- ------------------------------------------------------------
CREATE FOREIGN TABLE ft1 (id INT,name TEXT) SERVER rdb_audit_server OPTIONS (schema_name 'public', table_name 'pg_class');
DROP FOREIGN TABLE ft1 ;

DROP SERVER rdb_audit_server CASCADE;
-- ------------------------------------------------------------
-- CLEANUP
-- ------------------------------------------------------------
DROP TABLE t2;
DROP SCHEMA rdb_audit_test cascade;

