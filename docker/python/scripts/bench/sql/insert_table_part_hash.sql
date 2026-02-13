INSERT INTO bench.t_hash1 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    gen_random_uuid()
FROM generate_series(1, 3794);

INSERT INTO bench.t_hash2 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    substr(md5(random()::text),1,(1+floor(random()*36)::int))
FROM generate_series(1, 1869);

INSERT INTO bench.t_hash3 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,12),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 2813);

INSERT INTO bench.t_hash4 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 4396);

INSERT INTO bench.t_hash5 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random()*10000)::double precision,
    (random() > 0.5),
    substr(md5(random()::text),1,10),
    gen_random_uuid()
FROM generate_series(1, 1846);

INSERT INTO bench.t_hash6 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid()
FROM generate_series(1, 2356);

INSERT INTO bench.t_hash7 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2394);

INSERT INTO bench.t_hash8 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 2078);

INSERT INTO bench.t_hash9 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(11-0)-1))::numeric(11,0),
    substr(md5(random()::text),1,3),
    substr(md5(random()::text),1,18),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real
FROM generate_series(1, 2841);

INSERT INTO bench.t_hash10 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*26)::int)),
    substr(md5(random()::text),1,(1+floor(random()*2)::int)),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(12-2)-1))::numeric(12,2)
FROM generate_series(1, 1938);
