INSERT INTO bench.t_large1 (c1,c2,c3,c4)
SELECT
    (random()*(10^(10-2)-1))::numeric(10,2),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 13960);

INSERT INTO bench.t_large2 (c1,c2,c3)
SELECT
    substr(md5(random()::text),1,30),
    (random()*(10^(11-3)-1))::numeric(11,3),
    floor(random()*2147483647)::int
FROM generate_series(1, 15850);

INSERT INTO bench.t_large3 (c1,c2,c3)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 10908);

INSERT INTO bench.t_large4 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    (random()*(10^(6-1)-1))::numeric(6,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 18621);

INSERT INTO bench.t_large5 (c1,c2,c3,c4)
SELECT
    (random()*10000)::real,
    gen_random_uuid(),
    substr(md5(random()::text),1,3),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 19206);

INSERT INTO bench.t_large6 (c1,c2,c3)
SELECT
    (random()*(10^(5-0)-1))::numeric(5,0),
    (random()*10000)::double precision,
    (random() > 0.5)
FROM generate_series(1, 17734);

INSERT INTO bench.t_large7 (c1,c2,c3,c4)
SELECT
    (random() > 0.5),
    (random() > 0.5),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 10380);

INSERT INTO bench.t_large8 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,20)
FROM generate_series(1, 17831);

INSERT INTO bench.t_large9 (c1,c2,c3)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision
FROM generate_series(1, 16914);

INSERT INTO bench.t_large10 (c1,c2,c3,c4)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 11456);
