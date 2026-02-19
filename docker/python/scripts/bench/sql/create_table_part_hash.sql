CREATE TABLE bench.t_hash1 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 integer
    ,c4 date
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash1_p0 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 5, REMAINDER 0);
CREATE TABLE bench.t_hash1_p1 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 5, REMAINDER 1);
CREATE TABLE bench.t_hash1_p2 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 5, REMAINDER 2);
CREATE TABLE bench.t_hash1_p3 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 5, REMAINDER 3);
CREATE TABLE bench.t_hash1_p4 PARTITION OF bench.t_hash1 FOR VALUES WITH (MODULUS 5, REMAINDER 4);

CREATE TABLE bench.t_hash2 (
    id BIGSERIAL
    ,c1 integer
    ,c2 char(4)
    ,c3 varchar(23)
    ,c4 double precision
    ,c5 smallint
    ,c6 uuid
    ,c7 real
    ,c8 smallint
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash2_p0 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 5, REMAINDER 0);
CREATE TABLE bench.t_hash2_p1 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 5, REMAINDER 1);
CREATE TABLE bench.t_hash2_p2 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 5, REMAINDER 2);
CREATE TABLE bench.t_hash2_p3 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 5, REMAINDER 3);
CREATE TABLE bench.t_hash2_p4 PARTITION OF bench.t_hash2 FOR VALUES WITH (MODULUS 5, REMAINDER 4);

CREATE TABLE bench.t_hash3 (
    id BIGSERIAL
    ,c1 integer
    ,c2 text
    ,c3 double precision
    ,c4 text
    ,PRIMARY KEY (id, c1)
) PARTITION BY HASH (c1);

CREATE TABLE bench.t_hash3_p0 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 6, REMAINDER 0);
CREATE TABLE bench.t_hash3_p1 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 6, REMAINDER 1);
CREATE TABLE bench.t_hash3_p2 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 6, REMAINDER 2);
CREATE TABLE bench.t_hash3_p3 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 6, REMAINDER 3);
CREATE TABLE bench.t_hash3_p4 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 6, REMAINDER 4);
CREATE TABLE bench.t_hash3_p5 PARTITION OF bench.t_hash3 FOR VALUES WITH (MODULUS 6, REMAINDER 5);
