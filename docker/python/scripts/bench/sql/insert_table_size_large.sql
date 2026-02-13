INSERT INTO bench.t_large1 (c1,c2,c3,c4)
SELECT
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 11855);

INSERT INTO bench.t_large2 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 14646);

INSERT INTO bench.t_large3 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*48)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 10923);

INSERT INTO bench.t_large4 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*32767)::smallint
FROM generate_series(1, 14120);

INSERT INTO bench.t_large5 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*39)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*19)::int))
FROM generate_series(1, 18059);

INSERT INTO bench.t_large6 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*39)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,18)
FROM generate_series(1, 17537);

INSERT INTO bench.t_large7 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    gen_random_uuid()
FROM generate_series(1, 14785);

INSERT INTO bench.t_large8 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    substr(md5(random()::text),1,20),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 13034);

INSERT INTO bench.t_large9 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int
FROM generate_series(1, 15295);

INSERT INTO bench.t_large10 (c1,c2,c3,c4)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,19),
    (random()*10000)::real,
    substr(md5(random()::text),1,8)
FROM generate_series(1, 19891);
