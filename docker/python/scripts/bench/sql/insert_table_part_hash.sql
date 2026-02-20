INSERT INTO bench.t_hash1 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,6),
    (random() > 0.5),
    (random()*(10^(8-1)-1))::numeric(8,1)
FROM generate_series(1, 2579);

INSERT INTO bench.t_hash2 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*38)::int)),
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3870);

INSERT INTO bench.t_hash3 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4310);
