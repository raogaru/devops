INSERT INTO bench.tpx1 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint
FROM generate_series(1, 4947);

INSERT INTO bench.tpx2 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*9)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid()
FROM generate_series(1, 3930);

INSERT INTO bench.tpx3 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint
FROM generate_series(1, 2247);

INSERT INTO bench.tpx4 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3515);

INSERT INTO bench.tpx5 (c1,c2,c3)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1927);

INSERT INTO bench.tpx6 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint
FROM generate_series(1, 1021);

INSERT INTO bench.tpx7 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2257);

INSERT INTO bench.tpx8 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(10-0)-1))::numeric(10,0),
    (random()*(10^(8-3)-1))::numeric(8,3)
FROM generate_series(1, 1775);

INSERT INTO bench.tpx9 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 3321);

INSERT INTO bench.tpx10 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*33)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4312);
