CREATE TABLE bench.t_medium1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(42)
    ,c2 bytea
    ,c3 date
    ,c4 smallint
    ,c5 smallint
    ,c6 integer
    ,c7 text
    ,c8 boolean
    ,c9 smallint
    ,c10 integer
    ,c11 jsonb
    ,c12 text
    ,c13 integer
    ,c14 char(17)
    ,c15 bigint
    ,c16 jsonb
    ,c17 timestamp
    ,c18 timestamp
    ,c19 real
);

CREATE TABLE bench.t_medium2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 boolean
    ,c3 bytea
    ,c4 bytea
    ,c5 uuid
    ,c6 integer
    ,c7 integer
    ,c8 smallint
    ,c9 numeric(8,2)
    ,c10 text
    ,c11 double precision
    ,c12 numeric(4,3)
    ,c13 numeric(10,3)
);

CREATE TABLE bench.t_medium3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 integer
    ,c3 timestamp
    ,c4 double precision
    ,c5 timestamp
    ,c6 date
    ,c7 timestamp
    ,c8 timestamp
    ,c9 bytea
    ,c10 double precision
    ,c11 date
    ,c12 time
    ,c13 smallint
    ,c14 integer
    ,c15 jsonb
    ,c16 real
);
