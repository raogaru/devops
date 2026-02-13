CREATE TABLE job1.t1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 timestamp
    ,c3 double precision
    ,c4 double precision
    ,c5 double precision
    ,c6 integer
    ,c7 varchar(36)
    ,c8 varchar(2)
    ,c9 jsonb
    ,c10 time
);

CREATE TABLE job1.t2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 char(7)
    ,c3 varchar(11)
    ,c4 time
    ,c5 timestamp
    ,c6 bigint
);

CREATE TABLE job1.t3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 uuid
    ,c3 real
    ,c4 jsonb
    ,c5 real
    ,c6 text
    ,c7 text
    ,c8 timestamp
);

CREATE TABLE job1.t4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 uuid
    ,c3 boolean
    ,c4 boolean
    ,c5 jsonb
    ,c6 date
    ,c7 date
    ,c8 real
);

CREATE TABLE job1.t5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(17)
    ,c2 varchar(20)
    ,c3 smallint
    ,c4 time
    ,c5 timestamp
    ,c6 double precision
    ,c7 bigint
    ,c8 text
);

CREATE TABLE job1.t6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 bytea
    ,c3 real
    ,c4 real
    ,c5 date
);

CREATE TABLE job1.t7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 boolean
    ,c3 bytea
    ,c4 jsonb
    ,c5 jsonb
);

CREATE TABLE job1.t8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 time
    ,c3 numeric(9,2)
    ,c4 char(10)
    ,c5 text
    ,c6 time
);

CREATE TABLE job1.t9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 numeric(9,1)
    ,c3 boolean
    ,c4 char(19)
    ,c5 date
    ,c6 bytea
    ,c7 smallint
);

CREATE TABLE job1.t10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(18)
    ,c2 char(10)
    ,c3 bigint
    ,c4 double precision
    ,c5 double precision
    ,c6 real
    ,c7 double precision
    ,c8 double precision
);
