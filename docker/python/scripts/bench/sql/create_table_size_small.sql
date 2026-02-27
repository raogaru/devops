CREATE TABLE bench.tss1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 integer
    ,c3 time
    ,c4 smallint
    ,c5 time
    ,c6 numeric(5,2)
    ,c7 smallint
);

CREATE TABLE bench.tss2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 numeric(11,2)
    ,c3 boolean
    ,c4 boolean
    ,c5 char(9)
    ,c6 varchar(28)
    ,c7 real
    ,c8 timestamp
);

CREATE TABLE bench.tss3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 jsonb
    ,c3 jsonb
    ,c4 real
    ,c5 double precision
    ,c6 double precision
    ,c7 time
);

CREATE TABLE bench.tss4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 integer
    ,c3 jsonb
    ,c4 timestamp
    ,c5 time
    ,c6 numeric(5,3)
    ,c7 double precision
    ,c8 text
    ,c9 smallint
);

CREATE TABLE bench.tss5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 bytea
    ,c3 char(3)
    ,c4 double precision
    ,c5 text
    ,c6 timestamp
    ,c7 numeric(6,0)
);

CREATE TABLE bench.tss6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 varchar(3)
    ,c3 text
    ,c4 uuid
    ,c5 bigint
);

CREATE TABLE bench.tss7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 integer
    ,c3 char(3)
    ,c4 jsonb
    ,c5 uuid
    ,c6 boolean
    ,c7 bytea
);

CREATE TABLE bench.tss8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 varchar(30)
    ,c3 boolean
    ,c4 jsonb
    ,c5 double precision
    ,c6 bigint
    ,c7 time
    ,c8 bytea
    ,c9 numeric(4,2)
);

CREATE TABLE bench.tss9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 text
    ,c3 bigint
    ,c4 smallint
    ,c5 bigint
    ,c6 char(8)
    ,c7 smallint
);

CREATE TABLE bench.tss10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 smallint
    ,c3 date
    ,c4 boolean
    ,c5 double precision
    ,c6 bytea
    ,c7 numeric(11,2)
    ,c8 date
);
