-- ================================================================================
-- RDB Schema
--CREATE SCHEMA rdb;
-- ================================================================================
-- DATABASES
CREATE OR REPLACE VIEW v$databases AS
SELECT datname AS db_name,
       pg_catalog.pg_get_userbyid(datdba) AS owner,
       encoding AS encoding,
       datcollate AS collation,
       datctype AS ctype,
       datistemplate AS is_template,
       datallowconn AS allow_connections
FROM pg_database
ORDER BY datname;
-- ================================================================================
-- SCHEMAS
CREATE OR REPLACE VIEW v$parameters AS
SELECT name, setting, short_desc 
FROM pg_settings;
-- ================================================================================
-- SCHEMAS
CREATE OR REPLACE VIEW v$schemas AS
SELECT 
nspname AS schema_name
FROM pg_namespace;
-- ================================================================================
-- ROLES
CREATE OR REPLACE VIEW v$roles AS
SELECT 
	rolname role_name
	,rolsuper AS is_superuser
	,rolcreaterole AS can_create_roles
	,rolcreatedb AS can_create_db
	,rolreplication AS is_replication
	,rolcanlogin AS can_login
FROM pg_roles
ORDER BY rolname;
-- ================================================================================
-- USERS
CREATE OR REPLACE VIEW v$users AS
SELECT 
	rolname AS user_name
	,rolsuper AS is_superuser
	,rolcreaterole AS can_create_roles
	,rolcreatedb AS can_create_db
	,rolreplication AS can_replicate
	,rolvaliduntil AS password_expiry
FROM pg_roles
WHERE rolcanlogin = true
ORDER BY rolname;
-- ################################################################################
-- OBJECTS
-- ================================================================================
-- TABLES
CREATE OR REPLACE VIEW v$tables AS
SELECT
	schemaname as schema
	,tableowner as owner
	,tablename as table_name
	,tablespace as tablespace
FROM pg_catalog.pg_tables;
-- ================================================================================
-- VIEWS 
CREATE OR REPLACE VIEW v$views AS
SELECT 
	schemaname as schema
	,viewowner as owner
	,viewname  as view_name
FROM pg_catalog.pg_views;
-- ================================================================================
-- INDEXES
CREATE OR REPLACE VIEW v$indexes AS
SELECT 
	schemaname as schema
	,tablename as table_name
	,indexname as index_name
	--,indexdef as index_ddl
FROM pg_indexes
ORDER BY 1,2,3;
-- ================================================================================
-- SEQUENCES
CREATE OR REPLACE VIEW v$sequences AS
SELECT 
	sequence_schema as schema,
	sequence_name,
	data_type,
	start_value,
	minimum_value,
	maximum_value,
	increment
FROM information_schema.sequences
ORDER BY schema, sequence_name;
-- ================================================================================
-- MATERIALIZED VIEWS
CREATE OR REPLACE VIEW v$mviews AS
SELECT 
	n.nspname AS schema,
	c.relname AS mview_name,
	r.rolname AS owner
FROM pg_class c
JOIN pg_namespace n ON n.oid = c.relnamespace
JOIN pg_roles r ON r.oid = c.relowner
WHERE c.relkind = 'm'
ORDER BY schema, mview_name;
-- ================================================================================
-- PROCEDURES
CREATE OR REPLACE VIEW v$procedures AS
SELECT 
	n.nspname        AS schema,
	p.proname        AS procedure_name,
	pg_get_function_identity_arguments(p.oid) AS arguments,
	pg_get_userbyid(p.proowner) AS owner,
	l.lanname        AS language
FROM pg_proc p
JOIN pg_namespace n ON n.oid = p.pronamespace
JOIN pg_language l ON l.oid = p.prolang
WHERE p.prokind = 'p'
ORDER BY n.nspname, p.proname;
-- ================================================================================
-- FUNCTIONS
CREATE OR REPLACE VIEW v$functions AS
SELECT 
	n.nspname        AS schema,
	p.proname        AS function_name,
	pg_get_function_identity_arguments(p.oid) AS arguments,
	pg_get_userbyid(p.proowner) AS owner,
	l.lanname        AS language,
	p.prokind
FROM pg_proc p
JOIN pg_namespace n ON n.oid = p.pronamespace
JOIN pg_language l ON l.oid = p.prolang
WHERE p.prokind = 'f'
ORDER BY n.nspname, p.proname;
-- ================================================================================
-- TRIGGERS
CREATE OR REPLACE VIEW v$triggers AS
SELECT 
	evtname        AS trigger_name,
	evtevent       AS event,
	evtowner::regrole AS owner,
	evtfoid::regprocedure AS function,
	evtenabled     AS enabled,
	evttags        AS tags
FROM pg_event_trigger;
-- ================================================================================
-- AGGREGATES
CREATE OR REPLACE VIEW v$aggregates AS
SELECT 
	n.nspname AS schema
	,p.proname AS aggregate_name
	,pg_catalog.pg_get_function_arguments(p.oid) AS arguments
	,pg_catalog.pg_get_function_result(p.oid) AS result_type
FROM pg_proc p
JOIN pg_namespace n ON n.oid = p.pronamespace
JOIN pg_aggregate a ON p.oid = a.aggfnoid
ORDER BY schema, aggregate_name;
-- ================================================================================
-- ENUMS : type='e'
CREATE OR REPLACE VIEW v$enums AS
SELECT 
	n.nspname AS schema
	,t.typname AS enum_name
	,string_agg(e.enumlabel, ', ' ORDER BY e.enumsortorder) AS enum_labels
FROM pg_type t
JOIN pg_enum e ON t.oid = e.enumtypid
JOIN pg_namespace n ON n.oid = t.typnamespace
WHERE t.typtype = 'e'
GROUP BY n.nspname, t.typname
ORDER BY schema, enum_name;
-- ================================================================================
-- TYPES : type='c'
CREATE OR REPLACE VIEW v$types AS
SELECT 
	n.nspname AS schema
	,t.typname AS type_name
	,t.oid AS oid
FROM pg_type t
JOIN pg_class c on c.oid=t.typrelid
JOIN pg_namespace n on n.oid = t.typnamespace
WHERE t.typtype = 'c'
AND c.relkind='c'
AND t.typisdefined
ORDER BY schema, type_name;
-- ================================================================================
-- DOMAINS - type='d'
CREATE OR REPLACE VIEW v$domains AS
SELECT 
	n.nspname AS schema,
	t.typname AS domain_name,
	format_type(t.typbasetype, t.typtypmod) AS base_type,
	t.typnotnull AS not_null,
	t.typdefault AS default_value
FROM pg_type t
JOIN pg_namespace n ON n.oid = t.typnamespace
WHERE (t.typtype = 'd'::"char")
ORDER BY n.nspname, t.typname;
-- ================================================================================
-- OPERATORS
CREATE OR REPLACE VIEW v$operators AS
SELECT 
	oprname AS operator_name,
	oprleft::regtype AS left_type,
	oprright::regtype AS right_type,
	oprresult::regtype AS result_type
FROM pg_operator;
-- ================================================================================
-- LANGUAGES
CREATE OR REPLACE VIEW v$languages AS
SELECT 
	lanname AS language_name
	,lanpltrusted AS trusted
	,lanplcallfoid::regprocedure AS call_handler
	,laninline::regprocedure AS inline_handler
	,lanvalidator::regprocedure AS validator
FROM pg_language
ORDER BY lanname;
-- ================================================================================
-- TABLESPACES
CREATE OR REPLACE VIEW v$tablespaces AS
SELECT 
	spc.spcname as tablespace_name
	,pg_get_userbyid(spc.spcowner) as owner
	,pg_tablespace_location(spc.oid) as location
FROM pg_tablespace spc
ORDER BY spc.spcname;
-- ================================================================================
-- EXTENSIONS
CREATE OR REPLACE VIEW v$extensions AS
SELECT 
	e.extname AS extension_name
	,e.extversion AS version
	,n.nspname AS schema
FROM pg_extension e
JOIN pg_namespace n ON n.oid = e.extnamespace
ORDER BY extname;
-- ================================================================================
-- REPLICATION PUBLICATIONS
CREATE OR REPLACE VIEW v$publications AS
SELECT 
	pubname AS publication_name,
	pubowner::regrole AS owner,
	puballtables AS publishes_all_tables,
	pubinsert AS publishes_inserts,
	pubupdate AS publishes_updates,
	pubdelete AS publishes_deletes,
	pubtruncate AS publishes_truncates
FROM pg_publication
ORDER BY pubname;
-- ================================================================================
-- REPLICATION SUBSCRIPTIONS
CREATE OR REPLACE VIEW v$subscriptions AS
SELECT 
	subname AS subscription_name,
	subowner::regrole AS owner,
	subenabled AS enabled,
	subconninfo AS connection_info,
	subslotname AS replication_slot,
	subpublications AS publications
FROM pg_subscription
ORDER BY subname;
-- ================================================================================
-- FOREIGN DATA WRAPPERS
CREATE OR REPLACE VIEW v$fdw AS
SELECT 
	fdwname AS fdw_name
	,fdwowner::regrole AS owner
	,fdwvalidator::regprocedure AS validator_function
	,fdwoptions AS options
FROM pg_foreign_data_wrapper
ORDER BY fdwname;
-- ================================================================================
-- FOREIGN SERVERS
CREATE OR REPLACE VIEW v$fservers AS
SELECT 
	srvname AS server_name
	,srvowner::regrole AS owner
	,fdwname AS foreign_data_wrapper
	,srvoptions AS options
FROM pg_foreign_server s
JOIN pg_foreign_data_wrapper f ON s.srvfdw = f.oid
ORDER BY server_name;
-- ================================================================================
-- FOREIGN TABLES
CREATE OR REPLACE VIEW v$ftables AS
SELECT 
	n.nspname AS schema,
	c.relname AS foreign_table_name,
	s.srvname AS foreign_server_name
FROM pg_foreign_table ft
JOIN pg_class c ON c.oid = ft.ftrelid
JOIN pg_namespace n ON n.oid = c.relnamespace
JOIN pg_foreign_server s ON ft.ftserver = s.oid
ORDER BY schema, foreign_table_name;
-- ================================================================================
-- USER MAPPINGs
CREATE OR REPLACE VIEW v$usermaps AS
SELECT 
	um.umuser::regrole AS user_name
	,s.srvname AS foreign_server_name
	,um.umoptions AS options
FROM pg_user_mapping um
JOIN pg_foreign_server s ON um.umserver = s.oid
ORDER BY user_name, foreign_server_name;
-- ================================================================================
-- COLLATIONS
CREATE OR REPLACE VIEW v$collations AS
SELECT 
	oid 
	,collname AS collation_name
	,collowner::regrole AS owner
	,collencoding AS encoding
	,collcollate AS lc_collate
	,collctype AS lc_ctype
	,collisdeterministic AS is_deterministic
FROM pg_collation
ORDER BY collname;
-- ================================================================================
-- CHAR CONVERSIONS
CREATE OR REPLACE VIEW v$conversions AS
SELECT 
	conname AS conversion_name
	,connamespace::regnamespace AS schema_name
	,conforencoding AS source_encoding
	,contoencoding AS target_encoding
	,condefault AS is_default
FROM pg_conversion
ORDER BY schema_name, conversion_name;
-- ================================================================================
-- CASTS
CREATE OR REPLACE VIEW v$casts AS
SELECT 
	t1.typname AS source_type
	,t2.typname AS target_type
	,(CASE c.castcontext 
	when 'i' then 'implicit'
	when 'e' then 'explicit'
	when 'a' then 'assignment'
	END) AS context
	,p.proname AS function_name
FROM pg_cast c
JOIN pg_type t1 ON t1.oid = c.castsource
JOIN pg_type t2 ON t2.oid = c.casttarget
LEFT JOIN pg_proc p ON p.oid = c.castfunc
ORDER BY source_type, target_type;
-- ================================================================================
-- ################################################################################
-- PRIVILEGES
-- ================================================================================
-- OBJECT PRIVILEGES
CREATE OR REPLACE VIEW v$objprivs AS
SELECT 
	grantee, 
	grantor, 
	table_schema schema, 
	table_name as object_name, 
	privilege_type as privilege, 
	is_grantable
FROM information_schema.role_table_grants
UNION ALL
SELECT 
	grantee, 
	grantor, 
	routine_schema, 
	routine_name, 
	privilege_type, 
	is_grantable
FROM information_schema.role_routine_grants
UNION ALL
SELECT 
	grantee, 
	grantor, 
	udt_schema, 
	udt_name, 
	privilege_type, 
	is_grantable
FROM information_schema.role_udt_grants ;
-- ================================================================================
-- DEFAULT PRIVILEGES
CREATE OR REPLACE VIEW v$defprivs AS
SELECT
	r.rolname      AS role_name,
	n.nspname      AS schema,
	d.defaclobjtype AS object_type,
	d.defaclacl     AS privileges
FROM pg_default_acl d
LEFT JOIN pg_namespace n ON n.oid = d.defaclnamespace
JOIN pg_roles r ON r.oid = d.defaclrole
ORDER BY role_name, schema, object_type;
-- ################################################################################
-- PARTITIONS
-- ================================================================================
-- PARTITIONED TABLES
CREATE OR REPLACE VIEW v$parttabs AS
SELECT 
	parent_ns.nspname AS schema
	,parent.relname AS table_name
	,(CASE pt.partstrat WHEN 'r' THEN 'range' WHEN 'l' THEN 'list' WHEN 'h' THEN 'hash' END) AS part_type
	,COUNT(child.oid) AS part_count
	,string_agg(a.attname, ', ' ORDER BY a.attnum) AS part_columns
FROM pg_partitioned_table pt
JOIN pg_class parent ON parent.oid = pt.partrelid
JOIN pg_namespace parent_ns ON parent_ns.oid = parent.relnamespace
LEFT JOIN pg_inherits i ON i.inhparent = parent.oid
LEFT JOIN pg_class child ON child.oid = i.inhrelid
JOIN pg_attribute a ON a.attrelid = parent.oid AND a.attnum = ANY(pt.partattrs)
GROUP BY parent_ns.nspname, parent.relname, pt.partstrat
ORDER BY schema, table_name;
-- ================================================================================
-- PARTITIONED INDEXES
CREATE OR REPLACE VIEW v$partinds AS
SELECT 
	n.nspname       AS schema,
	p.relname       AS parent_index,
	c.relname       AS partition_index,
	t.relname       AS partition_table
FROM pg_class p
JOIN pg_inherits i      ON p.oid = i.inhparent
JOIN pg_class c         ON i.inhrelid = c.oid
JOIN pg_class t         ON c.reltoastrelid = 0 -- filter valid rels
JOIN pg_namespace n     ON n.oid = p.relnamespace
WHERE p.relkind = 'I'   -- parent index (partitioned index)
  AND c.relkind = 'I'   -- child index (on partition)
ORDER BY schema, parent_index, partition_table;
-- ================================================================================
-- TABLE PARTITIONS
CREATE OR REPLACE VIEW v$tabparts AS
SELECT 
	parent_ns.nspname AS parent_schema,
	parent.relname AS parent_name,
	child_ns.nspname AS part_schema,
	child.relname AS part_name,
	child.relpartbound AS partition_boundary
FROM pg_inherits i
JOIN pg_class parent ON parent.oid = i.inhparent
JOIN pg_namespace parent_ns ON parent_ns.oid = parent.relnamespace
JOIN pg_class child ON child.oid = i.inhrelid
JOIN pg_namespace child_ns ON child_ns.oid = child.relnamespace
ORDER BY parent_schema, parent_name, part_name;
-- ================================================================================
-- INDEX PARTITIONS
CREATE OR REPLACE VIEW v$indparts AS
SELECT 
	ns.nspname                 AS schema,
	parent_tbl.relname          AS table_name,
	child_tbl.relname           AS table_partition_name,
	parent_idx.relname          AS index_name,
	child_idx.relname           AS index_partition_name
FROM pg_class parent_idx
JOIN pg_namespace ns ON ns.oid = parent_idx.relnamespace
-- parent index belongs to a partitioned table
JOIN pg_index idx ON idx.indexrelid = parent_idx.oid
JOIN pg_class parent_tbl ON parent_tbl.oid = idx.indrelid
-- only partitioned tables
JOIN pg_partitioned_table pt ON pt.partrelid = parent_tbl.oid
-- child index partitions
JOIN pg_inherits i_idx ON i_idx.inhparent = parent_idx.oid
JOIN pg_class child_idx ON child_idx.oid = i_idx.inhrelid
-- child table partitions
JOIN pg_inherits i_tbl ON i_tbl.inhparent = parent_tbl.oid
JOIN pg_class child_tbl ON child_tbl.oid = i_tbl.inhrelid
ORDER BY ns.nspname, parent_tbl.relname, parent_idx.relname, child_tbl.relname, child_idx.relname;
-- ================================================================================
-- PARTITION COLUMNS
CREATE OR REPLACE VIEW v$partcols AS
SELECT 
	n.nspname AS schema,
	c.relname AS table_name,
	a.attname AS column_name,
	a.attnum AS column_position
FROM pg_class c
JOIN pg_namespace n ON n.oid = c.relnamespace
JOIN pg_partitioned_table pt ON pt.partrelid = c.oid
JOIN pg_attribute a ON a.attrelid = c.oid
WHERE a.attnum = ANY (pt.partattrs)
ORDER BY schema, table_name, column_position;
-- ================================================================================
-- ################################################################################
-- STATISTICS
-- ================================================================================
-- TABLE STATISTICS
CREATE OR REPLACE VIEW v$tabstats AS
SELECT 
	schemaname,
	relname        AS table_name,
	seq_scan,      -- number of sequential scans
	seq_tup_read,  -- tuples read by seq scans
	idx_scan,      -- number of index scans
	idx_tup_fetch, -- tuples fetched by idx scans
	n_tup_ins,     -- tuples inserted
	n_tup_upd,     -- tuples updated
	n_tup_del,     -- tuples deleted
	n_tup_hot_upd, -- HOT updates
	n_live_tup,    -- estimated number of live rows
	n_dead_tup,    -- estimated number of dead rows
	vacuum_count,  -- how many vacuums ran
	autovacuum_count,
	analyze_count,
	autoanalyze_count
FROM pg_stat_user_tables
ORDER BY schemaname, relname;
-- ================================================================================
-- INDEX STATISTICS
CREATE OR REPLACE VIEW v$indstats AS
SELECT 
	schemaname as schema,
	relname    AS table_name,
	indexrelname AS index_name,
	idx_scan,       -- number of index scans initiated
	idx_tup_read,   -- tuples fetched from index
	idx_tup_fetch   -- tuples fetched from heap after using index
FROM pg_stat_user_indexes
ORDER BY schema, relname, indexrelname;
-- ================================================================================
-- TABLE PARTITION STATISTICS
CREATE OR REPLACE VIEW v$tabpartstats AS
SELECT 
	ns.nspname                  AS schema,
	parent_tbl.relname           AS parent_table,
	child_tbl.relname            AS table_partition,
	s.seq_scan                   AS sequential_scans,
	s.seq_tup_read               AS tuples_read_seq,
	s.idx_scan                   AS index_scans,
	s.idx_tup_fetch              AS tuples_fetched_idx,
	s.n_tup_ins                  AS tuples_inserted,
	s.n_tup_upd                  AS tuples_updated,
	s.n_tup_del                  AS tuples_deleted,
	s.n_live_tup                 AS live_rows,
	s.n_dead_tup                 AS dead_rows,
	s.vacuum_count,
	s.autovacuum_count,
	s.analyze_count,
	s.autoanalyze_count
FROM pg_class parent_tbl
JOIN pg_namespace ns ON ns.oid = parent_tbl.relnamespace
JOIN pg_partitioned_table pt ON pt.partrelid = parent_tbl.oid
-- child table partitions
JOIN pg_inherits i ON i.inhparent = parent_tbl.oid
JOIN pg_class child_tbl ON child_tbl.oid = i.inhrelid
-- statistics
LEFT JOIN pg_stat_user_tables s ON s.relid = child_tbl.oid
ORDER BY ns.nspname, parent_tbl.relname, child_tbl.relname;
-- ================================================================================
-- INDEX PARTITION STATISTICS
CREATE OR REPLACE VIEW v$indpartstats AS
SELECT 
	ns.nspname AS schema,
	parent_tbl.relname AS table_name,
	child_tbl.relname  AS table_partition_name,
	parent_idx.relname AS index_name,
	child_idx.relname  AS index_partition_name,
	s.idx_scan         AS index_scans,
	s.idx_tup_read     AS tuples_read,
	s.idx_tup_fetch    AS tuples_fetched
FROM pg_class parent_idx
JOIN pg_namespace ns ON ns.oid = parent_idx.relnamespace
-- parent index belongs to partitioned table
JOIN pg_index idx ON idx.indexrelid = parent_idx.oid
JOIN pg_class parent_tbl ON parent_tbl.oid = idx.indrelid
JOIN pg_partitioned_table pt ON pt.partrelid = parent_tbl.oid
-- child index partitions
JOIN pg_inherits ih_idx ON ih_idx.inhparent = parent_idx.oid
JOIN pg_class child_idx ON child_idx.oid = ih_idx.inhrelid
-- child table partitions
JOIN pg_inherits ih_tbl ON ih_tbl.inhparent = parent_tbl.oid
JOIN pg_class child_tbl ON child_tbl.oid = ih_tbl.inhrelid
-- statistics
LEFT JOIN pg_stat_user_indexes s ON s.indexrelid = child_idx.oid
ORDER BY ns.nspname, parent_tbl.relname, parent_idx.relname, child_tbl.relname, child_idx.relname;
-- ================================================================================
-- EXTENDED STATISTICS
CREATE OR REPLACE VIEW v$extstats AS
SELECT 
	n.nspname AS schema,
	s.stxname AS statistics_name,
	t.relname AS table_name,
	array_agg(a.attname ORDER BY a.attnum) AS columns,
	s.stxkind AS kind
FROM pg_statistic_ext s
JOIN pg_class t ON t.oid = s.stxrelid
JOIN pg_namespace n ON n.oid = t.relnamespace
-- join column numbers from stxkeys (array of attnums)
JOIN LATERAL unnest(s.stxkeys) AS k(attnum) ON TRUE
JOIN pg_attribute a ON a.attrelid = t.oid AND a.attnum = k.attnum
GROUP BY n.nspname, s.stxname, t.relname, s.stxkind
ORDER BY n.nspname, t.relname, s.stxname;
-- ================================================================================
-- ################################################################################
