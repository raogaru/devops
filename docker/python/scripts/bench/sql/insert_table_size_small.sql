INSERT INTO bench.t_small1 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    (random()*10000)::double precision,
    (random()*(10^(6-3)-1))::numeric(6,3),
    substr(md5(random()::text),1,30),
    (random()*(10^(9-3)-1))::numeric(9,3),
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int
FROM generate_series(1, 16);

INSERT INTO bench.t_small2 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    (random() > 0.5),
    substr(md5(random()::text),1,14),
    substr(md5(random()::text),1,20),
    (random()*(10^(12-3)-1))::numeric(12,3),
    decode(substring(md5(random()::text) for 8), 'hex'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*19)::int))
FROM generate_series(1, 12);

INSERT INTO bench.t_small3 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(5-3)-1))::numeric(5,3),
    gen_random_uuid(),
    (random()*(10^(6-0)-1))::numeric(6,0),
    gen_random_uuid(),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 14);
