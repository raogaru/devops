-- ================================================================================
-- SESSION 
/*
*/
-- ================================================================================
CREATE OR REPLACE VIEW ses$all AS
select * from pg_stat_activity;
COMMENT ON VIEW ses$all IS 'All sessions';
-- ================================================================================
CREATE OR REPLACE VIEW ses$background AS
SELECT
    pid,
    backend_type,
    state,
    backend_start
FROM pg_stat_activity
WHERE backend_type <> 'client backend'
ORDER BY backend_type, pid;

COMMENT ON VIEW ses$background IS 'Background sessions';
-- ================================================================================
CREATE OR REPLACE VIEW ses$user AS
SELECT
    pid,
    usename,
    datname,
    application_name,
    client_addr,
    state,
    query_start,
    now() - query_start AS query_age,
    query_id,
    query
FROM pg_stat_activity
WHERE backend_type = 'client backend'
ORDER BY query_start;

COMMENT ON VIEW ses$user IS 'User sessions';
-- ================================================================================
CREATE OR REPLACE VIEW ses$blocked AS
SELECT
    a.pid              AS blocked_pid,
    a.usename          AS blocked_user,
    a.query_id            AS blocked_query_id,
    pg_blocking_pids(a.pid) AS blocked_by_pids
FROM pg_stat_activity a
WHERE cardinality(pg_blocking_pids(a.pid)) > 0
ORDER BY a.pid;

COMMENT ON VIEW ses$blocked IS '';
-- ================================================================================
CREATE OR REPLACE VIEW ses$blocking AS
SELECT DISTINCT
    bl.pid              AS blocking_pid,
    ba.usename          AS blocking_user,
    ba.query_id         AS blocking_query_id,
    ba.state            AS blocking_state
FROM pg_locks bl
JOIN pg_locks wl
  ON wl.locktype = bl.locktype
 AND wl.database IS NOT DISTINCT FROM bl.database
 AND wl.relation IS NOT DISTINCT FROM bl.relation
 AND wl.page IS NOT DISTINCT FROM bl.page
 AND wl.tuple IS NOT DISTINCT FROM bl.tuple
 AND wl.transactionid IS NOT DISTINCT FROM bl.transactionid
 AND wl.classid IS NOT DISTINCT FROM bl.classid
 AND wl.objid IS NOT DISTINCT FROM bl.objid
 AND wl.objsubid IS NOT DISTINCT FROM bl.objsubid
 AND bl.pid <> wl.pid
JOIN pg_stat_activity ba ON ba.pid = bl.pid
WHERE bl.granted
  AND NOT wl.granted
ORDER BY blocking_pid;

COMMENT ON VIEW ses$blocking IS 'Sessions blocking other sessions';
-- ================================================================================
CREATE OR REPLACE VIEW ses$locks AS
SELECT
    a.pid,
    a.usename,
    a.application_name,
    l.locktype,
    l.mode,
    l.granted,
    n.nspname      AS schema_name,
    c.relname      AS object_name,
    c.relkind      AS object_type,
    a.query_id
FROM pg_locks l
JOIN pg_stat_activity a ON a.pid = l.pid
LEFT JOIN pg_class c    ON c.oid = l.relation
LEFT JOIN pg_namespace n ON n.oid = c.relnamespace
ORDER BY l.granted DESC, a.pid;

COMMENT ON VIEW ses$locks IS 'All objects locked by sessions';
-- ================================================================================
CREATE OR REPLACE VIEW ses$blockobj AS
SELECT
    blocked.pid        AS blocked_pid,
    blocked.usename    AS blocked_user,
    blocking.pid       AS blocking_pid,
    blocking.usename   AS blocking_user,
    n.nspname          AS schema_name,
    c.relname          AS object_name,
    bl.mode            AS blocking_lock,
    wl.mode            AS waiting_lock
FROM pg_locks bl
JOIN pg_locks wl
  ON wl.locktype = bl.locktype
 AND wl.database IS NOT DISTINCT FROM bl.database
 AND wl.relation IS NOT DISTINCT FROM bl.relation
 AND wl.page IS NOT DISTINCT FROM bl.page
 AND wl.tuple IS NOT DISTINCT FROM bl.tuple
 AND wl.transactionid IS NOT DISTINCT FROM bl.transactionid
 AND wl.classid IS NOT DISTINCT FROM bl.classid
 AND wl.objid IS NOT DISTINCT FROM bl.objid
 AND wl.objsubid IS NOT DISTINCT FROM bl.objsubid
JOIN pg_stat_activity blocking ON blocking.pid = bl.pid
JOIN pg_stat_activity blocked  ON blocked.pid  = wl.pid
LEFT JOIN pg_class c           ON c.oid = bl.relation
LEFT JOIN pg_namespace n       ON n.oid = c.relnamespace
WHERE bl.granted
  AND NOT wl.granted
ORDER BY blocked.pid;

COMMENT ON VIEW ses$blockobj IS 'Locked Objects - blocking vs blocked';
-- ================================================================================
--CREATE OR REPLACE VIEW ses$xxx AS
--COMMENT ON VIEW ses$xxx IS '';
-- ================================================================================
