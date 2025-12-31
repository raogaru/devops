-- ================================================================================
CREATE TABLE t$sqlplan (queryid BIGINT,captured_at TIMESTAMPTZ DEFAULT now(),plan JSONB);
-- ================================================================================
CREATE TABLE sql$plan (queryid BIGINT,captured_at TIMESTAMPTZ DEFAULT now(),plan JSONB);

CREATE OR REPLACE VIEW sql$plan AS
SELECT queryid, query
FROM pg_stat_statements;
COMMENT ON VIEW sql$text IS 'SQL Text';
-- ================================================================================
CREATE OR REPLACE VIEW sql$toptime AS
