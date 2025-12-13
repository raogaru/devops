CREATE TABLE job2.t1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 real
    ,c3 boolean
    ,c4 uuid
    ,c5 double precision
    ,c6 numeric(5,0)
    ,c7 bigint
    ,c8 smallint
    ,c9 date
    ,c10 double precision
);

CREATE TABLE job2.t2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 real
    ,c3 uuid
    ,c4 double precision
    ,c5 uuid
    ,c6 text
    ,c7 jsonb
    ,c8 timestamp
    ,c9 uuid
    ,c10 integer
    ,c11 char(20)
    ,c12 timestamp
    ,c13 bigint
    ,c14 char(20)
    ,c15 uuid
    ,c16 uuid
);

CREATE TABLE job2.t3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 integer
    ,c3 real
    ,c4 varchar(13)
    ,c5 varchar(42)
    ,c6 integer
    ,c7 real
    ,c8 bigint
    ,c9 double precision
    ,c10 numeric(10,3)
    ,c11 text
    ,c12 boolean
);

CREATE TABLE job2.t4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 timestamp
    ,c3 timestamp
    ,c4 double precision
    ,c5 time
    ,c6 double precision
    ,c7 time
    ,c8 integer
    ,c9 uuid
    ,c10 varchar(45)
    ,c11 double precision
);

CREATE TABLE job2.t5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 smallint
    ,c3 char(19)
    ,c4 timestamp
    ,c5 boolean
    ,c6 text
    ,c7 char(7)
    ,c8 integer
    ,c9 text
    ,c10 varchar(8)
    ,c11 date
    ,c12 text
    ,c13 time
    ,c14 text
);

CREATE TABLE job2.t6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 varchar(29)
    ,c3 bytea
    ,c4 date
    ,c5 date
    ,c6 uuid
    ,c7 char(18)
    ,c8 double precision
    ,c9 integer
    ,c10 numeric(4,0)
    ,c11 smallint
    ,c12 numeric(7,0)
    ,c13 char(9)
    ,c14 smallint
    ,c15 text
);

CREATE TABLE job2.t7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 smallint
    ,c3 time
    ,c4 varchar(48)
    ,c5 text
    ,c6 numeric(7,0)
    ,c7 numeric(10,2)
    ,c8 integer
    ,c9 bigint
    ,c10 jsonb
    ,c11 char(7)
    ,c12 integer
    ,c13 jsonb
    ,c14 bigint
    ,c15 double precision
    ,c16 bigint
    ,c17 integer
    ,c18 varchar(39)
    ,c19 numeric(9,2)
);

CREATE TABLE job2.t8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 numeric(6,2)
    ,c3 bigint
    ,c4 bigint
    ,c5 boolean
    ,c6 real
    ,c7 varchar(3)
    ,c8 varchar(41)
    ,c9 jsonb
    ,c10 numeric(5,2)
    ,c11 time
);

CREATE TABLE job2.t9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 smallint
    ,c3 jsonb
    ,c4 char(9)
    ,c5 integer
    ,c6 varchar(28)
    ,c7 date
    ,c8 uuid
    ,c9 time
    ,c10 char(4)
    ,c11 bigint
    ,c12 jsonb
    ,c13 integer
    ,c14 numeric(6,3)
    ,c15 bytea
    ,c16 char(17)
    ,c17 date
    ,c18 smallint
    ,c19 boolean
);

CREATE TABLE job2.t10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(15)
    ,c2 numeric(5,3)
    ,c3 bigint
    ,c4 time
    ,c5 boolean
    ,c6 timestamp
    ,c7 time
    ,c8 varchar(11)
    ,c9 real
    ,c10 bigint
    ,c11 time
    ,c12 jsonb
    ,c13 smallint
    ,c14 varchar(27)
);

CREATE TABLE job2.t11 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(9,0)
    ,c2 timestamp
    ,c3 date
    ,c4 uuid
    ,c5 boolean
    ,c6 bytea
    ,c7 uuid
    ,c8 date
    ,c9 bytea
    ,c10 text
    ,c11 jsonb
    ,c12 smallint
    ,c13 double precision
    ,c14 double precision
    ,c15 integer
    ,c16 bigint
);

CREATE TABLE job2.t12 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 date
    ,c3 time
    ,c4 date
    ,c5 numeric(8,1)
    ,c6 time
    ,c7 text
    ,c8 varchar(46)
    ,c9 char(5)
    ,c10 boolean
    ,c11 bytea
    ,c12 char(12)
    ,c13 char(9)
    ,c14 date
);

CREATE TABLE job2.t13 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 uuid
    ,c3 integer
    ,c4 time
    ,c5 time
    ,c6 real
    ,c7 bigint
    ,c8 uuid
    ,c9 boolean
    ,c10 char(11)
    ,c11 time
    ,c12 bytea
    ,c13 bigint
    ,c14 bigint
    ,c15 jsonb
    ,c16 bigint
    ,c17 real
);

CREATE TABLE job2.t14 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(16)
    ,c2 smallint
    ,c3 jsonb
    ,c4 numeric(9,3)
    ,c5 boolean
    ,c6 numeric(10,1)
    ,c7 double precision
    ,c8 smallint
    ,c9 real
    ,c10 time
    ,c11 timestamp
    ,c12 time
    ,c13 integer
    ,c14 timestamp
    ,c15 smallint
    ,c16 bigint
);

CREATE TABLE job2.t15 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 boolean
    ,c3 time
    ,c4 date
    ,c5 real
    ,c6 numeric(5,3)
    ,c7 integer
    ,c8 numeric(10,2)
    ,c9 bigint
    ,c10 smallint
    ,c11 text
    ,c12 double precision
    ,c13 date
);

CREATE TABLE job2.t16 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 double precision
    ,c3 bigint
    ,c4 uuid
    ,c5 smallint
    ,c6 varchar(13)
    ,c7 smallint
    ,c8 date
    ,c9 jsonb
    ,c10 bytea
    ,c11 integer
    ,c12 integer
    ,c13 varchar(22)
    ,c14 timestamp
    ,c15 double precision
    ,c16 numeric(12,0)
    ,c17 date
    ,c18 boolean
);

CREATE TABLE job2.t17 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(9,1)
    ,c2 numeric(6,0)
    ,c3 char(4)
    ,c4 bigint
    ,c5 varchar(12)
    ,c6 uuid
    ,c7 smallint
    ,c8 timestamp
    ,c9 real
    ,c10 char(12)
    ,c11 numeric(11,0)
);

CREATE TABLE job2.t18 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 integer
    ,c3 real
    ,c4 date
    ,c5 timestamp
    ,c6 varchar(25)
    ,c7 char(15)
    ,c8 text
    ,c9 bigint
    ,c10 date
    ,c11 bytea
    ,c12 timestamp
    ,c13 date
    ,c14 real
    ,c15 char(3)
    ,c16 jsonb
    ,c17 uuid
    ,c18 boolean
    ,c19 char(18)
    ,c20 text
);

CREATE TABLE job2.t19 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(22)
    ,c2 double precision
    ,c3 varchar(27)
    ,c4 bytea
    ,c5 time
    ,c6 time
    ,c7 bytea
    ,c8 char(8)
    ,c9 double precision
    ,c10 jsonb
    ,c11 jsonb
    ,c12 double precision
    ,c13 varchar(21)
    ,c14 text
    ,c15 numeric(6,3)
    ,c16 varchar(18)
    ,c17 text
    ,c18 numeric(6,1)
    ,c19 char(12)
);

CREATE TABLE job2.t20 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(2)
    ,c2 time
    ,c3 bytea
    ,c4 jsonb
    ,c5 text
    ,c6 boolean
    ,c7 timestamp
    ,c8 varchar(32)
    ,c9 bytea
    ,c10 uuid
    ,c11 timestamp
    ,c12 integer
);

CREATE TABLE job2.t21 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 timestamp
    ,c3 numeric(6,2)
    ,c4 uuid
    ,c5 boolean
    ,c6 double precision
    ,c7 integer
    ,c8 bigint
    ,c9 char(17)
    ,c10 integer
    ,c11 smallint
    ,c12 char(18)
    ,c13 time
    ,c14 varchar(6)
);

CREATE TABLE job2.t22 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 numeric(12,0)
    ,c3 real
    ,c4 uuid
    ,c5 timestamp
    ,c6 real
    ,c7 integer
    ,c8 bytea
    ,c9 integer
    ,c10 time
    ,c11 boolean
    ,c12 timestamp
    ,c13 bigint
    ,c14 timestamp
    ,c15 boolean
    ,c16 date
);

CREATE TABLE job2.t23 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(18)
    ,c2 uuid
    ,c3 char(14)
    ,c4 bigint
    ,c5 numeric(9,3)
    ,c6 time
    ,c7 text
    ,c8 real
    ,c9 numeric(8,1)
    ,c10 numeric(10,3)
    ,c11 time
    ,c12 jsonb
    ,c13 bigint
    ,c14 jsonb
    ,c15 varchar(11)
    ,c16 varchar(49)
);

CREATE TABLE job2.t24 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 char(16)
    ,c3 double precision
    ,c4 uuid
    ,c5 char(7)
    ,c6 jsonb
    ,c7 varchar(24)
    ,c8 boolean
    ,c9 jsonb
    ,c10 varchar(21)
    ,c11 real
    ,c12 double precision
    ,c13 uuid
    ,c14 bytea
    ,c15 char(13)
    ,c16 real
    ,c17 boolean
    ,c18 bigint
    ,c19 real
    ,c20 double precision
);

CREATE TABLE job2.t25 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 timestamp
    ,c3 char(17)
    ,c4 bigint
    ,c5 bytea
    ,c6 bytea
    ,c7 uuid
    ,c8 numeric(10,2)
    ,c9 double precision
    ,c10 jsonb
    ,c11 time
    ,c12 jsonb
    ,c13 boolean
    ,c14 integer
);

CREATE TABLE job2.t26 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 bytea
    ,c3 uuid
    ,c4 timestamp
    ,c5 smallint
    ,c6 numeric(4,3)
    ,c7 date
    ,c8 varchar(5)
    ,c9 boolean
    ,c10 integer
    ,c11 real
    ,c12 time
    ,c13 date
    ,c14 uuid
    ,c15 integer
    ,c16 uuid
    ,c17 char(2)
    ,c18 uuid
    ,c19 numeric(6,1)
);

CREATE TABLE job2.t27 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 real
    ,c3 time
    ,c4 time
    ,c5 varchar(15)
    ,c6 timestamp
    ,c7 jsonb
    ,c8 uuid
    ,c9 numeric(12,3)
    ,c10 numeric(11,0)
    ,c11 boolean
    ,c12 varchar(22)
    ,c13 numeric(9,3)
    ,c14 boolean
    ,c15 jsonb
    ,c16 smallint
);

CREATE TABLE job2.t28 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 boolean
    ,c3 boolean
    ,c4 uuid
    ,c5 jsonb
    ,c6 bytea
    ,c7 varchar(44)
    ,c8 double precision
    ,c9 double precision
    ,c10 time
    ,c11 double precision
    ,c12 bytea
    ,c13 char(17)
    ,c14 boolean
    ,c15 text
    ,c16 double precision
    ,c17 jsonb
    ,c18 integer
    ,c19 char(13)
    ,c20 timestamp
);

CREATE TABLE job2.t29 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(37)
    ,c2 bytea
    ,c3 double precision
    ,c4 numeric(9,3)
    ,c5 bigint
    ,c6 bytea
    ,c7 date
    ,c8 real
    ,c9 text
    ,c10 integer
    ,c11 varchar(9)
    ,c12 numeric(11,3)
    ,c13 jsonb
    ,c14 smallint
    ,c15 date
    ,c16 text
    ,c17 smallint
);

CREATE TABLE job2.t30 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 uuid
    ,c3 bigint
    ,c4 bytea
    ,c5 smallint
    ,c6 jsonb
    ,c7 bytea
    ,c8 time
    ,c9 text
    ,c10 char(13)
    ,c11 text
);

CREATE TABLE job2.t31 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(11,2)
    ,c2 text
    ,c3 text
    ,c4 text
    ,c5 date
    ,c6 char(4)
    ,c7 varchar(50)
    ,c8 jsonb
    ,c9 char(6)
    ,c10 smallint
    ,c11 timestamp
    ,c12 real
    ,c13 varchar(33)
    ,c14 real
);

CREATE TABLE job2.t32 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 char(3)
    ,c3 smallint
    ,c4 bigint
    ,c5 varchar(18)
    ,c6 text
    ,c7 jsonb
    ,c8 timestamp
    ,c9 varchar(49)
    ,c10 uuid
);

CREATE TABLE job2.t33 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(5,3)
    ,c2 numeric(10,1)
    ,c3 real
    ,c4 timestamp
    ,c5 real
    ,c6 smallint
    ,c7 integer
    ,c8 boolean
    ,c9 date
    ,c10 date
);

CREATE TABLE job2.t34 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 jsonb
    ,c3 double precision
    ,c4 double precision
    ,c5 text
    ,c6 jsonb
    ,c7 text
    ,c8 char(11)
    ,c9 boolean
    ,c10 timestamp
    ,c11 double precision
    ,c12 double precision
    ,c13 double precision
);

CREATE TABLE job2.t35 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 date
    ,c3 boolean
    ,c4 varchar(31)
    ,c5 timestamp
    ,c6 double precision
    ,c7 time
    ,c8 smallint
    ,c9 uuid
    ,c10 bytea
    ,c11 date
    ,c12 timestamp
    ,c13 bytea
    ,c14 smallint
);

CREATE TABLE job2.t36 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 text
    ,c3 bytea
    ,c4 bytea
    ,c5 varchar(36)
    ,c6 date
    ,c7 smallint
    ,c8 varchar(6)
    ,c9 bytea
    ,c10 bigint
    ,c11 boolean
    ,c12 time
);

CREATE TABLE job2.t37 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 double precision
    ,c3 double precision
    ,c4 jsonb
    ,c5 bigint
    ,c6 integer
    ,c7 varchar(42)
    ,c8 char(4)
    ,c9 boolean
    ,c10 time
    ,c11 double precision
    ,c12 integer
    ,c13 timestamp
    ,c14 timestamp
    ,c15 uuid
    ,c16 bytea
);

CREATE TABLE job2.t38 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 timestamp
    ,c3 bigint
    ,c4 jsonb
    ,c5 smallint
    ,c6 varchar(9)
    ,c7 real
    ,c8 varchar(12)
    ,c9 boolean
    ,c10 bigint
    ,c11 boolean
    ,c12 smallint
    ,c13 real
    ,c14 numeric(8,1)
    ,c15 smallint
    ,c16 timestamp
    ,c17 double precision
    ,c18 varchar(5)
    ,c19 real
    ,c20 bigint
);

CREATE TABLE job2.t39 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(8,2)
    ,c2 timestamp
    ,c3 jsonb
    ,c4 bytea
    ,c5 smallint
    ,c6 integer
    ,c7 bytea
    ,c8 smallint
    ,c9 text
    ,c10 integer
);

CREATE TABLE job2.t40 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 double precision
    ,c3 real
    ,c4 date
    ,c5 bytea
    ,c6 bigint
    ,c7 double precision
    ,c8 timestamp
    ,c9 numeric(5,0)
    ,c10 timestamp
    ,c11 varchar(17)
    ,c12 uuid
    ,c13 real
    ,c14 uuid
    ,c15 timestamp
    ,c16 boolean
    ,c17 timestamp
    ,c18 real
    ,c19 varchar(24)
);

CREATE TABLE job2.t41 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 time
    ,c3 char(7)
    ,c4 numeric(11,1)
    ,c5 numeric(5,2)
    ,c6 real
    ,c7 numeric(9,0)
    ,c8 jsonb
    ,c9 varchar(37)
    ,c10 char(10)
    ,c11 date
    ,c12 jsonb
    ,c13 double precision
    ,c14 char(3)
    ,c15 text
    ,c16 uuid
    ,c17 integer
    ,c18 bytea
);

CREATE TABLE job2.t42 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(20)
    ,c2 varchar(41)
    ,c3 time
    ,c4 boolean
    ,c5 uuid
    ,c6 numeric(4,2)
    ,c7 uuid
    ,c8 time
    ,c9 integer
    ,c10 real
    ,c11 date
    ,c12 time
    ,c13 text
    ,c14 boolean
    ,c15 char(3)
    ,c16 text
    ,c17 boolean
    ,c18 time
    ,c19 double precision
    ,c20 uuid
);

CREATE TABLE job2.t43 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(14)
    ,c2 bytea
    ,c3 date
    ,c4 integer
    ,c5 bigint
    ,c6 text
    ,c7 double precision
    ,c8 jsonb
    ,c9 jsonb
    ,c10 real
    ,c11 time
    ,c12 double precision
    ,c13 real
    ,c14 smallint
    ,c15 text
);

CREATE TABLE job2.t44 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 numeric(7,3)
    ,c3 varchar(31)
    ,c4 boolean
    ,c5 varchar(1)
    ,c6 bigint
    ,c7 text
    ,c8 char(17)
    ,c9 numeric(6,3)
    ,c10 char(10)
    ,c11 date
    ,c12 smallint
    ,c13 real
    ,c14 real
    ,c15 bytea
    ,c16 bytea
    ,c17 timestamp
    ,c18 real
    ,c19 integer
    ,c20 jsonb
);

CREATE TABLE job2.t45 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 time
    ,c3 double precision
    ,c4 jsonb
    ,c5 integer
    ,c6 timestamp
    ,c7 bytea
    ,c8 double precision
    ,c9 time
    ,c10 bigint
    ,c11 smallint
    ,c12 text
    ,c13 double precision
    ,c14 uuid
);

CREATE TABLE job2.t46 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 boolean
    ,c3 jsonb
    ,c4 text
    ,c5 time
    ,c6 bytea
    ,c7 varchar(24)
    ,c8 text
    ,c9 varchar(21)
    ,c10 varchar(43)
    ,c11 time
    ,c12 double precision
    ,c13 varchar(4)
    ,c14 bigint
    ,c15 text
);

CREATE TABLE job2.t47 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 timestamp
    ,c3 varchar(48)
    ,c4 varchar(14)
    ,c5 date
    ,c6 integer
    ,c7 numeric(7,2)
    ,c8 smallint
    ,c9 time
    ,c10 uuid
);

CREATE TABLE job2.t48 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 jsonb
    ,c3 time
    ,c4 text
    ,c5 text
    ,c6 integer
    ,c7 numeric(8,0)
    ,c8 char(3)
    ,c9 timestamp
    ,c10 real
    ,c11 char(1)
    ,c12 smallint
    ,c13 varchar(19)
    ,c14 bytea
    ,c15 bytea
    ,c16 boolean
    ,c17 numeric(12,1)
    ,c18 bigint
    ,c19 date
    ,c20 time
);

CREATE TABLE job2.t49 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 boolean
    ,c3 bigint
    ,c4 double precision
    ,c5 date
    ,c6 numeric(11,2)
    ,c7 boolean
    ,c8 numeric(5,3)
    ,c9 numeric(9,2)
    ,c10 text
    ,c11 jsonb
);

CREATE TABLE job2.t50 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 timestamp
    ,c3 bytea
    ,c4 numeric(6,0)
    ,c5 time
    ,c6 bytea
    ,c7 char(10)
    ,c8 text
    ,c9 integer
    ,c10 smallint
);

CREATE TABLE job2.t51 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 double precision
    ,c3 integer
    ,c4 text
    ,c5 uuid
    ,c6 smallint
    ,c7 timestamp
    ,c8 numeric(10,1)
    ,c9 uuid
    ,c10 jsonb
    ,c11 smallint
    ,c12 integer
    ,c13 char(3)
    ,c14 jsonb
    ,c15 smallint
    ,c16 boolean
    ,c17 date
    ,c18 real
);

CREATE TABLE job2.t52 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 real
    ,c3 real
    ,c4 jsonb
    ,c5 timestamp
    ,c6 smallint
    ,c7 boolean
    ,c8 jsonb
    ,c9 bigint
    ,c10 bigint
    ,c11 jsonb
);

CREATE TABLE job2.t53 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 date
    ,c3 char(5)
    ,c4 date
    ,c5 double precision
    ,c6 date
    ,c7 uuid
    ,c8 double precision
    ,c9 varchar(38)
    ,c10 integer
    ,c11 bigint
    ,c12 bigint
    ,c13 date
    ,c14 numeric(9,2)
    ,c15 date
    ,c16 bigint
    ,c17 char(20)
);

CREATE TABLE job2.t54 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 smallint
    ,c3 time
    ,c4 uuid
    ,c5 boolean
    ,c6 uuid
    ,c7 uuid
    ,c8 date
    ,c9 smallint
    ,c10 varchar(47)
    ,c11 real
    ,c12 bigint
    ,c13 real
    ,c14 char(11)
    ,c15 varchar(42)
    ,c16 bigint
    ,c17 char(5)
    ,c18 char(15)
);

CREATE TABLE job2.t55 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 timestamp
    ,c3 bigint
    ,c4 boolean
    ,c5 uuid
    ,c6 text
    ,c7 char(17)
    ,c8 jsonb
    ,c9 real
    ,c10 date
    ,c11 time
    ,c12 numeric(10,1)
    ,c13 bytea
    ,c14 boolean
    ,c15 uuid
);

CREATE TABLE job2.t56 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 bigint
    ,c3 timestamp
    ,c4 uuid
    ,c5 text
    ,c6 bytea
    ,c7 boolean
    ,c8 timestamp
    ,c9 varchar(25)
    ,c10 text
    ,c11 char(11)
    ,c12 real
    ,c13 bytea
    ,c14 bigint
    ,c15 double precision
);

CREATE TABLE job2.t57 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 bigint
    ,c3 char(20)
    ,c4 integer
    ,c5 bigint
    ,c6 uuid
    ,c7 bigint
    ,c8 bytea
    ,c9 numeric(5,2)
    ,c10 numeric(10,1)
    ,c11 uuid
    ,c12 numeric(10,2)
    ,c13 time
);

CREATE TABLE job2.t58 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(2)
    ,c2 bytea
    ,c3 time
    ,c4 varchar(36)
    ,c5 smallint
    ,c6 time
    ,c7 bytea
    ,c8 double precision
    ,c9 text
    ,c10 timestamp
    ,c11 boolean
);

CREATE TABLE job2.t59 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 timestamp
    ,c3 bytea
    ,c4 text
    ,c5 bytea
    ,c6 timestamp
    ,c7 boolean
    ,c8 boolean
    ,c9 integer
    ,c10 uuid
    ,c11 bytea
    ,c12 timestamp
    ,c13 bytea
    ,c14 real
    ,c15 timestamp
);

CREATE TABLE job2.t60 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 time
    ,c3 boolean
    ,c4 varchar(9)
    ,c5 integer
    ,c6 uuid
    ,c7 char(9)
    ,c8 integer
    ,c9 jsonb
    ,c10 integer
    ,c11 jsonb
    ,c12 varchar(42)
    ,c13 smallint
);

CREATE TABLE job2.t61 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 varchar(17)
    ,c3 double precision
    ,c4 bytea
    ,c5 timestamp
    ,c6 boolean
    ,c7 real
    ,c8 bigint
    ,c9 real
    ,c10 jsonb
    ,c11 varchar(27)
    ,c12 text
    ,c13 double precision
    ,c14 numeric(12,0)
    ,c15 double precision
    ,c16 time
    ,c17 bigint
);

CREATE TABLE job2.t62 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 char(5)
    ,c3 uuid
    ,c4 smallint
    ,c5 real
    ,c6 boolean
    ,c7 char(2)
    ,c8 boolean
    ,c9 boolean
    ,c10 double precision
    ,c11 varchar(1)
);

CREATE TABLE job2.t63 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 boolean
    ,c3 date
    ,c4 char(8)
    ,c5 timestamp
    ,c6 boolean
    ,c7 jsonb
    ,c8 text
    ,c9 timestamp
    ,c10 text
    ,c11 time
);

CREATE TABLE job2.t64 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 smallint
    ,c3 smallint
    ,c4 date
    ,c5 smallint
    ,c6 timestamp
    ,c7 integer
    ,c8 char(18)
    ,c9 real
    ,c10 char(18)
    ,c11 char(5)
    ,c12 bigint
);

CREATE TABLE job2.t65 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 date
    ,c3 double precision
    ,c4 char(7)
    ,c5 time
    ,c6 varchar(4)
    ,c7 boolean
    ,c8 time
    ,c9 real
    ,c10 real
    ,c11 date
);

CREATE TABLE job2.t66 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 bigint
    ,c3 bigint
    ,c4 bytea
    ,c5 double precision
    ,c6 timestamp
    ,c7 bytea
    ,c8 varchar(17)
    ,c9 integer
    ,c10 uuid
    ,c11 uuid
    ,c12 timestamp
    ,c13 char(12)
    ,c14 smallint
    ,c15 timestamp
    ,c16 bytea
    ,c17 date
    ,c18 bytea
    ,c19 boolean
    ,c20 jsonb
);

CREATE TABLE job2.t67 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 bigint
    ,c3 text
    ,c4 time
    ,c5 double precision
    ,c6 real
    ,c7 char(14)
    ,c8 time
    ,c9 jsonb
    ,c10 jsonb
    ,c11 integer
    ,c12 real
    ,c13 real
    ,c14 boolean
    ,c15 integer
    ,c16 timestamp
    ,c17 bigint
);

CREATE TABLE job2.t68 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 jsonb
    ,c3 time
    ,c4 bigint
    ,c5 uuid
    ,c6 text
    ,c7 integer
    ,c8 real
    ,c9 varchar(49)
    ,c10 time
    ,c11 text
    ,c12 timestamp
    ,c13 date
    ,c14 smallint
    ,c15 bytea
    ,c16 time
    ,c17 char(4)
    ,c18 timestamp
    ,c19 time
);

CREATE TABLE job2.t69 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 double precision
    ,c3 text
    ,c4 smallint
    ,c5 timestamp
    ,c6 date
    ,c7 date
    ,c8 bigint
    ,c9 numeric(5,0)
    ,c10 timestamp
    ,c11 jsonb
    ,c12 text
    ,c13 integer
    ,c14 bytea
    ,c15 jsonb
    ,c16 bytea
    ,c17 bytea
);

CREATE TABLE job2.t70 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 time
    ,c3 double precision
    ,c4 timestamp
    ,c5 uuid
    ,c6 numeric(9,3)
    ,c7 bytea
    ,c8 double precision
    ,c9 boolean
    ,c10 char(13)
    ,c11 uuid
    ,c12 bytea
);

CREATE TABLE job2.t71 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 double precision
    ,c3 double precision
    ,c4 text
    ,c5 numeric(12,0)
    ,c6 varchar(31)
    ,c7 real
    ,c8 double precision
    ,c9 uuid
    ,c10 numeric(9,2)
    ,c11 jsonb
    ,c12 text
    ,c13 integer
    ,c14 bytea
    ,c15 date
    ,c16 double precision
    ,c17 bytea
    ,c18 varchar(6)
    ,c19 varchar(17)
);

CREATE TABLE job2.t72 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 text
    ,c3 jsonb
    ,c4 text
    ,c5 real
    ,c6 real
    ,c7 numeric(6,3)
    ,c8 char(8)
    ,c9 uuid
    ,c10 text
    ,c11 numeric(10,1)
    ,c12 timestamp
    ,c13 double precision
);

CREATE TABLE job2.t73 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 jsonb
    ,c3 jsonb
    ,c4 jsonb
    ,c5 smallint
    ,c6 boolean
    ,c7 date
    ,c8 char(14)
    ,c9 uuid
    ,c10 bigint
);

CREATE TABLE job2.t74 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 integer
    ,c3 varchar(24)
    ,c4 char(1)
    ,c5 boolean
    ,c6 numeric(4,1)
    ,c7 jsonb
    ,c8 char(7)
    ,c9 integer
    ,c10 boolean
    ,c11 jsonb
    ,c12 boolean
    ,c13 varchar(39)
    ,c14 double precision
    ,c15 real
    ,c16 varchar(12)
);

CREATE TABLE job2.t75 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 bytea
    ,c3 bytea
    ,c4 char(11)
    ,c5 bytea
    ,c6 time
    ,c7 uuid
    ,c8 date
    ,c9 double precision
    ,c10 char(12)
    ,c11 bigint
    ,c12 real
    ,c13 integer
);

CREATE TABLE job2.t76 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 real
    ,c3 char(16)
    ,c4 boolean
    ,c5 time
    ,c6 smallint
    ,c7 date
    ,c8 real
    ,c9 real
    ,c10 bigint
);

CREATE TABLE job2.t77 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(17)
    ,c2 jsonb
    ,c3 uuid
    ,c4 numeric(8,1)
    ,c5 char(17)
    ,c6 date
    ,c7 text
    ,c8 char(12)
    ,c9 bigint
    ,c10 bigint
    ,c11 numeric(4,3)
    ,c12 text
    ,c13 uuid
    ,c14 bigint
    ,c15 smallint
    ,c16 text
);

CREATE TABLE job2.t78 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 uuid
    ,c3 smallint
    ,c4 boolean
    ,c5 timestamp
    ,c6 char(3)
    ,c7 timestamp
    ,c8 text
    ,c9 date
    ,c10 double precision
    ,c11 numeric(10,3)
    ,c12 timestamp
    ,c13 smallint
    ,c14 timestamp
);

CREATE TABLE job2.t79 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(46)
    ,c2 char(9)
    ,c3 real
    ,c4 bytea
    ,c5 bigint
    ,c6 char(12)
    ,c7 time
    ,c8 text
    ,c9 date
    ,c10 smallint
    ,c11 jsonb
    ,c12 date
    ,c13 varchar(6)
    ,c14 numeric(11,3)
    ,c15 timestamp
    ,c16 time
    ,c17 jsonb
    ,c18 bytea
);

CREATE TABLE job2.t80 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(4,2)
    ,c2 smallint
    ,c3 time
    ,c4 varchar(1)
    ,c5 boolean
    ,c6 timestamp
    ,c7 char(14)
    ,c8 double precision
    ,c9 jsonb
    ,c10 date
    ,c11 bytea
    ,c12 real
);

CREATE TABLE job2.t81 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 date
    ,c3 timestamp
    ,c4 double precision
    ,c5 uuid
    ,c6 double precision
    ,c7 timestamp
    ,c8 char(3)
    ,c9 numeric(10,0)
    ,c10 varchar(47)
    ,c11 date
    ,c12 integer
    ,c13 numeric(9,0)
    ,c14 date
    ,c15 real
    ,c16 time
    ,c17 integer
);

CREATE TABLE job2.t82 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 double precision
    ,c3 timestamp
    ,c4 bytea
    ,c5 numeric(10,1)
    ,c6 boolean
    ,c7 bytea
    ,c8 time
    ,c9 time
    ,c10 uuid
);

CREATE TABLE job2.t83 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 integer
    ,c3 double precision
    ,c4 integer
    ,c5 bigint
    ,c6 double precision
    ,c7 integer
    ,c8 integer
    ,c9 numeric(9,0)
    ,c10 time
    ,c11 date
    ,c12 jsonb
    ,c13 varchar(22)
    ,c14 date
);

CREATE TABLE job2.t84 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 real
    ,c3 double precision
    ,c4 varchar(22)
    ,c5 bigint
    ,c6 date
    ,c7 time
    ,c8 varchar(23)
    ,c9 real
    ,c10 varchar(9)
    ,c11 timestamp
    ,c12 real
    ,c13 bytea
    ,c14 text
    ,c15 timestamp
    ,c16 boolean
    ,c17 double precision
    ,c18 varchar(21)
    ,c19 time
);

CREATE TABLE job2.t85 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 text
    ,c3 double precision
    ,c4 varchar(16)
    ,c5 bytea
    ,c6 integer
    ,c7 uuid
    ,c8 integer
    ,c9 jsonb
    ,c10 smallint
    ,c11 integer
    ,c12 bigint
    ,c13 date
    ,c14 boolean
    ,c15 uuid
    ,c16 bigint
    ,c17 char(10)
);

CREATE TABLE job2.t86 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 jsonb
    ,c3 varchar(9)
    ,c4 time
    ,c5 uuid
    ,c6 double precision
    ,c7 uuid
    ,c8 smallint
    ,c9 timestamp
    ,c10 bytea
);

CREATE TABLE job2.t87 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(2)
    ,c2 jsonb
    ,c3 date
    ,c4 bytea
    ,c5 bytea
    ,c6 boolean
    ,c7 numeric(4,3)
    ,c8 text
    ,c9 real
    ,c10 boolean
    ,c11 boolean
    ,c12 date
    ,c13 uuid
    ,c14 real
    ,c15 jsonb
    ,c16 double precision
    ,c17 real
);

CREATE TABLE job2.t88 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 varchar(35)
    ,c3 uuid
    ,c4 integer
    ,c5 char(15)
    ,c6 double precision
    ,c7 jsonb
    ,c8 uuid
    ,c9 char(11)
    ,c10 timestamp
    ,c11 real
    ,c12 varchar(16)
    ,c13 smallint
    ,c14 char(9)
    ,c15 date
    ,c16 boolean
    ,c17 timestamp
    ,c18 smallint
    ,c19 integer
    ,c20 bigint
);

CREATE TABLE job2.t89 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 uuid
    ,c3 timestamp
    ,c4 char(19)
    ,c5 integer
    ,c6 numeric(5,0)
    ,c7 text
    ,c8 boolean
    ,c9 date
    ,c10 numeric(7,1)
    ,c11 uuid
    ,c12 numeric(12,1)
    ,c13 bigint
    ,c14 date
    ,c15 bigint
    ,c16 smallint
    ,c17 numeric(7,3)
    ,c18 varchar(19)
    ,c19 uuid
    ,c20 bytea
);

CREATE TABLE job2.t90 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 bigint
    ,c3 real
    ,c4 integer
    ,c5 smallint
    ,c6 bytea
    ,c7 timestamp
    ,c8 jsonb
    ,c9 numeric(10,1)
    ,c10 bytea
    ,c11 char(13)
    ,c12 integer
);

CREATE TABLE job2.t91 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(5)
    ,c2 text
    ,c3 integer
    ,c4 bytea
    ,c5 text
    ,c6 real
    ,c7 jsonb
    ,c8 real
    ,c9 real
    ,c10 double precision
    ,c11 jsonb
    ,c12 boolean
    ,c13 double precision
    ,c14 boolean
    ,c15 integer
    ,c16 bytea
    ,c17 text
    ,c18 double precision
    ,c19 bytea
);

CREATE TABLE job2.t92 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 bigint
    ,c3 double precision
    ,c4 date
    ,c5 real
    ,c6 bytea
    ,c7 varchar(10)
    ,c8 timestamp
    ,c9 char(1)
    ,c10 date
    ,c11 bigint
    ,c12 timestamp
    ,c13 time
    ,c14 jsonb
    ,c15 text
    ,c16 real
    ,c17 bigint
    ,c18 jsonb
    ,c19 jsonb
    ,c20 boolean
);

CREATE TABLE job2.t93 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 bytea
    ,c3 boolean
    ,c4 time
    ,c5 real
    ,c6 smallint
    ,c7 char(12)
    ,c8 bigint
    ,c9 boolean
    ,c10 real
    ,c11 double precision
);

CREATE TABLE job2.t94 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(4)
    ,c2 char(2)
    ,c3 real
    ,c4 varchar(37)
    ,c5 char(6)
    ,c6 boolean
    ,c7 timestamp
    ,c8 time
    ,c9 boolean
    ,c10 jsonb
    ,c11 char(17)
    ,c12 bigint
    ,c13 integer
    ,c14 numeric(4,2)
    ,c15 double precision
    ,c16 timestamp
);

CREATE TABLE job2.t95 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 text
    ,c3 numeric(7,2)
    ,c4 timestamp
    ,c5 boolean
    ,c6 smallint
    ,c7 varchar(42)
    ,c8 uuid
    ,c9 date
    ,c10 bigint
);

CREATE TABLE job2.t96 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 char(2)
    ,c3 bytea
    ,c4 double precision
    ,c5 bigint
    ,c6 numeric(10,2)
    ,c7 integer
    ,c8 date
    ,c9 timestamp
    ,c10 date
    ,c11 varchar(35)
    ,c12 uuid
    ,c13 boolean
);

CREATE TABLE job2.t97 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(11,3)
    ,c2 timestamp
    ,c3 text
    ,c4 bytea
    ,c5 char(12)
    ,c6 time
    ,c7 date
    ,c8 text
    ,c9 text
    ,c10 bigint
    ,c11 numeric(5,1)
    ,c12 smallint
    ,c13 text
);

CREATE TABLE job2.t98 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 jsonb
    ,c3 double precision
    ,c4 integer
    ,c5 numeric(5,2)
    ,c6 integer
    ,c7 double precision
    ,c8 jsonb
    ,c9 bytea
    ,c10 varchar(34)
    ,c11 jsonb
    ,c12 boolean
    ,c13 real
    ,c14 integer
    ,c15 time
    ,c16 varchar(11)
);

CREATE TABLE job2.t99 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(2)
    ,c2 smallint
    ,c3 time
    ,c4 smallint
    ,c5 double precision
    ,c6 text
    ,c7 double precision
    ,c8 smallint
    ,c9 date
    ,c10 text
    ,c11 smallint
    ,c12 boolean
    ,c13 numeric(4,0)
    ,c14 boolean
);

CREATE TABLE job2.t100 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 text
    ,c3 timestamp
    ,c4 timestamp
    ,c5 timestamp
    ,c6 bigint
    ,c7 timestamp
    ,c8 varchar(24)
    ,c9 timestamp
    ,c10 date
    ,c11 bigint
    ,c12 bytea
    ,c13 numeric(6,2)
    ,c14 char(7)
    ,c15 bytea
    ,c16 smallint
    ,c17 numeric(8,1)
);
