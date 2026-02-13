INSERT INTO bench.t_random1 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4898);

INSERT INTO bench.t_random2 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3469);

INSERT INTO bench.t_random3 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 2547);

INSERT INTO bench.t_random4 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int
FROM generate_series(1, 4596);

INSERT INTO bench.t_random5 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 1823);

INSERT INTO bench.t_random6 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*17)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 1843);

INSERT INTO bench.t_random7 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*32)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3677);

INSERT INTO bench.t_random8 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*(10^(8-0)-1))::numeric(8,0),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1429);

INSERT INTO bench.t_random9 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int
FROM generate_series(1, 3993);

INSERT INTO bench.t_random10 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*34)::int)),
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,4),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 3885);
