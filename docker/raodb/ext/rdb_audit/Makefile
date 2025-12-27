# contrib/rdb_audit/Makefile

MODULE_big = rdb_audit
OBJS = rdb_audit.o $(WIN32RES)

EXTENSION = rdb_audit
DATA = rdb_audit--1.0.sql
PGFILEDESC = "RAO DB: rdb_audit - An audit logging extension for PostgreSQL"

REGRESS = rdb_audit
REGRESS_OPTS = --temp-config=$(top_srcdir)/contrib/rdb_audit/rdb_audit.conf

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/rdb_audit
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif

#EXTRA_INSTALL += contrib/pg_stat_statements contrib/postgres_fdw
