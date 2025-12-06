-- ================================================================================
-- SESSIONS
CREATE OR REPLACE VIEW v$sessions AS
SELECT pid,
       usename     AS user_name,
       datname     AS db_name,
       client_addr AS client_ip,
       application_name,
       state,
       backend_start,
       query_start,
       wait_event_type,
       wait_event,
       query
FROM pg_stat_activity
ORDER BY pid;
-- ================================================================================
-- TRANSACTIONS
CREATE OR REPLACE VIEW v$transactions AS
select 
	datname db_name,
	pid, 
	backend_xid as xid,
	usename user_name, 
	application_name app_name,
	client_hostname, 
	xact_start, 
	query_start, 
	wait_event, 
	state
FROM pg_stat_activity;
-- ================================================================================
-- LOCKS
CREATE OR REPLACE VIEW v$locks AS
SELECT pid,
       locktype,
       relation::regclass AS relation,
       page,
       tuple,
       virtualxid,
       transactionid,
       classid,
       objid,
       objsubid,
       mode,
       granted
FROM pg_locks
ORDER BY pid;
-- ================================================================================
