INSERT INTO bench.t_large1 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    gen_random_uuid(),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    (random() > 0.5)
FROM generate_series(1, 13739);

INSERT INTO bench.t_large2 (c1,c2,c3,c4,c5)
SELECT
    gen_random_uuid(),
    (random() > 0.5),
    (random()*10000)::double precision,
    gen_random_uuid(),
    substr(md5(random()::text),1,18)
FROM generate_series(1, 11508);

INSERT INTO bench.t_large3 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 17193);
