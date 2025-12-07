EXTENSION = rdb_catalog

DATA = rdb_catalog--1.0.sql
DATA += rdb_catalog--1.0--1.1.sql
DATA += rdb_catalog--1.1--1.2.sql
DATA += rdb_catalog--1.2--1.3.sql
DATA += rdb_catalog--1.3--1.4.sql
DATA += rdb_catalog--1.4--1.5.sql
DATA += rdb_catalog--1.5--1.6.sql
DATA += rdb_catalog--1.6--1.7.sql

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

