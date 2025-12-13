CREATE TABLE job2.t1 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 uuid
    ,c3 real
    ,c4 double precision
    ,c5 bigint
    ,c6 bytea
    ,c7 jsonb
    ,c8 date
    ,c9 real
    ,c10 real
    ,c11 jsonb
    ,c12 uuid
    ,c13 numeric(7,3)
    ,c14 integer
    ,c15 varchar(21)
    ,c16 char(9)
    ,c17 time
    ,c18 smallint
    ,c19 date
);

CREATE TABLE job2.t2 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 time
    ,c3 time
    ,c4 char(17)
    ,c5 char(10)
    ,c6 smallint
    ,c7 double precision
    ,c8 bytea
    ,c9 double precision
    ,c10 uuid
);

CREATE TABLE job2.t3 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 time
    ,c3 boolean
    ,c4 uuid
    ,c5 integer
    ,c6 char(8)
    ,c7 timestamp
    ,c8 jsonb
    ,c9 real
    ,c10 uuid
    ,c11 smallint
    ,c12 timestamp
    ,c13 date
    ,c14 varchar(39)
);

CREATE TABLE job2.t4 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(39)
    ,c2 jsonb
    ,c3 text
    ,c4 integer
    ,c5 double precision
    ,c6 bigint
    ,c7 numeric(10,1)
    ,c8 boolean
    ,c9 real
    ,c10 bigint
    ,c11 date
    ,c12 numeric(6,3)
);

CREATE TABLE job2.t5 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 text
    ,c3 date
    ,c4 integer
    ,c5 double precision
    ,c6 bytea
    ,c7 uuid
    ,c8 date
    ,c9 char(12)
    ,c10 jsonb
    ,c11 char(11)
    ,c12 time
);

CREATE TABLE job2.t6 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 varchar(46)
    ,c3 date
    ,c4 timestamp
    ,c5 char(6)
    ,c6 numeric(4,0)
    ,c7 text
    ,c8 jsonb
    ,c9 timestamp
    ,c10 real
    ,c11 real
);

CREATE TABLE job2.t7 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 numeric(8,1)
    ,c3 varchar(43)
    ,c4 double precision
    ,c5 timestamp
    ,c6 bytea
    ,c7 text
    ,c8 double precision
    ,c9 char(13)
    ,c10 integer
    ,c11 bytea
);

CREATE TABLE job2.t8 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(10,1)
    ,c2 char(14)
    ,c3 char(4)
    ,c4 jsonb
    ,c5 integer
    ,c6 varchar(23)
    ,c7 uuid
    ,c8 integer
    ,c9 jsonb
    ,c10 timestamp
    ,c11 char(8)
    ,c12 char(8)
    ,c13 varchar(46)
);

CREATE TABLE job2.t9 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(14)
    ,c2 time
    ,c3 timestamp
    ,c4 char(18)
    ,c5 uuid
    ,c6 numeric(8,1)
    ,c7 char(3)
    ,c8 varchar(49)
    ,c9 uuid
    ,c10 jsonb
    ,c11 boolean
    ,c12 real
    ,c13 double precision
    ,c14 bigint
    ,c15 time
    ,c16 varchar(14)
    ,c17 smallint
);

CREATE TABLE job2.t10 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 integer
    ,c3 jsonb
    ,c4 real
    ,c5 double precision
    ,c6 uuid
    ,c7 varchar(47)
    ,c8 jsonb
    ,c9 char(17)
    ,c10 jsonb
    ,c11 timestamp
    ,c12 time
    ,c13 integer
    ,c14 boolean
    ,c15 smallint
);

CREATE TABLE job2.t11 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 double precision
    ,c3 text
    ,c4 bytea
    ,c5 varchar(12)
    ,c6 bigint
    ,c7 time
    ,c8 integer
    ,c9 boolean
    ,c10 char(5)
    ,c11 varchar(37)
    ,c12 bigint
    ,c13 bytea
);

CREATE TABLE job2.t12 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 char(8)
    ,c3 bytea
    ,c4 integer
    ,c5 date
    ,c6 time
    ,c7 date
    ,c8 boolean
    ,c9 numeric(4,2)
    ,c10 char(19)
    ,c11 jsonb
    ,c12 uuid
    ,c13 timestamp
    ,c14 real
    ,c15 real
    ,c16 integer
    ,c17 bigint
    ,c18 timestamp
    ,c19 date
    ,c20 date
);

CREATE TABLE job2.t13 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 numeric(11,1)
    ,c3 char(20)
    ,c4 char(6)
    ,c5 numeric(8,3)
    ,c6 text
    ,c7 time
    ,c8 uuid
    ,c9 varchar(43)
    ,c10 date
    ,c11 double precision
    ,c12 time
);

CREATE TABLE job2.t14 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(35)
    ,c2 double precision
    ,c3 bigint
    ,c4 integer
    ,c5 time
    ,c6 date
    ,c7 jsonb
    ,c8 timestamp
    ,c9 bigint
    ,c10 real
    ,c11 uuid
    ,c12 boolean
    ,c13 integer
    ,c14 timestamp
    ,c15 real
    ,c16 varchar(2)
);

CREATE TABLE job2.t15 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(4,0)
    ,c2 timestamp
    ,c3 numeric(5,0)
    ,c4 uuid
    ,c5 bytea
    ,c6 boolean
    ,c7 smallint
    ,c8 bytea
    ,c9 char(2)
    ,c10 numeric(5,0)
    ,c11 numeric(9,2)
    ,c12 numeric(10,3)
    ,c13 integer
    ,c14 uuid
    ,c15 char(3)
    ,c16 time
    ,c17 date
    ,c18 numeric(8,2)
    ,c19 date
);

CREATE TABLE job2.t16 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 bigint
    ,c3 bytea
    ,c4 uuid
    ,c5 jsonb
    ,c6 numeric(8,0)
    ,c7 bigint
    ,c8 uuid
    ,c9 double precision
    ,c10 smallint
    ,c11 time
    ,c12 jsonb
    ,c13 boolean
    ,c14 real
    ,c15 real
    ,c16 varchar(4)
    ,c17 smallint
    ,c18 jsonb
    ,c19 char(13)
);

CREATE TABLE job2.t17 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 numeric(12,2)
    ,c3 uuid
    ,c4 uuid
    ,c5 smallint
    ,c6 smallint
    ,c7 jsonb
    ,c8 timestamp
    ,c9 real
    ,c10 double precision
);

CREATE TABLE job2.t18 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 real
    ,c3 integer
    ,c4 double precision
    ,c5 jsonb
    ,c6 varchar(22)
    ,c7 uuid
    ,c8 double precision
    ,c9 date
    ,c10 uuid
    ,c11 real
    ,c12 jsonb
    ,c13 timestamp
    ,c14 date
    ,c15 real
);

CREATE TABLE job2.t19 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 double precision
    ,c3 uuid
    ,c4 text
    ,c5 char(6)
    ,c6 double precision
    ,c7 numeric(9,0)
    ,c8 date
    ,c9 date
    ,c10 time
);

CREATE TABLE job2.t20 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 varchar(37)
    ,c3 date
    ,c4 timestamp
    ,c5 char(1)
    ,c6 numeric(11,2)
    ,c7 date
    ,c8 time
    ,c9 integer
    ,c10 bytea
    ,c11 boolean
    ,c12 uuid
);

CREATE TABLE job2.t21 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 bigint
    ,c3 bigint
    ,c4 bigint
    ,c5 boolean
    ,c6 bytea
    ,c7 smallint
    ,c8 time
    ,c9 real
    ,c10 bigint
    ,c11 char(6)
    ,c12 bytea
    ,c13 integer
    ,c14 time
    ,c15 boolean
    ,c16 text
    ,c17 jsonb
);

CREATE TABLE job2.t22 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 timestamp
    ,c3 time
    ,c4 smallint
    ,c5 date
    ,c6 integer
    ,c7 char(12)
    ,c8 double precision
    ,c9 bigint
    ,c10 text
    ,c11 bigint
    ,c12 double precision
    ,c13 boolean
    ,c14 bytea
    ,c15 numeric(5,2)
    ,c16 real
    ,c17 jsonb
    ,c18 boolean
);

CREATE TABLE job2.t23 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 timestamp
    ,c3 boolean
    ,c4 numeric(10,1)
    ,c5 char(13)
    ,c6 timestamp
    ,c7 timestamp
    ,c8 time
    ,c9 time
    ,c10 numeric(11,3)
    ,c11 real
    ,c12 uuid
    ,c13 real
    ,c14 double precision
    ,c15 smallint
    ,c16 jsonb
    ,c17 bytea
    ,c18 uuid
    ,c19 bigint
);

CREATE TABLE job2.t24 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 time
    ,c3 time
    ,c4 time
    ,c5 varchar(1)
    ,c6 bytea
    ,c7 char(17)
    ,c8 jsonb
    ,c9 smallint
    ,c10 uuid
    ,c11 jsonb
    ,c12 boolean
    ,c13 time
    ,c14 varchar(34)
    ,c15 uuid
);

CREATE TABLE job2.t25 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(15)
    ,c2 uuid
    ,c3 char(5)
    ,c4 uuid
    ,c5 numeric(8,2)
    ,c6 smallint
    ,c7 integer
    ,c8 timestamp
    ,c9 date
    ,c10 bigint
    ,c11 varchar(11)
    ,c12 bytea
    ,c13 text
    ,c14 varchar(23)
    ,c15 varchar(49)
);

CREATE TABLE job2.t26 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 smallint
    ,c3 date
    ,c4 bigint
    ,c5 date
    ,c6 char(16)
    ,c7 bigint
    ,c8 date
    ,c9 varchar(37)
    ,c10 jsonb
    ,c11 boolean
    ,c12 time
    ,c13 text
    ,c14 numeric(9,0)
    ,c15 integer
);

CREATE TABLE job2.t27 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(4,0)
    ,c2 numeric(11,3)
    ,c3 real
    ,c4 time
    ,c5 double precision
    ,c6 uuid
    ,c7 integer
    ,c8 bigint
    ,c9 varchar(4)
    ,c10 numeric(6,1)
    ,c11 time
    ,c12 bigint
);

CREATE TABLE job2.t28 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 real
    ,c3 boolean
    ,c4 time
    ,c5 jsonb
    ,c6 varchar(4)
    ,c7 timestamp
    ,c8 double precision
    ,c9 real
    ,c10 uuid
    ,c11 bytea
    ,c12 jsonb
    ,c13 bigint
    ,c14 jsonb
    ,c15 timestamp
    ,c16 jsonb
    ,c17 smallint
);

CREATE TABLE job2.t29 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 bytea
    ,c3 date
    ,c4 real
    ,c5 boolean
    ,c6 jsonb
    ,c7 bytea
    ,c8 smallint
    ,c9 bytea
    ,c10 jsonb
    ,c11 time
    ,c12 bytea
);

CREATE TABLE job2.t30 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 bigint
    ,c3 double precision
    ,c4 jsonb
    ,c5 char(7)
    ,c6 real
    ,c7 real
    ,c8 date
    ,c9 uuid
    ,c10 time
    ,c11 uuid
    ,c12 uuid
);

CREATE TABLE job2.t31 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 text
    ,c3 text
    ,c4 boolean
    ,c5 bigint
    ,c6 time
    ,c7 timestamp
    ,c8 char(18)
    ,c9 boolean
    ,c10 numeric(5,0)
    ,c11 integer
);

CREATE TABLE job2.t32 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 date
    ,c3 char(13)
    ,c4 integer
    ,c5 real
    ,c6 boolean
    ,c7 real
    ,c8 integer
    ,c9 text
    ,c10 uuid
    ,c11 numeric(7,2)
    ,c12 numeric(12,0)
    ,c13 real
    ,c14 uuid
    ,c15 text
    ,c16 char(17)
    ,c17 timestamp
    ,c18 boolean
);

CREATE TABLE job2.t33 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 bigint
    ,c3 text
    ,c4 smallint
    ,c5 char(5)
    ,c6 timestamp
    ,c7 char(7)
    ,c8 real
    ,c9 boolean
    ,c10 time
    ,c11 numeric(5,2)
    ,c12 char(18)
    ,c13 date
    ,c14 time
    ,c15 real
    ,c16 numeric(8,2)
    ,c17 time
    ,c18 bigint
    ,c19 real
);

CREATE TABLE job2.t34 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 smallint
    ,c3 timestamp
    ,c4 numeric(9,0)
    ,c5 uuid
    ,c6 smallint
    ,c7 smallint
    ,c8 time
    ,c9 varchar(10)
    ,c10 uuid
    ,c11 date
    ,c12 boolean
    ,c13 uuid
    ,c14 bytea
    ,c15 real
    ,c16 smallint
    ,c17 jsonb
);

CREATE TABLE job2.t35 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 text
    ,c3 bigint
    ,c4 date
    ,c5 timestamp
    ,c6 smallint
    ,c7 smallint
    ,c8 uuid
    ,c9 bigint
    ,c10 boolean
    ,c11 smallint
    ,c12 integer
    ,c13 smallint
);

CREATE TABLE job2.t36 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 numeric(9,0)
    ,c3 timestamp
    ,c4 numeric(8,0)
    ,c5 numeric(8,1)
    ,c6 date
    ,c7 boolean
    ,c8 bigint
    ,c9 bigint
    ,c10 smallint
    ,c11 smallint
    ,c12 date
);

CREATE TABLE job2.t37 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 jsonb
    ,c3 date
    ,c4 integer
    ,c5 uuid
    ,c6 integer
    ,c7 bytea
    ,c8 numeric(4,3)
    ,c9 boolean
    ,c10 timestamp
    ,c11 text
    ,c12 time
    ,c13 smallint
    ,c14 double precision
    ,c15 time
    ,c16 numeric(5,1)
    ,c17 char(4)
    ,c18 numeric(5,0)
);

CREATE TABLE job2.t38 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 bytea
    ,c3 timestamp
    ,c4 numeric(6,3)
    ,c5 integer
    ,c6 bigint
    ,c7 varchar(22)
    ,c8 double precision
    ,c9 timestamp
    ,c10 bigint
    ,c11 bytea
    ,c12 real
    ,c13 jsonb
    ,c14 smallint
    ,c15 integer
    ,c16 jsonb
    ,c17 double precision
    ,c18 uuid
    ,c19 smallint
);

CREATE TABLE job2.t39 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 real
    ,c3 varchar(41)
    ,c4 time
    ,c5 smallint
    ,c6 jsonb
    ,c7 integer
    ,c8 varchar(29)
    ,c9 double precision
    ,c10 bytea
    ,c11 numeric(7,2)
    ,c12 char(19)
    ,c13 smallint
    ,c14 time
);

CREATE TABLE job2.t40 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 time
    ,c3 bytea
    ,c4 integer
    ,c5 date
    ,c6 text
    ,c7 bigint
    ,c8 varchar(27)
    ,c9 date
    ,c10 text
    ,c11 smallint
);

CREATE TABLE job2.t41 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 varchar(47)
    ,c3 smallint
    ,c4 timestamp
    ,c5 bigint
    ,c6 date
    ,c7 date
    ,c8 bigint
    ,c9 real
    ,c10 integer
    ,c11 numeric(6,1)
);

CREATE TABLE job2.t42 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 double precision
    ,c3 char(10)
    ,c4 varchar(15)
    ,c5 varchar(17)
    ,c6 jsonb
    ,c7 jsonb
    ,c8 date
    ,c9 timestamp
    ,c10 bigint
    ,c11 bytea
    ,c12 date
    ,c13 jsonb
);

CREATE TABLE job2.t43 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 bigint
    ,c3 integer
    ,c4 numeric(10,3)
    ,c5 date
    ,c6 jsonb
    ,c7 double precision
    ,c8 smallint
    ,c9 boolean
    ,c10 bytea
    ,c11 smallint
    ,c12 char(8)
    ,c13 timestamp
    ,c14 date
    ,c15 integer
    ,c16 numeric(6,1)
    ,c17 smallint
    ,c18 bigint
    ,c19 numeric(7,2)
    ,c20 timestamp
);

CREATE TABLE job2.t44 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 bigint
    ,c3 real
    ,c4 bigint
    ,c5 char(4)
    ,c6 timestamp
    ,c7 text
    ,c8 numeric(9,0)
    ,c9 integer
    ,c10 time
    ,c11 date
    ,c12 integer
    ,c13 text
    ,c14 char(5)
);

CREATE TABLE job2.t45 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 double precision
    ,c3 bytea
    ,c4 varchar(22)
    ,c5 smallint
    ,c6 bytea
    ,c7 char(2)
    ,c8 bigint
    ,c9 numeric(8,2)
    ,c10 numeric(5,1)
    ,c11 integer
    ,c12 date
    ,c13 varchar(32)
    ,c14 uuid
    ,c15 numeric(4,0)
    ,c16 time
);

CREATE TABLE job2.t46 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 jsonb
    ,c3 boolean
    ,c4 varchar(40)
    ,c5 real
    ,c6 char(3)
    ,c7 double precision
    ,c8 time
    ,c9 text
    ,c10 jsonb
);

CREATE TABLE job2.t47 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 double precision
    ,c3 real
    ,c4 time
    ,c5 real
    ,c6 boolean
    ,c7 date
    ,c8 timestamp
    ,c9 real
    ,c10 date
    ,c11 numeric(4,1)
    ,c12 uuid
    ,c13 integer
    ,c14 boolean
);

CREATE TABLE job2.t48 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 integer
    ,c3 boolean
    ,c4 timestamp
    ,c5 numeric(12,0)
    ,c6 time
    ,c7 text
    ,c8 uuid
    ,c9 varchar(6)
    ,c10 numeric(11,1)
    ,c11 timestamp
    ,c12 real
    ,c13 integer
    ,c14 uuid
    ,c15 integer
    ,c16 numeric(11,1)
    ,c17 time
    ,c18 time
    ,c19 numeric(11,1)
    ,c20 integer
);

CREATE TABLE job2.t49 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 real
    ,c3 char(1)
    ,c4 numeric(5,2)
    ,c5 uuid
    ,c6 timestamp
    ,c7 text
    ,c8 timestamp
    ,c9 smallint
    ,c10 varchar(8)
);

CREATE TABLE job2.t50 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(47)
    ,c2 varchar(22)
    ,c3 boolean
    ,c4 double precision
    ,c5 numeric(9,0)
    ,c6 real
    ,c7 integer
    ,c8 date
    ,c9 jsonb
    ,c10 char(1)
    ,c11 uuid
    ,c12 real
    ,c13 date
);

CREATE TABLE job2.t51 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 date
    ,c3 date
    ,c4 bigint
    ,c5 jsonb
    ,c6 bigint
    ,c7 time
    ,c8 bytea
    ,c9 smallint
    ,c10 uuid
    ,c11 smallint
    ,c12 jsonb
    ,c13 bigint
);

CREATE TABLE job2.t52 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 date
    ,c3 numeric(10,2)
    ,c4 char(11)
    ,c5 time
    ,c6 real
    ,c7 varchar(20)
    ,c8 char(18)
    ,c9 uuid
    ,c10 time
    ,c11 integer
    ,c12 time
    ,c13 time
    ,c14 double precision
    ,c15 char(6)
);

CREATE TABLE job2.t53 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 varchar(13)
    ,c3 numeric(8,3)
    ,c4 uuid
    ,c5 integer
    ,c6 smallint
    ,c7 varchar(25)
    ,c8 double precision
    ,c9 boolean
    ,c10 timestamp
    ,c11 timestamp
    ,c12 boolean
    ,c13 smallint
    ,c14 bigint
    ,c15 date
    ,c16 varchar(8)
    ,c17 date
    ,c18 date
    ,c19 boolean
);

CREATE TABLE job2.t54 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 time
    ,c3 timestamp
    ,c4 uuid
    ,c5 timestamp
    ,c6 double precision
    ,c7 double precision
    ,c8 double precision
    ,c9 double precision
    ,c10 numeric(5,1)
    ,c11 double precision
    ,c12 varchar(18)
);

CREATE TABLE job2.t55 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 double precision
    ,c3 char(9)
    ,c4 smallint
    ,c5 boolean
    ,c6 char(2)
    ,c7 bytea
    ,c8 bigint
    ,c9 uuid
    ,c10 uuid
    ,c11 bytea
    ,c12 double precision
    ,c13 integer
    ,c14 varchar(33)
    ,c15 boolean
    ,c16 integer
);

CREATE TABLE job2.t56 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 timestamp
    ,c3 smallint
    ,c4 char(8)
    ,c5 uuid
    ,c6 smallint
    ,c7 jsonb
    ,c8 varchar(49)
    ,c9 boolean
    ,c10 jsonb
    ,c11 varchar(41)
    ,c12 boolean
    ,c13 integer
    ,c14 boolean
    ,c15 numeric(8,2)
    ,c16 numeric(7,3)
    ,c17 time
);

CREATE TABLE job2.t57 (
    id BIGSERIAL PRIMARY KEY
    ,c1 varchar(8)
    ,c2 double precision
    ,c3 bytea
    ,c4 real
    ,c5 time
    ,c6 bytea
    ,c7 char(18)
    ,c8 numeric(11,0)
    ,c9 jsonb
    ,c10 time
    ,c11 bytea
    ,c12 smallint
    ,c13 bigint
    ,c14 smallint
    ,c15 integer
    ,c16 timestamp
);

CREATE TABLE job2.t58 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(10)
    ,c2 integer
    ,c3 smallint
    ,c4 integer
    ,c5 time
    ,c6 time
    ,c7 real
    ,c8 uuid
    ,c9 numeric(6,0)
    ,c10 real
    ,c11 text
    ,c12 uuid
    ,c13 date
    ,c14 double precision
);

CREATE TABLE job2.t59 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 boolean
    ,c3 integer
    ,c4 varchar(22)
    ,c5 integer
    ,c6 bigint
    ,c7 uuid
    ,c8 numeric(6,1)
    ,c9 double precision
    ,c10 smallint
    ,c11 jsonb
    ,c12 real
    ,c13 numeric(12,3)
    ,c14 timestamp
    ,c15 boolean
    ,c16 bigint
    ,c17 smallint
    ,c18 real
);

CREATE TABLE job2.t60 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 time
    ,c3 bigint
    ,c4 text
    ,c5 date
    ,c6 time
    ,c7 smallint
    ,c8 bytea
    ,c9 date
    ,c10 timestamp
    ,c11 char(11)
    ,c12 varchar(2)
    ,c13 real
    ,c14 uuid
    ,c15 timestamp
    ,c16 smallint
);

CREATE TABLE job2.t61 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 double precision
    ,c3 smallint
    ,c4 bytea
    ,c5 uuid
    ,c6 char(13)
    ,c7 timestamp
    ,c8 varchar(27)
    ,c9 boolean
    ,c10 date
    ,c11 bytea
    ,c12 bytea
    ,c13 real
    ,c14 date
    ,c15 bigint
    ,c16 numeric(11,0)
    ,c17 timestamp
    ,c18 real
    ,c19 boolean
    ,c20 smallint
);

CREATE TABLE job2.t62 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 smallint
    ,c3 real
    ,c4 smallint
    ,c5 integer
    ,c6 smallint
    ,c7 timestamp
    ,c8 real
    ,c9 double precision
    ,c10 jsonb
    ,c11 uuid
);

CREATE TABLE job2.t63 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 jsonb
    ,c3 smallint
    ,c4 varchar(18)
    ,c5 text
    ,c6 bytea
    ,c7 text
    ,c8 numeric(12,0)
    ,c9 text
    ,c10 uuid
    ,c11 boolean
    ,c12 timestamp
    ,c13 text
    ,c14 uuid
    ,c15 smallint
    ,c16 smallint
    ,c17 bytea
    ,c18 date
    ,c19 timestamp
);

CREATE TABLE job2.t64 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 numeric(10,3)
    ,c3 timestamp
    ,c4 integer
    ,c5 text
    ,c6 date
    ,c7 char(7)
    ,c8 char(13)
    ,c9 char(20)
    ,c10 real
    ,c11 timestamp
    ,c12 bigint
    ,c13 double precision
    ,c14 uuid
    ,c15 text
    ,c16 uuid
    ,c17 real
);

CREATE TABLE job2.t65 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(2)
    ,c2 text
    ,c3 varchar(9)
    ,c4 time
    ,c5 date
    ,c6 bytea
    ,c7 bytea
    ,c8 bigint
    ,c9 timestamp
    ,c10 varchar(49)
    ,c11 uuid
    ,c12 time
    ,c13 timestamp
    ,c14 real
    ,c15 smallint
);

CREATE TABLE job2.t66 (
    id BIGSERIAL PRIMARY KEY
    ,c1 smallint
    ,c2 double precision
    ,c3 boolean
    ,c4 smallint
    ,c5 timestamp
    ,c6 real
    ,c7 integer
    ,c8 numeric(7,1)
    ,c9 smallint
    ,c10 double precision
    ,c11 bigint
    ,c12 time
);

CREATE TABLE job2.t67 (
    id BIGSERIAL PRIMARY KEY
    ,c1 boolean
    ,c2 boolean
    ,c3 char(19)
    ,c4 jsonb
    ,c5 integer
    ,c6 smallint
    ,c7 timestamp
    ,c8 smallint
    ,c9 date
    ,c10 jsonb
    ,c11 timestamp
    ,c12 timestamp
    ,c13 char(8)
    ,c14 smallint
    ,c15 bigint
    ,c16 varchar(46)
    ,c17 text
);

CREATE TABLE job2.t68 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 numeric(11,1)
    ,c3 boolean
    ,c4 double precision
    ,c5 boolean
    ,c6 text
    ,c7 time
    ,c8 numeric(12,1)
    ,c9 text
    ,c10 jsonb
    ,c11 text
    ,c12 uuid
    ,c13 integer
    ,c14 timestamp
    ,c15 smallint
    ,c16 varchar(28)
    ,c17 bytea
);

CREATE TABLE job2.t69 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 double precision
    ,c3 smallint
    ,c4 integer
    ,c5 jsonb
    ,c6 uuid
    ,c7 integer
    ,c8 boolean
    ,c9 date
    ,c10 smallint
    ,c11 char(10)
    ,c12 integer
    ,c13 char(4)
    ,c14 numeric(9,1)
    ,c15 timestamp
    ,c16 real
    ,c17 text
);

CREATE TABLE job2.t70 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 bytea
    ,c3 integer
    ,c4 uuid
    ,c5 date
    ,c6 bigint
    ,c7 jsonb
    ,c8 smallint
    ,c9 integer
    ,c10 jsonb
    ,c11 numeric(8,1)
    ,c12 time
    ,c13 boolean
    ,c14 date
    ,c15 timestamp
    ,c16 boolean
    ,c17 double precision
    ,c18 timestamp
);

CREATE TABLE job2.t71 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(10)
    ,c2 integer
    ,c3 timestamp
    ,c4 bytea
    ,c5 timestamp
    ,c6 time
    ,c7 real
    ,c8 smallint
    ,c9 real
    ,c10 bigint
);

CREATE TABLE job2.t72 (
    id BIGSERIAL PRIMARY KEY
    ,c1 double precision
    ,c2 double precision
    ,c3 smallint
    ,c4 timestamp
    ,c5 numeric(12,0)
    ,c6 smallint
    ,c7 timestamp
    ,c8 bytea
    ,c9 real
    ,c10 numeric(4,2)
);

CREATE TABLE job2.t73 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(9)
    ,c2 numeric(8,2)
    ,c3 jsonb
    ,c4 varchar(32)
    ,c5 text
    ,c6 double precision
    ,c7 text
    ,c8 char(6)
    ,c9 real
    ,c10 bigint
    ,c11 integer
    ,c12 numeric(10,1)
    ,c13 numeric(8,1)
    ,c14 timestamp
    ,c15 double precision
);

CREATE TABLE job2.t74 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 text
    ,c3 timestamp
    ,c4 date
    ,c5 double precision
    ,c6 char(1)
    ,c7 timestamp
    ,c8 smallint
    ,c9 smallint
    ,c10 timestamp
    ,c11 bigint
);

CREATE TABLE job2.t75 (
    id BIGSERIAL PRIMARY KEY
    ,c1 char(6)
    ,c2 bigint
    ,c3 text
    ,c4 smallint
    ,c5 real
    ,c6 time
    ,c7 text
    ,c8 char(16)
    ,c9 bigint
    ,c10 smallint
    ,c11 smallint
    ,c12 date
    ,c13 char(10)
    ,c14 double precision
    ,c15 time
    ,c16 text
    ,c17 char(8)
    ,c18 time
);

CREATE TABLE job2.t76 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 numeric(4,0)
    ,c3 bytea
    ,c4 date
    ,c5 integer
    ,c6 timestamp
    ,c7 time
    ,c8 boolean
    ,c9 double precision
    ,c10 uuid
    ,c11 timestamp
);

CREATE TABLE job2.t77 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 numeric(5,1)
    ,c3 timestamp
    ,c4 date
    ,c5 jsonb
    ,c6 integer
    ,c7 integer
    ,c8 numeric(7,3)
    ,c9 time
    ,c10 numeric(4,3)
);

CREATE TABLE job2.t78 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 numeric(4,1)
    ,c3 double precision
    ,c4 integer
    ,c5 bytea
    ,c6 integer
    ,c7 text
    ,c8 jsonb
    ,c9 time
    ,c10 text
    ,c11 numeric(9,2)
    ,c12 uuid
    ,c13 smallint
    ,c14 integer
);

CREATE TABLE job2.t79 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 uuid
    ,c3 bytea
    ,c4 time
    ,c5 char(16)
    ,c6 boolean
    ,c7 char(1)
    ,c8 double precision
    ,c9 double precision
    ,c10 text
    ,c11 date
    ,c12 bytea
    ,c13 timestamp
    ,c14 real
);

CREATE TABLE job2.t80 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 integer
    ,c3 bytea
    ,c4 real
    ,c5 text
    ,c6 varchar(47)
    ,c7 char(6)
    ,c8 jsonb
    ,c9 date
    ,c10 jsonb
    ,c11 bigint
    ,c12 char(17)
    ,c13 text
    ,c14 numeric(6,3)
    ,c15 double precision
    ,c16 bigint
);

CREATE TABLE job2.t81 (
    id BIGSERIAL PRIMARY KEY
    ,c1 numeric(5,1)
    ,c2 timestamp
    ,c3 boolean
    ,c4 bytea
    ,c5 smallint
    ,c6 boolean
    ,c7 numeric(7,1)
    ,c8 integer
    ,c9 numeric(6,0)
    ,c10 jsonb
    ,c11 real
    ,c12 bigint
    ,c13 bytea
);

CREATE TABLE job2.t82 (
    id BIGSERIAL PRIMARY KEY
    ,c1 text
    ,c2 bytea
    ,c3 date
    ,c4 uuid
    ,c5 date
    ,c6 varchar(14)
    ,c7 integer
    ,c8 char(7)
    ,c9 date
    ,c10 bigint
    ,c11 date
    ,c12 bytea
    ,c13 numeric(4,2)
    ,c14 text
);

CREATE TABLE job2.t83 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 boolean
    ,c3 text
    ,c4 time
    ,c5 boolean
    ,c6 boolean
    ,c7 varchar(21)
    ,c8 text
    ,c9 uuid
    ,c10 date
    ,c11 date
    ,c12 char(4)
    ,c13 text
    ,c14 uuid
    ,c15 varchar(24)
);

CREATE TABLE job2.t84 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bytea
    ,c2 date
    ,c3 bigint
    ,c4 timestamp
    ,c5 bytea
    ,c6 char(10)
    ,c7 integer
    ,c8 text
    ,c9 numeric(6,1)
    ,c10 jsonb
    ,c11 timestamp
    ,c12 jsonb
    ,c13 smallint
    ,c14 time
    ,c15 varchar(11)
    ,c16 numeric(6,1)
    ,c17 char(4)
);

CREATE TABLE job2.t85 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 boolean
    ,c3 double precision
    ,c4 smallint
    ,c5 bytea
    ,c6 bigint
    ,c7 date
    ,c8 uuid
    ,c9 time
    ,c10 boolean
    ,c11 time
    ,c12 real
    ,c13 real
);

CREATE TABLE job2.t86 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 varchar(11)
    ,c3 text
    ,c4 date
    ,c5 bytea
    ,c6 text
    ,c7 time
    ,c8 bytea
    ,c9 uuid
    ,c10 text
    ,c11 bigint
    ,c12 integer
    ,c13 jsonb
    ,c14 date
    ,c15 integer
    ,c16 real
    ,c17 jsonb
);

CREATE TABLE job2.t87 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 date
    ,c3 double precision
    ,c4 bigint
    ,c5 numeric(12,0)
    ,c6 integer
    ,c7 jsonb
    ,c8 real
    ,c9 jsonb
    ,c10 timestamp
    ,c11 numeric(10,3)
    ,c12 bigint
    ,c13 timestamp
    ,c14 bytea
    ,c15 text
    ,c16 uuid
    ,c17 double precision
);

CREATE TABLE job2.t88 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 text
    ,c3 time
    ,c4 char(4)
    ,c5 time
    ,c6 uuid
    ,c7 varchar(48)
    ,c8 integer
    ,c9 integer
    ,c10 jsonb
    ,c11 bigint
);

CREATE TABLE job2.t89 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 bigint
    ,c3 bytea
    ,c4 time
    ,c5 date
    ,c6 jsonb
    ,c7 real
    ,c8 boolean
    ,c9 numeric(10,1)
    ,c10 bytea
    ,c11 numeric(12,2)
    ,c12 jsonb
    ,c13 varchar(13)
);

CREATE TABLE job2.t90 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 smallint
    ,c3 double precision
    ,c4 integer
    ,c5 real
    ,c6 double precision
    ,c7 timestamp
    ,c8 char(4)
    ,c9 double precision
    ,c10 smallint
    ,c11 uuid
    ,c12 timestamp
    ,c13 numeric(7,1)
    ,c14 time
);

CREATE TABLE job2.t91 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 date
    ,c3 varchar(49)
    ,c4 text
    ,c5 varchar(45)
    ,c6 timestamp
    ,c7 bigint
    ,c8 smallint
    ,c9 time
    ,c10 timestamp
    ,c11 double precision
    ,c12 numeric(8,0)
    ,c13 smallint
    ,c14 real
    ,c15 date
    ,c16 double precision
    ,c17 time
);

CREATE TABLE job2.t92 (
    id BIGSERIAL PRIMARY KEY
    ,c1 time
    ,c2 bytea
    ,c3 real
    ,c4 char(2)
    ,c5 time
    ,c6 timestamp
    ,c7 smallint
    ,c8 char(14)
    ,c9 integer
    ,c10 text
    ,c11 timestamp
    ,c12 jsonb
    ,c13 char(17)
    ,c14 numeric(8,1)
    ,c15 boolean
    ,c16 char(9)
    ,c17 varchar(36)
    ,c18 bytea
    ,c19 real
    ,c20 char(12)
);

CREATE TABLE job2.t93 (
    id BIGSERIAL PRIMARY KEY
    ,c1 timestamp
    ,c2 jsonb
    ,c3 char(1)
    ,c4 char(9)
    ,c5 real
    ,c6 bytea
    ,c7 text
    ,c8 integer
    ,c9 boolean
    ,c10 boolean
    ,c11 text
    ,c12 varchar(42)
    ,c13 timestamp
    ,c14 bytea
);

CREATE TABLE job2.t94 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 boolean
    ,c3 char(4)
    ,c4 numeric(10,2)
    ,c5 integer
    ,c6 double precision
    ,c7 bigint
    ,c8 text
    ,c9 char(11)
    ,c10 jsonb
);

CREATE TABLE job2.t95 (
    id BIGSERIAL PRIMARY KEY
    ,c1 date
    ,c2 uuid
    ,c3 timestamp
    ,c4 date
    ,c5 uuid
    ,c6 date
    ,c7 smallint
    ,c8 char(13)
    ,c9 uuid
    ,c10 bytea
    ,c11 uuid
    ,c12 bigint
    ,c13 double precision
    ,c14 real
    ,c15 bytea
    ,c16 boolean
    ,c17 double precision
    ,c18 numeric(5,0)
    ,c19 text
);

CREATE TABLE job2.t96 (
    id BIGSERIAL PRIMARY KEY
    ,c1 integer
    ,c2 date
    ,c3 bytea
    ,c4 varchar(21)
    ,c5 double precision
    ,c6 text
    ,c7 numeric(11,3)
    ,c8 boolean
    ,c9 jsonb
    ,c10 char(11)
);

CREATE TABLE job2.t97 (
    id BIGSERIAL PRIMARY KEY
    ,c1 real
    ,c2 smallint
    ,c3 boolean
    ,c4 uuid
    ,c5 text
    ,c6 uuid
    ,c7 varchar(12)
    ,c8 uuid
    ,c9 uuid
    ,c10 varchar(19)
);

CREATE TABLE job2.t98 (
    id BIGSERIAL PRIMARY KEY
    ,c1 jsonb
    ,c2 char(9)
    ,c3 varchar(37)
    ,c4 uuid
    ,c5 double precision
    ,c6 uuid
    ,c7 integer
    ,c8 varchar(26)
    ,c9 integer
    ,c10 boolean
    ,c11 jsonb
    ,c12 date
    ,c13 integer
    ,c14 jsonb
    ,c15 text
    ,c16 date
    ,c17 char(2)
    ,c18 timestamp
);

CREATE TABLE job2.t99 (
    id BIGSERIAL PRIMARY KEY
    ,c1 uuid
    ,c2 smallint
    ,c3 date
    ,c4 numeric(10,2)
    ,c5 date
    ,c6 double precision
    ,c7 smallint
    ,c8 timestamp
    ,c9 double precision
    ,c10 varchar(30)
);

CREATE TABLE job2.t100 (
    id BIGSERIAL PRIMARY KEY
    ,c1 bigint
    ,c2 time
    ,c3 date
    ,c4 boolean
    ,c5 date
    ,c6 double precision
    ,c7 date
    ,c8 text
    ,c9 bigint
    ,c10 integer
    ,c11 time
    ,c12 real
    ,c13 jsonb
    ,c14 timestamp
    ,c15 boolean
    ,c16 double precision
    ,c17 timestamp
    ,c18 smallint
);
