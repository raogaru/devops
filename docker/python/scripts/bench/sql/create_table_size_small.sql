CREATE TABLE bench.t_small1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 bytea
    ,c3 uuid
    ,c4 bigint
    ,c5 date
    ,c6 timestamp
    ,c7 time
    ,c8 bytea
    ,c9 uuid
);

CREATE TABLE bench.t_small2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 boolean
    ,c3 real
    ,c4 date
    ,c5 integer
    ,c6 text
    ,c7 boolean
);

CREATE TABLE bench.t_small3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 jsonb
    ,c3 char(8)
    ,c4 integer
    ,c5 varchar(23)
    ,c6 real
);

CREATE TABLE bench.t_small4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(6,1)
    ,c2 jsonb
    ,c3 text
    ,c4 bytea
    ,c5 date
    ,c6 time
    ,c7 timestamp
    ,c8 real
    ,c9 date
    ,c10 time
);

CREATE TABLE bench.t_small5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 boolean
    ,c3 smallint
    ,c4 char(17)
    ,c5 smallint
    ,c6 date
    ,c7 boolean
);

CREATE TABLE bench.t_small6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(20)
    ,c2 timestamp
    ,c3 double precision
    ,c4 text
    ,c5 bigint
);

CREATE TABLE bench.t_small7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 date
    ,c3 varchar(24)
    ,c4 time
    ,c5 timestamp
    ,c6 boolean
    ,c7 bytea
    ,c8 boolean
);

CREATE TABLE bench.t_small8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 varchar(28)
    ,c3 char(2)
    ,c4 char(6)
    ,c5 varchar(47)
    ,c6 boolean
    ,c7 integer
    ,c8 jsonb
    ,c9 jsonb
    ,c10 text
);

CREATE TABLE bench.t_small9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 bytea
    ,c3 timestamp
    ,c4 numeric(9,3)
    ,c5 smallint
    ,c6 integer
    ,c7 char(10)
    ,c8 real
    ,c9 smallint
);

CREATE TABLE bench.t_small10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 timestamp
    ,c3 bytea
    ,c4 numeric(10,3)
    ,c5 double precision
    ,c6 bytea
    ,c7 smallint
    ,c8 char(7)
);
