CREATE TABLE bench.t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(7)
    ,c3 char(5)
    ,c4 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list1_p0 PARTITION OF bench.t_list1 FOR VALUES IN (1, 2, 6, 5);
CREATE TABLE bench.t_list1_p1 PARTITION OF bench.t_list1 FOR VALUES IN (4, 0, 3);
CREATE TABLE bench.t_list1_p2 PARTITION OF bench.t_list1 FOR VALUES IN (9, 7, 8);

CREATE TABLE bench.t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 varchar(12)
    ,c4 numeric(10,0)
    ,c5 numeric(6,0)
    ,c6 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list2_p0 PARTITION OF bench.t_list2 FOR VALUES IN (8, 1);
CREATE TABLE bench.t_list2_p1 PARTITION OF bench.t_list2 FOR VALUES IN (9, 6);
CREATE TABLE bench.t_list2_p2 PARTITION OF bench.t_list2 FOR VALUES IN (7, 3);
CREATE TABLE bench.t_list2_p3 PARTITION OF bench.t_list2 FOR VALUES IN (4, 2);
CREATE TABLE bench.t_list2_p4 PARTITION OF bench.t_list2 FOR VALUES IN (0, 5);

CREATE TABLE bench.t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 double precision
    ,c3 smallint
    ,c4 timestamp
    ,c5 text
    ,c6 bytea
    ,c7 uuid
    ,c8 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list3_p0 PARTITION OF bench.t_list3 FOR VALUES IN (7, 5);
CREATE TABLE bench.t_list3_p1 PARTITION OF bench.t_list3 FOR VALUES IN (6, 4);
CREATE TABLE bench.t_list3_p2 PARTITION OF bench.t_list3 FOR VALUES IN (0);
CREATE TABLE bench.t_list3_p3 PARTITION OF bench.t_list3 FOR VALUES IN (8);
CREATE TABLE bench.t_list3_p4 PARTITION OF bench.t_list3 FOR VALUES IN (2);
CREATE TABLE bench.t_list3_p5 PARTITION OF bench.t_list3 FOR VALUES IN (9);
CREATE TABLE bench.t_list3_p6 PARTITION OF bench.t_list3 FOR VALUES IN (1);
CREATE TABLE bench.t_list3_p7 PARTITION OF bench.t_list3 FOR VALUES IN (3);
