INSERT INTO bench.t_random1 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,1),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*21)::int)),
    (random()*(10^(11-2)-1))::numeric(11,2)
FROM generate_series(1, 1308);

INSERT INTO bench.t_random2 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    (random() > 0.5),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random() > 0.5),
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1808);

INSERT INTO bench.t_random3 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*15)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3459);
