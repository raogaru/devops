CREATE TABLE bench.t_medium1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 integer
    ,c3 bytea
    ,c4 varchar(7)
    ,c5 bigint
    ,c6 text
    ,c7 text
    ,c8 integer
    ,c9 varchar(48)
    ,c10 double precision
    ,c11 boolean
    ,c12 time
);

CREATE TABLE bench.t_medium2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 numeric(8,2)
    ,c3 timestamp
    ,c4 char(11)
    ,c5 timestamp
    ,c6 timestamp
    ,c7 time
    ,c8 date
    ,c9 double precision
    ,c10 bytea
    ,c11 varchar(7)
    ,c12 text
    ,c13 real
    ,c14 date
    ,c15 double precision
    ,c16 double precision
    ,c17 timestamp
    ,c18 real
    ,c19 bigint
);

CREATE TABLE bench.t_medium3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 bigint
    ,c3 text
    ,c4 varchar(16)
    ,c5 varchar(47)
    ,c6 char(17)
    ,c7 uuid
    ,c8 bigint
    ,c9 smallint
    ,c10 boolean
    ,c11 bigint
);

CREATE TABLE bench.t_medium4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 text
    ,c3 text
    ,c4 varchar(5)
    ,c5 jsonb
    ,c6 numeric(5,2)
    ,c7 bytea
    ,c8 jsonb
    ,c9 uuid
    ,c10 integer
    ,c11 char(20)
    ,c12 char(20)
    ,c13 uuid
    ,c14 bytea
    ,c15 double precision
    ,c16 bytea
    ,c17 uuid
    ,c18 text
    ,c19 text
);

CREATE TABLE bench.t_medium5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 integer
    ,c3 real
    ,c4 boolean
    ,c5 char(8)
    ,c6 jsonb
    ,c7 text
    ,c8 numeric(7,0)
    ,c9 boolean
    ,c10 integer
    ,c11 numeric(10,2)
    ,c12 bigint
    ,c13 integer
    ,c14 timestamp
    ,c15 double precision
    ,c16 time
);

CREATE TABLE bench.t_medium6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 real
    ,c3 char(17)
    ,c4 bytea
    ,c5 numeric(4,2)
    ,c6 integer
    ,c7 numeric(7,1)
    ,c8 timestamp
    ,c9 integer
    ,c10 date
    ,c11 date
    ,c12 smallint
    ,c13 time
);

CREATE TABLE bench.t_medium7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 numeric(4,3)
    ,c3 date
    ,c4 text
    ,c5 text
    ,c6 text
    ,c7 integer
    ,c8 char(6)
    ,c9 boolean
    ,c10 text
    ,c11 time
    ,c12 bigint
    ,c13 bigint
);

CREATE TABLE bench.t_medium8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(27)
    ,c2 jsonb
    ,c3 char(14)
    ,c4 text
    ,c5 bytea
    ,c6 text
    ,c7 bytea
    ,c8 integer
    ,c9 double precision
    ,c10 smallint
);

CREATE TABLE bench.t_medium9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 time
    ,c3 bigint
    ,c4 real
    ,c5 time
    ,c6 integer
    ,c7 varchar(36)
    ,c8 timestamp
    ,c9 time
    ,c10 double precision
    ,c11 varchar(27)
);

CREATE TABLE bench.t_medium10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 bytea
    ,c3 varchar(4)
    ,c4 real
    ,c5 text
    ,c6 numeric(6,1)
    ,c7 time
    ,c8 smallint
    ,c9 jsonb
    ,c10 uuid
    ,c11 time
    ,c12 varchar(47)
    ,c13 integer
    ,c14 jsonb
    ,c15 boolean
    ,c16 real
    ,c17 timestamp
    ,c18 bytea
    ,c19 bytea
);
