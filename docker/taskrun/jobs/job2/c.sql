CREATE TABLE job2.t1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 bigint
    ,c3 integer
    ,c4 time
    ,c5 uuid
    ,c6 timestamp
    ,c7 timestamp
    ,c8 double precision
    ,c9 boolean
    ,c10 char(14)
    ,c11 boolean
    ,c12 text
    ,c13 bytea
);

CREATE TABLE job2.t2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 timestamp
    ,c3 uuid
    ,c4 date
    ,c5 jsonb
    ,c6 varchar(16)
    ,c7 smallint
    ,c8 numeric(6,3)
    ,c9 varchar(45)
    ,c10 jsonb
    ,c11 jsonb
    ,c12 numeric(10,1)
    ,c13 text
    ,c14 jsonb
    ,c15 real
    ,c16 date
);

CREATE TABLE job2.t3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(5,3)
    ,c2 numeric(4,3)
    ,c3 char(12)
    ,c4 numeric(10,1)
    ,c5 time
    ,c6 text
    ,c7 integer
    ,c8 double precision
    ,c9 jsonb
    ,c10 real
    ,c11 numeric(5,3)
    ,c12 char(2)
    ,c13 numeric(9,1)
    ,c14 real
    ,c15 char(8)
    ,c16 boolean
);

CREATE TABLE job2.t4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 bytea
    ,c3 double precision
    ,c4 bigint
    ,c5 bigint
    ,c6 date
    ,c7 text
    ,c8 varchar(33)
    ,c9 bigint
    ,c10 varchar(18)
    ,c11 real
    ,c12 numeric(9,3)
    ,c13 bigint
    ,c14 smallint
);

CREATE TABLE job2.t5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 varchar(22)
    ,c3 date
    ,c4 real
    ,c5 uuid
    ,c6 date
    ,c7 timestamp
    ,c8 bigint
    ,c9 jsonb
    ,c10 numeric(5,3)
    ,c11 uuid
    ,c12 text
    ,c13 varchar(14)
);

CREATE TABLE job2.t6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(5,2)
    ,c2 jsonb
    ,c3 jsonb
    ,c4 integer
    ,c5 timestamp
    ,c6 smallint
    ,c7 date
    ,c8 numeric(9,3)
    ,c9 smallint
    ,c10 time
);

CREATE TABLE job2.t7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 boolean
    ,c3 text
    ,c4 timestamp
    ,c5 timestamp
    ,c6 smallint
    ,c7 text
    ,c8 date
    ,c9 real
    ,c10 smallint
);

CREATE TABLE job2.t8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(6,2)
    ,c2 boolean
    ,c3 char(19)
    ,c4 smallint
    ,c5 text
    ,c6 integer
    ,c7 char(4)
    ,c8 numeric(12,2)
    ,c9 integer
    ,c10 varchar(11)
    ,c11 integer
    ,c12 time
    ,c13 date
    ,c14 char(8)
    ,c15 numeric(8,2)
    ,c16 timestamp
    ,c17 numeric(6,1)
    ,c18 uuid
);

CREATE TABLE job2.t9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(5,2)
    ,c2 jsonb
    ,c3 text
    ,c4 varchar(15)
    ,c5 uuid
    ,c6 text
    ,c7 char(6)
    ,c8 time
    ,c9 integer
    ,c10 smallint
    ,c11 numeric(4,2)
    ,c12 char(15)
    ,c13 bigint
    ,c14 smallint
    ,c15 smallint
    ,c16 uuid
    ,c17 numeric(12,3)
);

CREATE TABLE job2.t10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 smallint
    ,c3 smallint
    ,c4 char(7)
    ,c5 varchar(37)
    ,c6 real
    ,c7 uuid
    ,c8 smallint
    ,c9 timestamp
    ,c10 text
    ,c11 smallint
    ,c12 time
);

CREATE TABLE job2.t11 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 integer
    ,c3 real
    ,c4 timestamp
    ,c5 char(12)
    ,c6 varchar(44)
    ,c7 jsonb
    ,c8 timestamp
    ,c9 time
    ,c10 jsonb
    ,c11 real
    ,c12 uuid
    ,c13 boolean
    ,c14 smallint
    ,c15 real
    ,c16 real
    ,c17 boolean
    ,c18 jsonb
    ,c19 jsonb
    ,c20 smallint
);

CREATE TABLE job2.t12 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 bytea
    ,c3 boolean
    ,c4 timestamp
    ,c5 integer
    ,c6 integer
    ,c7 uuid
    ,c8 integer
    ,c9 uuid
    ,c10 uuid
    ,c11 boolean
    ,c12 double precision
    ,c13 jsonb
    ,c14 smallint
    ,c15 timestamp
    ,c16 varchar(13)
    ,c17 time
    ,c18 integer
    ,c19 time
);

CREATE TABLE job2.t13 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 uuid
    ,c3 smallint
    ,c4 char(3)
    ,c5 text
    ,c6 uuid
    ,c7 timestamp
    ,c8 time
    ,c9 numeric(9,1)
    ,c10 timestamp
    ,c11 bytea
);

CREATE TABLE job2.t14 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 timestamp
    ,c3 varchar(14)
    ,c4 integer
    ,c5 time
    ,c6 varchar(27)
    ,c7 varchar(15)
    ,c8 integer
    ,c9 smallint
    ,c10 bytea
    ,c11 boolean
);

CREATE TABLE job2.t15 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(13)
    ,c2 bigint
    ,c3 timestamp
    ,c4 smallint
    ,c5 char(2)
    ,c6 smallint
    ,c7 real
    ,c8 date
    ,c9 date
    ,c10 real
    ,c11 smallint
    ,c12 bytea
    ,c13 numeric(9,2)
    ,c14 numeric(12,0)
    ,c15 bytea
    ,c16 jsonb
    ,c17 smallint
    ,c18 boolean
    ,c19 double precision
    ,c20 bytea
);

CREATE TABLE job2.t16 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 numeric(9,1)
    ,c3 uuid
    ,c4 char(15)
    ,c5 double precision
    ,c6 bytea
    ,c7 real
    ,c8 date
    ,c9 jsonb
    ,c10 boolean
    ,c11 real
    ,c12 char(9)
    ,c13 char(15)
    ,c14 date
    ,c15 real
    ,c16 smallint
    ,c17 varchar(25)
    ,c18 varchar(48)
    ,c19 time
    ,c20 boolean
);

CREATE TABLE job2.t17 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(34)
    ,c2 uuid
    ,c3 time
    ,c4 bytea
    ,c5 date
    ,c6 bigint
    ,c7 double precision
    ,c8 date
    ,c9 timestamp
    ,c10 jsonb
    ,c11 timestamp
    ,c12 uuid
    ,c13 double precision
    ,c14 jsonb
    ,c15 bytea
    ,c16 uuid
);

CREATE TABLE job2.t18 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(6,0)
    ,c2 text
    ,c3 real
    ,c4 boolean
    ,c5 real
    ,c6 integer
    ,c7 double precision
    ,c8 bigint
    ,c9 varchar(50)
    ,c10 integer
    ,c11 double precision
    ,c12 double precision
    ,c13 uuid
    ,c14 smallint
    ,c15 numeric(9,2)
    ,c16 char(2)
    ,c17 bytea
);

CREATE TABLE job2.t19 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 uuid
    ,c3 double precision
    ,c4 text
    ,c5 boolean
    ,c6 char(5)
    ,c7 bytea
    ,c8 uuid
    ,c9 date
    ,c10 text
    ,c11 integer
    ,c12 real
);

CREATE TABLE job2.t20 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 date
    ,c3 bigint
    ,c4 numeric(6,0)
    ,c5 timestamp
    ,c6 real
    ,c7 bigint
    ,c8 text
    ,c9 double precision
    ,c10 boolean
    ,c11 integer
    ,c12 date
    ,c13 date
    ,c14 smallint
    ,c15 numeric(6,1)
    ,c16 timestamp
    ,c17 char(13)
    ,c18 time
    ,c19 bigint
    ,c20 time
);

CREATE TABLE job2.t21 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 timestamp
    ,c3 bigint
    ,c4 numeric(6,0)
    ,c5 smallint
    ,c6 jsonb
    ,c7 bigint
    ,c8 boolean
    ,c9 bigint
    ,c10 smallint
    ,c11 char(17)
    ,c12 text
    ,c13 text
    ,c14 integer
    ,c15 jsonb
    ,c16 bytea
    ,c17 text
    ,c18 varchar(14)
);

CREATE TABLE job2.t22 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(42)
    ,c2 char(17)
    ,c3 uuid
    ,c4 boolean
    ,c5 time
    ,c6 time
    ,c7 smallint
    ,c8 timestamp
    ,c9 bytea
    ,c10 time
    ,c11 text
);

CREATE TABLE job2.t23 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(31)
    ,c2 uuid
    ,c3 varchar(35)
    ,c4 double precision
    ,c5 time
    ,c6 varchar(16)
    ,c7 timestamp
    ,c8 varchar(40)
    ,c9 timestamp
    ,c10 boolean
    ,c11 bigint
    ,c12 double precision
    ,c13 smallint
    ,c14 timestamp
    ,c15 date
    ,c16 jsonb
    ,c17 double precision
);

CREATE TABLE job2.t24 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 date
    ,c3 uuid
    ,c4 uuid
    ,c5 bigint
    ,c6 double precision
    ,c7 char(8)
    ,c8 bytea
    ,c9 real
    ,c10 date
    ,c11 bigint
    ,c12 real
);

CREATE TABLE job2.t25 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(20)
    ,c2 varchar(33)
    ,c3 numeric(5,3)
    ,c4 real
    ,c5 bigint
    ,c6 double precision
    ,c7 char(9)
    ,c8 double precision
    ,c9 real
    ,c10 double precision
    ,c11 boolean
);

CREATE TABLE job2.t26 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(16)
    ,c2 integer
    ,c3 timestamp
    ,c4 smallint
    ,c5 smallint
    ,c6 double precision
    ,c7 boolean
    ,c8 bytea
    ,c9 varchar(24)
    ,c10 integer
    ,c11 smallint
    ,c12 date
    ,c13 boolean
);

CREATE TABLE job2.t27 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 uuid
    ,c3 timestamp
    ,c4 timestamp
    ,c5 boolean
    ,c6 uuid
    ,c7 date
    ,c8 timestamp
    ,c9 numeric(11,2)
    ,c10 uuid
    ,c11 bytea
    ,c12 integer
);

CREATE TABLE job2.t28 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 bytea
    ,c3 numeric(6,1)
    ,c4 bigint
    ,c5 smallint
    ,c6 numeric(6,2)
    ,c7 numeric(6,1)
    ,c8 integer
    ,c9 varchar(48)
    ,c10 integer
    ,c11 timestamp
    ,c12 date
    ,c13 real
    ,c14 double precision
    ,c15 smallint
    ,c16 real
);

CREATE TABLE job2.t29 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 boolean
    ,c3 real
    ,c4 char(3)
    ,c5 numeric(7,0)
    ,c6 date
    ,c7 bytea
    ,c8 real
    ,c9 varchar(10)
    ,c10 integer
    ,c11 bytea
    ,c12 smallint
    ,c13 bytea
    ,c14 smallint
    ,c15 double precision
    ,c16 text
    ,c17 boolean
);

CREATE TABLE job2.t30 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 timestamp
    ,c3 bytea
    ,c4 bytea
    ,c5 time
    ,c6 bigint
    ,c7 jsonb
    ,c8 text
    ,c9 timestamp
    ,c10 bigint
    ,c11 double precision
    ,c12 boolean
    ,c13 real
    ,c14 uuid
    ,c15 integer
    ,c16 bigint
    ,c17 real
);

CREATE TABLE job2.t31 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 numeric(12,1)
    ,c3 text
    ,c4 numeric(7,3)
    ,c5 boolean
    ,c6 bytea
    ,c7 text
    ,c8 varchar(38)
    ,c9 date
    ,c10 text
);

CREATE TABLE job2.t32 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 bigint
    ,c3 time
    ,c4 timestamp
    ,c5 integer
    ,c6 double precision
    ,c7 numeric(11,1)
    ,c8 real
    ,c9 varchar(24)
    ,c10 real
    ,c11 integer
    ,c12 bigint
    ,c13 boolean
    ,c14 time
    ,c15 text
    ,c16 boolean
    ,c17 jsonb
    ,c18 text
    ,c19 uuid
);

CREATE TABLE job2.t33 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 integer
    ,c3 char(7)
    ,c4 bytea
    ,c5 double precision
    ,c6 double precision
    ,c7 varchar(37)
    ,c8 timestamp
    ,c9 double precision
    ,c10 numeric(10,2)
    ,c11 text
);

CREATE TABLE job2.t34 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 real
    ,c3 numeric(12,2)
    ,c4 bytea
    ,c5 timestamp
    ,c6 numeric(11,0)
    ,c7 uuid
    ,c8 char(18)
    ,c9 bytea
    ,c10 time
    ,c11 bytea
    ,c12 char(12)
);

CREATE TABLE job2.t35 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(16)
    ,c2 text
    ,c3 char(4)
    ,c4 varchar(43)
    ,c5 real
    ,c6 integer
    ,c7 bytea
    ,c8 timestamp
    ,c9 varchar(22)
    ,c10 real
    ,c11 bytea
    ,c12 varchar(40)
    ,c13 uuid
    ,c14 time
    ,c15 bigint
    ,c16 char(11)
    ,c17 bytea
    ,c18 bigint
    ,c19 jsonb
    ,c20 timestamp
);

CREATE TABLE job2.t36 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 smallint
    ,c3 jsonb
    ,c4 char(17)
    ,c5 text
    ,c6 jsonb
    ,c7 date
    ,c8 time
    ,c9 text
    ,c10 text
    ,c11 numeric(7,3)
    ,c12 smallint
    ,c13 time
    ,c14 time
);

CREATE TABLE job2.t37 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(5,3)
    ,c2 varchar(43)
    ,c3 numeric(9,2)
    ,c4 date
    ,c5 date
    ,c6 double precision
    ,c7 date
    ,c8 real
    ,c9 text
    ,c10 varchar(50)
    ,c11 bigint
    ,c12 uuid
    ,c13 varchar(18)
    ,c14 integer
    ,c15 timestamp
    ,c16 bytea
    ,c17 bytea
);

CREATE TABLE job2.t38 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 jsonb
    ,c3 uuid
    ,c4 real
    ,c5 time
    ,c6 integer
    ,c7 uuid
    ,c8 time
    ,c9 integer
    ,c10 bigint
    ,c11 real
    ,c12 integer
    ,c13 boolean
    ,c14 numeric(7,3)
    ,c15 bigint
    ,c16 double precision
);

CREATE TABLE job2.t39 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(12,1)
    ,c2 uuid
    ,c3 text
    ,c4 uuid
    ,c5 double precision
    ,c6 text
    ,c7 real
    ,c8 jsonb
    ,c9 smallint
    ,c10 time
    ,c11 numeric(4,0)
    ,c12 timestamp
    ,c13 uuid
    ,c14 date
    ,c15 bigint
    ,c16 real
    ,c17 varchar(9)
    ,c18 jsonb
);

CREATE TABLE job2.t40 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 uuid
    ,c3 integer
    ,c4 date
    ,c5 bigint
    ,c6 bigint
    ,c7 integer
    ,c8 time
    ,c9 varchar(32)
    ,c10 timestamp
    ,c11 timestamp
    ,c12 bigint
    ,c13 text
    ,c14 timestamp
    ,c15 char(11)
    ,c16 double precision
    ,c17 timestamp
    ,c18 char(12)
);

CREATE TABLE job2.t41 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 bytea
    ,c3 numeric(9,3)
    ,c4 double precision
    ,c5 numeric(4,2)
    ,c6 char(19)
    ,c7 integer
    ,c8 smallint
    ,c9 boolean
    ,c10 text
    ,c11 time
    ,c12 double precision
    ,c13 double precision
    ,c14 numeric(9,2)
);

CREATE TABLE job2.t42 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 boolean
    ,c3 text
    ,c4 timestamp
    ,c5 bigint
    ,c6 varchar(41)
    ,c7 numeric(5,0)
    ,c8 bigint
    ,c9 boolean
    ,c10 char(7)
    ,c11 bigint
    ,c12 bigint
    ,c13 char(8)
    ,c14 bytea
    ,c15 bigint
    ,c16 boolean
    ,c17 boolean
    ,c18 bytea
);

CREATE TABLE job2.t43 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 varchar(5)
    ,c3 boolean
    ,c4 char(10)
    ,c5 smallint
    ,c6 bigint
    ,c7 integer
    ,c8 jsonb
    ,c9 bytea
    ,c10 smallint
    ,c11 time
    ,c12 date
    ,c13 uuid
    ,c14 jsonb
    ,c15 integer
    ,c16 text
    ,c17 text
    ,c18 real
    ,c19 boolean
);

CREATE TABLE job2.t44 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 char(7)
    ,c3 double precision
    ,c4 smallint
    ,c5 real
    ,c6 uuid
    ,c7 uuid
    ,c8 time
    ,c9 time
    ,c10 text
    ,c11 integer
    ,c12 text
    ,c13 bigint
    ,c14 date
    ,c15 bytea
    ,c16 bigint
);

CREATE TABLE job2.t45 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 text
    ,c3 date
    ,c4 timestamp
    ,c5 numeric(8,3)
    ,c6 bytea
    ,c7 smallint
    ,c8 varchar(1)
    ,c9 varchar(27)
    ,c10 uuid
    ,c11 boolean
    ,c12 jsonb
    ,c13 bytea
    ,c14 date
    ,c15 smallint
);

CREATE TABLE job2.t46 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(10,0)
    ,c2 date
    ,c3 time
    ,c4 varchar(42)
    ,c5 integer
    ,c6 varchar(44)
    ,c7 bytea
    ,c8 varchar(14)
    ,c9 jsonb
    ,c10 bigint
    ,c11 uuid
    ,c12 char(7)
);

CREATE TABLE job2.t47 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 date
    ,c3 jsonb
    ,c4 varchar(26)
    ,c5 varchar(1)
    ,c6 varchar(45)
    ,c7 double precision
    ,c8 varchar(11)
    ,c9 smallint
    ,c10 jsonb
    ,c11 date
    ,c12 double precision
    ,c13 boolean
    ,c14 char(9)
    ,c15 double precision
    ,c16 double precision
    ,c17 text
    ,c18 integer
);

CREATE TABLE job2.t48 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 boolean
    ,c3 boolean
    ,c4 date
    ,c5 smallint
    ,c6 double precision
    ,c7 text
    ,c8 integer
    ,c9 bigint
    ,c10 text
    ,c11 jsonb
    ,c12 smallint
    ,c13 varchar(43)
    ,c14 real
    ,c15 bigint
    ,c16 varchar(32)
    ,c17 date
    ,c18 timestamp
    ,c19 varchar(33)
);

CREATE TABLE job2.t49 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 numeric(5,0)
    ,c3 date
    ,c4 numeric(7,2)
    ,c5 timestamp
    ,c6 date
    ,c7 date
    ,c8 uuid
    ,c9 smallint
    ,c10 bytea
    ,c11 smallint
    ,c12 bigint
    ,c13 char(15)
    ,c14 time
);

CREATE TABLE job2.t50 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 uuid
    ,c3 integer
    ,c4 numeric(7,2)
    ,c5 boolean
    ,c6 bigint
    ,c7 char(7)
    ,c8 text
    ,c9 double precision
    ,c10 jsonb
    ,c11 time
    ,c12 jsonb
);

CREATE TABLE job2.t51 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 char(13)
    ,c3 numeric(7,3)
    ,c4 double precision
    ,c5 smallint
    ,c6 char(11)
    ,c7 double precision
    ,c8 date
    ,c9 date
    ,c10 jsonb
    ,c11 text
    ,c12 double precision
    ,c13 bytea
    ,c14 real
    ,c15 uuid
    ,c16 date
    ,c17 uuid
);

CREATE TABLE job2.t52 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 uuid
    ,c3 double precision
    ,c4 boolean
    ,c5 uuid
    ,c6 uuid
    ,c7 integer
    ,c8 uuid
    ,c9 numeric(7,3)
    ,c10 bigint
    ,c11 uuid
    ,c12 double precision
    ,c13 boolean
    ,c14 text
    ,c15 boolean
    ,c16 text
    ,c17 bytea
);

CREATE TABLE job2.t53 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 varchar(22)
    ,c3 smallint
    ,c4 timestamp
    ,c5 double precision
    ,c6 smallint
    ,c7 boolean
    ,c8 char(19)
    ,c9 bigint
    ,c10 timestamp
    ,c11 timestamp
);

CREATE TABLE job2.t54 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 integer
    ,c3 time
    ,c4 integer
    ,c5 text
    ,c6 char(12)
    ,c7 time
    ,c8 varchar(16)
    ,c9 char(4)
    ,c10 char(20)
);

CREATE TABLE job2.t55 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(24)
    ,c2 smallint
    ,c3 timestamp
    ,c4 jsonb
    ,c5 jsonb
    ,c6 smallint
    ,c7 numeric(8,0)
    ,c8 numeric(7,0)
    ,c9 varchar(11)
    ,c10 real
    ,c11 date
    ,c12 char(15)
    ,c13 smallint
    ,c14 smallint
    ,c15 jsonb
    ,c16 date
    ,c17 timestamp
    ,c18 integer
    ,c19 uuid
    ,c20 uuid
);

CREATE TABLE job2.t56 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 boolean
    ,c3 timestamp
    ,c4 uuid
    ,c5 time
    ,c6 smallint
    ,c7 bytea
    ,c8 bytea
    ,c9 integer
    ,c10 numeric(4,3)
    ,c11 timestamp
    ,c12 date
);

CREATE TABLE job2.t57 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 date
    ,c3 text
    ,c4 char(3)
    ,c5 varchar(7)
    ,c6 numeric(7,1)
    ,c7 real
    ,c8 bytea
    ,c9 jsonb
    ,c10 time
    ,c11 text
    ,c12 text
);

CREATE TABLE job2.t58 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 jsonb
    ,c3 bigint
    ,c4 timestamp
    ,c5 date
    ,c6 numeric(11,2)
    ,c7 real
    ,c8 numeric(10,2)
    ,c9 numeric(8,0)
    ,c10 char(18)
    ,c11 uuid
    ,c12 jsonb
    ,c13 real
    ,c14 time
    ,c15 double precision
    ,c16 smallint
    ,c17 jsonb
    ,c18 integer
    ,c19 timestamp
);

CREATE TABLE job2.t59 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 date
    ,c3 boolean
    ,c4 text
    ,c5 smallint
    ,c6 time
    ,c7 jsonb
    ,c8 numeric(10,3)
    ,c9 bytea
    ,c10 timestamp
    ,c11 numeric(9,2)
    ,c12 time
    ,c13 bytea
    ,c14 char(12)
    ,c15 real
    ,c16 char(7)
    ,c17 real
    ,c18 bigint
    ,c19 varchar(8)
);

CREATE TABLE job2.t60 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 uuid
    ,c3 time
    ,c4 text
    ,c5 varchar(12)
    ,c6 integer
    ,c7 jsonb
    ,c8 uuid
    ,c9 timestamp
    ,c10 real
    ,c11 bigint
    ,c12 boolean
    ,c13 double precision
    ,c14 smallint
);

CREATE TABLE job2.t61 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 text
    ,c3 uuid
    ,c4 bigint
    ,c5 text
    ,c6 varchar(42)
    ,c7 real
    ,c8 date
    ,c9 numeric(8,1)
    ,c10 uuid
    ,c11 timestamp
    ,c12 varchar(25)
    ,c13 char(13)
    ,c14 text
    ,c15 time
    ,c16 double precision
);

CREATE TABLE job2.t62 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 smallint
    ,c3 jsonb
    ,c4 text
    ,c5 bytea
    ,c6 smallint
    ,c7 char(11)
    ,c8 timestamp
    ,c9 boolean
    ,c10 char(5)
    ,c11 uuid
    ,c12 varchar(49)
);

CREATE TABLE job2.t63 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 double precision
    ,c3 real
    ,c4 numeric(9,0)
    ,c5 bytea
    ,c6 char(3)
    ,c7 uuid
    ,c8 bytea
    ,c9 real
    ,c10 bigint
    ,c11 boolean
    ,c12 real
    ,c13 timestamp
    ,c14 numeric(9,0)
    ,c15 timestamp
    ,c16 char(10)
    ,c17 time
    ,c18 double precision
    ,c19 char(2)
);

CREATE TABLE job2.t64 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(4,0)
    ,c2 date
    ,c3 smallint
    ,c4 double precision
    ,c5 integer
    ,c6 bigint
    ,c7 real
    ,c8 smallint
    ,c9 boolean
    ,c10 time
    ,c11 varchar(23)
    ,c12 bytea
);

CREATE TABLE job2.t65 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 char(17)
    ,c3 timestamp
    ,c4 bytea
    ,c5 smallint
    ,c6 text
    ,c7 numeric(6,0)
    ,c8 bigint
    ,c9 jsonb
    ,c10 jsonb
    ,c11 bigint
    ,c12 integer
    ,c13 time
    ,c14 boolean
    ,c15 jsonb
);

CREATE TABLE job2.t66 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(9,1)
    ,c2 timestamp
    ,c3 time
    ,c4 uuid
    ,c5 char(6)
    ,c6 boolean
    ,c7 bytea
    ,c8 smallint
    ,c9 real
    ,c10 time
    ,c11 jsonb
    ,c12 jsonb
);

CREATE TABLE job2.t67 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 varchar(39)
    ,c3 jsonb
    ,c4 text
    ,c5 time
    ,c6 uuid
    ,c7 jsonb
    ,c8 integer
    ,c9 date
    ,c10 time
    ,c11 timestamp
    ,c12 date
    ,c13 jsonb
    ,c14 jsonb
    ,c15 real
    ,c16 uuid
    ,c17 integer
);

CREATE TABLE job2.t68 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 time
    ,c3 uuid
    ,c4 jsonb
    ,c5 varchar(49)
    ,c6 jsonb
    ,c7 numeric(5,2)
    ,c8 double precision
    ,c9 varchar(23)
    ,c10 date
    ,c11 bytea
    ,c12 varchar(13)
);

CREATE TABLE job2.t69 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 char(15)
    ,c3 char(11)
    ,c4 timestamp
    ,c5 bigint
    ,c6 date
    ,c7 char(15)
    ,c8 uuid
    ,c9 date
    ,c10 bytea
);

CREATE TABLE job2.t70 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 bigint
    ,c3 uuid
    ,c4 date
    ,c5 char(4)
    ,c6 numeric(5,2)
    ,c7 double precision
    ,c8 char(9)
    ,c9 jsonb
    ,c10 uuid
    ,c11 text
    ,c12 bigint
    ,c13 bigint
    ,c14 double precision
    ,c15 time
    ,c16 real
    ,c17 timestamp
    ,c18 boolean
    ,c19 double precision
);

CREATE TABLE job2.t71 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 boolean
    ,c3 integer
    ,c4 uuid
    ,c5 smallint
    ,c6 numeric(8,3)
    ,c7 time
    ,c8 char(20)
    ,c9 real
    ,c10 numeric(8,0)
    ,c11 numeric(4,2)
    ,c12 real
    ,c13 timestamp
    ,c14 timestamp
    ,c15 timestamp
    ,c16 numeric(6,3)
    ,c17 boolean
    ,c18 uuid
    ,c19 integer
    ,c20 jsonb
);

CREATE TABLE job2.t72 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 bigint
    ,c3 jsonb
    ,c4 smallint
    ,c5 smallint
    ,c6 varchar(45)
    ,c7 numeric(4,3)
    ,c8 smallint
    ,c9 integer
    ,c10 text
    ,c11 real
    ,c12 bytea
    ,c13 date
    ,c14 text
    ,c15 uuid
    ,c16 bigint
);

CREATE TABLE job2.t73 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(48)
    ,c2 bytea
    ,c3 boolean
    ,c4 double precision
    ,c5 bytea
    ,c6 timestamp
    ,c7 jsonb
    ,c8 jsonb
    ,c9 varchar(6)
    ,c10 bigint
    ,c11 time
    ,c12 time
    ,c13 numeric(4,2)
);

CREATE TABLE job2.t74 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(12,2)
    ,c2 uuid
    ,c3 real
    ,c4 integer
    ,c5 varchar(28)
    ,c6 real
    ,c7 integer
    ,c8 date
    ,c9 timestamp
    ,c10 time
    ,c11 bytea
    ,c12 jsonb
    ,c13 date
    ,c14 varchar(26)
    ,c15 boolean
    ,c16 double precision
    ,c17 integer
    ,c18 numeric(9,2)
    ,c19 char(20)
);

CREATE TABLE job2.t75 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 boolean
    ,c3 time
    ,c4 char(11)
    ,c5 text
    ,c6 jsonb
    ,c7 double precision
    ,c8 char(1)
    ,c9 bigint
    ,c10 bigint
    ,c11 text
    ,c12 smallint
    ,c13 integer
    ,c14 text
    ,c15 timestamp
    ,c16 char(19)
    ,c17 varchar(16)
);

CREATE TABLE job2.t76 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 bytea
    ,c3 uuid
    ,c4 varchar(32)
    ,c5 boolean
    ,c6 real
    ,c7 real
    ,c8 text
    ,c9 date
    ,c10 integer
    ,c11 text
    ,c12 timestamp
    ,c13 uuid
    ,c14 smallint
    ,c15 numeric(9,0)
    ,c16 smallint
    ,c17 boolean
    ,c18 timestamp
    ,c19 integer
);

CREATE TABLE job2.t77 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 integer
    ,c3 numeric(10,0)
    ,c4 smallint
    ,c5 timestamp
    ,c6 integer
    ,c7 bigint
    ,c8 numeric(5,2)
    ,c9 time
    ,c10 smallint
    ,c11 real
    ,c12 varchar(26)
    ,c13 time
    ,c14 varchar(22)
    ,c15 bytea
    ,c16 timestamp
    ,c17 real
    ,c18 double precision
    ,c19 bytea
);

CREATE TABLE job2.t78 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 real
    ,c3 char(14)
    ,c4 jsonb
    ,c5 integer
    ,c6 char(17)
    ,c7 timestamp
    ,c8 time
    ,c9 time
    ,c10 smallint
    ,c11 double precision
    ,c12 bytea
    ,c13 integer
    ,c14 bytea
    ,c15 date
    ,c16 double precision
    ,c17 integer
);

CREATE TABLE job2.t79 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 bytea
    ,c3 time
    ,c4 jsonb
    ,c5 text
    ,c6 double precision
    ,c7 varchar(46)
    ,c8 date
    ,c9 bigint
    ,c10 time
    ,c11 smallint
    ,c12 boolean
    ,c13 bytea
    ,c14 uuid
    ,c15 jsonb
    ,c16 jsonb
    ,c17 uuid
    ,c18 varchar(12)
    ,c19 smallint
);

CREATE TABLE job2.t80 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 char(6)
    ,c3 jsonb
    ,c4 timestamp
    ,c5 jsonb
    ,c6 smallint
    ,c7 bigint
    ,c8 numeric(6,1)
    ,c9 char(8)
    ,c10 smallint
    ,c11 double precision
    ,c12 text
    ,c13 double precision
    ,c14 boolean
    ,c15 smallint
    ,c16 text
    ,c17 integer
    ,c18 time
    ,c19 text
    ,c20 char(14)
);

CREATE TABLE job2.t81 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 varchar(21)
    ,c3 char(18)
    ,c4 jsonb
    ,c5 smallint
    ,c6 real
    ,c7 integer
    ,c8 bytea
    ,c9 char(11)
    ,c10 real
    ,c11 char(20)
    ,c12 double precision
    ,c13 integer
    ,c14 date
    ,c15 boolean
    ,c16 date
    ,c17 integer
);

CREATE TABLE job2.t82 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(5)
    ,c2 bigint
    ,c3 numeric(12,2)
    ,c4 integer
    ,c5 bigint
    ,c6 double precision
    ,c7 bigint
    ,c8 date
    ,c9 real
    ,c10 real
    ,c11 double precision
    ,c12 double precision
    ,c13 real
    ,c14 smallint
    ,c15 real
    ,c16 timestamp
);

CREATE TABLE job2.t83 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 varchar(40)
    ,c3 double precision
    ,c4 text
    ,c5 char(12)
    ,c6 integer
    ,c7 integer
    ,c8 varchar(33)
    ,c9 time
    ,c10 jsonb
);

CREATE TABLE job2.t84 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 boolean
    ,c3 time
    ,c4 bigint
    ,c5 varchar(33)
    ,c6 uuid
    ,c7 jsonb
    ,c8 smallint
    ,c9 char(7)
    ,c10 uuid
    ,c11 bytea
    ,c12 time
    ,c13 char(5)
    ,c14 integer
    ,c15 timestamp
    ,c16 smallint
    ,c17 smallint
    ,c18 bigint
);

CREATE TABLE job2.t85 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 text
    ,c3 time
    ,c4 bytea
    ,c5 integer
    ,c6 text
    ,c7 double precision
    ,c8 char(13)
    ,c9 timestamp
    ,c10 timestamp
);

CREATE TABLE job2.t86 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(9,0)
    ,c2 numeric(4,3)
    ,c3 bigint
    ,c4 date
    ,c5 text
    ,c6 real
    ,c7 date
    ,c8 time
    ,c9 bigint
    ,c10 jsonb
    ,c11 real
    ,c12 bigint
    ,c13 time
    ,c14 numeric(6,3)
    ,c15 jsonb
    ,c16 smallint
    ,c17 timestamp
);

CREATE TABLE job2.t87 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 uuid
    ,c3 numeric(4,1)
    ,c4 uuid
    ,c5 real
    ,c6 uuid
    ,c7 boolean
    ,c8 bytea
    ,c9 jsonb
    ,c10 real
    ,c11 varchar(15)
    ,c12 timestamp
    ,c13 real
    ,c14 bytea
    ,c15 char(15)
    ,c16 time
);

CREATE TABLE job2.t88 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 numeric(9,2)
    ,c3 smallint
    ,c4 smallint
    ,c5 timestamp
    ,c6 integer
    ,c7 real
    ,c8 bigint
    ,c9 char(19)
    ,c10 timestamp
    ,c11 text
    ,c12 bytea
    ,c13 text
    ,c14 char(1)
    ,c15 double precision
    ,c16 smallint
    ,c17 numeric(6,2)
    ,c18 numeric(10,3)
    ,c19 time
    ,c20 integer
);

CREATE TABLE job2.t89 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 real
    ,c3 numeric(8,0)
    ,c4 real
    ,c5 real
    ,c6 double precision
    ,c7 jsonb
    ,c8 timestamp
    ,c9 boolean
    ,c10 timestamp
);

CREATE TABLE job2.t90 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 time
    ,c3 jsonb
    ,c4 varchar(27)
    ,c5 jsonb
    ,c6 boolean
    ,c7 boolean
    ,c8 integer
    ,c9 smallint
    ,c10 integer
    ,c11 time
    ,c12 time
    ,c13 jsonb
    ,c14 date
);

CREATE TABLE job2.t91 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 real
    ,c3 numeric(4,2)
    ,c4 smallint
    ,c5 varchar(14)
    ,c6 integer
    ,c7 boolean
    ,c8 integer
    ,c9 integer
    ,c10 timestamp
    ,c11 bigint
    ,c12 numeric(9,3)
    ,c13 jsonb
    ,c14 timestamp
    ,c15 date
    ,c16 date
    ,c17 bigint
    ,c18 numeric(11,1)
    ,c19 char(1)
);

CREATE TABLE job2.t92 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 smallint
    ,c3 timestamp
    ,c4 timestamp
    ,c5 bytea
    ,c6 smallint
    ,c7 numeric(5,2)
    ,c8 timestamp
    ,c9 smallint
    ,c10 boolean
    ,c11 smallint
    ,c12 bigint
    ,c13 text
    ,c14 char(6)
    ,c15 jsonb
    ,c16 text
    ,c17 varchar(34)
    ,c18 double precision
    ,c19 numeric(7,1)
);

CREATE TABLE job2.t93 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 text
    ,c3 bytea
    ,c4 uuid
    ,c5 timestamp
    ,c6 boolean
    ,c7 varchar(28)
    ,c8 jsonb
    ,c9 text
    ,c10 time
    ,c11 uuid
    ,c12 smallint
    ,c13 bytea
    ,c14 bigint
);

CREATE TABLE job2.t94 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 numeric(4,0)
    ,c3 bytea
    ,c4 numeric(8,0)
    ,c5 time
    ,c6 time
    ,c7 text
    ,c8 timestamp
    ,c9 bytea
    ,c10 bytea
    ,c11 time
    ,c12 double precision
);

CREATE TABLE job2.t95 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(26)
    ,c2 integer
    ,c3 bigint
    ,c4 boolean
    ,c5 text
    ,c6 boolean
    ,c7 varchar(33)
    ,c8 bytea
    ,c9 text
    ,c10 integer
    ,c11 real
    ,c12 varchar(44)
);

CREATE TABLE job2.t96 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 real
    ,c3 char(15)
    ,c4 varchar(30)
    ,c5 uuid
    ,c6 boolean
    ,c7 smallint
    ,c8 date
    ,c9 text
    ,c10 smallint
    ,c11 varchar(11)
);

CREATE TABLE job2.t97 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 timestamp
    ,c3 uuid
    ,c4 text
    ,c5 boolean
    ,c6 boolean
    ,c7 uuid
    ,c8 real
    ,c9 integer
    ,c10 uuid
    ,c11 uuid
    ,c12 uuid
    ,c13 text
    ,c14 boolean
    ,c15 double precision
    ,c16 char(9)
);

CREATE TABLE job2.t98 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 boolean
    ,c3 date
    ,c4 numeric(11,0)
    ,c5 bytea
    ,c6 integer
    ,c7 uuid
    ,c8 char(16)
    ,c9 double precision
    ,c10 char(10)
    ,c11 uuid
    ,c12 double precision
    ,c13 double precision
    ,c14 varchar(30)
    ,c15 bytea
);

CREATE TABLE job2.t99 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 text
    ,c3 numeric(10,1)
    ,c4 integer
    ,c5 text
    ,c6 bigint
    ,c7 double precision
    ,c8 uuid
    ,c9 bigint
    ,c10 varchar(40)
    ,c11 date
    ,c12 integer
);

CREATE TABLE job2.t100 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 boolean
    ,c3 varchar(1)
    ,c4 numeric(4,2)
    ,c5 bytea
    ,c6 timestamp
    ,c7 real
    ,c8 jsonb
    ,c9 real
    ,c10 bytea
    ,c11 real
    ,c12 date
    ,c13 uuid
    ,c14 text
    ,c15 time
    ,c16 bigint
);
