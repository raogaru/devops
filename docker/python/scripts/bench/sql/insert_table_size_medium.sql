INSERT INTO bench.t_medium1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16)
SELECT
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*26)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    (random()*10000)::real,
    (random()*(10^(11-3)-1))::numeric(11,3),
    substr(md5(random()::text),1,30),
    (random()*(10^(6-3)-1))::numeric(6,3),
    (random() > 0.5),
    substr(md5(random()::text),1,8)
FROM generate_series(1, 3855);

INSERT INTO bench.t_medium2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*41)::int)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*(10^(9-3)-1))::numeric(9,3),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,30),
    (random() > 0.5)
FROM generate_series(1, 2115);

INSERT INTO bench.t_medium3 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11)
SELECT
    substr(md5(random()::text),1,17),
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,(1+floor(random()*20)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*21)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::double precision
FROM generate_series(1, 1349);
