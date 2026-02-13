CREATE TABLE bench.t_range1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 boolean
    ,c3 varchar(5)
    ,c4 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range1_p0 PARTITION OF bench.t_range1 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE bench.t_range1_p1 PARTITION OF bench.t_range1 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE bench.t_range1_p2 PARTITION OF bench.t_range1 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE bench.t_range1_p3 PARTITION OF bench.t_range1 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE bench.t_range1_p4 PARTITION OF bench.t_range1 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE bench.t_range1_p5 PARTITION OF bench.t_range1 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE bench.t_range1_p6 PARTITION OF bench.t_range1 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE bench.t_range1_p7 PARTITION OF bench.t_range1 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE bench.t_range1_px PARTITION OF bench.t_range1 FOR VALUES FROM (8000000) TO (2147483647);

CREATE TABLE bench.t_range2 (
    id BIGSERIAL
    ,c1 date
    ,c2 date
    ,c3 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range2_p0 PARTITION OF bench.t_range2 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_range2_p1 PARTITION OF bench.t_range2 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_range2_p2 PARTITION OF bench.t_range2 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_range2_p3 PARTITION OF bench.t_range2 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_range2_p4 PARTITION OF bench.t_range2 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_range2_p5 PARTITION OF bench.t_range2 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE bench.t_range2_p6 PARTITION OF bench.t_range2 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE bench.t_range2_p7 PARTITION OF bench.t_range2 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE bench.t_range2_p8 PARTITION OF bench.t_range2 FOR VALUES FROM ('2050-01-01') TO ('2060-01-01');
CREATE TABLE bench.t_range2_p9 PARTITION OF bench.t_range2 FOR VALUES FROM ('2060-01-01') TO ('2070-01-01');
CREATE TABLE bench.t_range2_px PARTITION OF bench.t_range2 FOR VALUES FROM ('2070-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_range3 (
    id BIGSERIAL
    ,c1 date
    ,c2 char(10)
    ,c3 numeric(7,3)
    ,c4 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range3_p0 PARTITION OF bench.t_range3 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_range3_p1 PARTITION OF bench.t_range3 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_range3_p2 PARTITION OF bench.t_range3 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_range3_p3 PARTITION OF bench.t_range3 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_range3_p4 PARTITION OF bench.t_range3 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_range3_p5 PARTITION OF bench.t_range3 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE bench.t_range3_p6 PARTITION OF bench.t_range3 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE bench.t_range3_p7 PARTITION OF bench.t_range3 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE bench.t_range3_p8 PARTITION OF bench.t_range3 FOR VALUES FROM ('2050-01-01') TO ('2060-01-01');
CREATE TABLE bench.t_range3_px PARTITION OF bench.t_range3 FOR VALUES FROM ('2060-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_range4 (
    id BIGSERIAL
    ,c1 date
    ,c2 varchar(48)
    ,c3 double precision
    ,c4 bigint
    ,c5 jsonb
    ,c6 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range4_p0 PARTITION OF bench.t_range4 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_range4_p1 PARTITION OF bench.t_range4 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_range4_p2 PARTITION OF bench.t_range4 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_range4_p3 PARTITION OF bench.t_range4 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_range4_p4 PARTITION OF bench.t_range4 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_range4_p5 PARTITION OF bench.t_range4 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE bench.t_range4_p6 PARTITION OF bench.t_range4 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE bench.t_range4_p7 PARTITION OF bench.t_range4 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE bench.t_range4_px PARTITION OF bench.t_range4 FOR VALUES FROM ('2050-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_range5 (
    id BIGSERIAL
    ,c1 integer
    ,c2 boolean
    ,c3 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range5_p0 PARTITION OF bench.t_range5 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE bench.t_range5_p1 PARTITION OF bench.t_range5 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE bench.t_range5_p2 PARTITION OF bench.t_range5 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE bench.t_range5_p3 PARTITION OF bench.t_range5 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE bench.t_range5_p4 PARTITION OF bench.t_range5 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE bench.t_range5_p5 PARTITION OF bench.t_range5 FOR VALUES FROM (5000000) TO (6000000);
CREATE TABLE bench.t_range5_p6 PARTITION OF bench.t_range5 FOR VALUES FROM (6000000) TO (7000000);
CREATE TABLE bench.t_range5_p7 PARTITION OF bench.t_range5 FOR VALUES FROM (7000000) TO (8000000);
CREATE TABLE bench.t_range5_p8 PARTITION OF bench.t_range5 FOR VALUES FROM (8000000) TO (9000000);
CREATE TABLE bench.t_range5_p9 PARTITION OF bench.t_range5 FOR VALUES FROM (9000000) TO (10000000);
CREATE TABLE bench.t_range5_px PARTITION OF bench.t_range5 FOR VALUES FROM (10000000) TO (2147483647);

CREATE TABLE bench.t_range6 (
    id BIGSERIAL
    ,c1 integer
    ,c2 jsonb
    ,c3 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range6_p0 PARTITION OF bench.t_range6 FOR VALUES FROM (0) TO (1000000);
CREATE TABLE bench.t_range6_p1 PARTITION OF bench.t_range6 FOR VALUES FROM (1000000) TO (2000000);
CREATE TABLE bench.t_range6_p2 PARTITION OF bench.t_range6 FOR VALUES FROM (2000000) TO (3000000);
CREATE TABLE bench.t_range6_p3 PARTITION OF bench.t_range6 FOR VALUES FROM (3000000) TO (4000000);
CREATE TABLE bench.t_range6_p4 PARTITION OF bench.t_range6 FOR VALUES FROM (4000000) TO (5000000);
CREATE TABLE bench.t_range6_px PARTITION OF bench.t_range6 FOR VALUES FROM (5000000) TO (2147483647);

CREATE TABLE bench.t_range7 (
    id BIGSERIAL
    ,c1 date
    ,c2 double precision
    ,c3 bytea
    ,c4 jsonb
    ,c5 jsonb
    ,c6 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range7_p0 PARTITION OF bench.t_range7 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_range7_p1 PARTITION OF bench.t_range7 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_range7_p2 PARTITION OF bench.t_range7 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_range7_p3 PARTITION OF bench.t_range7 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_range7_p4 PARTITION OF bench.t_range7 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_range7_p5 PARTITION OF bench.t_range7 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE bench.t_range7_p6 PARTITION OF bench.t_range7 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE bench.t_range7_px PARTITION OF bench.t_range7 FOR VALUES FROM ('2040-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_range8 (
    id BIGSERIAL
    ,c1 date
    ,c2 text
    ,c3 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range8_p0 PARTITION OF bench.t_range8 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_range8_p1 PARTITION OF bench.t_range8 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_range8_p2 PARTITION OF bench.t_range8 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_range8_p3 PARTITION OF bench.t_range8 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_range8_p4 PARTITION OF bench.t_range8 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_range8_p5 PARTITION OF bench.t_range8 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE bench.t_range8_p6 PARTITION OF bench.t_range8 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE bench.t_range8_px PARTITION OF bench.t_range8 FOR VALUES FROM ('2040-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_range9 (
    id BIGSERIAL
    ,c1 date
    ,c2 smallint
    ,c3 numeric(7,1)
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range9_p0 PARTITION OF bench.t_range9 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_range9_p1 PARTITION OF bench.t_range9 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_range9_p2 PARTITION OF bench.t_range9 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_range9_p3 PARTITION OF bench.t_range9 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_range9_p4 PARTITION OF bench.t_range9 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_range9_px PARTITION OF bench.t_range9 FOR VALUES FROM ('2020-01-01') TO ('9999-01-01');

CREATE TABLE bench.t_range10 (
    id BIGSERIAL
    ,c1 date
    ,c2 date
    ,c3 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY RANGE (c1);

CREATE TABLE bench.t_range10_p0 PARTITION OF bench.t_range10 FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');
CREATE TABLE bench.t_range10_p1 PARTITION OF bench.t_range10 FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');
CREATE TABLE bench.t_range10_p2 PARTITION OF bench.t_range10 FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');
CREATE TABLE bench.t_range10_p3 PARTITION OF bench.t_range10 FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');
CREATE TABLE bench.t_range10_p4 PARTITION OF bench.t_range10 FOR VALUES FROM ('2010-01-01') TO ('2020-01-01');
CREATE TABLE bench.t_range10_p5 PARTITION OF bench.t_range10 FOR VALUES FROM ('2020-01-01') TO ('2030-01-01');
CREATE TABLE bench.t_range10_p6 PARTITION OF bench.t_range10 FOR VALUES FROM ('2030-01-01') TO ('2040-01-01');
CREATE TABLE bench.t_range10_p7 PARTITION OF bench.t_range10 FOR VALUES FROM ('2040-01-01') TO ('2050-01-01');
CREATE TABLE bench.t_range10_p8 PARTITION OF bench.t_range10 FOR VALUES FROM ('2050-01-01') TO ('2060-01-01');
CREATE TABLE bench.t_range10_p9 PARTITION OF bench.t_range10 FOR VALUES FROM ('2060-01-01') TO ('2070-01-01');
CREATE TABLE bench.t_range10_px PARTITION OF bench.t_range10 FOR VALUES FROM ('2070-01-01') TO ('9999-01-01');
