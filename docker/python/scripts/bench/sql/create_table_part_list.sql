CREATE TABLE bench.t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 time
    ,c4 bytea
    ,c5 timestamp
    ,c6 real
    ,c7 char(7)
    ,c8 char(12)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list1_p0 PARTITION OF bench.t_list1 FOR VALUES IN (1, 8);
CREATE TABLE bench.t_list1_p1 PARTITION OF bench.t_list1 FOR VALUES IN (0, 3);
CREATE TABLE bench.t_list1_p2 PARTITION OF bench.t_list1 FOR VALUES IN (2, 5);
CREATE TABLE bench.t_list1_p3 PARTITION OF bench.t_list1 FOR VALUES IN (6, 4);
CREATE TABLE bench.t_list1_p4 PARTITION OF bench.t_list1 FOR VALUES IN (9, 7);

CREATE TABLE bench.t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 uuid
    ,c3 time
    ,c4 date
    ,c5 text
    ,c6 date
    ,c7 varchar(34)
    ,c8 varchar(18)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list2_p0 PARTITION OF bench.t_list2 FOR VALUES IN (2, 9);
CREATE TABLE bench.t_list2_p1 PARTITION OF bench.t_list2 FOR VALUES IN (4, 6);
CREATE TABLE bench.t_list2_p2 PARTITION OF bench.t_list2 FOR VALUES IN (0, 5);
CREATE TABLE bench.t_list2_p3 PARTITION OF bench.t_list2 FOR VALUES IN (7, 3);
CREATE TABLE bench.t_list2_p4 PARTITION OF bench.t_list2 FOR VALUES IN (8);
CREATE TABLE bench.t_list2_p5 PARTITION OF bench.t_list2 FOR VALUES IN (1);

CREATE TABLE bench.t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 time
    ,c3 char(13)
    ,c4 double precision
    ,c5 time
    ,c6 double precision
    ,c7 integer
    ,c8 numeric(8,1)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list3_p0 PARTITION OF bench.t_list3 FOR VALUES IN (1, 2);
CREATE TABLE bench.t_list3_p1 PARTITION OF bench.t_list3 FOR VALUES IN (3, 6);
CREATE TABLE bench.t_list3_p2 PARTITION OF bench.t_list3 FOR VALUES IN (8);
CREATE TABLE bench.t_list3_p3 PARTITION OF bench.t_list3 FOR VALUES IN (5);
CREATE TABLE bench.t_list3_p4 PARTITION OF bench.t_list3 FOR VALUES IN (7);
CREATE TABLE bench.t_list3_p5 PARTITION OF bench.t_list3 FOR VALUES IN (4);
CREATE TABLE bench.t_list3_p6 PARTITION OF bench.t_list3 FOR VALUES IN (9);
CREATE TABLE bench.t_list3_p7 PARTITION OF bench.t_list3 FOR VALUES IN (0);
