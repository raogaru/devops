INSERT INTO bench.t_small1 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*20)::int)),
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 16);

INSERT INTO bench.t_small2 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    floor(random()*9223372036854775807)::bigint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,(1+floor(random()*41)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(6-3)-1))::numeric(6,3),
    substr(md5(random()::text),1,(1+floor(random()*23)::int))
FROM generate_series(1, 11);

INSERT INTO bench.t_small3 (c1,c2,c3,c4,c5,c6)
SELECT
    substr(md5(random()::text),1,30),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    (random()*10000)::double precision,
    (random() > 0.5),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 18);
