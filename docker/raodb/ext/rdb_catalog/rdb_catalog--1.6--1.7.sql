-- ================================================================================
-- VACUUM VIEWS
-- ================================================================================
CREATE OR REPLACE VIEW vac$disabled AS
SELECT
    n.nspname,
    c.relname,
    c.reloptions
FROM pg_class c
JOIN pg_namespace n ON n.oid = c.relnamespace
WHERE c.reloptions::text LIKE '%autovacuum_enabled=false%';

COMMENT ON VIEW vac$disabled IS 'Vacuum Disabled ';
-- ================================================================================
CREATE OR REPLACE VIEW vac$freeze_risk AS
SELECT
    n.nspname,
    c.relname,
    age(c.relfrozenxid) AS xid_age,
    pg_size_pretty(pg_total_relation_size(c.oid)) AS size
FROM pg_class c
JOIN pg_namespace n ON n.oid = c.relnamespace
WHERE age(c.relfrozenxid) > 500000000
ORDER BY xid_age DESC;

COMMENT ON VIEW vac$freeze_risk IS 'Potential freezing risk due to vacuum';
-- ================================================================================
CREATE OR REPLACE VIEW vac$needed AS
SELECT
    n.nspname AS schema_name,
    c.relname AS table_name,
    s.n_live_tup,
    s.n_dead_tup,
    s.autovacuum_count,
    s.last_autovacuum,
    (pg_total_relation_size(c.oid) / 1024 / 1024) AS size_mb
FROM pg_class c
JOIN pg_stat_user_tables s ON s.relid = c.oid
JOIN pg_namespace n ON n.oid = c.relnamespace
WHERE s.n_dead_tup > s.n_live_tup * 0.2
ORDER BY s.n_dead_tup DESC;

COMMENT ON VIEW vac$needed IS 'Objects needing Vacuum needed';
-- ================================================================================
CREATE OR REPLACE VIEW vac$sessions AS
SELECT pid,
       datname        AS db_name,
       usename        AS user_name,
       application_name,
       client_addr,
       state,
       query_start,
       now() - query_start AS duration,
       query
FROM pg_stat_activity
WHERE query ILIKE 'vacuum%' 
OR    application_name LIKE 'autovacuum%';

COMMENT ON VIEW vac$sessions IS 'Sessions performing vacuum or autovacuum';
-- ================================================================================
CREATE OR REPLACE VIEW vac$progress AS
SELECT v.pid,
       a.datname       AS db_name,
       c.relname       AS table_name,
       v.phase,
       v.heap_blks_total,
       v.heap_blks_scanned,
       v.heap_blks_vacuumed,
       v.index_vacuum_count,
       ROUND(100 * v.heap_blks_scanned::numeric / NULLIF(v.heap_blks_total, 0), 2) AS pct_scanned,
       ROUND(100 * v.heap_blks_vacuumed::numeric / NULLIF(v.heap_blks_total, 0), 2) AS pct_vacuumed
FROM pg_stat_progress_vacuum v
JOIN pg_class c ON c.oid = v.relid
JOIN pg_stat_activity a ON a.pid = v.pid
ORDER BY pct_scanned DESC;

COMMENT ON VIEW vac$sessions IS 'Vacuum progress';
-- ================================================================================
CREATE OR REPLACE VIEW vac$blocking AS
SELECT
    v.pid     AS vacuum_pid,
    v.phase,
    a.query   AS vacuum_query,
    l.mode    AS vacuum_lock_mode,
    bl.pid    AS blocking_pid,
    act.query AS blocking_query
FROM pg_stat_progress_vacuum v
JOIN pg_stat_activity a
  ON a.pid = v.pid
JOIN pg_locks l
  ON l.pid = v.pid
JOIN pg_locks bl
  ON bl.locktype = l.locktype
 AND bl.database IS NOT DISTINCT FROM l.database
 AND bl.relation IS NOT DISTINCT FROM l.relation
 AND bl.page IS NOT DISTINCT FROM l.page
 AND bl.tuple IS NOT DISTINCT FROM l.tuple
 AND bl.pid <> l.pid
 AND bl.granted = true
JOIN pg_stat_activity act
  ON act.pid = bl.pid
WHERE l.granted = false;

COMMENT ON VIEW vac$blocking IS 'Vacuum blocking processes';
-- ================================================================================
