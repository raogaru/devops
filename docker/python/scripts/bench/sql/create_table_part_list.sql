CREATE TABLE bench.tpl1 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 timestamp
    ,c3 date
    ,c4 varchar(36)
    ,c5 char(6)
    ,c6 integer
    ,c7 timestamp
    ,c8 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.tpl1_p0 PARTITION OF bench.tpl1 FOR VALUES IN (6, 4);
CREATE TABLE bench.tpl1_p1 PARTITION OF bench.tpl1 FOR VALUES IN (3, 5);
CREATE TABLE bench.tpl1_p2 PARTITION OF bench.tpl1 FOR VALUES IN (9, 8);
CREATE TABLE bench.tpl1_p3 PARTITION OF bench.tpl1 FOR VALUES IN (0);
CREATE TABLE bench.tpl1_p4 PARTITION OF bench.tpl1 FOR VALUES IN (2);
CREATE TABLE bench.tpl1_p5 PARTITION OF bench.tpl1 FOR VALUES IN (1);
CREATE TABLE bench.tpl1_p6 PARTITION OF bench.tpl1 FOR VALUES IN (7);

CREATE TABLE bench.tpl2 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 varchar(22)
    ,c4 integer
    ,c5 date
    ,c6 numeric(8,3)
    ,c7 char(12)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.tpl2_p0 PARTITION OF bench.tpl2 FOR VALUES IN (6, 9, 1, 5);
CREATE TABLE bench.tpl2_p1 PARTITION OF bench.tpl2 FOR VALUES IN (0, 3, 7);
CREATE TABLE bench.tpl2_p2 PARTITION OF bench.tpl2 FOR VALUES IN (4, 8, 2);

CREATE TABLE bench.tpl3 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 varchar(13)
    ,c4 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.tpl3_p0 PARTITION OF bench.tpl3 FOR VALUES IN (4, 6, 1);
CREATE TABLE bench.tpl3_p1 PARTITION OF bench.tpl3 FOR VALUES IN (9, 8, 5);
CREATE TABLE bench.tpl3_p2 PARTITION OF bench.tpl3 FOR VALUES IN (7, 2);
CREATE TABLE bench.tpl3_p3 PARTITION OF bench.tpl3 FOR VALUES IN (3, 0);

CREATE TABLE bench.tpl4 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 real
    ,c3 date
    ,c4 varchar(50)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.tpl4_p0 PARTITION OF bench.tpl4 FOR VALUES IN (4, 1, 5, 9);
CREATE TABLE bench.tpl4_p1 PARTITION OF bench.tpl4 FOR VALUES IN (0, 8, 7);
CREATE TABLE bench.tpl4_p2 PARTITION OF bench.tpl4 FOR VALUES IN (2, 6, 3);

CREATE TABLE bench.tpl5 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 uuid
    ,c3 time
    ,c4 date
    ,c5 bigint
    ,c6 numeric(11,2)
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.tpl5_p0 PARTITION OF bench.tpl5 FOR VALUES IN (3, 0, 9);
CREATE TABLE bench.tpl5_p1 PARTITION OF bench.tpl5 FOR VALUES IN (5, 8, 7);
CREATE TABLE bench.tpl5_p2 PARTITION OF bench.tpl5 FOR VALUES IN (6, 4);
CREATE TABLE bench.tpl5_p3 PARTITION OF bench.tpl5 FOR VALUES IN (2, 1);

CREATE TABLE bench.tpl6 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 varchar(1)
    ,c3 integer
    ,c4 char(20)
    ,c5 bigint
    ,c6 text
    ,c7 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.tpl6_p0 PARTITION OF bench.tpl6 FOR VALUES IN (8, 6);
CREATE TABLE bench.tpl6_p1 PARTITION OF bench.tpl6 FOR VALUES IN (5, 3);
CREATE TABLE bench.tpl6_p2 PARTITION OF bench.tpl6 FOR VALUES IN (2, 7);
CREATE TABLE bench.tpl6_p3 PARTITION OF bench.tpl6 FOR VALUES IN (4, 9);
CREATE TABLE bench.tpl6_p4 PARTITION OF bench.tpl6 FOR VALUES IN (0, 1);

CREATE TABLE bench.tpl7 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 bigint
    ,c3 date
    ,c4 numeric(9,0)
    ,c5 uuid
    ,c6 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.tpl7_p0 PARTITION OF bench.tpl7 FOR VALUES IN (5, 1);
CREATE TABLE bench.tpl7_p1 PARTITION OF bench.tpl7 FOR VALUES IN (6, 9);
CREATE TABLE bench.tpl7_p2 PARTITION OF bench.tpl7 FOR VALUES IN (0, 4);
CREATE TABLE bench.tpl7_p3 PARTITION OF bench.tpl7 FOR VALUES IN (7, 3);
CREATE TABLE bench.tpl7_p4 PARTITION OF bench.tpl7 FOR VALUES IN (2);
CREATE TABLE bench.tpl7_p5 PARTITION OF bench.tpl7 FOR VALUES IN (8);

CREATE TABLE bench.tpl8 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 text
    ,c3 smallint
    ,c4 uuid
    ,c5 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.tpl8_p0 PARTITION OF bench.tpl8 FOR VALUES IN (6, 7);
CREATE TABLE bench.tpl8_p1 PARTITION OF bench.tpl8 FOR VALUES IN (4, 0);
CREATE TABLE bench.tpl8_p2 PARTITION OF bench.tpl8 FOR VALUES IN (2, 3);
CREATE TABLE bench.tpl8_p3 PARTITION OF bench.tpl8 FOR VALUES IN (5, 9);
CREATE TABLE bench.tpl8_p4 PARTITION OF bench.tpl8 FOR VALUES IN (8, 1);

CREATE TABLE bench.tpl9 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 smallint
    ,c3 date
    ,c4 double precision
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.tpl9_p0 PARTITION OF bench.tpl9 FOR VALUES IN (9, 3);
CREATE TABLE bench.tpl9_p1 PARTITION OF bench.tpl9 FOR VALUES IN (8, 2);
CREATE TABLE bench.tpl9_p2 PARTITION OF bench.tpl9 FOR VALUES IN (6, 0);
CREATE TABLE bench.tpl9_p3 PARTITION OF bench.tpl9 FOR VALUES IN (7, 4);
CREATE TABLE bench.tpl9_p4 PARTITION OF bench.tpl9 FOR VALUES IN (5);
CREATE TABLE bench.tpl9_p5 PARTITION OF bench.tpl9 FOR VALUES IN (1);

CREATE TABLE bench.tpl10 (
    id BIGSERIAL
    ,c1 numeric(1,0)
    ,c2 numeric(11,1)
    ,c3 jsonb
    ,c4 smallint
    ,c5 real
    ,c6 date
    ,c7 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY LIST (c1);

CREATE TABLE bench.tpl10_p0 PARTITION OF bench.tpl10 FOR VALUES IN (4, 8, 0, 9);
CREATE TABLE bench.tpl10_p1 PARTITION OF bench.tpl10 FOR VALUES IN (3, 6, 2);
CREATE TABLE bench.tpl10_p2 PARTITION OF bench.tpl10 FOR VALUES IN (1, 7, 5);
