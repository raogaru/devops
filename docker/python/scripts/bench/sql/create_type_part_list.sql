CREATE TYPE bench.typ_tpl1 AS (
    id bigint
    ,c1 numeric(1,0)
    ,c2 timestamp
    ,c3 date
    ,c4 varchar(36)
    ,c5 char(6)
    ,c6 integer
    ,c7 timestamp
    ,c8 bigint
);

CREATE TYPE bench.typ_tpl2 AS (
    id bigint
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 varchar(22)
    ,c4 integer
    ,c5 date
    ,c6 numeric(8,3)
    ,c7 char(12)
);

CREATE TYPE bench.typ_tpl3 AS (
    id bigint
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 varchar(13)
    ,c4 bigint
);

CREATE TYPE bench.typ_tpl4 AS (
    id bigint
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 date
    ,c4 varchar(50)
);

CREATE TYPE bench.typ_tpl5 AS (
    id bigint
    ,c1 numeric(1,0)
    ,c2 uuid
    ,c3 time
    ,c4 date
    ,c5 bigint
    ,c6 numeric(11,2)
);

CREATE TYPE bench.typ_tpl6 AS (
    id bigint
    ,c1 numeric(1,0)
    ,c2 varchar(1)
    ,c3 integer
    ,c4 char(20)
    ,c5 bigint
    ,c6 text
    ,c7 time
);

CREATE TYPE bench.typ_tpl7 AS (
    id bigint
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 date
    ,c4 numeric(9,0)
    ,c5 uuid
    ,c6 double precision
);

CREATE TYPE bench.typ_tpl8 AS (
    id bigint
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 smallint
    ,c4 uuid
    ,c5 bigint
);

CREATE TYPE bench.typ_tpl9 AS (
    id bigint
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 date
    ,c4 double precision
);

CREATE TYPE bench.typ_tpl10 AS (
    id bigint
    ,c1 numeric(1,0)
    ,c2 numeric(11,1)
    ,c3 jsonb
    ,c4 smallint
    ,c5 real
    ,c6 date
    ,c7 bigint
);
