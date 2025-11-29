-- ################################################################################
-- Generate report based on predefined reports
-- ################################################################################
-- TABLE rpt$html_params

drop table if exists rpt$html_params ;

create table if not exists rpt$html_params (
 report_id  BIGSERIAL PRIMARY KEY, 
 report_name varchar,
 h1name varchar, 
 h1desc varchar, 
 h2nameA varchar[], 
 h2descA varchar[],
 h3infoA varchar[],
 color smallint, 
 theme smallint
);

create unique index rpt$html_params_i1 on rpt$html_params(report_id);

create unique index rpt$html_params_i2 on rpt$html_params(report_name);

-- ################################################################################
-- FUNCTION rpt$html overloaded
create or replace function rpt$html (p_report_id integer) returns text as 
$$
return query 
select rpt$html( h1name, h1desc, h2nameA, h2descA, h3infoA, color, theme) 
from rpt$html_params 
where report_id=p_report_id;
$$
language plpgsql;
-- ################################################################################
-- FUNCTION rpt$html overloaded
create or replace function rpt$html (p_report_name varchar) returns text as 
$$
return query 
select rpt$html( h1name, h1desc, h2nameA, h2descA, h3infoA, color, theme) 
from rpt$html_params 
where report_name=p_report_name;
$$
language plpgsql;
-- ################################################################################
-- INSERT report_id=0
insert into rpt$html_params
( report_id, report_name ,h1name ,h1desc ,h2nameA ,h2descA ,h3infoA ,color ,theme) values 
(
--report_id
0,
--report_name
'example0',

--h1name 
'RAODB Example Report Title',

--h1desc 
'This report shows bla bla bla ...  ',

--h2nameA 
ARRAY[ 'SECTION1', 'SECTION2'],

-- h2descA 
ARRAY[ 
'Section-1 description ',
'Section-2 description '
],

-- h3infoA 
ARRAY [
'SECTION-1A:pg_database,SECTION-1B:pg_tablespace',
'SECTION-2A:pg_sequences,SECTION-2B:pg_extension,SECTION-2C:pg_language'
],
-- color
0,
-- theme
1
);

-- ################################################################################
-- INSERT report_id=1
insert into rpt$html_params 
( report_id, report_name ,h1name ,h1desc ,h2nameA ,h2descA ,h3infoA ,color ,theme) values 
(
--report_id
1,
--report_name
'example1',

--h1name 
'RAODB Example Report Title',

--h1desc 
'This report shows bla bla bla ...  ',

--h2nameA 
ARRAY[ 'DATABASE', 'SCHEMA', 'STATISTICS', 'EXAMPLE', 'SAMPLE','OTHER' ],

-- h2descA 
ARRAY[ 
'Database server details ',
'Schema Objects information. ', 
'Statistics..... ', 
'Example very long data desccription goes here ....  test test test test',
'Sample header description',
'Other description'
],

-- h3infoA 
ARRAY [
'DATABASES:pg_database,TABLESPACE:pg_tablespace,LANGUAGE:pg_language,EXTENSION:pg_extension,SETTINGS:pg_settings',
'TABLES:pg_tables,TYPE:pg_type,PROCEDURES:pg_proc,SEQUENCES:pg_sequences',
'STATS:pg_statistic,STATEXT:pg_statistic_ext,STATEXTDATA:pg_statistic_ext_data',
'EXAMPLE1:pg_database,EXAMPLE2:pg_database,EXAMPLE3:pg_database,EXAMPLE4:pg_database,EXAMPLE5:pg_database,EXAMPLE6:pg_database,EXAMPLE7:pg_database,EXAMPLE8:pg_database,EXAMPLE9:pg_database,EXAMPLE10:pg_database,EXAMPLE11:pg_database,EXAMPLE12:pg_database,EXAMPLE13:pg_database,EXAMPLE14:pg_database,EXAMPLE15:pg_database',
'SAMPLE1:pg_extension,SAMPLE2:pg_extension,SAMPLE3:pg_extension,SAMPLE4:pg_extension,SAMPLE5:pg_extension,SAMPLE6:pg_extension,SAMPLE7:pg_extension,SAMPLE8:pg_extension,SAMPLE9:pg_extension,SAMPLE10:pg_extension,SAMPLE11:pg_extension,SAMPLE12:pg_extension,SAMPLE13:pg_extension,SAMPLE14:pg_extension,SAMPLE15:pg_extension',
'OTHER1:pg_language,OTHER2:pg_language,OTHER3:pg_language,OTHER4:pg_language,OTHER5:pg_language,OTHER6:pg_language,OTHER7:pg_language,OTHER8:pg_language,OTHER9:pg_language,OTHER10:pg_language,OTHER11:pg_language,OTHER12:pg_language,OTHER13:pg_language,OTHER14:pg_language,OTHER15:pg_language,OTHER101:pg_language,OTHER102:pg_language,OTHER103:pg_language,OTHER104:pg_language,OTHER105:pg_language,OTHER106:pg_language,OTHER107:pg_language,OTHER108:pg_language,OTHER109:pg_language,OTHER1010:pg_language,OTHER1011:pg_language,OTHER1012:pg_language,OTHER1013:pg_language,OTHER1014:pg_language,OTHER1015:pg_language,OTHER201:pg_language,OTHER202:pg_language,OTHER203:pg_language,OTHER204:pg_language,OTHER205:pg_language,OTHER206:pg_language,OTHER207:pg_language,OTHER208:pg_language,OTHER209:pg_language,OTHER2010:pg_language,OTHER2011:pg_language,OTHER2012:pg_language,OTHER2013:pg_language,OTHER2014:pg_language,OTHER2015:pg_language'
],
-- color
4,
-- theme
1
);

-- ################################################################################
-- INSERT report_id=2
insert into rpt$html_params
( report_id, report_name ,h1name ,h1desc ,h2nameA ,h2descA ,h3infoA ,color ,theme) values
(
--report_id
2,
--report_name
'database',

--h1name
'RAODB Database Report',

--h1desc
'Database Report',

--h2nameA
ARRAY[ 'DATABASE', 'DATA OBJECTS', 'SOURCE OBJECTS', 'STATISTICS', 'FOREIGN OBJECTS','STREAMS','OTHER' ],

-- h2descA
ARRAY[
'Database Server Details ',
'Schema Objects Information. ',
'Source Objects Information',
'Statistics..... ',
'Foreign Tables Information',
'Streaming Replication Information',
'Other description'
],

-- h3infoA
ARRAY [
'DATABASES:v$databases,SCHEMAS:v$schemas,ROLES:v$roles,USERS:v$users,TABLESPACE:v$tablespaces,LANGUAGE:v$languages,COLLATIONS:v$collations,EXTENSION:v$extensions,SETTINGS:v$parameters',

'TABLES:v$tables,INDEXES:v$indexes,VIEWS:v$views,SEQUENCES:v$sequences,MVIEWS:v$mviews,AGGREGATES:v$aggregates',

'TYPES:v$types,DOMAINS:v$domains,PROCEDURES:v$procedures,FUNCTIONS:v$functions,TRIGGERS:v$triggers,ENUMS:v$enums',

'TABLE_STATISTICS:v$tabstats,INDEX_STATISTICS:v$indstats,TABLE_PARTITION_STATISTICS:v$tabpartstats,INDEX_PARTITION_STATISTICS:v$indpartstats,EXTENDED_STATISTICS:v$extstats',

'FOREIGN_SERVERS:v$fservers,USER_MAPPINGS:v$usermaps,FOREIGN_DATA_WRAPPERS:v$fdw,FOREIGN_TABLES:v$ftables',

'PUBLICATIONS:v$publications,SUBSCRIPTIONS:v$subscriptions,CONVERSIONS:v$conversions',

'OPERATORS:v$operators,CASTS:v$casts'

],
-- color
5,
-- theme
1
);
-- ################################################################################
