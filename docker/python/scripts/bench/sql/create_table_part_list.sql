CREATE TABLE bench.t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 boolean
    ,c4 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list1_p0 PARTITION OF bench.t_list1 FOR VALUES IN (7, 3);
CREATE TABLE bench.t_list1_p1 PARTITION OF bench.t_list1 FOR VALUES IN (9, 6);
CREATE TABLE bench.t_list1_p2 PARTITION OF bench.t_list1 FOR VALUES IN (4, 2);
CREATE TABLE bench.t_list1_p3 PARTITION OF bench.t_list1 FOR VALUES IN (1);
CREATE TABLE bench.t_list1_p4 PARTITION OF bench.t_list1 FOR VALUES IN (5);
CREATE TABLE bench.t_list1_p5 PARTITION OF bench.t_list1 FOR VALUES IN (0);
CREATE TABLE bench.t_list1_p6 PARTITION OF bench.t_list1 FOR VALUES IN (8);

CREATE TABLE bench.t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 jsonb
    ,c4 boolean
    ,c5 jsonb
    ,c6 smallint
    ,c7 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list2_p0 PARTITION OF bench.t_list2 FOR VALUES IN (5, 6);
CREATE TABLE bench.t_list2_p1 PARTITION OF bench.t_list2 FOR VALUES IN (2, 8);
CREATE TABLE bench.t_list2_p2 PARTITION OF bench.t_list2 FOR VALUES IN (1, 7);
CREATE TABLE bench.t_list2_p3 PARTITION OF bench.t_list2 FOR VALUES IN (0, 3);
CREATE TABLE bench.t_list2_p4 PARTITION OF bench.t_list2 FOR VALUES IN (4);
CREATE TABLE bench.t_list2_p5 PARTITION OF bench.t_list2 FOR VALUES IN (9);

CREATE TABLE bench.t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 jsonb
    ,c4 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list3_p0 PARTITION OF bench.t_list3 FOR VALUES IN (2, 0, 1, 7);
CREATE TABLE bench.t_list3_p1 PARTITION OF bench.t_list3 FOR VALUES IN (8, 9, 3);
CREATE TABLE bench.t_list3_p2 PARTITION OF bench.t_list3 FOR VALUES IN (6, 5, 4);

CREATE TABLE bench.t_list4 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 double precision
    ,c4 boolean
    ,c5 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list4_p0 PARTITION OF bench.t_list4 FOR VALUES IN (2, 5);
CREATE TABLE bench.t_list4_p1 PARTITION OF bench.t_list4 FOR VALUES IN (8, 9);
CREATE TABLE bench.t_list4_p2 PARTITION OF bench.t_list4 FOR VALUES IN (4, 7);
CREATE TABLE bench.t_list4_p3 PARTITION OF bench.t_list4 FOR VALUES IN (1);
CREATE TABLE bench.t_list4_p4 PARTITION OF bench.t_list4 FOR VALUES IN (0);
CREATE TABLE bench.t_list4_p5 PARTITION OF bench.t_list4 FOR VALUES IN (6);
CREATE TABLE bench.t_list4_p6 PARTITION OF bench.t_list4 FOR VALUES IN (3);

CREATE TABLE bench.t_list5 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 double precision
    ,c4 varchar(24)
    ,c5 text
    ,c6 double precision
    ,c7 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list5_p0 PARTITION OF bench.t_list5 FOR VALUES IN (2, 7);
CREATE TABLE bench.t_list5_p1 PARTITION OF bench.t_list5 FOR VALUES IN (1, 8);
CREATE TABLE bench.t_list5_p2 PARTITION OF bench.t_list5 FOR VALUES IN (9, 5);
CREATE TABLE bench.t_list5_p3 PARTITION OF bench.t_list5 FOR VALUES IN (4, 3);
CREATE TABLE bench.t_list5_p4 PARTITION OF bench.t_list5 FOR VALUES IN (0);
CREATE TABLE bench.t_list5_p5 PARTITION OF bench.t_list5 FOR VALUES IN (6);

CREATE TABLE bench.t_list6 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 boolean
    ,c3 bigint
    ,c4 bigint
    ,c5 text
    ,c6 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list6_p0 PARTITION OF bench.t_list6 FOR VALUES IN (9, 3);
CREATE TABLE bench.t_list6_p1 PARTITION OF bench.t_list6 FOR VALUES IN (6, 7);
CREATE TABLE bench.t_list6_p2 PARTITION OF bench.t_list6 FOR VALUES IN (2, 1);
CREATE TABLE bench.t_list6_p3 PARTITION OF bench.t_list6 FOR VALUES IN (5, 0);
CREATE TABLE bench.t_list6_p4 PARTITION OF bench.t_list6 FOR VALUES IN (8);
CREATE TABLE bench.t_list6_p5 PARTITION OF bench.t_list6 FOR VALUES IN (4);

CREATE TABLE bench.t_list7 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 uuid
    ,c3 timestamp
    ,c4 uuid
    ,c5 integer
    ,c6 numeric(9,0)
    ,c7 char(9)
    ,c8 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list7_p0 PARTITION OF bench.t_list7 FOR VALUES IN (7, 1, 6);
CREATE TABLE bench.t_list7_p1 PARTITION OF bench.t_list7 FOR VALUES IN (4, 9, 0);
CREATE TABLE bench.t_list7_p2 PARTITION OF bench.t_list7 FOR VALUES IN (3, 8);
CREATE TABLE bench.t_list7_p3 PARTITION OF bench.t_list7 FOR VALUES IN (2, 5);

CREATE TABLE bench.t_list8 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 time
    ,c4 bytea
    ,c5 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list8_p0 PARTITION OF bench.t_list8 FOR VALUES IN (9, 5, 7);
CREATE TABLE bench.t_list8_p1 PARTITION OF bench.t_list8 FOR VALUES IN (0, 3, 1);
CREATE TABLE bench.t_list8_p2 PARTITION OF bench.t_list8 FOR VALUES IN (8, 4);
CREATE TABLE bench.t_list8_p3 PARTITION OF bench.t_list8 FOR VALUES IN (2, 6);

CREATE TABLE bench.t_list9 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 date
    ,c4 integer
    ,c5 smallint
    ,c6 date
    ,c7 char(15)
    ,c8 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list9_p0 PARTITION OF bench.t_list9 FOR VALUES IN (8, 6);
CREATE TABLE bench.t_list9_p1 PARTITION OF bench.t_list9 FOR VALUES IN (1, 3);
CREATE TABLE bench.t_list9_p2 PARTITION OF bench.t_list9 FOR VALUES IN (5);
CREATE TABLE bench.t_list9_p3 PARTITION OF bench.t_list9 FOR VALUES IN (0);
CREATE TABLE bench.t_list9_p4 PARTITION OF bench.t_list9 FOR VALUES IN (2);
CREATE TABLE bench.t_list9_p5 PARTITION OF bench.t_list9 FOR VALUES IN (4);
CREATE TABLE bench.t_list9_p6 PARTITION OF bench.t_list9 FOR VALUES IN (9);
CREATE TABLE bench.t_list9_p7 PARTITION OF bench.t_list9 FOR VALUES IN (7);

CREATE TABLE bench.t_list10 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 boolean
    ,c4 char(11)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list10_p0 PARTITION OF bench.t_list10 FOR VALUES IN (1, 6);
CREATE TABLE bench.t_list10_p1 PARTITION OF bench.t_list10 FOR VALUES IN (7, 4);
CREATE TABLE bench.t_list10_p2 PARTITION OF bench.t_list10 FOR VALUES IN (3, 5);
CREATE TABLE bench.t_list10_p3 PARTITION OF bench.t_list10 FOR VALUES IN (2);
CREATE TABLE bench.t_list10_p4 PARTITION OF bench.t_list10 FOR VALUES IN (0);
CREATE TABLE bench.t_list10_p5 PARTITION OF bench.t_list10 FOR VALUES IN (8);
CREATE TABLE bench.t_list10_p6 PARTITION OF bench.t_list10 FOR VALUES IN (9);
