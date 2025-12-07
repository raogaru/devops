-- ================================================================================
-- PREDICATES ANALYSIS (where clause conditions)
-- RDB Views based on pg_qualstats extension
-- ================================================================================
CREATE OR REPLACE VIEW ind$pred_by_usage AS
SELECT
    q.queryid,
    c.relname             AS table_name,
    a.attname             AS column_name,
    q.opno::regoperator   AS operator,
    q.occurences          AS occurences
FROM pg_qualstats q
JOIN pg_class c
  ON c.oid = q.lrelid
JOIN pg_attribute a
  ON a.attrelid = q.lrelid
 AND a.attnum   = q.lattnum
WHERE q.lattnum > 0
ORDER BY q.occurences DESC
LIMIT 20;

COMMENT ON VIEW ind$pred_by_usage IS 'TOP predicates by usage (global)';
-- ================================================================================
CREATE OR REPLACE VIEW ind$pred_need_idx AS
SELECT
    q.queryid,
    c.relname,
    a.attname,
    q.opno::regoperator AS operator,
    q.occurences
FROM pg_qualstats q
JOIN pg_class c ON c.oid = q.lrelid
JOIN pg_attribute a ON a.attrelid = q.lrelid AND a.attnum = q.lattnum
WHERE q.lattnum > 0
  AND q.occurences > 100
ORDER BY q.occurences DESC;

COMMENT ON VIEW ind$pred_need_idx IS 'Missing-index candidates with high occurences';
-- ================================================================================
CREATE OR REPLACE VIEW ind$pred_hot_joins AS
SELECT
    q.queryid,
    cl.relname || '.' || al.attname AS left_column,
    cr.relname || '.' || ar.attname AS right_column,
    q.opno::regoperator AS operator,
    q.occurences
FROM pg_qualstats q
JOIN pg_class     cl ON cl.oid = q.lrelid
JOIN pg_attribute al ON al.attrelid = q.lrelid AND al.attnum = q.lattnum
JOIN pg_class     cr ON cr.oid = q.rrelid
JOIN pg_attribute ar ON ar.attrelid = q.rrelid AND ar.attnum = q.rattnum
WHERE q.lattnum > 0
  AND q.rattnum > 0
ORDER BY q.occurences DESC
LIMIT 20;

COMMENT ON VIEW ind$pred_hot_joins IS 'Queries with Join predicates (hot joins)';
-- ================================================================================
CREATE OR REPLACE VIEW ind$pred_pressure AS
SELECT
    queryid,
    SUM(occurences) AS total_predicate_usage
FROM pg_qualstats
GROUP BY queryid
ORDER BY total_predicate_usage DESC
LIMIT 20;

COMMENT ON VIEW ind$pred_pressure IS 'Queries with highest predicate pressure';
-- ================================================================================
CREATE OR REPLACE VIEW ind$pred_with_constants AS
SELECT
    q.queryid,
    c.relname,
    a.attname,
    q.opno::regoperator AS operator,
    q.occurences
FROM pg_qualstats q
JOIN pg_class c ON c.oid = q.lrelid
JOIN pg_attribute a ON a.attrelid = q.lrelid AND a.attnum = q.lattnum
WHERE q.qualnodeid IS NOT NULL
  AND q.lattnum > 0
ORDER BY q.occurences DESC
LIMIT 20;

COMMENT ON VIEW ind$pred_with_constants IS 'Queries Constant-based predicates';
-- ================================================================================
CREATE OR REPLACE VIEW ind$pred_of_slow_sqls AS
SELECT
    s.queryid,
    s.calls,
    s.total_exec_time AS total_exec_time_ms,
    c.relname,
    a.attname,
    q.opno::regoperator AS operator,
    q.occurences
FROM pg_stat_statements s
JOIN pg_qualstats q ON q.queryid = s.queryid
JOIN pg_class c ON c.oid = q.lrelid
JOIN pg_attribute a ON a.attrelid = q.lrelid AND a.attnum = q.lattnum
WHERE q.lattnum > 0
ORDER BY s.total_exec_time DESC
LIMIT 20;

COMMENT ON VIEW ind$pred_of_slow_sqls IS 'Predicates of Queries with performance issues';
-- ================================================================================
CREATE OR REPLACE VIEW ind$pred_need_func_idx AS
SELECT
    q.queryid,
    c.relname,
    q.opno::regoperator AS operator,
    q.occurences
FROM pg_qualstats q
JOIN pg_class c ON c.oid = q.lrelid
WHERE q.lattnum = 0
ORDER BY q.occurences DESC
LIMIT 20;

COMMENT ON VIEW ind$pred_need_func_idx IS 'Queries with Expression predicates (functional index targets)';
-- ================================================================================
