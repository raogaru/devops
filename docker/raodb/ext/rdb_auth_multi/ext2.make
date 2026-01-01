MODULE_big = ext2
OBJS = ext2.o $(WIN32RES)

EXTENSION = ext2
DATA = ext2--1.0.sql
PGFILEDESC = "RAO DB: ext2 "

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

