MODULE_big = ext3
OBJS = ext3.o $(WIN32RES)

EXTENSION = ext3
DATA = ext3--1.0.sql
PGFILEDESC = "RAO DB: ext3 "

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

