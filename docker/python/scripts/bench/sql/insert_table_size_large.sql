INSERT INTO bench.t_large1 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid(),
    floor(random()*32767)::smallint
FROM generate_series(1, 18468);

INSERT INTO bench.t_large2 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    substr(md5(random()::text),1,20),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,10),
    floor(random()*32767)::smallint
FROM generate_series(1, 14256);

INSERT INTO bench.t_large3 (c1,c2,c3,c4)
SELECT
    gen_random_uuid(),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*(10^(11-0)-1))::numeric(11,0),
    (random() > 0.5)
FROM generate_series(1, 16746);
