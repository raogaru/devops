-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION rdb_audit" to load this file.\quit

CREATE FUNCTION rdb_audit_ddl_command_end()
	RETURNS event_trigger
	SECURITY DEFINER
	SET search_path = pg_catalog, pg_temp
	LANGUAGE C
	AS 'MODULE_PATHNAME', 'rdb_audit_ddl_command_end';

CREATE EVENT TRIGGER rdb_audit_ddl_command_end
	ON ddl_command_end
	EXECUTE PROCEDURE rdb_audit_ddl_command_end();

CREATE FUNCTION rdb_audit_sql_drop()
	RETURNS event_trigger
	SECURITY DEFINER
	SET search_path = pg_catalog, pg_temp
	LANGUAGE C
	AS 'MODULE_PATHNAME', 'rdb_audit_sql_drop';

CREATE EVENT TRIGGER rdb_audit_sql_drop
	ON sql_drop
	EXECUTE PROCEDURE rdb_audit_sql_drop();

CREATE TABLE rdb_audit_log
(
  ts timestamp
, pid int
, stmt_id smallint
, substmt_id smallint
, db_name varchar(60)
, db_user varchar(60)
, os_user varchar(60)
, app_name varchar(60)
, client_host varchar(60)
, num_rows bigint
, audit_type varchar(10)
, class varchar(10)
, obj_type varchar(30)
, obj_name varchar(100)
, action_name varchar(60)
, sql_text text
, sql_bind text) ;

CREATE INDEX ON rdb_audit_log (db_name);
CREATE INDEX ON rdb_audit_log (db_user);
CREATE INDEX ON rdb_audit_log (app_name);
CREATE INDEX ON rdb_audit_log (action_name);
