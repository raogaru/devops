EXTENSION = rdb_report
DATA = rdb_report--1.0.sql

# Add upgrade scripts here
DATA += rdb_report--1.0--1.1.sql
DATA += rdb_report--1.1--1.2.sql

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

