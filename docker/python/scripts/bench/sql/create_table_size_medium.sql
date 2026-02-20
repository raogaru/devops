CREATE TABLE bench.t_medium1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 numeric(12,0)
    ,c3 boolean
    ,c4 boolean
    ,c5 char(20)
    ,c6 date
    ,c7 real
    ,c8 smallint
    ,c9 integer
    ,c10 bigint
    ,c11 varchar(16)
    ,c12 boolean
    ,c13 text
    ,c14 real
    ,c15 bytea
    ,c16 uuid
    ,c17 text
    ,c18 varchar(37)
);

CREATE TABLE bench.t_medium2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 integer
    ,c3 real
    ,c4 boolean
    ,c5 boolean
    ,c6 real
    ,c7 numeric(5,0)
    ,c8 char(20)
    ,c9 numeric(4,2)
    ,c10 real
    ,c11 text
    ,c12 boolean
    ,c13 boolean
    ,c14 real
    ,c15 integer
    ,c16 bigint
    ,c17 integer
    ,c18 varchar(2)
);

CREATE TABLE bench.t_medium3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(15)
    ,c2 char(1)
    ,c3 jsonb
    ,c4 uuid
    ,c5 text
    ,c6 bytea
    ,c7 real
    ,c8 smallint
    ,c9 boolean
    ,c10 smallint
    ,c11 timestamp
    ,c12 bigint
    ,c13 varchar(1)
    ,c14 jsonb
);
