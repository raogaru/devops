-- ================================================================================
-- RDB Schema
--CREATE SCHEMA rdb;
-- ================================================================================
CREATE OR REPLACE VIEW sql$text AS
SELECT queryid, query
FROM pg_stat_statements;
COMMENT ON VIEW sql$text IS 'SQL Text';
-- ================================================================================
CREATE OR REPLACE VIEW sql$toptime AS
SELECT
    queryid,
    total_exec_time AS total_time_ms,
    mean_exec_time  AS avg_time_ms,
    calls,
    query
FROM pg_stat_statements
ORDER BY total_exec_time DESC
LIMIT 10;
COMMENT ON VIEW sql$toptime IS 'Top 10 SQLs by Total Execution Time';
-- ================================================================================
/*
CREATE OR REPLACE VIEW sql$topcpu AS
SELECT
    s.queryid,
    (k.cpu_user_time + k.cpu_sys_time) AS cpu_total,
    s.calls,
    s.query
FROM pg_stat_statements s
JOIN pg_stat_kcache k USING (userid, dbid, queryid)
ORDER BY cpu_total DESC
LIMIT 10;
COMMENT ON VIEW sql$topcpu IS 'Top 10 SQLs by CPU Usage';
*/
-- ================================================================================
CREATE OR REPLACE VIEW sql$topread AS
SELECT
    queryid,
    shared_blks_read + local_blks_read + temp_blks_read AS total_blocks_read,
    calls,
    query
FROM pg_stat_statements
ORDER BY total_blocks_read DESC
LIMIT 10;
COMMENT ON VIEW sql$topread IS 'Top 10 SQLs by I/O Reads (Blocks Read) I/O Heavy Queries';
-- ================================================================================
CREATE OR REPLACE VIEW sql$topwrite AS
SELECT
    queryid,
    shared_blks_dirtied + local_blks_dirtied AS blocks_dirtied,
    calls,
    query
FROM pg_stat_statements
ORDER BY blocks_dirtied DESC
LIMIT 10;
COMMENT ON VIEW sql$topwrite IS 'Top 10 SQL by Excessive Writes (Checkpoints / WAL pressure)';
-- ================================================================================
CREATE OR REPLACE VIEW sql$topexec AS
SELECT
    queryid,
    calls,
    mean_exec_time AS avg_time_ms,
    query
FROM pg_stat_statements
ORDER BY calls DESC
LIMIT 10;
COMMENT ON VIEW sql$topexec IS 'Top 10 SQL by Frequency (Most Frequently Executed)';
-- ================================================================================
CREATE OR REPLACE VIEW sql$toprows AS
SELECT
    queryid,
    rows AS avg_rows,
    calls,
    query
FROM pg_stat_statements
ORDER BY rows DESC
LIMIT 10;
COMMENT ON VIEW sql$toprows IS 'Top 10 SQL by Worst Plans Highest Rows Returned';
-- ================================================================================
CREATE OR REPLACE VIEW sql$topmem AS
SELECT
    queryid,
    calls,
    (shared_blks_read + shared_blks_hit +
     local_blks_read + local_blks_written +
     temp_blks_read + temp_blks_written) AS mem_blocks,
    ROUND(
        (shared_blks_read + shared_blks_hit +
         local_blks_read + local_blks_written +
         temp_blks_read + temp_blks_written) * 8 / 1024.0,
        2
    ) AS mem_MB,
    temp_blks_written,
    LEFT(query, 2000) AS query
FROM pg_stat_statements
ORDER BY mem_blocks DESC
LIMIT 10;
COMMENT ON VIEW sql$topmem IS 'Top 10 SQL by with Excessive Local Memory Use (Local Blocks)';
-- ================================================================================
CREATE OR REPLACE VIEW sql$toptemp AS
SELECT
    queryid,
    temp_blks_written,
    temp_blks_read,
    (temp_blks_read + temp_blks_written) AS temp_total,
    calls,
    query
FROM pg_stat_statements
WHERE temp_blks_written > 0
ORDER BY temp_total DESC
LIMIT 10;
COMMENT ON VIEW sql$toptemp IS 'Top 10 SQLs Using TEMP Files (Sorts / Hashes Spill to Disk)';
-- ================================================================================
