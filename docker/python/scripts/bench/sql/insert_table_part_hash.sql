INSERT INTO bench.t_hash1 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    (random()*(10^(8-0)-1))::numeric(8,0)
FROM generate_series(1, 2905);

INSERT INTO bench.t_hash2 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    gen_random_uuid(),
    (random()*10000)::double precision
FROM generate_series(1, 2719);

INSERT INTO bench.t_hash3 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2047);
