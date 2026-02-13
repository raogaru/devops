CREATE TABLE bench.t_medium1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 bytea
    ,c3 uuid
    ,c4 uuid
    ,c5 double precision
    ,c6 time
    ,c7 integer
    ,c8 numeric(5,3)
    ,c9 time
    ,c10 smallint
    ,c11 text
    ,c12 integer
);

CREATE TABLE bench.t_medium2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(19)
    ,c2 jsonb
    ,c3 timestamp
    ,c4 real
    ,c5 integer
    ,c6 double precision
    ,c7 char(10)
    ,c8 timestamp
    ,c9 real
    ,c10 smallint
    ,c11 smallint
    ,c12 date
    ,c13 uuid
    ,c14 numeric(5,1)
);

CREATE TABLE bench.t_medium3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(9,3)
    ,c2 char(6)
    ,c3 text
    ,c4 real
    ,c5 integer
    ,c6 smallint
    ,c7 double precision
    ,c8 bytea
    ,c9 date
    ,c10 uuid
    ,c11 boolean
);

CREATE TABLE bench.t_medium4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 numeric(9,3)
    ,c3 bigint
    ,c4 bytea
    ,c5 boolean
    ,c6 integer
    ,c7 integer
    ,c8 timestamp
    ,c9 uuid
    ,c10 real
    ,c11 double precision
    ,c12 jsonb
    ,c13 boolean
    ,c14 timestamp
    ,c15 varchar(25)
    ,c16 timestamp
    ,c17 uuid
    ,c18 integer
    ,c19 bytea
    ,c20 boolean
);

CREATE TABLE bench.t_medium5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 uuid
    ,c3 bytea
    ,c4 double precision
    ,c5 date
    ,c6 uuid
    ,c7 numeric(7,3)
    ,c8 date
    ,c9 real
    ,c10 double precision
    ,c11 char(4)
    ,c12 time
    ,c13 varchar(36)
);

CREATE TABLE bench.t_medium6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 text
    ,c3 char(10)
    ,c4 boolean
    ,c5 boolean
    ,c6 double precision
    ,c7 varchar(10)
    ,c8 jsonb
    ,c9 bigint
    ,c10 char(17)
);

CREATE TABLE bench.t_medium7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 numeric(6,2)
    ,c3 numeric(7,0)
    ,c4 text
    ,c5 bigint
    ,c6 bigint
    ,c7 boolean
    ,c8 jsonb
    ,c9 numeric(10,3)
    ,c10 uuid
    ,c11 timestamp
    ,c12 smallint
    ,c13 time
    ,c14 bytea
    ,c15 real
);

CREATE TABLE bench.t_medium8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 uuid
    ,c3 bigint
    ,c4 jsonb
    ,c5 date
    ,c6 time
    ,c7 date
    ,c8 timestamp
    ,c9 bigint
    ,c10 jsonb
    ,c11 jsonb
    ,c12 timestamp
    ,c13 real
    ,c14 date
);

CREATE TABLE bench.t_medium9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(8,3)
    ,c2 uuid
    ,c3 date
    ,c4 numeric(5,0)
    ,c5 uuid
    ,c6 boolean
    ,c7 timestamp
    ,c8 text
    ,c9 numeric(11,2)
    ,c10 smallint
    ,c11 time
    ,c12 jsonb
    ,c13 text
    ,c14 char(7)
    ,c15 boolean
    ,c16 uuid
    ,c17 jsonb
    ,c18 double precision
    ,c19 timestamp
);

CREATE TABLE bench.t_medium10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 uuid
    ,c3 numeric(6,2)
    ,c4 text
    ,c5 boolean
    ,c6 varchar(4)
    ,c7 integer
    ,c8 text
    ,c9 varchar(23)
    ,c10 numeric(6,0)
    ,c11 bytea
);
