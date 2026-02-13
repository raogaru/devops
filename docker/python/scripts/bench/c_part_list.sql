CREATE TABLE bench.t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 date
    ,c3 time
    ,c4 date
    ,c5 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list1_p0 PARTITION OF bench.t_list1 FOR VALUES IN (5, 1, 9, 3);
CREATE TABLE bench.t_list1_p1 PARTITION OF bench.t_list1 FOR VALUES IN (6, 7, 0);
CREATE TABLE bench.t_list1_p2 PARTITION OF bench.t_list1 FOR VALUES IN (8, 2, 4);

CREATE TABLE bench.t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 integer
    ,c4 bigint
    ,c5 timestamp
    ,c6 jsonb
    ,c7 jsonb
    ,c8 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list2_p0 PARTITION OF bench.t_list2 FOR VALUES IN (4, 1, 7);
CREATE TABLE bench.t_list2_p1 PARTITION OF bench.t_list2 FOR VALUES IN (5, 8, 9);
CREATE TABLE bench.t_list2_p2 PARTITION OF bench.t_list2 FOR VALUES IN (6, 0);
CREATE TABLE bench.t_list2_p3 PARTITION OF bench.t_list2 FOR VALUES IN (2, 3);

CREATE TABLE bench.t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 time
    ,c4 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list3_p0 PARTITION OF bench.t_list3 FOR VALUES IN (8, 4);
CREATE TABLE bench.t_list3_p1 PARTITION OF bench.t_list3 FOR VALUES IN (9, 3);
CREATE TABLE bench.t_list3_p2 PARTITION OF bench.t_list3 FOR VALUES IN (7, 0);
CREATE TABLE bench.t_list3_p3 PARTITION OF bench.t_list3 FOR VALUES IN (1, 6);
CREATE TABLE bench.t_list3_p4 PARTITION OF bench.t_list3 FOR VALUES IN (5);
CREATE TABLE bench.t_list3_p5 PARTITION OF bench.t_list3 FOR VALUES IN (2);

CREATE TABLE bench.t_list4 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(7,3)
    ,c3 real
    ,c4 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list4_p0 PARTITION OF bench.t_list4 FOR VALUES IN (3, 1, 2, 7);
CREATE TABLE bench.t_list4_p1 PARTITION OF bench.t_list4 FOR VALUES IN (8, 0, 9);
CREATE TABLE bench.t_list4_p2 PARTITION OF bench.t_list4 FOR VALUES IN (4, 5, 6);

CREATE TABLE bench.t_list5 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 smallint
    ,c4 integer
    ,c5 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list5_p0 PARTITION OF bench.t_list5 FOR VALUES IN (5, 0);
CREATE TABLE bench.t_list5_p1 PARTITION OF bench.t_list5 FOR VALUES IN (6, 8);
CREATE TABLE bench.t_list5_p2 PARTITION OF bench.t_list5 FOR VALUES IN (2, 1);
CREATE TABLE bench.t_list5_p3 PARTITION OF bench.t_list5 FOR VALUES IN (7, 3);
CREATE TABLE bench.t_list5_p4 PARTITION OF bench.t_list5 FOR VALUES IN (4, 9);

CREATE TABLE bench.t_list6 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 date
    ,c4 bytea
    ,c5 char(5)
    ,c6 bytea
    ,c7 char(11)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list6_p0 PARTITION OF bench.t_list6 FOR VALUES IN (3, 4, 6);
CREATE TABLE bench.t_list6_p1 PARTITION OF bench.t_list6 FOR VALUES IN (2, 7, 1);
CREATE TABLE bench.t_list6_p2 PARTITION OF bench.t_list6 FOR VALUES IN (8, 5);
CREATE TABLE bench.t_list6_p3 PARTITION OF bench.t_list6 FOR VALUES IN (0, 9);

CREATE TABLE bench.t_list7 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 double precision
    ,c4 smallint
    ,c5 time
    ,c6 char(9)
    ,c7 varchar(4)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list7_p0 PARTITION OF bench.t_list7 FOR VALUES IN (3, 9);
CREATE TABLE bench.t_list7_p1 PARTITION OF bench.t_list7 FOR VALUES IN (0, 4);
CREATE TABLE bench.t_list7_p2 PARTITION OF bench.t_list7 FOR VALUES IN (6, 7);
CREATE TABLE bench.t_list7_p3 PARTITION OF bench.t_list7 FOR VALUES IN (8, 1);
CREATE TABLE bench.t_list7_p4 PARTITION OF bench.t_list7 FOR VALUES IN (5, 2);

CREATE TABLE bench.t_list8 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(34)
    ,c3 real
    ,c4 numeric(12,1)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list8_p0 PARTITION OF bench.t_list8 FOR VALUES IN (5, 7);
CREATE TABLE bench.t_list8_p1 PARTITION OF bench.t_list8 FOR VALUES IN (9, 8);
CREATE TABLE bench.t_list8_p2 PARTITION OF bench.t_list8 FOR VALUES IN (4);
CREATE TABLE bench.t_list8_p3 PARTITION OF bench.t_list8 FOR VALUES IN (1);
CREATE TABLE bench.t_list8_p4 PARTITION OF bench.t_list8 FOR VALUES IN (0);
CREATE TABLE bench.t_list8_p5 PARTITION OF bench.t_list8 FOR VALUES IN (2);
CREATE TABLE bench.t_list8_p6 PARTITION OF bench.t_list8 FOR VALUES IN (3);
CREATE TABLE bench.t_list8_p7 PARTITION OF bench.t_list8 FOR VALUES IN (6);

CREATE TABLE bench.t_list9 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 bigint
    ,c4 char(5)
    ,c5 integer
    ,c6 timestamp
    ,c7 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list9_p0 PARTITION OF bench.t_list9 FOR VALUES IN (0, 1);
CREATE TABLE bench.t_list9_p1 PARTITION OF bench.t_list9 FOR VALUES IN (9, 7);
CREATE TABLE bench.t_list9_p2 PARTITION OF bench.t_list9 FOR VALUES IN (5, 3);
CREATE TABLE bench.t_list9_p3 PARTITION OF bench.t_list9 FOR VALUES IN (8);
CREATE TABLE bench.t_list9_p4 PARTITION OF bench.t_list9 FOR VALUES IN (2);
CREATE TABLE bench.t_list9_p5 PARTITION OF bench.t_list9 FOR VALUES IN (6);
CREATE TABLE bench.t_list9_p6 PARTITION OF bench.t_list9 FOR VALUES IN (4);

CREATE TABLE bench.t_list10 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 char(12)
    ,c3 smallint
    ,c4 bigint
    ,c5 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list10_p0 PARTITION OF bench.t_list10 FOR VALUES IN (5, 3);
CREATE TABLE bench.t_list10_p1 PARTITION OF bench.t_list10 FOR VALUES IN (9, 2);
CREATE TABLE bench.t_list10_p2 PARTITION OF bench.t_list10 FOR VALUES IN (1, 0);
CREATE TABLE bench.t_list10_p3 PARTITION OF bench.t_list10 FOR VALUES IN (6, 4);
CREATE TABLE bench.t_list10_p4 PARTITION OF bench.t_list10 FOR VALUES IN (7);
CREATE TABLE bench.t_list10_p5 PARTITION OF bench.t_list10 FOR VALUES IN (8);
