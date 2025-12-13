CREATE TABLE job1.t1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 smallint
    ,c3 bigint
    ,c4 boolean
    ,c5 timestamp
);

CREATE TABLE job1.t2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(15)
    ,c2 double precision
    ,c3 timestamp
    ,c4 time
    ,c5 time
    ,c6 bigint
    ,c7 bigint
);

CREATE TABLE job1.t3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(7)
    ,c2 jsonb
    ,c3 smallint
    ,c4 bigint
    ,c5 bigint
    ,c6 char(12)
);

CREATE TABLE job1.t4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 char(16)
    ,c3 char(3)
    ,c4 char(7)
    ,c5 double precision
    ,c6 uuid
    ,c7 integer
    ,c8 time
);

CREATE TABLE job1.t5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 numeric(12,1)
    ,c3 bigint
    ,c4 text
    ,c5 char(11)
    ,c6 numeric(12,2)
);

CREATE TABLE job1.t6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 smallint
    ,c3 double precision
    ,c4 char(9)
    ,c5 bigint
    ,c6 smallint
    ,c7 bigint
    ,c8 date
    ,c9 jsonb
);

CREATE TABLE job1.t7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 double precision
    ,c3 varchar(12)
    ,c4 bytea
    ,c5 bytea
    ,c6 char(11)
    ,c7 bigint
    ,c8 numeric(5,2)
    ,c9 numeric(6,0)
);

CREATE TABLE job1.t8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 date
    ,c3 integer
    ,c4 integer
    ,c5 smallint
    ,c6 date
    ,c7 timestamp
    ,c8 real
    ,c9 uuid
    ,c10 real
);

CREATE TABLE job1.t9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 boolean
    ,c3 timestamp
    ,c4 jsonb
    ,c5 boolean
    ,c6 jsonb
);

CREATE TABLE job1.t10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 real
    ,c3 char(12)
    ,c4 bytea
    ,c5 timestamp
    ,c6 text
    ,c7 smallint
    ,c8 numeric(9,0)
    ,c9 bigint
    ,c10 bigint
);
