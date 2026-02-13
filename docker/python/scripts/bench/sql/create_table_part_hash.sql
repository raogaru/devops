CREATE TABLE bench.t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 smallint
    ,c4 integer
    ,c5 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash1_p0 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash1_p1 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash1_p2 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE bench.t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 double precision
    ,c3 smallint
    ,c4 varchar(4)
    ,c5 varchar(36)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash2_p0 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash2_p1 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash2_p2 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE bench.t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 time
    ,c4 char(12)
    ,c5 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash3_p0 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 6, REMAINDER 0);
CREATE TABLE bench.t_hash3_p1 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 6, REMAINDER 1);
CREATE TABLE bench.t_hash3_p2 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 6, REMAINDER 2);
CREATE TABLE bench.t_hash3_p3 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 6, REMAINDER 3);
CREATE TABLE bench.t_hash3_p4 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 6, REMAINDER 4);
CREATE TABLE bench.t_hash3_p5 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 6, REMAINDER 5);

CREATE TABLE bench.t_hash4 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 bigint
    ,c4 boolean
    ,c5 date
    ,c6 time
    ,c7 boolean
    ,c8 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash4_p0 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash4_p1 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash4_p2 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE bench.t_hash5 (
    id BIGSERIAL
    ,c1 integer
    ,c2 uuid
    ,c3 double precision
    ,c4 boolean
    ,c5 char(10)
    ,c6 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash5_p0 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 7, REMAINDER 0);
CREATE TABLE bench.t_hash5_p1 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 7, REMAINDER 1);
CREATE TABLE bench.t_hash5_p2 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 7, REMAINDER 2);
CREATE TABLE bench.t_hash5_p3 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 7, REMAINDER 3);
CREATE TABLE bench.t_hash5_p4 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 7, REMAINDER 4);
CREATE TABLE bench.t_hash5_p5 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 7, REMAINDER 5);
CREATE TABLE bench.t_hash5_p6 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 7, REMAINDER 6);

CREATE TABLE bench.t_hash6 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 jsonb
    ,c4 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash6_p0 PARTITION OF bench.t_hash6 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash6_p1 PARTITION OF bench.t_hash6 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash6_p2 PARTITION OF bench.t_hash6 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE bench.t_hash7 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 integer
    ,c4 double precision
    ,c5 double precision
    ,c6 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash7_p0 PARTITION OF bench.t_hash7 FOR VALUES WITH (MODULUS 4, REMAINDER 0);
CREATE TABLE bench.t_hash7_p1 PARTITION OF bench.t_hash7 FOR VALUES WITH (MODULUS 4, REMAINDER 1);
CREATE TABLE bench.t_hash7_p2 PARTITION OF bench.t_hash7 FOR VALUES WITH (MODULUS 4, REMAINDER 2);
CREATE TABLE bench.t_hash7_p3 PARTITION OF bench.t_hash7 FOR VALUES WITH (MODULUS 4, REMAINDER 3);

CREATE TABLE bench.t_hash8 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 boolean
    ,c4 time
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash8_p0 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 4, REMAINDER 0);
CREATE TABLE bench.t_hash8_p1 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 4, REMAINDER 1);
CREATE TABLE bench.t_hash8_p2 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 4, REMAINDER 2);
CREATE TABLE bench.t_hash8_p3 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 4, REMAINDER 3);

CREATE TABLE bench.t_hash9 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 numeric(11,0)
    ,c4 char(3)
    ,c5 char(18)
    ,c6 smallint
    ,c7 bigint
    ,c8 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash9_p0 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 7, REMAINDER 0);
CREATE TABLE bench.t_hash9_p1 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 7, REMAINDER 1);
CREATE TABLE bench.t_hash9_p2 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 7, REMAINDER 2);
CREATE TABLE bench.t_hash9_p3 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 7, REMAINDER 3);
CREATE TABLE bench.t_hash9_p4 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 7, REMAINDER 4);
CREATE TABLE bench.t_hash9_p5 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 7, REMAINDER 5);
CREATE TABLE bench.t_hash9_p6 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 7, REMAINDER 6);

CREATE TABLE bench.t_hash10 (
    id BIGSERIAL
    ,c1 integer
    ,c2 date
    ,c3 varchar(26)
    ,c4 varchar(2)
    ,c5 uuid
    ,c6 date
    ,c7 numeric(12,2)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash10_p0 PARTITION OF bench.t_hash10 FOR VALUES WITH (MODULUS 8, REMAINDER 0);
CREATE TABLE bench.t_hash10_p1 PARTITION OF bench.t_hash10 FOR VALUES WITH (MODULUS 8, REMAINDER 1);
CREATE TABLE bench.t_hash10_p2 PARTITION OF bench.t_hash10 FOR VALUES WITH (MODULUS 8, REMAINDER 2);
CREATE TABLE bench.t_hash10_p3 PARTITION OF bench.t_hash10 FOR VALUES WITH (MODULUS 8, REMAINDER 3);
CREATE TABLE bench.t_hash10_p4 PARTITION OF bench.t_hash10 FOR VALUES WITH (MODULUS 8, REMAINDER 4);
CREATE TABLE bench.t_hash10_p5 PARTITION OF bench.t_hash10 FOR VALUES WITH (MODULUS 8, REMAINDER 5);
CREATE TABLE bench.t_hash10_p6 PARTITION OF bench.t_hash10 FOR VALUES WITH (MODULUS 8, REMAINDER 6);
CREATE TABLE bench.t_hash10_p7 PARTITION OF bench.t_hash10 FOR VALUES WITH (MODULUS 8, REMAINDER 7);
