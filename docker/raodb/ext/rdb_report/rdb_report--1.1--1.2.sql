-- ################################################################################
-- Generate report based on predefined reports
-- ################################################################################
-- INSERT report_id=11
insert into rpt$html_params
( report_id, report_name ,h1name ,h1desc ,h2nameA ,h2descA ,h3infoA ,color ,theme) values
(
--report_id
11,
--report_name
'topsql',

--h1name
'RAODB Top SQLs Report',

--h1desc
'Database Performance - Top SQLs Report',

--h2nameA
ARRAY[ 'DATABASE', 'TOP_SQL', 'SETTINGS' ],

-- h2descA
ARRAY[
'Database Server Details ',
'Top SQLs by time, by executions',
'Settings'
],

-- h3infoA
ARRAY [
'DATABASES:v$databases,SCHEMAS:v$schemas,EXTENSION:v$extensions',

'SQL_BY_EXECUTION_TIME:sql$toptime,SQL_BY_EXECUTION_COUNT:sql$topexec,SQL_BY_READS:sql$topread,SQL_BY_WRITES:sql$topwrite,SQL_BY_ROWS_RETURNED:sql$toprows,SQL_BY_MEMORY_CONSUMPTION:sql$topmem,SQL_BY_TEMP_SPACE:sql$toptemp',

'SETTINGS:v$parameters'
],
-- color
4,
-- theme
1
);
-- ################################################################################
