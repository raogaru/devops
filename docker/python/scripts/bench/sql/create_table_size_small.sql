CREATE TABLE bench.t_small1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(11,0)
    ,c2 jsonb
    ,c3 numeric(4,2)
    ,c4 text
    ,c5 time
    ,c6 integer
    ,c7 smallint
    ,c8 varchar(8)
    ,c9 integer
);

CREATE TABLE bench.t_small2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 boolean
    ,c3 bytea
    ,c4 bytea
    ,c5 uuid
    ,c6 char(19)
    ,c7 uuid
    ,c8 boolean
    ,c9 timestamp
    ,c10 smallint
);

CREATE TABLE bench.t_small3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(11,3)
    ,c2 bigint
    ,c3 boolean
    ,c4 smallint
    ,c5 char(2)
);

CREATE TABLE bench.t_small4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 timestamp
    ,c3 bytea
    ,c4 numeric(8,1)
    ,c5 real
    ,c6 numeric(9,0)
    ,c7 numeric(10,2)
    ,c8 text
    ,c9 char(18)
    ,c10 date
);

CREATE TABLE bench.t_small5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(22)
    ,c2 double precision
    ,c3 real
    ,c4 real
    ,c5 real
    ,c6 time
    ,c7 time
);

CREATE TABLE bench.t_small6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 varchar(37)
    ,c3 smallint
    ,c4 integer
    ,c5 uuid
);

CREATE TABLE bench.t_small7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 date
    ,c3 time
    ,c4 text
    ,c5 varchar(42)
    ,c6 double precision
    ,c7 time
    ,c8 numeric(8,1)
    ,c9 text
    ,c10 real
);

CREATE TABLE bench.t_small8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 bytea
    ,c3 double precision
    ,c4 time
    ,c5 integer
    ,c6 real
    ,c7 smallint
    ,c8 timestamp
    ,c9 bytea
    ,c10 jsonb
);

CREATE TABLE bench.t_small9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 date
    ,c3 bigint
    ,c4 bigint
    ,c5 date
    ,c6 numeric(8,2)
    ,c7 bytea
    ,c8 jsonb
);

CREATE TABLE bench.t_small10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 double precision
    ,c3 text
    ,c4 uuid
    ,c5 real
    ,c6 jsonb
    ,c7 smallint
);
