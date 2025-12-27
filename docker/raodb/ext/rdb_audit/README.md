# pgAudit <br/> Open Source PostgreSQL Audit Logging


## Introduction

The PostgreSQL Audit Extension (pgAudit) provides detailed session and/or object audit logging via the standard PostgreSQL logging facility.

The goal of pgAudit is to provide PostgreSQL users with capability to produce audit logs often required to comply with government, financial, or ISO certifications.

An audit is an official inspection of an individual's or organization's accounts, typically by an independent body. The information gathered by pgAudit is properly called an audit trail or audit log. The term audit log is used in this documentation.

https://github.com/raogaru/devops/docker/raodb/ext/rdb_audit

make clean
make 
make install

### rdb_audit.log_scope

rdb_audit.log_scope = 'read,write,ddl,role'

Specifies which classes of statements will be logged by session audit logging. Possible values are:

- **READ**: `SELECT` and `COPY` when the source is a relation or a query.

- **WRITE**: `INSERT`, `UPDATE`, `DELETE`, `TRUNCATE`, and `COPY` when the destination is a relation.

- **FUNCTION**: Function calls and `DO` blocks.

- **ROLE**: Statements related to roles and privileges: `GRANT`, `REVOKE`, `CREATE/ALTER/DROP ROLE`.

- **DDL**: All `DDL` that is not included in the `ROLE` class.

- **MISC**: Miscellaneous commands, e.g. `DISCARD`, `FETCH`, `CHECKPOINT`, `VACUUM`, `SET`.

- **MISC_SET**: Miscellaneous `SET` commands, e.g. `SET ROLE`.

- **ALL**: Include all of the above.

The default is `none`.

### rdb_audit.log_catalog

Specifies that session logging should be enabled in the case where all relations in a statement are in pg_catalog. Disabling this setting will reduce noise in the log from tools like psql and PgAdmin that query the catalog heavily.

The default is `on`.

### rdb_audit.log_client

Specifies whether log messages will be visible to a client process such as psql. This setting should generally be left disabled but may be useful for debugging or other purposes. Note that `rdb_audit.log_level` is only enabled when `rdb_audit.log_client` is `on`.  The default is `off`.

### rdb_audit.log_level

Specifies the log level that will be used for log entries for valid levels (but note that `ERROR`, `FATAL`, and `PANIC` are not allowed). This setting is used for regression testing and may also be useful to end users for testing or other purposes.  The default is `log`.

### rdb_audit.log_parameter

Specifies that audit logging should include the parameters that were passed with the statement. When parameters are present they will be included in `CSV` format after the statement text.  The default is `off`.

### rdb_audit.log_parameter_max_size

Specifies that parameter values longer than this setting (in bytes) should not be logged, but replaced with `<long param suppressed>`. This is set in bytes, not characters, so does not account for multi-byte characters in a text parameters's encoding. This setting has no effect if `log_parameter` is `off`. If this setting is 0 (the default), all parameters are logged regardless of length.  The default is `0`.

### rdb_audit.log_relation

Specifies whether session audit logging should create a separate log entry for each relation (`TABLE`, `VIEW`, etc.) referenced in a `SELECT` or `DML` statement. This is a useful shortcut for exhaustive logging without using object audit logging.  The default is `off`.

### rdb_audit.log_rows

Specifies that audit logging should include the number of rows retrieved or affected by a statement. When enabled the rows field will be included after the parameter field.  The default is `off`.

### rdb_audit.log_statement

Specifies whether logging will include the statement text and parameters (if enabled). Depending on requirements, an audit log might not require this and it makes the logs less verbose.  The default is `on`.

### rdb_audit.log_statement_once

Specifies whether logging will include the statement text and parameters with the first log entry for a statement/substatement combination or with every entry. Enabling this setting will result in less verbose logging but may make it more difficult to determine the statement that generated a log entry, though the statement/substatement pair along with the process id should suffice to identify the statement text logged with a previous entry.  The default is `off`.

### rdb_audit.role

Specifies the master role to use for object audit logging. Multiple audit roles can be defined by granting them to the master role. This allows multiple groups to be in charge of different aspects of audit logging.  There is no default.

## Session Audit Logging

Session audit logging provides detailed logs of all statements executed by a user in the backend.

## Object Audit Logging

Object audit logging logs statements that affect a particular relation. Only `SELECT`, `INSERT`, `UPDATE` and `DELETE` commands are supported. `TRUNCATE` is not included in object audit logging.

Object audit logging is intended to be a finer-grained replacement for `rdb_audit.log = 'read, write'`. As such, it may not make sense to use them in conjunction but one possible scenario would be to use session logging to capture each statement and then supplement that with object logging to get more detail about specific relations.

### Configuration

Object-level audit logging is implemented via the roles system. The [rdb_audit.role](#rdb_auditrole) setting defines the role that will be used for audit logging. A relation (`TABLE`, `VIEW`, etc.) will be audit logged when the audit role has permissions for the command executed or inherits the permissions from another role. This allows you to effectively have multiple audit roles even though there is a single master role in any context.

## Format

Audit entries are written to the standard logging facility and contain the following columns in comma-separated format. Output is compliant CSV format only if the log line prefix portion of each log entry is removed.

- **AUDIT_TYPE** - `SESSION` or `OBJECT`.

- **STATEMENT_ID** - Unique statement ID for this session. Each statement ID represents a backend call. Statement IDs are sequential even if some statements are not logged. There may be multiple entries for a statement ID when more than one relation is logged.

- **SUBSTATEMENT_ID** - Sequential ID for each sub-statement within the main statement. For example, calling a function from a query. Sub-statement IDs are continuous even if some sub-statements are not logged. There may be multiple entries for a sub-statement ID when more than one relation is logged.

- **CLASS** - e.g. `READ`, `ROLE` (see [rdb_audit.log](#rdb_auditlog)).

- **COMMAND** - e.g. `ALTER TABLE`, `SELECT`.

- **OBJECT_TYPE** - `TABLE`, `INDEX`, `VIEW`, etc. Available for `SELECT`, `DML` and most `DDL` statements.

- **OBJECT_NAME** - The fully-qualified object name (e.g. public.account). Available for `SELECT`, `DML` and most `DDL` statements.

- **STATEMENT** - Statement executed on the backend.

- **PARAMETER** - If `rdb_audit.log_parameter` is set then this field will contain the statement parameters as quoted CSV or `<none>` if there are no parameters. Otherwise, the field is `<not logged>`.

