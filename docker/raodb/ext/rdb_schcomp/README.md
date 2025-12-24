# ################################################################################
# Postgres Schema compare tool
# ################################################################################
# BUILD SOFTWARE
cd rdb_schcomp
cmake -DCMAKE_INSTALL_PREFIX=${PGSOFT} .
make
make install

#
# ################################################################################
# RUN SOFTWARE

vi rdb_schcomp.ini
provide source database connection information
configure target connection information
enable/disable what to compare
choose verbose option

rdb_schcomp -c rdb_schcomp.ini

check rdb_schcomp.out

# ################################################################################
# command line options

By default, the changes will be output to stdout and only some kind of objects will be compared (those whose default is true).

The following command-line options are provided (all are optional):

* `config (-c)`: configuration file that contains source and target connection information and kind of objects that will be compared.
* `file (-f)`: send output to file, - for stdout (default: stdout).
* `ignore-version`: ignore version check. rdb_schcomp uses the reserved keywords provided by the postgres version that it was compiled in. Server version greater than the compiled one could not properly quote some keywords used as identifiers.
* `summary (-s)`: print a summary of changes.
* `single-transaction (-t)`: output changes as a single transaction.
* `temp-directory`: use this directory as a temporary area ( default: /tmp).
* `verbose (-v)`: verbose mode.
* `source-dbname`: source database name or connection string ( `keyword = value` strings or URIs).
* `source-host`: source host name.
* `source-port`: source port.
* `source-username`: source user name.
* `source-no-password`: never prompt for password.
* `target-dbname`: target database name or connection string ( `keyword = value` strings or URIs).
* `target-host`: target host name.
* `target-port`: target port.
* `target-username`: target user name.
* `target-no-password`: never prompt for password.
* `help`: print help.
* `version`: print version.
* `access-method`: access method comparison (default: false).
* `aggregate`: aggregate comparison (default: false).
* `cast`: cast comparison (default: false).
* `collation`: collation comparison (default: false).
* `comment`: comment comparison (default: false).
* `conversion`: conversion comparison (default: false).
* `domain`: domain comparison (default: true).
* `event-trigger`: event trigger comparison (default: false).
* `extension`: extension comparison (default: false).
* `fdw`: foreign data wrapper comparison (default: false).
* `foreign-table`: foreign table comparison (default: false).
* `function`: function comparison (default: true).
* `index`: index comparison (default: true).
* `language`: language comparison (default: false).
* `materialized-view`: materialized view comparison (default: true).
* `operator`: operator comparison (default: false).
* `policy`: policy comparison (default: false).
* `procedure`: procedure comparison (default: true).
* `publication`: publication comparison (default: false).
* `owner`: owner comparison (default: false).
* `privileges`: privileges comparison (default: false).
* `rule`: rule comparison (default: false).
* `schema`: schema comparison (default: true).
* `security-labels`: security labels comparison (default: false).
* `sequence`: sequence comparison (default: true).
* `statistics`: statistics comparison (default: false).
* `subscription`: subscription comparison (default: false).
* `table`: table comparison (default: true).
* `text-search`: text search comparison (default: false).
* `transform`: transform comparison (default: false).
* `trigger`: trigger comparison (default: true).
* `type`: type comparison (default: true).
* `view`: view comparison (default: true).
* `include-schema`: include schemas that match pattern (default: all schemas).
* `exclude-schema`: exclude schemas that match pattern (default: none).

# ################################################################################
# command line options
vi rdb_schcomp.ini

You can use a configuration file to store the desired options. The _general_ section specifies which kind of objects will be output. The _target_ and _source_ section options specifies connection options to both servers. Have in mind that any command-line option can override the configuration file option. The configuration file contains the following structure:

[target]
host = localhost
port = 5432
dbname = db1
user = postgres
no-password = false

[source]
host = localhost
port = 5432
dbname = db2
user = postgres
no-password = false



[general]
include-schema = ^(schema1|schema2)$
exclude-schema = ^public$
output = /tmp/diff.sql
temp-directory = /tmp
verbose = false
summary = false
comment = false
security-labels = false
owner = false
privileges = false
ignore-version = false
single-transaction = false

access-method = false
aggregate = false
cast = false
collation = false
conversion = false
domain = true
event-trigger = false
extension = false
fdw = false
foreign-table = false
function = true
index = true
language = false
materialized-view = true
operator = false
policy = false
procedure = true
publication = false
rule = false
schema = true
sequence = true
statistics = false
subscription = false
table = true
text-search = false
transform = false
trigger = true
type = true
view = true

# ################################################################################
