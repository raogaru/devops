-- ================================================================================
-- STATISTICS 
-- ================================================================================
/*
Find/Analyze missing/stale table/index, table partition/index partition statistics
SITUATION		ACTION
Table never analyzed	ANALYZE table;
New column		ANALYZE table;
stats_target = 0	ALTER COLUMN ... SET STATISTICS -1
Highly skewed column	Increase statistics target
Partition missing stats	Analyze partitions individually
*/
-- ================================================================================
CREATE OR REPLACE VIEW stx$missing_table_stats AS
SELECT
    n.nspname                     AS schema_name,
    c.relname                     AS table_name
FROM pg_class c
JOIN pg_namespace n ON n.oid = c.relnamespace
LEFT JOIN pg_stat_user_tables s ON s.relid = c.oid
WHERE c.relkind = 'r'
  AND s.last_analyze IS NULL
  AND s.last_autoanalyze IS NULL
  AND n.nspname NOT IN ('pg_catalog', 'information_schema')
ORDER BY schema_name, table_name;

COMMENT ON VIEW stx$missing_table_stats IS 'Tables never analyzed ';
-- ================================================================================
CREATE OR REPLACE VIEW stx$stale_table_stats AS
SELECT
    n.nspname                     AS schema_name,
    c.relname                     AS table_name,
    s.n_live_tup,
    s.n_mod_since_analyze,
    s.last_analyze,
    s.last_autoanalyze
FROM pg_class c
JOIN pg_namespace n ON n.oid = c.relnamespace
JOIN pg_stat_user_tables s ON s.relid = c.oid
WHERE c.relkind = 'r'
  AND s.n_mod_since_analyze > (s.n_live_tup * 0.2)
  AND n.nspname NOT IN ('pg_catalog', 'information_schema')
ORDER BY s.n_mod_since_analyze DESC;

COMMENT ON VIEW stx$stale_table_stats IS 'Tables with stats likely stale';
-- ================================================================================
CREATE OR REPLACE VIEW stx$missing_column_stats AS
SELECT
    n.nspname AS schema_name,
    c.relname AS table_name,
    a.attname AS column_name
FROM pg_class c
JOIN pg_namespace n  ON n.oid = c.relnamespace
JOIN pg_attribute a ON a.attrelid = c.oid
LEFT JOIN pg_statistic s
       ON s.starelid = c.oid
      AND s.staattnum = a.attnum
WHERE c.relkind IN ('r','p')
  AND a.attnum > 0
  AND NOT a.attisdropped
  AND s.starelid IS NULL
  AND n.nspname not in ('pg_catalog')
ORDER BY 1,2,3;

COMMENT ON VIEW stx$missing_column_stats IS 'Columns stats missing';
-- ================================================================================
CREATE OR REPLACE VIEW stx$stale_column_stats AS
SELECT
    n.nspname               AS schema_name,
    c.relname               AS table_name,
    a.attname               AS column_name,
    s.n_live_tup,
    s.n_mod_since_analyze,
    s.last_analyze,
    s.last_autoanalyze
FROM pg_stat_user_tables s
JOIN pg_class c       ON c.oid = s.relid
JOIN pg_namespace n   ON n.oid = c.relnamespace
JOIN pg_attribute a  ON a.attrelid = c.oid
WHERE a.attnum > 0
  AND NOT a.attisdropped
  AND s.n_mod_since_analyze > (s.n_live_tup * 0.2)   -- 20% churn threshold
ORDER BY
    s.n_mod_since_analyze DESC,
    1,2,3;

COMMENT ON VIEW stx$stale_column_stats IS 'Columns with stats likely stale';
-- ================================================================================
CREATE OR REPLACE VIEW stx$disabled_column_stats AS
SELECT
    n.nspname AS schema_name,
    c.relname AS table_name,
    a.attname AS column_name
FROM pg_attribute a
JOIN pg_class c ON c.oid = a.attrelid
JOIN pg_namespace n ON n.oid = c.relnamespace
WHERE a.attnum > 0
  AND NOT a.attisdropped
  AND a.attstattarget = 0
ORDER BY 1,2,3;

COMMENT ON VIEW stx$disabled_column_stats IS 'Columns stats disabled';
-- ================================================================================
CREATE OR REPLACE VIEW stx$missing_column_histgrams AS
select 1;

COMMENT ON VIEW stx$missing_column_histgrams IS 'Columns statistics exists but no histograms';
-- ================================================================================
CREATE OR REPLACE VIEW stx$missing_table_part_stats AS
SELECT
    n.nspname        AS schema_name,
    p.relname        AS parent_table,
    c.relname        AS partition_name
FROM pg_class c
JOIN pg_namespace n
  ON n.oid = c.relnamespace
JOIN pg_inherits i
  ON i.inhrelid = c.oid
JOIN pg_class p
  ON p.oid = i.inhparent
LEFT JOIN pg_stat_user_tables s
  ON s.relid = c.oid
WHERE c.relkind = 'r'
  AND s.last_analyze IS NULL
  AND s.last_autoanalyze IS NULL
ORDER BY
    n.nspname,
    p.relname,
    c.relname;

COMMENT ON VIEW stx$missing_table_part_stats IS 'Table partitions never analyzed';
-- ================================================================================
CREATE OR REPLACE VIEW stx$stale_table_part_stats AS
SELECT
    n.nspname        AS schema_name,
    p.relname        AS parent_table,
    c.relname        AS partition_name,
    s.n_live_tup,
    s.n_mod_since_analyze,
    s.last_analyze,
    s.last_autoanalyze
FROM pg_inherits i
JOIN pg_class c
  ON c.oid = i.inhrelid
JOIN pg_class p
  ON p.oid = i.inhparent
JOIN pg_namespace n
  ON n.oid = c.relnamespace
JOIN pg_stat_user_tables s
  ON s.relid = c.oid
WHERE s.n_mod_since_analyze > (s.n_live_tup * 0.2)
  AND n.nspname NOT IN ('pg_catalog', 'information_schema')
ORDER BY s.n_mod_since_analyze DESC;

COMMENT ON VIEW stx$stale_table_part_stats IS 'Table partitions statistics likely stale';
-- ================================================================================
CREATE OR REPLACE VIEW stx$missing_index_stats AS
SELECT
    n.nspname                     AS schema_name,
    t.relname                     AS table_name,
    i.relname                     AS index_name
FROM pg_class i
JOIN pg_index ix ON ix.indexrelid = i.oid
JOIN pg_class t ON t.oid = ix.indrelid
JOIN pg_namespace n ON n.oid = t.relnamespace
LEFT JOIN pg_stat_user_indexes s ON s.indexrelid = i.oid
WHERE s.indexrelid IS NULL
  AND i.relkind = 'i'
  AND n.nspname NOT IN ('pg_catalog', 'information_schema')
ORDER BY schema_name, table_name, index_name;

COMMENT ON VIEW stx$missing_index_stats IS 'Indexes never analyzed';
-- ================================================================================
CREATE OR REPLACE VIEW stx$stale_index_stats AS
SELECT
    n.nspname                     AS schema_name,
    t.relname                     AS table_name,
    i.relname                     AS index_name,
    t_s.n_mod_since_analyze,
    t_s.last_analyze,
    t_s.last_autoanalyze
FROM pg_class i
JOIN pg_index ix ON ix.indexrelid = i.oid
JOIN pg_class t ON t.oid = ix.indrelid
JOIN pg_namespace n ON n.oid = t.relnamespace
JOIN pg_stat_user_tables t_s ON t_s.relid = t.oid
WHERE t_s.n_mod_since_analyze > (t_s.n_live_tup * 0.2)
  AND n.nspname NOT IN ('pg_catalog', 'information_schema')
ORDER BY t_s.n_mod_since_analyze DESC;

COMMENT ON VIEW stx$stale_index_stats IS 'Index statistics likely stale';
-- ================================================================================
CREATE OR REPLACE VIEW stx$missing_index_part_stats AS
SELECT
    n.nspname                     AS schema_name,
    parent.relname                AS parent_table,
    part.relname                  AS partition_name,
    idx.relname                   AS index_name
FROM pg_class idx
JOIN pg_index ix ON ix.indexrelid = idx.oid
JOIN pg_class part ON part.oid = ix.indrelid
JOIN pg_inherits inh ON inh.inhrelid = part.oid
JOIN pg_class parent ON parent.oid = inh.inhparent
JOIN pg_namespace n ON n.oid = parent.relnamespace
LEFT JOIN pg_stat_user_indexes s ON s.indexrelid = idx.oid
WHERE s.indexrelid IS NULL
ORDER BY n.nspname, parent.relname, part.relname;

COMMENT ON VIEW stx$missing_index_part_stats IS 'Index partitions never analyzed';
-- ================================================================================
CREATE OR REPLACE VIEW stx$stale_index_part_stats AS
SELECT
    n.nspname                     AS schema_name,
    parent.relname                AS parent_table,
    part.relname                  AS partition_name,
    idx.relname                   AS index_name,
    t_s.n_mod_since_analyze,
    t_s.last_analyze,
    t_s.last_autoanalyze
FROM pg_class idx
JOIN pg_index ix ON ix.indexrelid = idx.oid
JOIN pg_class part ON part.oid = ix.indrelid
JOIN pg_inherits inh ON inh.inhrelid = part.oid
JOIN pg_class parent ON parent.oid = inh.inhparent
JOIN pg_namespace n ON n.oid = parent.relnamespace
JOIN pg_stat_user_tables t_s ON t_s.relid = part.oid
WHERE t_s.n_mod_since_analyze > (t_s.n_live_tup * 0.2)
ORDER BY t_s.n_mod_since_analyze DESC;

COMMENT ON VIEW stx$stale_index_part_stats IS 'Index partition statisticsw likely stale';
-- ================================================================================
CREATE OR REPLACE VIEW stx$analyze_table_stats AS
SELECT DISTINCT
    format(
        'ANALYZE %I.%I;',
        n.nspname,
        c.relname
    ) AS analyze_ddl
FROM pg_class c
JOIN pg_namespace n
  ON n.oid = c.relnamespace
LEFT JOIN pg_stat_user_tables s
  ON s.relid = c.oid
WHERE c.relkind = 'r'
  AND n.nspname NOT IN ('pg_catalog', 'information_schema')
  AND (
        -- missing stats
        (s.last_analyze IS NULL AND s.last_autoanalyze IS NULL)
        OR
        -- stale stats
        (s.n_live_tup IS NOT NULL
         AND s.n_mod_since_analyze > (s.n_live_tup * 0.2))
      )
ORDER BY analyze_ddl;

COMMENT ON VIEW stx$analyze_table_stats IS 'Generate analyze ddl for missing OR stale table statistics';
-- ================================================================================
CREATE OR REPLACE VIEW stx$analyze_index_stats AS
SELECT DISTINCT
    format(
        'ANALYZE %I.%I;',
        n.nspname,
        t.relname
    ) AS analyze_ddl
FROM pg_class i
JOIN pg_index ix
  ON ix.indexrelid = i.oid
JOIN pg_class t
  ON t.oid = ix.indrelid
JOIN pg_namespace n
  ON n.oid = t.relnamespace
LEFT JOIN pg_stat_user_indexes si
  ON si.indexrelid = i.oid
LEFT JOIN pg_stat_user_tables st
  ON st.relid = t.oid
WHERE i.relkind = 'i'
  AND n.nspname NOT IN ('pg_catalog', 'information_schema')
  AND (
        -- missing index statistics
        si.indexrelid IS NULL
        OR
        -- stale index statistics (table churn)
        (
          st.n_live_tup IS NOT NULL
          AND st.n_mod_since_analyze > (st.n_live_tup * 0.2)
        )
      )
ORDER BY analyze_ddl;

COMMENT ON VIEW stx$analyze_index_stats IS 'Generate analyze ddl for missing OR stale index statistics';
-- ================================================================================
CREATE OR REPLACE VIEW stx$analyze_table_part_stats AS
WITH l as (SELECT DISTINCT n.nspname, part.relname relname, parent.relname parent_relname
FROM pg_inherits inh
JOIN pg_class part
  ON part.oid = inh.inhrelid
JOIN pg_class parent
  ON parent.oid = inh.inhparent
JOIN pg_namespace n
  ON n.oid = parent.relnamespace
LEFT JOIN pg_stat_user_tables s
  ON s.relid = part.oid
WHERE part.relkind = 'r'
  AND n.nspname NOT IN ('pg_catalog', 'information_schema')
  AND (
        -- missing stats
        (s.last_analyze IS NULL AND s.last_autoanalyze IS NULL)
        OR
        -- stale stats
        (
          s.n_live_tup IS NOT NULL
          AND s.n_mod_since_analyze > (s.n_live_tup * 0.2)
        )
      )
) 
SELECT format(
        'ANALYZE %I.%I; -- parent: %I.%I',
        l.nspname,
        l.relname,
        l.nspname,
        l.parent_relname
    ) AS analyze_ddl
from l
ORDER BY
    l.nspname,
    l.relname;

COMMENT ON VIEW stx$analyze_table_part_stats IS 'Generate analyze ddl for missing OR stale table partition statistics';
-- ================================================================================
CREATE OR REPLACE VIEW stx$analyze_index_part_stats AS
SELECT DISTINCT
    format(
        'ANALYZE %I.%I; -- parent: %I.%I, index: %I',
        n.nspname,
        part.relname,
        n.nspname,
        parent.relname,
        idx.relname
    ) AS analyze_ddl
FROM pg_class idx
JOIN pg_index ix
  ON ix.indexrelid = idx.oid
JOIN pg_class part
  ON part.oid = ix.indrelid
JOIN pg_inherits inh
  ON inh.inhrelid = part.oid
JOIN pg_class parent
  ON parent.oid = inh.inhparent
JOIN pg_namespace n
  ON n.oid = parent.relnamespace
LEFT JOIN pg_stat_user_indexes si
  ON si.indexrelid = idx.oid
LEFT JOIN pg_stat_user_tables st
  ON st.relid = part.oid
WHERE idx.relkind = 'i'
  AND n.nspname NOT IN ('pg_catalog', 'information_schema')
  AND (
        -- missing index-partition stats
        si.indexrelid IS NULL
        OR
        -- stale index-partition stats (partition churn)
        (
          st.n_live_tup IS NOT NULL
          AND st.n_mod_since_analyze > (st.n_live_tup * 0.2)
        )
      )
ORDER BY analyze_ddl;

COMMENT ON VIEW stx$analyze_index_part_stats IS 'Generate analyze ddl for missing OR stale index partition statistics';
-- ================================================================================
