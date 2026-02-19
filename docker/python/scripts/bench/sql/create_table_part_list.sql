CREATE TABLE bench.t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(37)
    ,c3 timestamp
    ,c4 time
    ,c5 smallint
    ,c6 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list1_p0 PARTITION OF bench.t_list1 FOR VALUES IN (8, 2);
CREATE TABLE bench.t_list1_p1 PARTITION OF bench.t_list1 FOR VALUES IN (9, 3);
CREATE TABLE bench.t_list1_p2 PARTITION OF bench.t_list1 FOR VALUES IN (0, 1);
CREATE TABLE bench.t_list1_p3 PARTITION OF bench.t_list1 FOR VALUES IN (6);
CREATE TABLE bench.t_list1_p4 PARTITION OF bench.t_list1 FOR VALUES IN (4);
CREATE TABLE bench.t_list1_p5 PARTITION OF bench.t_list1 FOR VALUES IN (7);
CREATE TABLE bench.t_list1_p6 PARTITION OF bench.t_list1 FOR VALUES IN (5);

CREATE TABLE bench.t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 varchar(24)
    ,c4 text
    ,c5 text
    ,c6 char(7)
    ,c7 numeric(10,0)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list2_p0 PARTITION OF bench.t_list2 FOR VALUES IN (9, 2, 5, 8);
CREATE TABLE bench.t_list2_p1 PARTITION OF bench.t_list2 FOR VALUES IN (6, 4, 3);
CREATE TABLE bench.t_list2_p2 PARTITION OF bench.t_list2 FOR VALUES IN (7, 1, 0);

CREATE TABLE bench.t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 date
    ,c3 double precision
    ,c4 smallint
    ,c5 bigint
    ,c6 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list3_p0 PARTITION OF bench.t_list3 FOR VALUES IN (0, 5);
CREATE TABLE bench.t_list3_p1 PARTITION OF bench.t_list3 FOR VALUES IN (1, 2);
CREATE TABLE bench.t_list3_p2 PARTITION OF bench.t_list3 FOR VALUES IN (3, 8);
CREATE TABLE bench.t_list3_p3 PARTITION OF bench.t_list3 FOR VALUES IN (6);
CREATE TABLE bench.t_list3_p4 PARTITION OF bench.t_list3 FOR VALUES IN (4);
CREATE TABLE bench.t_list3_p5 PARTITION OF bench.t_list3 FOR VALUES IN (9);
CREATE TABLE bench.t_list3_p6 PARTITION OF bench.t_list3 FOR VALUES IN (7);
