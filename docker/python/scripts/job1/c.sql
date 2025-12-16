CREATE TABLE job1.t1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 real
    ,c3 time
    ,c4 real
    ,c5 real
    ,c6 integer
    ,c7 smallint
    ,c8 smallint
    ,c9 smallint
);

CREATE TABLE job1.t2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 numeric(8,3)
    ,c3 double precision
    ,c4 time
    ,c5 uuid
    ,c6 char(7)
    ,c7 varchar(8)
    ,c8 bigint
    ,c9 char(14)
);

CREATE TABLE job1.t3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 timestamp
    ,c3 smallint
    ,c4 date
    ,c5 real
    ,c6 text
    ,c7 bytea
    ,c8 text
    ,c9 bytea
    ,c10 integer
);

CREATE TABLE job1.t4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(38)
    ,c2 bigint
    ,c3 boolean
    ,c4 bytea
    ,c5 bigint
    ,c6 text
    ,c7 varchar(30)
);

CREATE TABLE job1.t5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 numeric(8,1)
    ,c3 varchar(10)
    ,c4 bytea
    ,c5 uuid
    ,c6 text
    ,c7 timestamp
    ,c8 integer
    ,c9 uuid
);

CREATE TABLE job1.t6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 text
    ,c3 real
    ,c4 integer
    ,c5 real
    ,c6 jsonb
    ,c7 char(6)
);

CREATE TABLE job1.t7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 jsonb
    ,c3 time
    ,c4 time
    ,c5 varchar(14)
    ,c6 bytea
    ,c7 time
);

CREATE TABLE job1.t8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 varchar(43)
    ,c3 real
    ,c4 timestamp
    ,c5 timestamp
    ,c6 date
    ,c7 real
);

CREATE TABLE job1.t9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 char(1)
    ,c3 date
    ,c4 text
    ,c5 double precision
    ,c6 integer
    ,c7 char(5)
    ,c8 double precision
);

CREATE TABLE job1.t10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 timestamp
    ,c3 uuid
    ,c4 char(9)
    ,c5 time
);
