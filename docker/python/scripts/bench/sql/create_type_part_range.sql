CREATE TYPE bench.typ_tpr1 AS (
    id bigint
    ,c1 date
    ,c2 double precision
    ,c3 real
    ,c4 bytea
    ,c5 bigint
    ,c6 integer
);

CREATE TYPE bench.typ_tpr2 AS (
    id bigint
    ,c1 integer
    ,c2 smallint
    ,c3 text
);

CREATE TYPE bench.typ_tpr3 AS (
    id bigint
    ,c1 integer
    ,c2 boolean
    ,c3 integer
    ,c4 date
    ,c5 text
    ,c6 double precision
);

CREATE TYPE bench.typ_tpr4 AS (
    id bigint
    ,c1 date
    ,c2 smallint
    ,c3 uuid
    ,c4 smallint
    ,c5 jsonb
    ,c6 char(9)
);

CREATE TYPE bench.typ_tpr5 AS (
    id bigint
    ,c1 integer
    ,c2 smallint
    ,c3 varchar(43)
    ,c4 timestamp
    ,c5 jsonb
    ,c6 time
);

CREATE TYPE bench.typ_tpr6 AS (
    id bigint
    ,c1 date
    ,c2 numeric(6,0)
    ,c3 real
    ,c4 varchar(38)
);

CREATE TYPE bench.typ_tpr7 AS (
    id bigint
    ,c1 date
    ,c2 integer
    ,c3 varchar(19)
    ,c4 smallint
);

CREATE TYPE bench.typ_tpr8 AS (
    id bigint
    ,c1 date
    ,c2 jsonb
    ,c3 double precision
    ,c4 varchar(42)
    ,c5 timestamp
);

CREATE TYPE bench.typ_tpr9 AS (
    id bigint
    ,c1 integer
    ,c2 date
    ,c3 jsonb
    ,c4 char(11)
    ,c5 date
    ,c6 bytea
);

CREATE TYPE bench.typ_tpr10 AS (
    id bigint
    ,c1 integer
    ,c2 numeric(11,3)
    ,c3 bytea
    ,c4 date
    ,c5 time
    ,c6 bytea
);
