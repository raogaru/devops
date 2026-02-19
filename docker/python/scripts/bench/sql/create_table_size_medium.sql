CREATE TABLE bench.t_medium1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 varchar(31)
    ,c3 bytea
    ,c4 timestamp
    ,c5 uuid
    ,c6 time
    ,c7 text
    ,c8 timestamp
    ,c9 numeric(4,1)
    ,c10 smallint
    ,c11 date
    ,c12 bytea
    ,c13 time
    ,c14 double precision
    ,c15 char(20)
    ,c16 boolean
);

CREATE TABLE bench.t_medium2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 boolean
    ,c3 jsonb
    ,c4 double precision
    ,c5 double precision
    ,c6 timestamp
    ,c7 uuid
    ,c8 integer
    ,c9 bytea
    ,c10 date
    ,c11 bigint
    ,c12 boolean
    ,c13 jsonb
    ,c14 boolean
    ,c15 timestamp
    ,c16 smallint
    ,c17 numeric(12,3)
);

CREATE TABLE bench.t_medium3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 bytea
    ,c3 char(17)
    ,c4 char(5)
    ,c5 integer
    ,c6 char(18)
    ,c7 integer
    ,c8 timestamp
    ,c9 bytea
    ,c10 bigint
    ,c11 varchar(16)
    ,c12 uuid
);
