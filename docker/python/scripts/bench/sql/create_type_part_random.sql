CREATE TYPE bench.typ_tpx1 AS (
    id bigint
    ,c1 integer
    ,c2 date
    ,c3 boolean
    ,c4 uuid
    ,c5 time
    ,c6 smallint
);

CREATE TYPE bench.typ_tpx2 AS (
    id bigint
    ,c1 date
    ,c2 varchar(9)
    ,c3 time
    ,c4 jsonb
    ,c5 uuid
);

CREATE TYPE bench.typ_tpx3 AS (
    id bigint
    ,c1 date
    ,c2 jsonb
    ,c3 smallint
);

CREATE TYPE bench.typ_tpx4 AS (
    id bigint
    ,c1 date
    ,c2 time
    ,c3 text
    ,c4 jsonb
);

CREATE TYPE bench.typ_tpx5 AS (
    id bigint
    ,c1 integer
    ,c2 double precision
    ,c3 time
);

CREATE TYPE bench.typ_tpx6 AS (
    id bigint
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 smallint
);

CREATE TYPE bench.typ_tpx7 AS (
    id bigint
    ,c1 date
    ,c2 double precision
    ,c3 boolean
    ,c4 date
);

CREATE TYPE bench.typ_tpx8 AS (
    id bigint
    ,c1 integer
    ,c2 date
    ,c3 numeric(10,0)
    ,c4 numeric(8,3)
);

CREATE TYPE bench.typ_tpx9 AS (
    id bigint
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 text
);

CREATE TYPE bench.typ_tpx10 AS (
    id bigint
    ,c1 integer
    ,c2 varchar(33)
    ,c3 time
    ,c4 bigint
    ,c5 integer
    ,c6 bytea
);
