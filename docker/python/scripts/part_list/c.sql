CREATE TABLE part_list.t1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 timestamp
    ,c4 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t1_p0 PARTITION OF part_list.t1 FOR VALUES IN (8, 1);
CREATE TABLE part_list.t1_p1 PARTITION OF part_list.t1 FOR VALUES IN (9, 2);
CREATE TABLE part_list.t1_p2 PARTITION OF part_list.t1 FOR VALUES IN (0);
CREATE TABLE part_list.t1_p3 PARTITION OF part_list.t1 FOR VALUES IN (3);
CREATE TABLE part_list.t1_p4 PARTITION OF part_list.t1 FOR VALUES IN (7);
CREATE TABLE part_list.t1_p5 PARTITION OF part_list.t1 FOR VALUES IN (4);
CREATE TABLE part_list.t1_p6 PARTITION OF part_list.t1 FOR VALUES IN (6);
CREATE TABLE part_list.t1_p7 PARTITION OF part_list.t1 FOR VALUES IN (5);

CREATE TABLE part_list.t2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 smallint
    ,c4 date
    ,c5 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t2_p0 PARTITION OF part_list.t2 FOR VALUES IN (7, 9, 8, 5);
CREATE TABLE part_list.t2_p1 PARTITION OF part_list.t2 FOR VALUES IN (4, 1, 6);
CREATE TABLE part_list.t2_p2 PARTITION OF part_list.t2 FOR VALUES IN (3, 2, 0);

CREATE TABLE part_list.t3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 boolean
    ,c4 uuid
    ,c5 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t3_p0 PARTITION OF part_list.t3 FOR VALUES IN (3, 0, 9, 1);
CREATE TABLE part_list.t3_p1 PARTITION OF part_list.t3 FOR VALUES IN (2, 6, 8);
CREATE TABLE part_list.t3_p2 PARTITION OF part_list.t3 FOR VALUES IN (7, 5, 4);

CREATE TABLE part_list.t4 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 jsonb
    ,c4 double precision
    ,c5 date
    ,c6 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t4_p0 PARTITION OF part_list.t4 FOR VALUES IN (7, 2);
CREATE TABLE part_list.t4_p1 PARTITION OF part_list.t4 FOR VALUES IN (0, 4);
CREATE TABLE part_list.t4_p2 PARTITION OF part_list.t4 FOR VALUES IN (5);
CREATE TABLE part_list.t4_p3 PARTITION OF part_list.t4 FOR VALUES IN (1);
CREATE TABLE part_list.t4_p4 PARTITION OF part_list.t4 FOR VALUES IN (8);
CREATE TABLE part_list.t4_p5 PARTITION OF part_list.t4 FOR VALUES IN (3);
CREATE TABLE part_list.t4_p6 PARTITION OF part_list.t4 FOR VALUES IN (6);
CREATE TABLE part_list.t4_p7 PARTITION OF part_list.t4 FOR VALUES IN (9);

CREATE TABLE part_list.t5 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t5_p0 PARTITION OF part_list.t5 FOR VALUES IN (5, 8);
CREATE TABLE part_list.t5_p1 PARTITION OF part_list.t5 FOR VALUES IN (2, 0);
CREATE TABLE part_list.t5_p2 PARTITION OF part_list.t5 FOR VALUES IN (6);
CREATE TABLE part_list.t5_p3 PARTITION OF part_list.t5 FOR VALUES IN (9);
CREATE TABLE part_list.t5_p4 PARTITION OF part_list.t5 FOR VALUES IN (4);
CREATE TABLE part_list.t5_p5 PARTITION OF part_list.t5 FOR VALUES IN (3);
CREATE TABLE part_list.t5_p6 PARTITION OF part_list.t5 FOR VALUES IN (1);
CREATE TABLE part_list.t5_p7 PARTITION OF part_list.t5 FOR VALUES IN (7);

CREATE TABLE part_list.t6 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(11)
    ,c3 jsonb
    ,c4 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t6_p0 PARTITION OF part_list.t6 FOR VALUES IN (4, 0);
CREATE TABLE part_list.t6_p1 PARTITION OF part_list.t6 FOR VALUES IN (1, 2);
CREATE TABLE part_list.t6_p2 PARTITION OF part_list.t6 FOR VALUES IN (3);
CREATE TABLE part_list.t6_p3 PARTITION OF part_list.t6 FOR VALUES IN (8);
CREATE TABLE part_list.t6_p4 PARTITION OF part_list.t6 FOR VALUES IN (9);
CREATE TABLE part_list.t6_p5 PARTITION OF part_list.t6 FOR VALUES IN (6);
CREATE TABLE part_list.t6_p6 PARTITION OF part_list.t6 FOR VALUES IN (7);
CREATE TABLE part_list.t6_p7 PARTITION OF part_list.t6 FOR VALUES IN (5);

CREATE TABLE part_list.t7 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 numeric(7,1)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t7_p0 PARTITION OF part_list.t7 FOR VALUES IN (8, 1, 9);
CREATE TABLE part_list.t7_p1 PARTITION OF part_list.t7 FOR VALUES IN (3, 5, 7);
CREATE TABLE part_list.t7_p2 PARTITION OF part_list.t7 FOR VALUES IN (0, 6);
CREATE TABLE part_list.t7_p3 PARTITION OF part_list.t7 FOR VALUES IN (2, 4);

CREATE TABLE part_list.t8 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 timestamp
    ,c3 text
    ,c4 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t8_p0 PARTITION OF part_list.t8 FOR VALUES IN (1, 6);
CREATE TABLE part_list.t8_p1 PARTITION OF part_list.t8 FOR VALUES IN (9, 3);
CREATE TABLE part_list.t8_p2 PARTITION OF part_list.t8 FOR VALUES IN (2, 7);
CREATE TABLE part_list.t8_p3 PARTITION OF part_list.t8 FOR VALUES IN (5, 8);
CREATE TABLE part_list.t8_p4 PARTITION OF part_list.t8 FOR VALUES IN (4);
CREATE TABLE part_list.t8_p5 PARTITION OF part_list.t8 FOR VALUES IN (0);

CREATE TABLE part_list.t9 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 real
    ,c4 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t9_p0 PARTITION OF part_list.t9 FOR VALUES IN (8, 7);
CREATE TABLE part_list.t9_p1 PARTITION OF part_list.t9 FOR VALUES IN (2, 1);
CREATE TABLE part_list.t9_p2 PARTITION OF part_list.t9 FOR VALUES IN (6);
CREATE TABLE part_list.t9_p3 PARTITION OF part_list.t9 FOR VALUES IN (3);
CREATE TABLE part_list.t9_p4 PARTITION OF part_list.t9 FOR VALUES IN (5);
CREATE TABLE part_list.t9_p5 PARTITION OF part_list.t9 FOR VALUES IN (4);
CREATE TABLE part_list.t9_p6 PARTITION OF part_list.t9 FOR VALUES IN (0);
CREATE TABLE part_list.t9_p7 PARTITION OF part_list.t9 FOR VALUES IN (9);

CREATE TABLE part_list.t10 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 uuid
    ,c4 time
    ,c5 varchar(12)
    ,c6 varchar(27)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t10_p0 PARTITION OF part_list.t10 FOR VALUES IN (1, 9, 8);
CREATE TABLE part_list.t10_p1 PARTITION OF part_list.t10 FOR VALUES IN (3, 5, 0);
CREATE TABLE part_list.t10_p2 PARTITION OF part_list.t10 FOR VALUES IN (6, 7);
CREATE TABLE part_list.t10_p3 PARTITION OF part_list.t10 FOR VALUES IN (4, 2);

CREATE TABLE part_list.t11 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 jsonb
    ,c4 bytea
    ,c5 char(13)
    ,c6 char(3)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t11_p0 PARTITION OF part_list.t11 FOR VALUES IN (7, 1, 2);
CREATE TABLE part_list.t11_p1 PARTITION OF part_list.t11 FOR VALUES IN (5, 6, 0);
CREATE TABLE part_list.t11_p2 PARTITION OF part_list.t11 FOR VALUES IN (8, 9);
CREATE TABLE part_list.t11_p3 PARTITION OF part_list.t11 FOR VALUES IN (3, 4);

CREATE TABLE part_list.t12 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 timestamp
    ,c3 bigint
    ,c4 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t12_p0 PARTITION OF part_list.t12 FOR VALUES IN (5, 6);
CREATE TABLE part_list.t12_p1 PARTITION OF part_list.t12 FOR VALUES IN (3, 9);
CREATE TABLE part_list.t12_p2 PARTITION OF part_list.t12 FOR VALUES IN (7, 8);
CREATE TABLE part_list.t12_p3 PARTITION OF part_list.t12 FOR VALUES IN (2, 1);
CREATE TABLE part_list.t12_p4 PARTITION OF part_list.t12 FOR VALUES IN (4);
CREATE TABLE part_list.t12_p5 PARTITION OF part_list.t12 FOR VALUES IN (0);

CREATE TABLE part_list.t13 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 jsonb
    ,c4 timestamp
    ,c5 numeric(7,1)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t13_p0 PARTITION OF part_list.t13 FOR VALUES IN (8, 9, 2, 6);
CREATE TABLE part_list.t13_p1 PARTITION OF part_list.t13 FOR VALUES IN (4, 3, 5);
CREATE TABLE part_list.t13_p2 PARTITION OF part_list.t13 FOR VALUES IN (7, 0, 1);

CREATE TABLE part_list.t14 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(31)
    ,c3 smallint
    ,c4 bytea
    ,c5 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t14_p0 PARTITION OF part_list.t14 FOR VALUES IN (2, 8);
CREATE TABLE part_list.t14_p1 PARTITION OF part_list.t14 FOR VALUES IN (0, 3);
CREATE TABLE part_list.t14_p2 PARTITION OF part_list.t14 FOR VALUES IN (6, 9);
CREATE TABLE part_list.t14_p3 PARTITION OF part_list.t14 FOR VALUES IN (5, 4);
CREATE TABLE part_list.t14_p4 PARTITION OF part_list.t14 FOR VALUES IN (1, 7);

CREATE TABLE part_list.t15 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 smallint
    ,c4 varchar(28)
    ,c5 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t15_p0 PARTITION OF part_list.t15 FOR VALUES IN (7, 8, 2, 1);
CREATE TABLE part_list.t15_p1 PARTITION OF part_list.t15 FOR VALUES IN (9, 6, 3);
CREATE TABLE part_list.t15_p2 PARTITION OF part_list.t15 FOR VALUES IN (4, 5, 0);

CREATE TABLE part_list.t16 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 boolean
    ,c4 bigint
    ,c5 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t16_p0 PARTITION OF part_list.t16 FOR VALUES IN (9, 8);
CREATE TABLE part_list.t16_p1 PARTITION OF part_list.t16 FOR VALUES IN (1, 6);
CREATE TABLE part_list.t16_p2 PARTITION OF part_list.t16 FOR VALUES IN (7);
CREATE TABLE part_list.t16_p3 PARTITION OF part_list.t16 FOR VALUES IN (4);
CREATE TABLE part_list.t16_p4 PARTITION OF part_list.t16 FOR VALUES IN (2);
CREATE TABLE part_list.t16_p5 PARTITION OF part_list.t16 FOR VALUES IN (5);
CREATE TABLE part_list.t16_p6 PARTITION OF part_list.t16 FOR VALUES IN (0);
CREATE TABLE part_list.t16_p7 PARTITION OF part_list.t16 FOR VALUES IN (3);

CREATE TABLE part_list.t17 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t17_p0 PARTITION OF part_list.t17 FOR VALUES IN (3, 2, 4, 9);
CREATE TABLE part_list.t17_p1 PARTITION OF part_list.t17 FOR VALUES IN (7, 5, 0);
CREATE TABLE part_list.t17_p2 PARTITION OF part_list.t17 FOR VALUES IN (1, 8, 6);

CREATE TABLE part_list.t18 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(6)
    ,c3 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t18_p0 PARTITION OF part_list.t18 FOR VALUES IN (3, 9);
CREATE TABLE part_list.t18_p1 PARTITION OF part_list.t18 FOR VALUES IN (2, 0);
CREATE TABLE part_list.t18_p2 PARTITION OF part_list.t18 FOR VALUES IN (8, 4);
CREATE TABLE part_list.t18_p3 PARTITION OF part_list.t18 FOR VALUES IN (7, 1);
CREATE TABLE part_list.t18_p4 PARTITION OF part_list.t18 FOR VALUES IN (6);
CREATE TABLE part_list.t18_p5 PARTITION OF part_list.t18 FOR VALUES IN (5);

CREATE TABLE part_list.t19 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 text
    ,c4 timestamp
    ,c5 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t19_p0 PARTITION OF part_list.t19 FOR VALUES IN (2, 0, 3);
CREATE TABLE part_list.t19_p1 PARTITION OF part_list.t19 FOR VALUES IN (1, 7, 9);
CREATE TABLE part_list.t19_p2 PARTITION OF part_list.t19 FOR VALUES IN (6, 8);
CREATE TABLE part_list.t19_p3 PARTITION OF part_list.t19 FOR VALUES IN (5, 4);

CREATE TABLE part_list.t20 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 timestamp
    ,c3 text
    ,c4 uuid
    ,c5 bytea
    ,c6 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t20_p0 PARTITION OF part_list.t20 FOR VALUES IN (2, 9);
CREATE TABLE part_list.t20_p1 PARTITION OF part_list.t20 FOR VALUES IN (1, 4);
CREATE TABLE part_list.t20_p2 PARTITION OF part_list.t20 FOR VALUES IN (6, 0);
CREATE TABLE part_list.t20_p3 PARTITION OF part_list.t20 FOR VALUES IN (3, 5);
CREATE TABLE part_list.t20_p4 PARTITION OF part_list.t20 FOR VALUES IN (8, 7);

CREATE TABLE part_list.t21 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 char(10)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t21_p0 PARTITION OF part_list.t21 FOR VALUES IN (1, 2);
CREATE TABLE part_list.t21_p1 PARTITION OF part_list.t21 FOR VALUES IN (0, 7);
CREATE TABLE part_list.t21_p2 PARTITION OF part_list.t21 FOR VALUES IN (9, 8);
CREATE TABLE part_list.t21_p3 PARTITION OF part_list.t21 FOR VALUES IN (4);
CREATE TABLE part_list.t21_p4 PARTITION OF part_list.t21 FOR VALUES IN (5);
CREATE TABLE part_list.t21_p5 PARTITION OF part_list.t21 FOR VALUES IN (3);
CREATE TABLE part_list.t21_p6 PARTITION OF part_list.t21 FOR VALUES IN (6);

CREATE TABLE part_list.t22 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(11,0)
    ,c3 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t22_p0 PARTITION OF part_list.t22 FOR VALUES IN (8, 9, 4, 5);
CREATE TABLE part_list.t22_p1 PARTITION OF part_list.t22 FOR VALUES IN (1, 0, 6);
CREATE TABLE part_list.t22_p2 PARTITION OF part_list.t22 FOR VALUES IN (3, 7, 2);

CREATE TABLE part_list.t23 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 time
    ,c3 jsonb
    ,c4 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t23_p0 PARTITION OF part_list.t23 FOR VALUES IN (1, 6, 4);
CREATE TABLE part_list.t23_p1 PARTITION OF part_list.t23 FOR VALUES IN (3, 5, 2);
CREATE TABLE part_list.t23_p2 PARTITION OF part_list.t23 FOR VALUES IN (7, 0);
CREATE TABLE part_list.t23_p3 PARTITION OF part_list.t23 FOR VALUES IN (8, 9);

CREATE TABLE part_list.t24 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 varchar(42)
    ,c4 uuid
    ,c5 integer
    ,c6 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t24_p0 PARTITION OF part_list.t24 FOR VALUES IN (5, 1);
CREATE TABLE part_list.t24_p1 PARTITION OF part_list.t24 FOR VALUES IN (8, 7);
CREATE TABLE part_list.t24_p2 PARTITION OF part_list.t24 FOR VALUES IN (4, 6);
CREATE TABLE part_list.t24_p3 PARTITION OF part_list.t24 FOR VALUES IN (9);
CREATE TABLE part_list.t24_p4 PARTITION OF part_list.t24 FOR VALUES IN (3);
CREATE TABLE part_list.t24_p5 PARTITION OF part_list.t24 FOR VALUES IN (0);
CREATE TABLE part_list.t24_p6 PARTITION OF part_list.t24 FOR VALUES IN (2);

CREATE TABLE part_list.t25 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 varchar(42)
    ,c4 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t25_p0 PARTITION OF part_list.t25 FOR VALUES IN (3, 5);
CREATE TABLE part_list.t25_p1 PARTITION OF part_list.t25 FOR VALUES IN (6, 4);
CREATE TABLE part_list.t25_p2 PARTITION OF part_list.t25 FOR VALUES IN (9);
CREATE TABLE part_list.t25_p3 PARTITION OF part_list.t25 FOR VALUES IN (0);
CREATE TABLE part_list.t25_p4 PARTITION OF part_list.t25 FOR VALUES IN (8);
CREATE TABLE part_list.t25_p5 PARTITION OF part_list.t25 FOR VALUES IN (2);
CREATE TABLE part_list.t25_p6 PARTITION OF part_list.t25 FOR VALUES IN (1);
CREATE TABLE part_list.t25_p7 PARTITION OF part_list.t25 FOR VALUES IN (7);

CREATE TABLE part_list.t26 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(6,3)
    ,c3 varchar(6)
    ,c4 date
    ,c5 numeric(6,1)
    ,c6 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t26_p0 PARTITION OF part_list.t26 FOR VALUES IN (8, 6);
CREATE TABLE part_list.t26_p1 PARTITION OF part_list.t26 FOR VALUES IN (0, 1);
CREATE TABLE part_list.t26_p2 PARTITION OF part_list.t26 FOR VALUES IN (3, 9);
CREATE TABLE part_list.t26_p3 PARTITION OF part_list.t26 FOR VALUES IN (5, 2);
CREATE TABLE part_list.t26_p4 PARTITION OF part_list.t26 FOR VALUES IN (7, 4);

CREATE TABLE part_list.t27 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t27_p0 PARTITION OF part_list.t27 FOR VALUES IN (3, 7, 8);
CREATE TABLE part_list.t27_p1 PARTITION OF part_list.t27 FOR VALUES IN (2, 1, 4);
CREATE TABLE part_list.t27_p2 PARTITION OF part_list.t27 FOR VALUES IN (9, 5);
CREATE TABLE part_list.t27_p3 PARTITION OF part_list.t27 FOR VALUES IN (6, 0);

CREATE TABLE part_list.t28 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 date
    ,c3 date
    ,c4 char(19)
    ,c5 uuid
    ,c6 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t28_p0 PARTITION OF part_list.t28 FOR VALUES IN (1, 0);
CREATE TABLE part_list.t28_p1 PARTITION OF part_list.t28 FOR VALUES IN (7, 3);
CREATE TABLE part_list.t28_p2 PARTITION OF part_list.t28 FOR VALUES IN (9);
CREATE TABLE part_list.t28_p3 PARTITION OF part_list.t28 FOR VALUES IN (6);
CREATE TABLE part_list.t28_p4 PARTITION OF part_list.t28 FOR VALUES IN (4);
CREATE TABLE part_list.t28_p5 PARTITION OF part_list.t28 FOR VALUES IN (5);
CREATE TABLE part_list.t28_p6 PARTITION OF part_list.t28 FOR VALUES IN (8);
CREATE TABLE part_list.t28_p7 PARTITION OF part_list.t28 FOR VALUES IN (2);

CREATE TABLE part_list.t29 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 bytea
    ,c4 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t29_p0 PARTITION OF part_list.t29 FOR VALUES IN (2, 5, 6);
CREATE TABLE part_list.t29_p1 PARTITION OF part_list.t29 FOR VALUES IN (0, 8, 1);
CREATE TABLE part_list.t29_p2 PARTITION OF part_list.t29 FOR VALUES IN (9, 3);
CREATE TABLE part_list.t29_p3 PARTITION OF part_list.t29 FOR VALUES IN (4, 7);

CREATE TABLE part_list.t30 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t30_p0 PARTITION OF part_list.t30 FOR VALUES IN (4, 0);
CREATE TABLE part_list.t30_p1 PARTITION OF part_list.t30 FOR VALUES IN (1, 2);
CREATE TABLE part_list.t30_p2 PARTITION OF part_list.t30 FOR VALUES IN (3, 5);
CREATE TABLE part_list.t30_p3 PARTITION OF part_list.t30 FOR VALUES IN (6, 7);
CREATE TABLE part_list.t30_p4 PARTITION OF part_list.t30 FOR VALUES IN (8, 9);

CREATE TABLE part_list.t31 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 varchar(45)
    ,c4 varchar(22)
    ,c5 timestamp
    ,c6 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t31_p0 PARTITION OF part_list.t31 FOR VALUES IN (6, 8);
CREATE TABLE part_list.t31_p1 PARTITION OF part_list.t31 FOR VALUES IN (9, 0);
CREATE TABLE part_list.t31_p2 PARTITION OF part_list.t31 FOR VALUES IN (5);
CREATE TABLE part_list.t31_p3 PARTITION OF part_list.t31 FOR VALUES IN (1);
CREATE TABLE part_list.t31_p4 PARTITION OF part_list.t31 FOR VALUES IN (2);
CREATE TABLE part_list.t31_p5 PARTITION OF part_list.t31 FOR VALUES IN (3);
CREATE TABLE part_list.t31_p6 PARTITION OF part_list.t31 FOR VALUES IN (4);
CREATE TABLE part_list.t31_p7 PARTITION OF part_list.t31 FOR VALUES IN (7);

CREATE TABLE part_list.t32 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 integer
    ,c4 jsonb
    ,c5 text
    ,c6 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t32_p0 PARTITION OF part_list.t32 FOR VALUES IN (4, 8);
CREATE TABLE part_list.t32_p1 PARTITION OF part_list.t32 FOR VALUES IN (2, 1);
CREATE TABLE part_list.t32_p2 PARTITION OF part_list.t32 FOR VALUES IN (5);
CREATE TABLE part_list.t32_p3 PARTITION OF part_list.t32 FOR VALUES IN (9);
CREATE TABLE part_list.t32_p4 PARTITION OF part_list.t32 FOR VALUES IN (6);
CREATE TABLE part_list.t32_p5 PARTITION OF part_list.t32 FOR VALUES IN (7);
CREATE TABLE part_list.t32_p6 PARTITION OF part_list.t32 FOR VALUES IN (3);
CREATE TABLE part_list.t32_p7 PARTITION OF part_list.t32 FOR VALUES IN (0);

CREATE TABLE part_list.t33 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 numeric(6,3)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t33_p0 PARTITION OF part_list.t33 FOR VALUES IN (1, 5);
CREATE TABLE part_list.t33_p1 PARTITION OF part_list.t33 FOR VALUES IN (0, 3);
CREATE TABLE part_list.t33_p2 PARTITION OF part_list.t33 FOR VALUES IN (4, 6);
CREATE TABLE part_list.t33_p3 PARTITION OF part_list.t33 FOR VALUES IN (8, 9);
CREATE TABLE part_list.t33_p4 PARTITION OF part_list.t33 FOR VALUES IN (2, 7);

CREATE TABLE part_list.t34 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 uuid
    ,c3 uuid
    ,c4 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t34_p0 PARTITION OF part_list.t34 FOR VALUES IN (0, 5);
CREATE TABLE part_list.t34_p1 PARTITION OF part_list.t34 FOR VALUES IN (3, 6);
CREATE TABLE part_list.t34_p2 PARTITION OF part_list.t34 FOR VALUES IN (1, 2);
CREATE TABLE part_list.t34_p3 PARTITION OF part_list.t34 FOR VALUES IN (8);
CREATE TABLE part_list.t34_p4 PARTITION OF part_list.t34 FOR VALUES IN (9);
CREATE TABLE part_list.t34_p5 PARTITION OF part_list.t34 FOR VALUES IN (4);
CREATE TABLE part_list.t34_p6 PARTITION OF part_list.t34 FOR VALUES IN (7);

CREATE TABLE part_list.t35 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t35_p0 PARTITION OF part_list.t35 FOR VALUES IN (9, 6);
CREATE TABLE part_list.t35_p1 PARTITION OF part_list.t35 FOR VALUES IN (2, 5);
CREATE TABLE part_list.t35_p2 PARTITION OF part_list.t35 FOR VALUES IN (7);
CREATE TABLE part_list.t35_p3 PARTITION OF part_list.t35 FOR VALUES IN (3);
CREATE TABLE part_list.t35_p4 PARTITION OF part_list.t35 FOR VALUES IN (0);
CREATE TABLE part_list.t35_p5 PARTITION OF part_list.t35 FOR VALUES IN (1);
CREATE TABLE part_list.t35_p6 PARTITION OF part_list.t35 FOR VALUES IN (8);
CREATE TABLE part_list.t35_p7 PARTITION OF part_list.t35 FOR VALUES IN (4);

CREATE TABLE part_list.t36 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(10,3)
    ,c3 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t36_p0 PARTITION OF part_list.t36 FOR VALUES IN (2, 7);
CREATE TABLE part_list.t36_p1 PARTITION OF part_list.t36 FOR VALUES IN (9, 6);
CREATE TABLE part_list.t36_p2 PARTITION OF part_list.t36 FOR VALUES IN (1, 4);
CREATE TABLE part_list.t36_p3 PARTITION OF part_list.t36 FOR VALUES IN (5);
CREATE TABLE part_list.t36_p4 PARTITION OF part_list.t36 FOR VALUES IN (8);
CREATE TABLE part_list.t36_p5 PARTITION OF part_list.t36 FOR VALUES IN (0);
CREATE TABLE part_list.t36_p6 PARTITION OF part_list.t36 FOR VALUES IN (3);

CREATE TABLE part_list.t37 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 time
    ,c3 numeric(8,3)
    ,c4 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t37_p0 PARTITION OF part_list.t37 FOR VALUES IN (1, 4, 3);
CREATE TABLE part_list.t37_p1 PARTITION OF part_list.t37 FOR VALUES IN (2, 9, 5);
CREATE TABLE part_list.t37_p2 PARTITION OF part_list.t37 FOR VALUES IN (0, 6);
CREATE TABLE part_list.t37_p3 PARTITION OF part_list.t37 FOR VALUES IN (7, 8);

CREATE TABLE part_list.t38 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 date
    ,c4 jsonb
    ,c5 uuid
    ,c6 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t38_p0 PARTITION OF part_list.t38 FOR VALUES IN (5, 3);
CREATE TABLE part_list.t38_p1 PARTITION OF part_list.t38 FOR VALUES IN (2, 8);
CREATE TABLE part_list.t38_p2 PARTITION OF part_list.t38 FOR VALUES IN (7, 6);
CREATE TABLE part_list.t38_p3 PARTITION OF part_list.t38 FOR VALUES IN (0, 9);
CREATE TABLE part_list.t38_p4 PARTITION OF part_list.t38 FOR VALUES IN (1);
CREATE TABLE part_list.t38_p5 PARTITION OF part_list.t38 FOR VALUES IN (4);

CREATE TABLE part_list.t39 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 jsonb
    ,c4 double precision
    ,c5 varchar(39)
    ,c6 numeric(7,1)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t39_p0 PARTITION OF part_list.t39 FOR VALUES IN (1, 9);
CREATE TABLE part_list.t39_p1 PARTITION OF part_list.t39 FOR VALUES IN (5, 2);
CREATE TABLE part_list.t39_p2 PARTITION OF part_list.t39 FOR VALUES IN (3, 0);
CREATE TABLE part_list.t39_p3 PARTITION OF part_list.t39 FOR VALUES IN (7, 6);
CREATE TABLE part_list.t39_p4 PARTITION OF part_list.t39 FOR VALUES IN (8, 4);

CREATE TABLE part_list.t40 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 jsonb
    ,c4 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t40_p0 PARTITION OF part_list.t40 FOR VALUES IN (9, 0);
CREATE TABLE part_list.t40_p1 PARTITION OF part_list.t40 FOR VALUES IN (5, 2);
CREATE TABLE part_list.t40_p2 PARTITION OF part_list.t40 FOR VALUES IN (8, 6);
CREATE TABLE part_list.t40_p3 PARTITION OF part_list.t40 FOR VALUES IN (4, 1);
CREATE TABLE part_list.t40_p4 PARTITION OF part_list.t40 FOR VALUES IN (7, 3);

CREATE TABLE part_list.t41 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t41_p0 PARTITION OF part_list.t41 FOR VALUES IN (7, 4, 1);
CREATE TABLE part_list.t41_p1 PARTITION OF part_list.t41 FOR VALUES IN (0, 8, 6);
CREATE TABLE part_list.t41_p2 PARTITION OF part_list.t41 FOR VALUES IN (2, 3);
CREATE TABLE part_list.t41_p3 PARTITION OF part_list.t41 FOR VALUES IN (9, 5);

CREATE TABLE part_list.t42 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(16)
    ,c3 double precision
    ,c4 date
    ,c5 uuid
    ,c6 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t42_p0 PARTITION OF part_list.t42 FOR VALUES IN (8, 2);
CREATE TABLE part_list.t42_p1 PARTITION OF part_list.t42 FOR VALUES IN (6, 1);
CREATE TABLE part_list.t42_p2 PARTITION OF part_list.t42 FOR VALUES IN (5, 7);
CREATE TABLE part_list.t42_p3 PARTITION OF part_list.t42 FOR VALUES IN (3);
CREATE TABLE part_list.t42_p4 PARTITION OF part_list.t42 FOR VALUES IN (9);
CREATE TABLE part_list.t42_p5 PARTITION OF part_list.t42 FOR VALUES IN (0);
CREATE TABLE part_list.t42_p6 PARTITION OF part_list.t42 FOR VALUES IN (4);

CREATE TABLE part_list.t43 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 bytea
    ,c4 integer
    ,c5 uuid
    ,c6 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t43_p0 PARTITION OF part_list.t43 FOR VALUES IN (5, 9);
CREATE TABLE part_list.t43_p1 PARTITION OF part_list.t43 FOR VALUES IN (3, 0);
CREATE TABLE part_list.t43_p2 PARTITION OF part_list.t43 FOR VALUES IN (2, 4);
CREATE TABLE part_list.t43_p3 PARTITION OF part_list.t43 FOR VALUES IN (1, 8);
CREATE TABLE part_list.t43_p4 PARTITION OF part_list.t43 FOR VALUES IN (7, 6);

CREATE TABLE part_list.t44 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(11,2)
    ,c3 timestamp
    ,c4 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t44_p0 PARTITION OF part_list.t44 FOR VALUES IN (6, 0);
CREATE TABLE part_list.t44_p1 PARTITION OF part_list.t44 FOR VALUES IN (4, 2);
CREATE TABLE part_list.t44_p2 PARTITION OF part_list.t44 FOR VALUES IN (5, 3);
CREATE TABLE part_list.t44_p3 PARTITION OF part_list.t44 FOR VALUES IN (9, 7);
CREATE TABLE part_list.t44_p4 PARTITION OF part_list.t44 FOR VALUES IN (1);
CREATE TABLE part_list.t44_p5 PARTITION OF part_list.t44 FOR VALUES IN (8);

CREATE TABLE part_list.t45 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 char(7)
    ,c4 time
    ,c5 varchar(9)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t45_p0 PARTITION OF part_list.t45 FOR VALUES IN (9, 4);
CREATE TABLE part_list.t45_p1 PARTITION OF part_list.t45 FOR VALUES IN (3, 5);
CREATE TABLE part_list.t45_p2 PARTITION OF part_list.t45 FOR VALUES IN (7, 1);
CREATE TABLE part_list.t45_p3 PARTITION OF part_list.t45 FOR VALUES IN (6, 8);
CREATE TABLE part_list.t45_p4 PARTITION OF part_list.t45 FOR VALUES IN (0, 2);

CREATE TABLE part_list.t46 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 time
    ,c3 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t46_p0 PARTITION OF part_list.t46 FOR VALUES IN (5, 9);
CREATE TABLE part_list.t46_p1 PARTITION OF part_list.t46 FOR VALUES IN (4, 2);
CREATE TABLE part_list.t46_p2 PARTITION OF part_list.t46 FOR VALUES IN (6, 1);
CREATE TABLE part_list.t46_p3 PARTITION OF part_list.t46 FOR VALUES IN (0, 7);
CREATE TABLE part_list.t46_p4 PARTITION OF part_list.t46 FOR VALUES IN (3);
CREATE TABLE part_list.t46_p5 PARTITION OF part_list.t46 FOR VALUES IN (8);

CREATE TABLE part_list.t47 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 boolean
    ,c4 date
    ,c5 real
    ,c6 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t47_p0 PARTITION OF part_list.t47 FOR VALUES IN (3, 2, 9);
CREATE TABLE part_list.t47_p1 PARTITION OF part_list.t47 FOR VALUES IN (1, 0, 5);
CREATE TABLE part_list.t47_p2 PARTITION OF part_list.t47 FOR VALUES IN (7, 6);
CREATE TABLE part_list.t47_p3 PARTITION OF part_list.t47 FOR VALUES IN (8, 4);

CREATE TABLE part_list.t48 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t48_p0 PARTITION OF part_list.t48 FOR VALUES IN (5, 6);
CREATE TABLE part_list.t48_p1 PARTITION OF part_list.t48 FOR VALUES IN (0, 9);
CREATE TABLE part_list.t48_p2 PARTITION OF part_list.t48 FOR VALUES IN (4, 2);
CREATE TABLE part_list.t48_p3 PARTITION OF part_list.t48 FOR VALUES IN (1);
CREATE TABLE part_list.t48_p4 PARTITION OF part_list.t48 FOR VALUES IN (3);
CREATE TABLE part_list.t48_p5 PARTITION OF part_list.t48 FOR VALUES IN (7);
CREATE TABLE part_list.t48_p6 PARTITION OF part_list.t48 FOR VALUES IN (8);

CREATE TABLE part_list.t49 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 smallint
    ,c4 numeric(6,3)
    ,c5 char(4)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t49_p0 PARTITION OF part_list.t49 FOR VALUES IN (4, 7);
CREATE TABLE part_list.t49_p1 PARTITION OF part_list.t49 FOR VALUES IN (8, 1);
CREATE TABLE part_list.t49_p2 PARTITION OF part_list.t49 FOR VALUES IN (0, 2);
CREATE TABLE part_list.t49_p3 PARTITION OF part_list.t49 FOR VALUES IN (9, 5);
CREATE TABLE part_list.t49_p4 PARTITION OF part_list.t49 FOR VALUES IN (3, 6);

CREATE TABLE part_list.t50 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t50_p0 PARTITION OF part_list.t50 FOR VALUES IN (1, 5, 3);
CREATE TABLE part_list.t50_p1 PARTITION OF part_list.t50 FOR VALUES IN (8, 0, 2);
CREATE TABLE part_list.t50_p2 PARTITION OF part_list.t50 FOR VALUES IN (7, 9);
CREATE TABLE part_list.t50_p3 PARTITION OF part_list.t50 FOR VALUES IN (6, 4);

CREATE TABLE part_list.t51 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(32)
    ,c3 varchar(26)
    ,c4 varchar(34)
    ,c5 boolean
    ,c6 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t51_p0 PARTITION OF part_list.t51 FOR VALUES IN (1, 9);
CREATE TABLE part_list.t51_p1 PARTITION OF part_list.t51 FOR VALUES IN (5, 2);
CREATE TABLE part_list.t51_p2 PARTITION OF part_list.t51 FOR VALUES IN (3);
CREATE TABLE part_list.t51_p3 PARTITION OF part_list.t51 FOR VALUES IN (0);
CREATE TABLE part_list.t51_p4 PARTITION OF part_list.t51 FOR VALUES IN (7);
CREATE TABLE part_list.t51_p5 PARTITION OF part_list.t51 FOR VALUES IN (8);
CREATE TABLE part_list.t51_p6 PARTITION OF part_list.t51 FOR VALUES IN (4);
CREATE TABLE part_list.t51_p7 PARTITION OF part_list.t51 FOR VALUES IN (6);

CREATE TABLE part_list.t52 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 boolean
    ,c4 date
    ,c5 smallint
    ,c6 varchar(11)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t52_p0 PARTITION OF part_list.t52 FOR VALUES IN (4, 7, 9);
CREATE TABLE part_list.t52_p1 PARTITION OF part_list.t52 FOR VALUES IN (3, 5, 6);
CREATE TABLE part_list.t52_p2 PARTITION OF part_list.t52 FOR VALUES IN (2, 8);
CREATE TABLE part_list.t52_p3 PARTITION OF part_list.t52 FOR VALUES IN (0, 1);

CREATE TABLE part_list.t53 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(36)
    ,c3 integer
    ,c4 numeric(4,1)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t53_p0 PARTITION OF part_list.t53 FOR VALUES IN (9, 8);
CREATE TABLE part_list.t53_p1 PARTITION OF part_list.t53 FOR VALUES IN (0, 3);
CREATE TABLE part_list.t53_p2 PARTITION OF part_list.t53 FOR VALUES IN (1, 2);
CREATE TABLE part_list.t53_p3 PARTITION OF part_list.t53 FOR VALUES IN (7, 5);
CREATE TABLE part_list.t53_p4 PARTITION OF part_list.t53 FOR VALUES IN (6, 4);

CREATE TABLE part_list.t54 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 smallint
    ,c4 integer
    ,c5 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t54_p0 PARTITION OF part_list.t54 FOR VALUES IN (6, 2, 1, 3);
CREATE TABLE part_list.t54_p1 PARTITION OF part_list.t54 FOR VALUES IN (5, 7, 9);
CREATE TABLE part_list.t54_p2 PARTITION OF part_list.t54 FOR VALUES IN (0, 4, 8);

CREATE TABLE part_list.t55 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 uuid
    ,c4 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t55_p0 PARTITION OF part_list.t55 FOR VALUES IN (2, 3, 5, 4);
CREATE TABLE part_list.t55_p1 PARTITION OF part_list.t55 FOR VALUES IN (9, 7, 0);
CREATE TABLE part_list.t55_p2 PARTITION OF part_list.t55 FOR VALUES IN (1, 8, 6);

CREATE TABLE part_list.t56 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 text
    ,c4 text
    ,c5 integer
    ,c6 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t56_p0 PARTITION OF part_list.t56 FOR VALUES IN (4, 7);
CREATE TABLE part_list.t56_p1 PARTITION OF part_list.t56 FOR VALUES IN (2, 3);
CREATE TABLE part_list.t56_p2 PARTITION OF part_list.t56 FOR VALUES IN (6);
CREATE TABLE part_list.t56_p3 PARTITION OF part_list.t56 FOR VALUES IN (9);
CREATE TABLE part_list.t56_p4 PARTITION OF part_list.t56 FOR VALUES IN (1);
CREATE TABLE part_list.t56_p5 PARTITION OF part_list.t56 FOR VALUES IN (0);
CREATE TABLE part_list.t56_p6 PARTITION OF part_list.t56 FOR VALUES IN (8);
CREATE TABLE part_list.t56_p7 PARTITION OF part_list.t56 FOR VALUES IN (5);

CREATE TABLE part_list.t57 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(14)
    ,c3 bigint
    ,c4 real
    ,c5 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t57_p0 PARTITION OF part_list.t57 FOR VALUES IN (5, 9);
CREATE TABLE part_list.t57_p1 PARTITION OF part_list.t57 FOR VALUES IN (4, 2);
CREATE TABLE part_list.t57_p2 PARTITION OF part_list.t57 FOR VALUES IN (7, 0);
CREATE TABLE part_list.t57_p3 PARTITION OF part_list.t57 FOR VALUES IN (1, 3);
CREATE TABLE part_list.t57_p4 PARTITION OF part_list.t57 FOR VALUES IN (6, 8);

CREATE TABLE part_list.t58 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(4,3)
    ,c3 boolean
    ,c4 varchar(24)
    ,c5 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t58_p0 PARTITION OF part_list.t58 FOR VALUES IN (3, 9, 4);
CREATE TABLE part_list.t58_p1 PARTITION OF part_list.t58 FOR VALUES IN (0, 7, 1);
CREATE TABLE part_list.t58_p2 PARTITION OF part_list.t58 FOR VALUES IN (5, 6);
CREATE TABLE part_list.t58_p3 PARTITION OF part_list.t58 FOR VALUES IN (2, 8);

CREATE TABLE part_list.t59 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(20)
    ,c3 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t59_p0 PARTITION OF part_list.t59 FOR VALUES IN (8, 2);
CREATE TABLE part_list.t59_p1 PARTITION OF part_list.t59 FOR VALUES IN (4, 3);
CREATE TABLE part_list.t59_p2 PARTITION OF part_list.t59 FOR VALUES IN (6, 7);
CREATE TABLE part_list.t59_p3 PARTITION OF part_list.t59 FOR VALUES IN (9);
CREATE TABLE part_list.t59_p4 PARTITION OF part_list.t59 FOR VALUES IN (5);
CREATE TABLE part_list.t59_p5 PARTITION OF part_list.t59 FOR VALUES IN (0);
CREATE TABLE part_list.t59_p6 PARTITION OF part_list.t59 FOR VALUES IN (1);

CREATE TABLE part_list.t60 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 timestamp
    ,c3 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t60_p0 PARTITION OF part_list.t60 FOR VALUES IN (1, 9, 3);
CREATE TABLE part_list.t60_p1 PARTITION OF part_list.t60 FOR VALUES IN (4, 6, 7);
CREATE TABLE part_list.t60_p2 PARTITION OF part_list.t60 FOR VALUES IN (2, 0);
CREATE TABLE part_list.t60_p3 PARTITION OF part_list.t60 FOR VALUES IN (5, 8);

CREATE TABLE part_list.t61 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 date
    ,c4 varchar(39)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t61_p0 PARTITION OF part_list.t61 FOR VALUES IN (7, 2, 5);
CREATE TABLE part_list.t61_p1 PARTITION OF part_list.t61 FOR VALUES IN (1, 0, 6);
CREATE TABLE part_list.t61_p2 PARTITION OF part_list.t61 FOR VALUES IN (9, 4);
CREATE TABLE part_list.t61_p3 PARTITION OF part_list.t61 FOR VALUES IN (8, 3);

CREATE TABLE part_list.t62 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 real
    ,c4 bytea
    ,c5 numeric(4,2)
    ,c6 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t62_p0 PARTITION OF part_list.t62 FOR VALUES IN (8, 3, 4);
CREATE TABLE part_list.t62_p1 PARTITION OF part_list.t62 FOR VALUES IN (6, 0, 9);
CREATE TABLE part_list.t62_p2 PARTITION OF part_list.t62 FOR VALUES IN (5, 2);
CREATE TABLE part_list.t62_p3 PARTITION OF part_list.t62 FOR VALUES IN (1, 7);

CREATE TABLE part_list.t63 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 uuid
    ,c4 uuid
    ,c5 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t63_p0 PARTITION OF part_list.t63 FOR VALUES IN (3, 7);
CREATE TABLE part_list.t63_p1 PARTITION OF part_list.t63 FOR VALUES IN (2, 8);
CREATE TABLE part_list.t63_p2 PARTITION OF part_list.t63 FOR VALUES IN (1, 4);
CREATE TABLE part_list.t63_p3 PARTITION OF part_list.t63 FOR VALUES IN (6, 0);
CREATE TABLE part_list.t63_p4 PARTITION OF part_list.t63 FOR VALUES IN (9, 5);

CREATE TABLE part_list.t64 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 char(17)
    ,c4 jsonb
    ,c5 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t64_p0 PARTITION OF part_list.t64 FOR VALUES IN (6, 8);
CREATE TABLE part_list.t64_p1 PARTITION OF part_list.t64 FOR VALUES IN (5, 0);
CREATE TABLE part_list.t64_p2 PARTITION OF part_list.t64 FOR VALUES IN (7, 1);
CREATE TABLE part_list.t64_p3 PARTITION OF part_list.t64 FOR VALUES IN (4, 2);
CREATE TABLE part_list.t64_p4 PARTITION OF part_list.t64 FOR VALUES IN (3);
CREATE TABLE part_list.t64_p5 PARTITION OF part_list.t64 FOR VALUES IN (9);

CREATE TABLE part_list.t65 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(14)
    ,c3 double precision
    ,c4 uuid
    ,c5 jsonb
    ,c6 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t65_p0 PARTITION OF part_list.t65 FOR VALUES IN (0, 7, 1);
CREATE TABLE part_list.t65_p1 PARTITION OF part_list.t65 FOR VALUES IN (9, 6, 3);
CREATE TABLE part_list.t65_p2 PARTITION OF part_list.t65 FOR VALUES IN (2, 5);
CREATE TABLE part_list.t65_p3 PARTITION OF part_list.t65 FOR VALUES IN (4, 8);

CREATE TABLE part_list.t66 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(11,0)
    ,c3 double precision
    ,c4 varchar(22)
    ,c5 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t66_p0 PARTITION OF part_list.t66 FOR VALUES IN (6, 7);
CREATE TABLE part_list.t66_p1 PARTITION OF part_list.t66 FOR VALUES IN (0, 1);
CREATE TABLE part_list.t66_p2 PARTITION OF part_list.t66 FOR VALUES IN (5);
CREATE TABLE part_list.t66_p3 PARTITION OF part_list.t66 FOR VALUES IN (9);
CREATE TABLE part_list.t66_p4 PARTITION OF part_list.t66 FOR VALUES IN (3);
CREATE TABLE part_list.t66_p5 PARTITION OF part_list.t66 FOR VALUES IN (4);
CREATE TABLE part_list.t66_p6 PARTITION OF part_list.t66 FOR VALUES IN (8);
CREATE TABLE part_list.t66_p7 PARTITION OF part_list.t66 FOR VALUES IN (2);

CREATE TABLE part_list.t67 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(4,0)
    ,c3 bytea
    ,c4 bytea
    ,c5 smallint
    ,c6 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t67_p0 PARTITION OF part_list.t67 FOR VALUES IN (3, 9, 4);
CREATE TABLE part_list.t67_p1 PARTITION OF part_list.t67 FOR VALUES IN (1, 8, 5);
CREATE TABLE part_list.t67_p2 PARTITION OF part_list.t67 FOR VALUES IN (0, 7);
CREATE TABLE part_list.t67_p3 PARTITION OF part_list.t67 FOR VALUES IN (6, 2);

CREATE TABLE part_list.t68 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 numeric(12,0)
    ,c4 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t68_p0 PARTITION OF part_list.t68 FOR VALUES IN (2, 0);
CREATE TABLE part_list.t68_p1 PARTITION OF part_list.t68 FOR VALUES IN (9, 6);
CREATE TABLE part_list.t68_p2 PARTITION OF part_list.t68 FOR VALUES IN (4, 8);
CREATE TABLE part_list.t68_p3 PARTITION OF part_list.t68 FOR VALUES IN (1, 7);
CREATE TABLE part_list.t68_p4 PARTITION OF part_list.t68 FOR VALUES IN (3);
CREATE TABLE part_list.t68_p5 PARTITION OF part_list.t68 FOR VALUES IN (5);

CREATE TABLE part_list.t69 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t69_p0 PARTITION OF part_list.t69 FOR VALUES IN (4, 2);
CREATE TABLE part_list.t69_p1 PARTITION OF part_list.t69 FOR VALUES IN (5, 7);
CREATE TABLE part_list.t69_p2 PARTITION OF part_list.t69 FOR VALUES IN (8, 3);
CREATE TABLE part_list.t69_p3 PARTITION OF part_list.t69 FOR VALUES IN (6, 1);
CREATE TABLE part_list.t69_p4 PARTITION OF part_list.t69 FOR VALUES IN (9);
CREATE TABLE part_list.t69_p5 PARTITION OF part_list.t69 FOR VALUES IN (0);

CREATE TABLE part_list.t70 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(7)
    ,c3 char(19)
    ,c4 char(11)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t70_p0 PARTITION OF part_list.t70 FOR VALUES IN (7, 6);
CREATE TABLE part_list.t70_p1 PARTITION OF part_list.t70 FOR VALUES IN (0, 2);
CREATE TABLE part_list.t70_p2 PARTITION OF part_list.t70 FOR VALUES IN (9, 8);
CREATE TABLE part_list.t70_p3 PARTITION OF part_list.t70 FOR VALUES IN (5, 3);
CREATE TABLE part_list.t70_p4 PARTITION OF part_list.t70 FOR VALUES IN (1);
CREATE TABLE part_list.t70_p5 PARTITION OF part_list.t70 FOR VALUES IN (4);

CREATE TABLE part_list.t71 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 numeric(7,0)
    ,c4 varchar(3)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t71_p0 PARTITION OF part_list.t71 FOR VALUES IN (8, 0, 4);
CREATE TABLE part_list.t71_p1 PARTITION OF part_list.t71 FOR VALUES IN (3, 1, 2);
CREATE TABLE part_list.t71_p2 PARTITION OF part_list.t71 FOR VALUES IN (6, 5);
CREATE TABLE part_list.t71_p3 PARTITION OF part_list.t71 FOR VALUES IN (7, 9);

CREATE TABLE part_list.t72 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 time
    ,c3 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t72_p0 PARTITION OF part_list.t72 FOR VALUES IN (6, 8, 4, 3);
CREATE TABLE part_list.t72_p1 PARTITION OF part_list.t72 FOR VALUES IN (0, 1, 7);
CREATE TABLE part_list.t72_p2 PARTITION OF part_list.t72 FOR VALUES IN (2, 9, 5);

CREATE TABLE part_list.t73 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 integer
    ,c4 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t73_p0 PARTITION OF part_list.t73 FOR VALUES IN (8, 9, 7, 1);
CREATE TABLE part_list.t73_p1 PARTITION OF part_list.t73 FOR VALUES IN (5, 6, 4);
CREATE TABLE part_list.t73_p2 PARTITION OF part_list.t73 FOR VALUES IN (0, 2, 3);

CREATE TABLE part_list.t74 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 double precision
    ,c4 bigint
    ,c5 jsonb
    ,c6 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t74_p0 PARTITION OF part_list.t74 FOR VALUES IN (3, 6);
CREATE TABLE part_list.t74_p1 PARTITION OF part_list.t74 FOR VALUES IN (4, 0);
CREATE TABLE part_list.t74_p2 PARTITION OF part_list.t74 FOR VALUES IN (8, 1);
CREATE TABLE part_list.t74_p3 PARTITION OF part_list.t74 FOR VALUES IN (9);
CREATE TABLE part_list.t74_p4 PARTITION OF part_list.t74 FOR VALUES IN (2);
CREATE TABLE part_list.t74_p5 PARTITION OF part_list.t74 FOR VALUES IN (5);
CREATE TABLE part_list.t74_p6 PARTITION OF part_list.t74 FOR VALUES IN (7);

CREATE TABLE part_list.t75 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 integer
    ,c4 text
    ,c5 time
    ,c6 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t75_p0 PARTITION OF part_list.t75 FOR VALUES IN (8, 1);
CREATE TABLE part_list.t75_p1 PARTITION OF part_list.t75 FOR VALUES IN (0, 6);
CREATE TABLE part_list.t75_p2 PARTITION OF part_list.t75 FOR VALUES IN (3, 7);
CREATE TABLE part_list.t75_p3 PARTITION OF part_list.t75 FOR VALUES IN (9);
CREATE TABLE part_list.t75_p4 PARTITION OF part_list.t75 FOR VALUES IN (2);
CREATE TABLE part_list.t75_p5 PARTITION OF part_list.t75 FOR VALUES IN (4);
CREATE TABLE part_list.t75_p6 PARTITION OF part_list.t75 FOR VALUES IN (5);

CREATE TABLE part_list.t76 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 smallint
    ,c4 text
    ,c5 smallint
    ,c6 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t76_p0 PARTITION OF part_list.t76 FOR VALUES IN (4, 7);
CREATE TABLE part_list.t76_p1 PARTITION OF part_list.t76 FOR VALUES IN (5, 8);
CREATE TABLE part_list.t76_p2 PARTITION OF part_list.t76 FOR VALUES IN (9, 6);
CREATE TABLE part_list.t76_p3 PARTITION OF part_list.t76 FOR VALUES IN (3, 0);
CREATE TABLE part_list.t76_p4 PARTITION OF part_list.t76 FOR VALUES IN (2, 1);

CREATE TABLE part_list.t77 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 varchar(24)
    ,c4 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t77_p0 PARTITION OF part_list.t77 FOR VALUES IN (8, 4);
CREATE TABLE part_list.t77_p1 PARTITION OF part_list.t77 FOR VALUES IN (1, 9);
CREATE TABLE part_list.t77_p2 PARTITION OF part_list.t77 FOR VALUES IN (7);
CREATE TABLE part_list.t77_p3 PARTITION OF part_list.t77 FOR VALUES IN (5);
CREATE TABLE part_list.t77_p4 PARTITION OF part_list.t77 FOR VALUES IN (0);
CREATE TABLE part_list.t77_p5 PARTITION OF part_list.t77 FOR VALUES IN (3);
CREATE TABLE part_list.t77_p6 PARTITION OF part_list.t77 FOR VALUES IN (6);
CREATE TABLE part_list.t77_p7 PARTITION OF part_list.t77 FOR VALUES IN (2);

CREATE TABLE part_list.t78 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 numeric(5,0)
    ,c4 numeric(7,2)
    ,c5 integer
    ,c6 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t78_p0 PARTITION OF part_list.t78 FOR VALUES IN (2, 0);
CREATE TABLE part_list.t78_p1 PARTITION OF part_list.t78 FOR VALUES IN (8, 9);
CREATE TABLE part_list.t78_p2 PARTITION OF part_list.t78 FOR VALUES IN (6);
CREATE TABLE part_list.t78_p3 PARTITION OF part_list.t78 FOR VALUES IN (3);
CREATE TABLE part_list.t78_p4 PARTITION OF part_list.t78 FOR VALUES IN (1);
CREATE TABLE part_list.t78_p5 PARTITION OF part_list.t78 FOR VALUES IN (7);
CREATE TABLE part_list.t78_p6 PARTITION OF part_list.t78 FOR VALUES IN (5);
CREATE TABLE part_list.t78_p7 PARTITION OF part_list.t78 FOR VALUES IN (4);

CREATE TABLE part_list.t79 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t79_p0 PARTITION OF part_list.t79 FOR VALUES IN (2, 6);
CREATE TABLE part_list.t79_p1 PARTITION OF part_list.t79 FOR VALUES IN (5, 8);
CREATE TABLE part_list.t79_p2 PARTITION OF part_list.t79 FOR VALUES IN (1, 9);
CREATE TABLE part_list.t79_p3 PARTITION OF part_list.t79 FOR VALUES IN (4, 3);
CREATE TABLE part_list.t79_p4 PARTITION OF part_list.t79 FOR VALUES IN (0, 7);

CREATE TABLE part_list.t80 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 timestamp
    ,c4 smallint
    ,c5 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t80_p0 PARTITION OF part_list.t80 FOR VALUES IN (8, 0);
CREATE TABLE part_list.t80_p1 PARTITION OF part_list.t80 FOR VALUES IN (7, 2);
CREATE TABLE part_list.t80_p2 PARTITION OF part_list.t80 FOR VALUES IN (1, 5);
CREATE TABLE part_list.t80_p3 PARTITION OF part_list.t80 FOR VALUES IN (4, 3);
CREATE TABLE part_list.t80_p4 PARTITION OF part_list.t80 FOR VALUES IN (6, 9);

CREATE TABLE part_list.t81 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 date
    ,c3 varchar(42)
    ,c4 varchar(35)
    ,c5 numeric(5,0)
    ,c6 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t81_p0 PARTITION OF part_list.t81 FOR VALUES IN (2, 1, 8, 6);
CREATE TABLE part_list.t81_p1 PARTITION OF part_list.t81 FOR VALUES IN (7, 9, 3);
CREATE TABLE part_list.t81_p2 PARTITION OF part_list.t81 FOR VALUES IN (0, 4, 5);

CREATE TABLE part_list.t82 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(8)
    ,c3 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t82_p0 PARTITION OF part_list.t82 FOR VALUES IN (3, 2);
CREATE TABLE part_list.t82_p1 PARTITION OF part_list.t82 FOR VALUES IN (0, 1);
CREATE TABLE part_list.t82_p2 PARTITION OF part_list.t82 FOR VALUES IN (7, 4);
CREATE TABLE part_list.t82_p3 PARTITION OF part_list.t82 FOR VALUES IN (9);
CREATE TABLE part_list.t82_p4 PARTITION OF part_list.t82 FOR VALUES IN (8);
CREATE TABLE part_list.t82_p5 PARTITION OF part_list.t82 FOR VALUES IN (5);
CREATE TABLE part_list.t82_p6 PARTITION OF part_list.t82 FOR VALUES IN (6);

CREATE TABLE part_list.t83 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(1)
    ,c3 char(19)
    ,c4 numeric(4,2)
    ,c5 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t83_p0 PARTITION OF part_list.t83 FOR VALUES IN (2, 3, 5);
CREATE TABLE part_list.t83_p1 PARTITION OF part_list.t83 FOR VALUES IN (1, 9, 6);
CREATE TABLE part_list.t83_p2 PARTITION OF part_list.t83 FOR VALUES IN (8, 7);
CREATE TABLE part_list.t83_p3 PARTITION OF part_list.t83 FOR VALUES IN (0, 4);

CREATE TABLE part_list.t84 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 time
    ,c3 varchar(45)
    ,c4 timestamp
    ,c5 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t84_p0 PARTITION OF part_list.t84 FOR VALUES IN (7, 9);
CREATE TABLE part_list.t84_p1 PARTITION OF part_list.t84 FOR VALUES IN (0, 8);
CREATE TABLE part_list.t84_p2 PARTITION OF part_list.t84 FOR VALUES IN (2, 5);
CREATE TABLE part_list.t84_p3 PARTITION OF part_list.t84 FOR VALUES IN (1, 3);
CREATE TABLE part_list.t84_p4 PARTITION OF part_list.t84 FOR VALUES IN (4, 6);

CREATE TABLE part_list.t85 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(10,3)
    ,c3 uuid
    ,c4 boolean
    ,c5 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t85_p0 PARTITION OF part_list.t85 FOR VALUES IN (0, 8, 7);
CREATE TABLE part_list.t85_p1 PARTITION OF part_list.t85 FOR VALUES IN (5, 2, 4);
CREATE TABLE part_list.t85_p2 PARTITION OF part_list.t85 FOR VALUES IN (3, 1);
CREATE TABLE part_list.t85_p3 PARTITION OF part_list.t85 FOR VALUES IN (6, 9);

CREATE TABLE part_list.t86 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 uuid
    ,c3 double precision
    ,c4 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t86_p0 PARTITION OF part_list.t86 FOR VALUES IN (5, 1);
CREATE TABLE part_list.t86_p1 PARTITION OF part_list.t86 FOR VALUES IN (8, 2);
CREATE TABLE part_list.t86_p2 PARTITION OF part_list.t86 FOR VALUES IN (3, 9);
CREATE TABLE part_list.t86_p3 PARTITION OF part_list.t86 FOR VALUES IN (7);
CREATE TABLE part_list.t86_p4 PARTITION OF part_list.t86 FOR VALUES IN (0);
CREATE TABLE part_list.t86_p5 PARTITION OF part_list.t86 FOR VALUES IN (6);
CREATE TABLE part_list.t86_p6 PARTITION OF part_list.t86 FOR VALUES IN (4);

CREATE TABLE part_list.t87 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(18)
    ,c3 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t87_p0 PARTITION OF part_list.t87 FOR VALUES IN (8, 7);
CREATE TABLE part_list.t87_p1 PARTITION OF part_list.t87 FOR VALUES IN (6, 3);
CREATE TABLE part_list.t87_p2 PARTITION OF part_list.t87 FOR VALUES IN (1, 5);
CREATE TABLE part_list.t87_p3 PARTITION OF part_list.t87 FOR VALUES IN (2, 4);
CREATE TABLE part_list.t87_p4 PARTITION OF part_list.t87 FOR VALUES IN (9, 0);

CREATE TABLE part_list.t88 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 double precision
    ,c4 double precision
    ,c5 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t88_p0 PARTITION OF part_list.t88 FOR VALUES IN (0, 9, 6);
CREATE TABLE part_list.t88_p1 PARTITION OF part_list.t88 FOR VALUES IN (3, 2, 7);
CREATE TABLE part_list.t88_p2 PARTITION OF part_list.t88 FOR VALUES IN (1, 8);
CREATE TABLE part_list.t88_p3 PARTITION OF part_list.t88 FOR VALUES IN (4, 5);

CREATE TABLE part_list.t89 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 time
    ,c4 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t89_p0 PARTITION OF part_list.t89 FOR VALUES IN (6, 7, 0);
CREATE TABLE part_list.t89_p1 PARTITION OF part_list.t89 FOR VALUES IN (4, 9, 5);
CREATE TABLE part_list.t89_p2 PARTITION OF part_list.t89 FOR VALUES IN (3, 8);
CREATE TABLE part_list.t89_p3 PARTITION OF part_list.t89 FOR VALUES IN (2, 1);

CREATE TABLE part_list.t90 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 timestamp
    ,c4 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t90_p0 PARTITION OF part_list.t90 FOR VALUES IN (3, 1);
CREATE TABLE part_list.t90_p1 PARTITION OF part_list.t90 FOR VALUES IN (8, 7);
CREATE TABLE part_list.t90_p2 PARTITION OF part_list.t90 FOR VALUES IN (5, 4);
CREATE TABLE part_list.t90_p3 PARTITION OF part_list.t90 FOR VALUES IN (9, 0);
CREATE TABLE part_list.t90_p4 PARTITION OF part_list.t90 FOR VALUES IN (2);
CREATE TABLE part_list.t90_p5 PARTITION OF part_list.t90 FOR VALUES IN (6);

CREATE TABLE part_list.t91 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(8)
    ,c3 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t91_p0 PARTITION OF part_list.t91 FOR VALUES IN (0, 5);
CREATE TABLE part_list.t91_p1 PARTITION OF part_list.t91 FOR VALUES IN (7, 6);
CREATE TABLE part_list.t91_p2 PARTITION OF part_list.t91 FOR VALUES IN (4, 9);
CREATE TABLE part_list.t91_p3 PARTITION OF part_list.t91 FOR VALUES IN (2);
CREATE TABLE part_list.t91_p4 PARTITION OF part_list.t91 FOR VALUES IN (3);
CREATE TABLE part_list.t91_p5 PARTITION OF part_list.t91 FOR VALUES IN (1);
CREATE TABLE part_list.t91_p6 PARTITION OF part_list.t91 FOR VALUES IN (8);

CREATE TABLE part_list.t92 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 jsonb
    ,c4 uuid
    ,c5 double precision
    ,c6 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t92_p0 PARTITION OF part_list.t92 FOR VALUES IN (1, 0, 6, 5);
CREATE TABLE part_list.t92_p1 PARTITION OF part_list.t92 FOR VALUES IN (8, 2, 7);
CREATE TABLE part_list.t92_p2 PARTITION OF part_list.t92 FOR VALUES IN (4, 3, 9);

CREATE TABLE part_list.t93 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 jsonb
    ,c4 text
    ,c5 boolean
    ,c6 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t93_p0 PARTITION OF part_list.t93 FOR VALUES IN (8, 5);
CREATE TABLE part_list.t93_p1 PARTITION OF part_list.t93 FOR VALUES IN (7, 3);
CREATE TABLE part_list.t93_p2 PARTITION OF part_list.t93 FOR VALUES IN (9, 1);
CREATE TABLE part_list.t93_p3 PARTITION OF part_list.t93 FOR VALUES IN (0, 6);
CREATE TABLE part_list.t93_p4 PARTITION OF part_list.t93 FOR VALUES IN (2);
CREATE TABLE part_list.t93_p5 PARTITION OF part_list.t93 FOR VALUES IN (4);

CREATE TABLE part_list.t94 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(8)
    ,c3 double precision
    ,c4 text
    ,c5 bytea
    ,c6 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t94_p0 PARTITION OF part_list.t94 FOR VALUES IN (6, 7, 5, 2);
CREATE TABLE part_list.t94_p1 PARTITION OF part_list.t94 FOR VALUES IN (3, 8, 4);
CREATE TABLE part_list.t94_p2 PARTITION OF part_list.t94 FOR VALUES IN (0, 9, 1);

CREATE TABLE part_list.t95 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t95_p0 PARTITION OF part_list.t95 FOR VALUES IN (2, 3, 1);
CREATE TABLE part_list.t95_p1 PARTITION OF part_list.t95 FOR VALUES IN (8, 4, 9);
CREATE TABLE part_list.t95_p2 PARTITION OF part_list.t95 FOR VALUES IN (6, 7);
CREATE TABLE part_list.t95_p3 PARTITION OF part_list.t95 FOR VALUES IN (0, 5);

CREATE TABLE part_list.t96 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 varchar(45)
    ,c4 real
    ,c5 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t96_p0 PARTITION OF part_list.t96 FOR VALUES IN (6, 7, 3);
CREATE TABLE part_list.t96_p1 PARTITION OF part_list.t96 FOR VALUES IN (4, 1, 2);
CREATE TABLE part_list.t96_p2 PARTITION OF part_list.t96 FOR VALUES IN (9, 8);
CREATE TABLE part_list.t96_p3 PARTITION OF part_list.t96 FOR VALUES IN (5, 0);

CREATE TABLE part_list.t97 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(18)
    ,c3 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t97_p0 PARTITION OF part_list.t97 FOR VALUES IN (7, 2);
CREATE TABLE part_list.t97_p1 PARTITION OF part_list.t97 FOR VALUES IN (0, 4);
CREATE TABLE part_list.t97_p2 PARTITION OF part_list.t97 FOR VALUES IN (1);
CREATE TABLE part_list.t97_p3 PARTITION OF part_list.t97 FOR VALUES IN (3);
CREATE TABLE part_list.t97_p4 PARTITION OF part_list.t97 FOR VALUES IN (6);
CREATE TABLE part_list.t97_p5 PARTITION OF part_list.t97 FOR VALUES IN (8);
CREATE TABLE part_list.t97_p6 PARTITION OF part_list.t97 FOR VALUES IN (9);
CREATE TABLE part_list.t97_p7 PARTITION OF part_list.t97 FOR VALUES IN (5);

CREATE TABLE part_list.t98 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(20)
    ,c3 date
    ,c4 jsonb
    ,c5 integer
    ,c6 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t98_p0 PARTITION OF part_list.t98 FOR VALUES IN (8, 9, 7, 5);
CREATE TABLE part_list.t98_p1 PARTITION OF part_list.t98 FOR VALUES IN (1, 4, 2);
CREATE TABLE part_list.t98_p2 PARTITION OF part_list.t98 FOR VALUES IN (3, 6, 0);

CREATE TABLE part_list.t99 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 uuid
    ,c4 char(6)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t99_p0 PARTITION OF part_list.t99 FOR VALUES IN (7, 3, 1);
CREATE TABLE part_list.t99_p1 PARTITION OF part_list.t99 FOR VALUES IN (6, 2, 0);
CREATE TABLE part_list.t99_p2 PARTITION OF part_list.t99 FOR VALUES IN (9, 5);
CREATE TABLE part_list.t99_p3 PARTITION OF part_list.t99 FOR VALUES IN (4, 8);

CREATE TABLE part_list.t100 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 numeric(11,2)
    ,c4 real
    ,c5 numeric(8,0)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE part_list.t100_p0 PARTITION OF part_list.t100 FOR VALUES IN (9, 0, 5);
CREATE TABLE part_list.t100_p1 PARTITION OF part_list.t100 FOR VALUES IN (4, 3, 7);
CREATE TABLE part_list.t100_p2 PARTITION OF part_list.t100 FOR VALUES IN (1, 8);
CREATE TABLE part_list.t100_p3 PARTITION OF part_list.t100 FOR VALUES IN (2, 6);
