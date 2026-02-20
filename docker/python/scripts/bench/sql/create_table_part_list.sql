CREATE TABLE bench.t_list1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 jsonb
    ,c3 text
    ,c4 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list1_p0 PARTITION OF bench.t_list1 FOR VALUES IN (4, 9, 0, 1);
CREATE TABLE bench.t_list1_p1 PARTITION OF bench.t_list1 FOR VALUES IN (5, 6, 7);
CREATE TABLE bench.t_list1_p2 PARTITION OF bench.t_list1 FOR VALUES IN (2, 3, 8);

CREATE TABLE bench.t_list2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bytea
    ,c3 real
    ,c4 double precision
    ,c5 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list2_p0 PARTITION OF bench.t_list2 FOR VALUES IN (2, 1);
CREATE TABLE bench.t_list2_p1 PARTITION OF bench.t_list2 FOR VALUES IN (8, 0);
CREATE TABLE bench.t_list2_p2 PARTITION OF bench.t_list2 FOR VALUES IN (3);
CREATE TABLE bench.t_list2_p3 PARTITION OF bench.t_list2 FOR VALUES IN (9);
CREATE TABLE bench.t_list2_p4 PARTITION OF bench.t_list2 FOR VALUES IN (4);
CREATE TABLE bench.t_list2_p5 PARTITION OF bench.t_list2 FOR VALUES IN (5);
CREATE TABLE bench.t_list2_p6 PARTITION OF bench.t_list2 FOR VALUES IN (7);
CREATE TABLE bench.t_list2_p7 PARTITION OF bench.t_list2 FOR VALUES IN (6);

CREATE TABLE bench.t_list3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 date
    ,c3 uuid
    ,c4 varchar(30)
    ,c5 varchar(47)
    ,c6 integer
    ,c7 bytea
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.t_list3_p0 PARTITION OF bench.t_list3 FOR VALUES IN (2, 8, 5);
CREATE TABLE bench.t_list3_p1 PARTITION OF bench.t_list3 FOR VALUES IN (9, 4, 3);
CREATE TABLE bench.t_list3_p2 PARTITION OF bench.t_list3 FOR VALUES IN (0, 6);
CREATE TABLE bench.t_list3_p3 PARTITION OF bench.t_list3 FOR VALUES IN (7, 1);
