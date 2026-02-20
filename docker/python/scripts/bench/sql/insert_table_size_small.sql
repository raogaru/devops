INSERT INTO bench.t_small1 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 18);

INSERT INTO bench.t_small2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,2),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,19),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 15);

INSERT INTO bench.t_small3 (c1,c2,c3,c4,c5)
SELECT
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,(1+floor(random()*44)::int)),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,10),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 13);
