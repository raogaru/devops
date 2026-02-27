CREATE TYPE bench.typ_tsm1 AS (
    id bigint
    ,c1 varchar(41)
    ,c2 bigint
    ,c3 varchar(40)
    ,c4 real
    ,c5 jsonb
    ,c6 timestamp
    ,c7 text
    ,c8 bytea
    ,c9 double precision
    ,c10 boolean
    ,c11 date
    ,c12 varchar(36)
    ,c13 integer
    ,c14 bigint
    ,c15 bigint
    ,c16 integer
    ,c17 bigint
    ,c18 boolean
);

CREATE TYPE bench.typ_tsm2 AS (
    id bigint
    ,c1 bigint
    ,c2 varchar(33)
    ,c3 bigint
    ,c4 double precision
    ,c5 bytea
    ,c6 varchar(4)
    ,c7 time
    ,c8 text
    ,c9 time
    ,c10 char(12)
    ,c11 integer
    ,c12 text
    ,c13 text
    ,c14 double precision
    ,c15 jsonb
    ,c16 double precision
);

CREATE TYPE bench.typ_tsm3 AS (
    id bigint
    ,c1 timestamp
    ,c2 text
    ,c3 timestamp
    ,c4 real
    ,c5 boolean
    ,c6 double precision
    ,c7 boolean
    ,c8 bigint
    ,c9 date
    ,c10 char(18)
    ,c11 date
);

CREATE TYPE bench.typ_tsm4 AS (
    id bigint
    ,c1 numeric(6,0)
    ,c2 numeric(7,2)
    ,c3 timestamp
    ,c4 bigint
    ,c5 varchar(25)
    ,c6 text
    ,c7 numeric(4,0)
    ,c8 date
    ,c9 timestamp
    ,c10 real
    ,c11 time
    ,c12 real
);

CREATE TYPE bench.typ_tsm5 AS (
    id bigint
    ,c1 text
    ,c2 double precision
    ,c3 time
    ,c4 time
    ,c5 char(19)
    ,c6 double precision
    ,c7 varchar(4)
    ,c8 real
    ,c9 double precision
    ,c10 timestamp
);

CREATE TYPE bench.typ_tsm6 AS (
    id bigint
    ,c1 jsonb
    ,c2 bytea
    ,c3 numeric(8,2)
    ,c4 smallint
    ,c5 char(5)
    ,c6 smallint
    ,c7 date
    ,c8 date
    ,c9 text
    ,c10 bigint
    ,c11 integer
    ,c12 real
);

CREATE TYPE bench.typ_tsm7 AS (
    id bigint
    ,c1 text
    ,c2 uuid
    ,c3 date
    ,c4 text
    ,c5 integer
    ,c6 boolean
    ,c7 text
    ,c8 text
    ,c9 bytea
    ,c10 date
    ,c11 varchar(48)
);

CREATE TYPE bench.typ_tsm8 AS (
    id bigint
    ,c1 double precision
    ,c2 timestamp
    ,c3 smallint
    ,c4 integer
    ,c5 integer
    ,c6 jsonb
    ,c7 numeric(10,0)
    ,c8 numeric(10,0)
    ,c9 bigint
    ,c10 real
);

CREATE TYPE bench.typ_tsm9 AS (
    id bigint
    ,c1 numeric(4,2)
    ,c2 jsonb
    ,c3 smallint
    ,c4 timestamp
    ,c5 text
    ,c6 varchar(18)
    ,c7 numeric(6,1)
    ,c8 char(10)
    ,c9 timestamp
    ,c10 text
);

CREATE TYPE bench.typ_tsm10 AS (
    id bigint
    ,c1 integer
    ,c2 char(8)
    ,c3 double precision
    ,c4 bigint
    ,c5 char(13)
    ,c6 varchar(31)
    ,c7 bigint
    ,c8 integer
    ,c9 bytea
    ,c10 uuid
    ,c11 double precision
    ,c12 text
    ,c13 bytea
    ,c14 integer
    ,c15 numeric(5,3)
);
