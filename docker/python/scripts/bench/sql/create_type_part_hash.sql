CREATE TYPE bench.typ_tph1 AS (
    id bigint
    ,c1 integer
    ,c2 bytea
    ,c3 bytea
    ,c4 timestamp
    ,c5 real
    ,c6 integer
);

CREATE TYPE bench.typ_tph2 AS (
    id bigint
    ,c1 integer
    ,c2 uuid
    ,c3 boolean
    ,c4 date
);

CREATE TYPE bench.typ_tph3 AS (
    id bigint
    ,c1 integer
    ,c2 smallint
    ,c3 smallint
    ,c4 varchar(50)
    ,c5 bigint
    ,c6 smallint
);

CREATE TYPE bench.typ_tph4 AS (
    id bigint
    ,c1 integer
    ,c2 bigint
    ,c3 integer
    ,c4 varchar(4)
    ,c5 timestamp
    ,c6 date
    ,c7 bytea
    ,c8 integer
);

CREATE TYPE bench.typ_tph5 AS (
    id bigint
    ,c1 integer
    ,c2 bytea
    ,c3 bigint
    ,c4 date
);

CREATE TYPE bench.typ_tph6 AS (
    id bigint
    ,c1 integer
    ,c2 timestamp
    ,c3 boolean
    ,c4 uuid
    ,c5 double precision
    ,c6 timestamp
);

CREATE TYPE bench.typ_tph7 AS (
    id bigint
    ,c1 integer
    ,c2 bytea
    ,c3 date
    ,c4 integer
    ,c5 boolean
    ,c6 numeric(8,1)
    ,c7 bigint
    ,c8 bytea
);

CREATE TYPE bench.typ_tph8 AS (
    id bigint
    ,c1 integer
    ,c2 time
    ,c3 date
    ,c4 bigint
    ,c5 real
    ,c6 date
    ,c7 bigint
);

CREATE TYPE bench.typ_tph9 AS (
    id bigint
    ,c1 integer
    ,c2 text
    ,c3 uuid
    ,c4 varchar(41)
    ,c5 timestamp
    ,c6 jsonb
);

CREATE TYPE bench.typ_tph10 AS (
    id bigint
    ,c1 integer
    ,c2 date
    ,c3 boolean
    ,c4 bytea
    ,c5 varchar(8)
    ,c6 time
);
