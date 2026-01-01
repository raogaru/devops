MODULE_big = ext1
OBJS = ext1.o $(WIN32RES)

EXTENSION = ext1
DATA = ext1--1.0.sql
PGFILEDESC = "RAO DB: ext1 "

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

