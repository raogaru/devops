CREATE TABLE bench.t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(1)
    ,c3 date
    ,c4 boolean
    ,c5 bigint
    ,c6 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list1_p0 PARTITION OF bench.t_list1 FOR VALUES IN (8, 6, 4, 0);
CREATE TABLE bench.t_list1_p1 PARTITION OF bench.t_list1 FOR VALUES IN (2, 1, 7);
CREATE TABLE bench.t_list1_p2 PARTITION OF bench.t_list1 FOR VALUES IN (9, 5, 3);

CREATE TABLE bench.t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 timestamp
    ,c3 smallint
    ,c4 jsonb
    ,c5 jsonb
    ,c6 timestamp
    ,c7 double precision
    ,c8 char(7)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list2_p0 PARTITION OF bench.t_list2 FOR VALUES IN (6, 1);
CREATE TABLE bench.t_list2_p1 PARTITION OF bench.t_list2 FOR VALUES IN (3, 4);
CREATE TABLE bench.t_list2_p2 PARTITION OF bench.t_list2 FOR VALUES IN (8, 5);
CREATE TABLE bench.t_list2_p3 PARTITION OF bench.t_list2 FOR VALUES IN (7, 9);
CREATE TABLE bench.t_list2_p4 PARTITION OF bench.t_list2 FOR VALUES IN (0, 2);

CREATE TABLE bench.t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 double precision
    ,c4 real
    ,c5 integer
    ,c6 numeric(9,3)
    ,c7 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list3_p0 PARTITION OF bench.t_list3 FOR VALUES IN (5, 7);
CREATE TABLE bench.t_list3_p1 PARTITION OF bench.t_list3 FOR VALUES IN (1, 9);
CREATE TABLE bench.t_list3_p2 PARTITION OF bench.t_list3 FOR VALUES IN (4, 8);
CREATE TABLE bench.t_list3_p3 PARTITION OF bench.t_list3 FOR VALUES IN (6, 2);
CREATE TABLE bench.t_list3_p4 PARTITION OF bench.t_list3 FOR VALUES IN (3, 0);

CREATE TABLE bench.t_list4 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 uuid
    ,c4 boolean
    ,c5 bigint
    ,c6 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list4_p0 PARTITION OF bench.t_list4 FOR VALUES IN (8, 1);
CREATE TABLE bench.t_list4_p1 PARTITION OF bench.t_list4 FOR VALUES IN (3, 6);
CREATE TABLE bench.t_list4_p2 PARTITION OF bench.t_list4 FOR VALUES IN (4, 0);
CREATE TABLE bench.t_list4_p3 PARTITION OF bench.t_list4 FOR VALUES IN (2);
CREATE TABLE bench.t_list4_p4 PARTITION OF bench.t_list4 FOR VALUES IN (5);
CREATE TABLE bench.t_list4_p5 PARTITION OF bench.t_list4 FOR VALUES IN (9);
CREATE TABLE bench.t_list4_p6 PARTITION OF bench.t_list4 FOR VALUES IN (7);

CREATE TABLE bench.t_list5 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 char(3)
    ,c4 date
    ,c5 timestamp
    ,c6 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list5_p0 PARTITION OF bench.t_list5 FOR VALUES IN (1, 0);
CREATE TABLE bench.t_list5_p1 PARTITION OF bench.t_list5 FOR VALUES IN (6, 4);
CREATE TABLE bench.t_list5_p2 PARTITION OF bench.t_list5 FOR VALUES IN (3, 9);
CREATE TABLE bench.t_list5_p3 PARTITION OF bench.t_list5 FOR VALUES IN (2, 7);
CREATE TABLE bench.t_list5_p4 PARTITION OF bench.t_list5 FOR VALUES IN (8);
CREATE TABLE bench.t_list5_p5 PARTITION OF bench.t_list5 FOR VALUES IN (5);

CREATE TABLE bench.t_list6 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(5)
    ,c3 char(18)
    ,c4 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list6_p0 PARTITION OF bench.t_list6 FOR VALUES IN (3, 5, 7, 9);
CREATE TABLE bench.t_list6_p1 PARTITION OF bench.t_list6 FOR VALUES IN (2, 6, 8);
CREATE TABLE bench.t_list6_p2 PARTITION OF bench.t_list6 FOR VALUES IN (1, 0, 4);

CREATE TABLE bench.t_list7 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 bytea
    ,c4 boolean
    ,c5 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list7_p0 PARTITION OF bench.t_list7 FOR VALUES IN (5, 6);
CREATE TABLE bench.t_list7_p1 PARTITION OF bench.t_list7 FOR VALUES IN (3, 9);
CREATE TABLE bench.t_list7_p2 PARTITION OF bench.t_list7 FOR VALUES IN (8, 2);
CREATE TABLE bench.t_list7_p3 PARTITION OF bench.t_list7 FOR VALUES IN (7);
CREATE TABLE bench.t_list7_p4 PARTITION OF bench.t_list7 FOR VALUES IN (4);
CREATE TABLE bench.t_list7_p5 PARTITION OF bench.t_list7 FOR VALUES IN (1);
CREATE TABLE bench.t_list7_p6 PARTITION OF bench.t_list7 FOR VALUES IN (0);

CREATE TABLE bench.t_list8 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 bytea
    ,c4 boolean
    ,c5 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list8_p0 PARTITION OF bench.t_list8 FOR VALUES IN (6, 5);
CREATE TABLE bench.t_list8_p1 PARTITION OF bench.t_list8 FOR VALUES IN (2, 4);
CREATE TABLE bench.t_list8_p2 PARTITION OF bench.t_list8 FOR VALUES IN (0, 3);
CREATE TABLE bench.t_list8_p3 PARTITION OF bench.t_list8 FOR VALUES IN (8, 1);
CREATE TABLE bench.t_list8_p4 PARTITION OF bench.t_list8 FOR VALUES IN (9);
CREATE TABLE bench.t_list8_p5 PARTITION OF bench.t_list8 FOR VALUES IN (7);

CREATE TABLE bench.t_list9 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(43)
    ,c3 varchar(44)
    ,c4 numeric(10,3)
    ,c5 time
    ,c6 real
    ,c7 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list9_p0 PARTITION OF bench.t_list9 FOR VALUES IN (5, 6, 7);
CREATE TABLE bench.t_list9_p1 PARTITION OF bench.t_list9 FOR VALUES IN (3, 4, 2);
CREATE TABLE bench.t_list9_p2 PARTITION OF bench.t_list9 FOR VALUES IN (1, 0);
CREATE TABLE bench.t_list9_p3 PARTITION OF bench.t_list9 FOR VALUES IN (9, 8);

CREATE TABLE bench.t_list10 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 integer
    ,c3 timestamp
    ,c4 bigint
    ,c5 char(18)
    ,c6 varchar(47)
    ,c7 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list10_p0 PARTITION OF bench.t_list10 FOR VALUES IN (4, 2, 3);
CREATE TABLE bench.t_list10_p1 PARTITION OF bench.t_list10 FOR VALUES IN (0, 7, 5);
CREATE TABLE bench.t_list10_p2 PARTITION OF bench.t_list10 FOR VALUES IN (8, 9);
CREATE TABLE bench.t_list10_p3 PARTITION OF bench.t_list10 FOR VALUES IN (6, 1);
