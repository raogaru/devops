INSERT INTO bench.t_hash1 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*8)::int))
FROM generate_series(1, 1441);

INSERT INTO bench.t_hash2 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 2133);

INSERT INTO bench.t_hash3 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    gen_random_uuid()
FROM generate_series(1, 2223);

INSERT INTO bench.t_hash4 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*31)::int)),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(6-2)-1))::numeric(6,2)
FROM generate_series(1, 1854);

INSERT INTO bench.t_hash5 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*20)::int))
FROM generate_series(1, 1768);

INSERT INTO bench.t_hash6 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*19)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3505);

INSERT INTO bench.t_hash7 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    (random()*(10^(5-2)-1))::numeric(5,2),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1253);

INSERT INTO bench.t_hash8 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    floor(random()*2147483647)::int,
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2343);

INSERT INTO bench.t_hash9 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,7),
    (random() > 0.5)
FROM generate_series(1, 4130);

INSERT INTO bench.t_hash10 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 3378);
