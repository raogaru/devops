CREATE TYPE bench.typ_tsl1 AS (
    id bigint
    ,c1 text
    ,c2 text
    ,c3 char(19)
    ,c4 text
);

CREATE TYPE bench.typ_tsl2 AS (
    id bigint
    ,c1 char(19)
    ,c2 integer
    ,c3 real
    ,c4 real
);

CREATE TYPE bench.typ_tsl3 AS (
    id bigint
    ,c1 varchar(42)
    ,c2 boolean
    ,c3 smallint
    ,c4 numeric(9,2)
);

CREATE TYPE bench.typ_tsl4 AS (
    id bigint
    ,c1 bigint
    ,c2 boolean
    ,c3 timestamp
);

CREATE TYPE bench.typ_tsl5 AS (
    id bigint
    ,c1 time
    ,c2 time
    ,c3 smallint
);

CREATE TYPE bench.typ_tsl6 AS (
    id bigint
    ,c1 bigint
    ,c2 integer
    ,c3 text
);

CREATE TYPE bench.typ_tsl7 AS (
    id bigint
    ,c1 double precision
    ,c2 real
    ,c3 jsonb
);

CREATE TYPE bench.typ_tsl8 AS (
    id bigint
    ,c1 real
    ,c2 double precision
    ,c3 time
);

CREATE TYPE bench.typ_tsl9 AS (
    id bigint
    ,c1 timestamp
    ,c2 char(1)
    ,c3 bigint
);

CREATE TYPE bench.typ_tsl10 AS (
    id bigint
    ,c1 date
    ,c2 time
    ,c3 timestamp
    ,c4 integer
    ,c5 bigint
);
