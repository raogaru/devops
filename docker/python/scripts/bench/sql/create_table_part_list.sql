CREATE TABLE bench.t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 date
    ,c3 uuid
    ,c4 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list1_p0 PARTITION OF bench.t_list1 FOR VALUES IN (0, 3);
CREATE TABLE bench.t_list1_p1 PARTITION OF bench.t_list1 FOR VALUES IN (4, 7);
CREATE TABLE bench.t_list1_p2 PARTITION OF bench.t_list1 FOR VALUES IN (6, 9);
CREATE TABLE bench.t_list1_p3 PARTITION OF bench.t_list1 FOR VALUES IN (5, 8);
CREATE TABLE bench.t_list1_p4 PARTITION OF bench.t_list1 FOR VALUES IN (1, 2);

CREATE TABLE bench.t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 bytea
    ,c4 bytea
    ,c5 time
    ,c6 numeric(5,2)
    ,c7 numeric(10,2)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list2_p0 PARTITION OF bench.t_list2 FOR VALUES IN (1, 0);
CREATE TABLE bench.t_list2_p1 PARTITION OF bench.t_list2 FOR VALUES IN (7, 8);
CREATE TABLE bench.t_list2_p2 PARTITION OF bench.t_list2 FOR VALUES IN (3);
CREATE TABLE bench.t_list2_p3 PARTITION OF bench.t_list2 FOR VALUES IN (2);
CREATE TABLE bench.t_list2_p4 PARTITION OF bench.t_list2 FOR VALUES IN (9);
CREATE TABLE bench.t_list2_p5 PARTITION OF bench.t_list2 FOR VALUES IN (4);
CREATE TABLE bench.t_list2_p6 PARTITION OF bench.t_list2 FOR VALUES IN (6);
CREATE TABLE bench.t_list2_p7 PARTITION OF bench.t_list2 FOR VALUES IN (5);

CREATE TABLE bench.t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 real
    ,c4 smallint
    ,c5 uuid
    ,c6 double precision
    ,c7 varchar(8)
    ,c8 integer
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list3_p0 PARTITION OF bench.t_list3 FOR VALUES IN (4, 6);
CREATE TABLE bench.t_list3_p1 PARTITION OF bench.t_list3 FOR VALUES IN (2, 8);
CREATE TABLE bench.t_list3_p2 PARTITION OF bench.t_list3 FOR VALUES IN (3);
CREATE TABLE bench.t_list3_p3 PARTITION OF bench.t_list3 FOR VALUES IN (0);
CREATE TABLE bench.t_list3_p4 PARTITION OF bench.t_list3 FOR VALUES IN (5);
CREATE TABLE bench.t_list3_p5 PARTITION OF bench.t_list3 FOR VALUES IN (7);
CREATE TABLE bench.t_list3_p6 PARTITION OF bench.t_list3 FOR VALUES IN (1);
CREATE TABLE bench.t_list3_p7 PARTITION OF bench.t_list3 FOR VALUES IN (9);
