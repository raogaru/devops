CREATE TABLE bench.t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 smallint
    ,c3 bigint
    ,c4 timestamp
    ,c5 boolean
    ,c6 boolean
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash1_p0 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash1_p1 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash1_p2 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE bench.t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 timestamp
    ,c3 jsonb
    ,c4 time
    ,c5 real
    ,c6 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash2_p0 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 8, REMAINDER 0);
CREATE TABLE bench.t_hash2_p1 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 8, REMAINDER 1);
CREATE TABLE bench.t_hash2_p2 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 8, REMAINDER 2);
CREATE TABLE bench.t_hash2_p3 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 8, REMAINDER 3);
CREATE TABLE bench.t_hash2_p4 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 8, REMAINDER 4);
CREATE TABLE bench.t_hash2_p5 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 8, REMAINDER 5);
CREATE TABLE bench.t_hash2_p6 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 8, REMAINDER 6);
CREATE TABLE bench.t_hash2_p7 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 8, REMAINDER 7);

CREATE TABLE bench.t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 timestamp
    ,c3 uuid
    ,c4 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash3_p0 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 4, REMAINDER 0);
CREATE TABLE bench.t_hash3_p1 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 4, REMAINDER 1);
CREATE TABLE bench.t_hash3_p2 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 4, REMAINDER 2);
CREATE TABLE bench.t_hash3_p3 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 4, REMAINDER 3);

CREATE TABLE bench.t_hash4 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 real
    ,c4 varchar(29)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash4_p0 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 6, REMAINDER 0);
CREATE TABLE bench.t_hash4_p1 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 6, REMAINDER 1);
CREATE TABLE bench.t_hash4_p2 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 6, REMAINDER 2);
CREATE TABLE bench.t_hash4_p3 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 6, REMAINDER 3);
CREATE TABLE bench.t_hash4_p4 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 6, REMAINDER 4);
CREATE TABLE bench.t_hash4_p5 PARTITION OF bench.t_hash4 FOR VALUES WITH (MODULUS 6, REMAINDER 5);

CREATE TABLE bench.t_hash5 (
    id BIGSERIAL
    ,c1 integer
    ,c2 date
    ,c3 varchar(8)
    ,c4 numeric(4,2)
    ,c5 integer
    ,c6 bigint
    ,c7 uuid
    ,c8 char(7)
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash5_p0 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash5_p1 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash5_p2 PARTITION OF bench.t_hash5 FOR VALUES WITH (MODULUS 3, REMAINDER 2);

CREATE TABLE bench.t_hash6 (
    id BIGSERIAL
    ,c1 integer
    ,c2 real
    ,c3 boolean
    ,c4 bigint
    ,c5 bytea
    ,c6 char(20)
    ,c7 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash6_p0 PARTITION OF bench.t_hash6 FOR VALUES WITH (MODULUS 7, REMAINDER 0);
CREATE TABLE bench.t_hash6_p1 PARTITION OF bench.t_hash6 FOR VALUES WITH (MODULUS 7, REMAINDER 1);
CREATE TABLE bench.t_hash6_p2 PARTITION OF bench.t_hash6 FOR VALUES WITH (MODULUS 7, REMAINDER 2);
CREATE TABLE bench.t_hash6_p3 PARTITION OF bench.t_hash6 FOR VALUES WITH (MODULUS 7, REMAINDER 3);
CREATE TABLE bench.t_hash6_p4 PARTITION OF bench.t_hash6 FOR VALUES WITH (MODULUS 7, REMAINDER 4);
CREATE TABLE bench.t_hash6_p5 PARTITION OF bench.t_hash6 FOR VALUES WITH (MODULUS 7, REMAINDER 5);
CREATE TABLE bench.t_hash6_p6 PARTITION OF bench.t_hash6 FOR VALUES WITH (MODULUS 7, REMAINDER 6);

CREATE TABLE bench.t_hash7 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 date
    ,c4 jsonb
    ,c5 integer
    ,c6 boolean
    ,c7 jsonb
    ,c8 real
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
    ,c2 date
    ,c3 uuid
    ,c4 timestamp
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash8_p0 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 5, REMAINDER 0);
CREATE TABLE bench.t_hash8_p1 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 5, REMAINDER 1);
CREATE TABLE bench.t_hash8_p2 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 5, REMAINDER 2);
CREATE TABLE bench.t_hash8_p3 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 5, REMAINDER 3);
CREATE TABLE bench.t_hash8_p4 PARTITION OF bench.t_hash8 FOR VALUES WITH (MODULUS 5, REMAINDER 4);

CREATE TABLE bench.t_hash9 (
    id BIGSERIAL
    ,c1 integer
    ,c2 integer
    ,c3 jsonb
    ,c4 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash9_p0 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 8, REMAINDER 0);
CREATE TABLE bench.t_hash9_p1 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 8, REMAINDER 1);
CREATE TABLE bench.t_hash9_p2 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 8, REMAINDER 2);
CREATE TABLE bench.t_hash9_p3 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 8, REMAINDER 3);
CREATE TABLE bench.t_hash9_p4 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 8, REMAINDER 4);
CREATE TABLE bench.t_hash9_p5 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 8, REMAINDER 5);
CREATE TABLE bench.t_hash9_p6 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 8, REMAINDER 6);
CREATE TABLE bench.t_hash9_p7 PARTITION OF bench.t_hash9 FOR VALUES WITH (MODULUS 8, REMAINDER 7);

CREATE TABLE bench.t_hash10 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 boolean
    ,c4 integer
    ,c5 varchar(28)
    ,c6 real
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash10_p0 PARTITION OF bench.t_hash10 FOR VALUES WITH (MODULUS 3, REMAINDER 0);
CREATE TABLE bench.t_hash10_p1 PARTITION OF bench.t_hash10 FOR VALUES WITH (MODULUS 3, REMAINDER 1);
CREATE TABLE bench.t_hash10_p2 PARTITION OF bench.t_hash10 FOR VALUES WITH (MODULUS 3, REMAINDER 2);
