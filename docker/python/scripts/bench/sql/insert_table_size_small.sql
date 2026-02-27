INSERT INTO bench.tss1 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(5-2)-1))::numeric(5,2),
    floor(random()*32767)::smallint
FROM generate_series(1, 16);

INSERT INTO bench.tss2 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(11-2)-1))::numeric(11,2),
    (random() > 0.5),
    (random() > 0.5),
    substr(md5(random()::text),1,9),
    substr(md5(random()::text),1,(1+floor(random()*28)::int)),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 12);

INSERT INTO bench.tss3 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 16);

INSERT INTO bench.tss4 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(5-3)-1))::numeric(5,3),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint
FROM generate_series(1, 17);

INSERT INTO bench.tss5 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,3),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(6-0)-1))::numeric(6,0)
FROM generate_series(1, 14);

INSERT INTO bench.tss6 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*3)::int)),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 14);

INSERT INTO bench.tss7 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,3),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 18);

INSERT INTO bench.tss8 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(4-2)-1))::numeric(4,2)
FROM generate_series(1, 13);

INSERT INTO bench.tss9 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,8),
    floor(random()*32767)::smallint
FROM generate_series(1, 15);

INSERT INTO bench.tss10 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(11-2)-1))::numeric(11,2),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 11);
