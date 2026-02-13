CREATE TABLE bench.t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 uuid
    ,c4 varchar(8)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash1_p0 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 6, REMAINDER 0);
CREATE TABLE bench.t_hash1_p1 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 6, REMAINDER 1);
CREATE TABLE bench.t_hash1_p2 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 6, REMAINDER 2);
CREATE TABLE bench.t_hash1_p3 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 6, REMAINDER 3);
CREATE TABLE bench.t_hash1_p4 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 6, REMAINDER 4);
CREATE TABLE bench.t_hash1_p5 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 6, REMAINDER 5);

CREATE TABLE bench.t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 smallint
    ,c4 timestamp
    ,c5 jsonb
    ,c6 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash2_p0 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash2_p1 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash2_p2 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE bench.t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 timestamp
    ,c3 integer
    ,c4 text
    ,c5 timestamp
    ,c6 text
    ,c7 uuid
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash3_p0 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash3_p1 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash3_p2 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE bench.t_hash4 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 varchar(31)
    ,c4 smallint
    ,c5 time
    ,c6 numeric(6,2)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash4_p0 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 5, REMAINDER 0);
CREATE TABLE bench.t_hash4_p1 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 5, REMAINDER 1);
CREATE TABLE bench.t_hash4_p2 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 5, REMAINDER 2);
CREATE TABLE bench.t_hash4_p3 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 5, REMAINDER 3);
CREATE TABLE bench.t_hash4_p4 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 5, REMAINDER 4);

CREATE TABLE bench.t_hash5 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 uuid
    ,c4 date
    ,c5 varchar(20)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash5_p0 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 6, REMAINDER 0);
CREATE TABLE bench.t_hash5_p1 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 6, REMAINDER 1);
CREATE TABLE bench.t_hash5_p2 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 6, REMAINDER 2);
CREATE TABLE bench.t_hash5_p3 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 6, REMAINDER 3);
CREATE TABLE bench.t_hash5_p4 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 6, REMAINDER 4);
CREATE TABLE bench.t_hash5_p5 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 6, REMAINDER 5);

CREATE TABLE bench.t_hash6 (
    id BIGSERIAL
    ,c1 integer
    ,c2 bigint
    ,c3 varchar(19)
    ,c4 time
    ,c5 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash6_p0 PARTITION OF bench.t_hash6 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash6_p1 PARTITION OF bench.t_hash6 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash6_p2 PARTITION OF bench.t_hash6 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE bench.t_hash7 (
    id BIGSERIAL
    ,c1 integer
    ,c2 time
    ,c3 bigint
    ,c4 uuid
    ,c5 date
    ,c6 uuid
    ,c7 numeric(5,2)
    ,c8 bigint
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash7_p0 PARTITION OF bench.t_hash7 FOR VALUES WITH (MODULUS 5, REMAINDER 0);
CREATE TABLE bench.t_hash7_p1 PARTITION OF bench.t_hash7 FOR VALUES WITH (MODULUS 5, REMAINDER 1);
CREATE TABLE bench.t_hash7_p2 PARTITION OF bench.t_hash7 FOR VALUES WITH (MODULUS 5, REMAINDER 2);
CREATE TABLE bench.t_hash7_p3 PARTITION OF bench.t_hash7 FOR VALUES WITH (MODULUS 5, REMAINDER 3);
CREATE TABLE bench.t_hash7_p4 PARTITION OF bench.t_hash7 FOR VALUES WITH (MODULUS 5, REMAINDER 4);

CREATE TABLE bench.t_hash8 (
    id BIGSERIAL
    ,c1 integer
    ,c2 uuid
    ,c3 smallint
    ,c4 double precision
    ,c5 time
    ,c6 smallint
    ,c7 boolean
    ,c8 jsonb
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash8_p0 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 8, REMAINDER 0);
CREATE TABLE bench.t_hash8_p1 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 8, REMAINDER 1);
CREATE TABLE bench.t_hash8_p2 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 8, REMAINDER 2);
CREATE TABLE bench.t_hash8_p3 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 8, REMAINDER 3);
CREATE TABLE bench.t_hash8_p4 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 8, REMAINDER 4);
CREATE TABLE bench.t_hash8_p5 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 8, REMAINDER 5);
CREATE TABLE bench.t_hash8_p6 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 8, REMAINDER 6);
CREATE TABLE bench.t_hash8_p7 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 8, REMAINDER 7);

CREATE TABLE bench.t_hash9 (
    id BIGSERIAL
    ,c1 integer
    ,c2 timestamp
    ,c3 timestamp
    ,c4 char(7)
    ,c5 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash9_p0 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 6, REMAINDER 0);
CREATE TABLE bench.t_hash9_p1 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 6, REMAINDER 1);
CREATE TABLE bench.t_hash9_p2 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 6, REMAINDER 2);
CREATE TABLE bench.t_hash9_p3 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 6, REMAINDER 3);
CREATE TABLE bench.t_hash9_p4 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 6, REMAINDER 4);
CREATE TABLE bench.t_hash9_p5 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 6, REMAINDER 5);

CREATE TABLE bench.t_hash10 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 smallint
    ,c4 date
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
