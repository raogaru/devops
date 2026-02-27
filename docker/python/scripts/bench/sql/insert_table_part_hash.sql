INSERT INTO bench.tph1 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    floor(random()*2147483647)::int
FROM generate_series(1, 4057);

INSERT INTO bench.tph2 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2858);

INSERT INTO bench.tph3 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*50)::int)),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint
FROM generate_series(1, 3884);

INSERT INTO bench.tph4 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int
FROM generate_series(1, 3872);

INSERT INTO bench.tph5 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2474);

INSERT INTO bench.tph6 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    gen_random_uuid(),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2065);

INSERT INTO bench.tph7 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    (random() > 0.5),
    (random()*(10^(8-1)-1))::numeric(8,1),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1156);

INSERT INTO bench.tph8 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2867);

INSERT INTO bench.tph9 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*41)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4369);

INSERT INTO bench.tph10 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1848);
