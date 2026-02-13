CREATE TABLE bench.t_small1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 timestamp
    ,c3 time
    ,c4 real
    ,c5 bytea
    ,c6 jsonb
    ,c7 bigint
);

CREATE TABLE bench.t_small2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 jsonb
    ,c3 time
    ,c4 date
    ,c5 date
    ,c6 date
    ,c7 bytea
    ,c8 smallint
    ,c9 timestamp
);

CREATE TABLE bench.t_small3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(11,1)
    ,c2 char(4)
    ,c3 time
    ,c4 double precision
    ,c5 char(17)
    ,c6 smallint
    ,c7 integer
);

CREATE TABLE bench.t_small4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 date
    ,c3 varchar(49)
    ,c4 date
    ,c5 timestamp
    ,c6 timestamp
);

CREATE TABLE bench.t_small5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 text
    ,c3 date
    ,c4 numeric(9,0)
    ,c5 time
    ,c6 jsonb
    ,c7 text
    ,c8 boolean
);

CREATE TABLE bench.t_small6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 date
    ,c3 timestamp
    ,c4 jsonb
    ,c5 jsonb
    ,c6 varchar(12)
    ,c7 numeric(11,3)
    ,c8 smallint
    ,c9 integer
);

CREATE TABLE bench.t_small7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 timestamp
    ,c3 bytea
    ,c4 date
    ,c5 real
    ,c6 jsonb
    ,c7 jsonb
);

CREATE TABLE bench.t_small8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(25)
    ,c2 time
    ,c3 varchar(16)
    ,c4 numeric(6,1)
    ,c5 double precision
    ,c6 integer
);

CREATE TABLE bench.t_small9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 char(4)
    ,c3 timestamp
    ,c4 char(6)
    ,c5 boolean
    ,c6 integer
);

CREATE TABLE bench.t_small10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 timestamp
    ,c3 uuid
    ,c4 varchar(3)
    ,c5 date
    ,c6 jsonb
    ,c7 integer
    ,c8 char(16)
    ,c9 bigint
    ,c10 bigint
);
