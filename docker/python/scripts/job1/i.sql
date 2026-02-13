INSERT INTO job1.t1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    substr(md5(random()::text),1,(1+floor(random()*2)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 407);

INSERT INTO job1.t2 (c1,c2,c3,c4,c5,c6)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,7),
    substr(md5(random()::text),1,(1+floor(random()*11)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 448);

INSERT INTO job1.t3 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    gen_random_uuid(),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 135);

INSERT INTO job1.t4 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    (random()*10000)::real,
    gen_random_uuid(),
    (random() > 0.5),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real
FROM generate_series(1, 495);

INSERT INTO job1.t5 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    substr(md5(random()::text),1,17),
    substr(md5(random()::text),1,(1+floor(random()*20)::int)),
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 178);

INSERT INTO job1.t6 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 387);

INSERT INTO job1.t7 (c1,c2,c3,c4,c5)
SELECT
    (random()*10000)::real,
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 485);

INSERT INTO job1.t8 (c1,c2,c3,c4,c5,c6)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(9-2)-1))::numeric(9,2),
    substr(md5(random()::text),1,10),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 393);

INSERT INTO job1.t9 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(9-1)-1))::numeric(9,1),
    (random() > 0.5),
    substr(md5(random()::text),1,19),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint
FROM generate_series(1, 327);

INSERT INTO job1.t10 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    substr(md5(random()::text),1,18),
    substr(md5(random()::text),1,10),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    (random()*10000)::real,
    (random()*10000)::double precision,
    (random()*10000)::double precision
FROM generate_series(1, 200);
