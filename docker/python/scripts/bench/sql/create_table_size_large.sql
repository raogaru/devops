CREATE TABLE bench.tsl1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 text
    ,c3 char(19)
    ,c4 text
);

CREATE TABLE bench.tsl2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(19)
    ,c2 integer
    ,c3 real
    ,c4 real
);

CREATE TABLE bench.tsl3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(42)
    ,c2 boolean
    ,c3 smallint
    ,c4 numeric(9,2)
);

CREATE TABLE bench.tsl4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 boolean
    ,c3 timestamp
);

CREATE TABLE bench.tsl5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 time
    ,c3 smallint
);

CREATE TABLE bench.tsl6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 integer
    ,c3 text
);

CREATE TABLE bench.tsl7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 real
    ,c3 jsonb
);

CREATE TABLE bench.tsl8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 double precision
    ,c3 time
);

CREATE TABLE bench.tsl9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 char(1)
    ,c3 bigint
);

CREATE TABLE bench.tsl10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 time
    ,c3 timestamp
    ,c4 integer
    ,c5 bigint
);
