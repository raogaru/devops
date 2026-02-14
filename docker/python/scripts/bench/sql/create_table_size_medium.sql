CREATE TABLE bench.t_medium1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 bigint
    ,c3 jsonb
    ,c4 date
    ,c5 varchar(26)
    ,c6 date
    ,c7 date
    ,c8 real
    ,c9 time
    ,c10 real
    ,c11 real
    ,c12 numeric(11,3)
    ,c13 text
    ,c14 numeric(6,3)
    ,c15 boolean
    ,c16 char(8)
);

CREATE TABLE bench.t_medium2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 time
    ,c3 varchar(41)
    ,c4 bytea
    ,c5 numeric(9,3)
    ,c6 bytea
    ,c7 uuid
    ,c8 smallint
    ,c9 text
    ,c10 boolean
);

CREATE TABLE bench.t_medium3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(17)
    ,c2 varchar(13)
    ,c3 time
    ,c4 timestamp
    ,c5 varchar(20)
    ,c6 timestamp
    ,c7 real
    ,c8 date
    ,c9 varchar(21)
    ,c10 jsonb
    ,c11 double precision
);
