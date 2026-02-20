INSERT INTO bench.t_small1 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    (random() > 0.5),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    substr(md5(random()::text),1,5),
    (random()*10000)::double precision,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 14);

INSERT INTO bench.t_small2 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    (random()*10000)::double precision,
    (random() > 0.5),
    substr(md5(random()::text),1,7),
    (random() > 0.5),
    (random()*(10^(8-0)-1))::numeric(8,0),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 16);

INSERT INTO bench.t_small3 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    gen_random_uuid(),
    (random()*10000)::real,
    (random()*(10^(4-3)-1))::numeric(4,3),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(9-0)-1))::numeric(9,0),
    gen_random_uuid(),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 12);
