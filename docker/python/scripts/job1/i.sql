INSERT INTO job1.t1 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint,
    floor(random()*32767)::smallint
FROM generate_series(1, 363);

INSERT INTO job1.t2 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    floor(random()*32767)::smallint,
    (random()*(10^(8-3)-1))::numeric(8,3),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid(),
    substr(md5(random()::text),1,7),
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,14)
FROM generate_series(1, 487);

INSERT INTO job1.t3 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int
FROM generate_series(1, 498);

INSERT INTO job1.t4 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    floor(random()*9223372036854775807)::bigint,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*30)::int))
FROM generate_series(1, 465);

INSERT INTO job1.t5 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    floor(random()*2147483647)::int,
    (random()*(10^(8-1)-1))::numeric(8,1),
    substr(md5(random()::text),1,(1+floor(random()*10)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*2147483647)::int,
    gen_random_uuid()
FROM generate_series(1, 150);

INSERT INTO job1.t6 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,6)
FROM generate_series(1, 141);

INSERT INTO job1.t7 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*14)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 200);

INSERT INTO job1.t8 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*43)::int)),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real
FROM generate_series(1, 112);

INSERT INTO job1.t9 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,1),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,5),
    (random()*10000)::double precision
FROM generate_series(1, 495);

INSERT INTO job1.t10 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    substr(md5(random()::text),1,9),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 174);
