-- ----------------------------------------------------------------------------
-- INDEXES EVALUATION
/*
CCHEK
Unused / rarely used indexes
Duplicate & overlapping indexes
Index bloat (tables and indexes)
Wrong index type (btree vs brin vs gin)
Incorrect column order in composite indexes

CONDITION		ACTION
indisvalid = false	REINDEX 
idx_scan = 0		DROP candidate
No predicates		DROP candidate
Prefix-covered		DROP redundant
Multiple single-column	CREATE composite
Large + unused		DROP
PK / FK index		NEVER DROP
*/
-- ----------------------------------------------------------------------------
CREATE OR REPLACE VIEW ind$never_ref_by_pred AS
WITH indexed_columns AS (
    SELECT
        i.indexrelid,
        i.indrelid,
        n.nspname              AS schema_name,
        unnest(i.indkey)      AS attnum
    FROM pg_index i
    JOIN pg_class ct ON ct.oid = i.indrelid
    JOIN pg_namespace n ON n.oid = ct.relnamespace
    WHERE i.indisvalid
),
predicate_columns AS (
    SELECT DISTINCT
        lrelid,
        lattnum
    FROM pg_qualstats
    WHERE lattnum > 0
)
SELECT DISTINCT
    ic.schema_name,
    ct.relname  AS table_name,
    ci.relname  AS index_name
FROM indexed_columns ic
JOIN pg_class ci ON ci.oid = ic.indexrelid
JOIN pg_class ct ON ct.oid = ic.indrelid
LEFT JOIN predicate_columns pc
  ON pc.lrelid = ic.indrelid
 AND pc.lattnum = ic.attnum
WHERE pc.lattnum IS NULL
  AND ci.relname NOT LIKE '%_pkey'
  AND ic.schema_name NOT LIKE 'pg_%'
ORDER BY ic.schema_name, table_name, index_name;

COMMENT ON VIEW ind$never_ref_by_pred IS 'Indexes that are NEVER referenced by predicates (pg_qualstats)';
-- ----------------------------------------------------------------------------
CREATE OR REPLACE VIEW ind$never_scanned AS
SELECT
    schemaname,
    relname   AS table_name,
    indexrelname AS index_name,
    idx_scan,
    idx_tup_read,
    idx_tup_fetch
FROM pg_stat_user_indexes
WHERE idx_scan = 0
  AND indexrelname NOT LIKE '%_pkey'
ORDER BY table_name;

COMMENT ON VIEW ind$never_scanned IS 'Indexes that were never scanned (cross-check before drop)';
-- ----------------------------------------------------------------------------
CREATE OR REPLACE VIEW ind$redundant AS
WITH index_keys AS (
    SELECT
        t.relnamespace                      AS schema_oid,
        i.indrelid,                         -- table oid
        i.indexrelid,                       -- index oid
        array_agg(attnum ORDER BY pos) AS cols
    FROM pg_index i
    JOIN pg_class t ON t.oid = i.indrelid
    JOIN generate_subscripts(i.indkey, 1) AS s(pos)
      ON true
    JOIN LATERAL (
        SELECT i.indkey[s.pos] AS attnum
    ) k ON true
    WHERE i.indisvalid
      AND i.indisready
      AND i.indkey[0] <> 0              -- exclude expression-only indexes
    GROUP BY t.relnamespace, i.indrelid, i.indexrelid
)
SELECT
    n.nspname            AS schema_name,
    ct.relname           AS table_name,
    ci1.relname          AS redundant_index,
    ci2.relname          AS covering_index
FROM index_keys i1
JOIN index_keys i2
  ON i1.schema_oid  = i2.schema_oid
 AND i1.indrelid    = i2.indrelid
 AND i1.indexrelid <> i2.indexrelid
 AND i2.cols @> i1.cols             -- prefix coverage
JOIN pg_class ci1 ON ci1.oid = i1.indexrelid
JOIN pg_class ci2 ON ci2.oid = i2.indexrelid
JOIN pg_class ct  ON ct.oid  = i1.indrelid
JOIN pg_namespace n ON n.oid = i1.schema_oid
WHERE ci1.relname NOT LIKE '%_pkey'
ORDER BY n.nspname, ct.relname, redundant_index;


COMMENT ON VIEW ind$redundant IS 'Redundant indexes (prefix coverage)';
-- ----------------------------------------------------------------------------
CREATE OR REPLACE VIEW ind$overshadowed AS
SELECT
    n.nspname        AS schema_name,
    c.relname        AS table_name,
    a.attname        AS column_name,
    SUM(q.occurences) AS predicate_usage
FROM pg_qualstats q
JOIN pg_class c
  ON c.oid = q.lrelid
JOIN pg_namespace n
  ON n.oid = c.relnamespace
JOIN pg_attribute a
  ON a.attrelid = q.lrelid
 AND a.attnum   = q.lattnum
WHERE q.lattnum > 0
GROUP BY
    n.nspname,
    c.relname,
    a.attname
HAVING SUM(q.occurences) > 1000
ORDER BY predicate_usage DESC;

COMMENT ON VIEW ind$overshadowed IS 'Single-column indexes overshadowed by composite usage';
-- ----------------------------------------------------------------------------
CREATE OR REPLACE VIEW ind$safe_to_drop AS
SELECT
    n.nspname        AS schema_name,
    t.relname        AS table_name,
    i.indexrelname   AS index_name
FROM pg_stat_user_indexes i
JOIN pg_class t
  ON t.oid = i.relid
JOIN pg_namespace n
  ON n.oid = t.relnamespace
WHERE i.idx_scan = 0
  AND i.indexrelname NOT LIKE '%_pkey'
  AND NOT EXISTS (
      SELECT 1
      FROM pg_qualstats q
      WHERE q.lrelid = i.relid
  )
ORDER BY
    n.nspname,
    t.relname,
    i.indexrelname;

COMMENT ON VIEW ind$safe_to_drop IS 'Indexes are never scanned, not PK, not used by predicates';
-- ----------------------------------------------------------------------------
CREATE OR REPLACE VIEW ind$invalid AS
SELECT
    n.nspname    AS schema_name,
    t.relname    AS table_name,
    i.relname    AS index_name,
    pi.indisvalid,
    pi.indisready,
    pi.indislive
FROM pg_index pi
JOIN pg_class i ON i.oid = pi.indexrelid
JOIN pg_class t ON t.oid = pi.indrelid
JOIN pg_namespace n ON n.oid = t.relnamespace
WHERE pi.indisvalid = false
ORDER BY n.nspname, t.relname;

COMMENT ON VIEW ind$invalid IS 'Indexes which are invalid';
-- ----------------------------------------------------------------------------
CREATE OR REPLACE VIEW ind$zombies AS
SELECT
    n.nspname schema_name,
    t.relname table_name,
    i.relname index_name,
    pg_size_pretty(pg_relation_size(i.oid)) AS index_size
FROM pg_index pi
JOIN pg_class i ON i.oid = pi.indexrelid
JOIN pg_class t ON t.oid = pi.indrelid
JOIN pg_namespace n ON n.oid = t.relnamespace
WHERE pi.indisvalid = false
  AND pi.indislive = true;

COMMENT ON VIEW ind$zombies IS 'Indexes Invalid but Live';
-- ----------------------------------------------------------------------------
