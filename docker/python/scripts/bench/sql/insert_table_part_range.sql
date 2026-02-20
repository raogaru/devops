INSERT INTO bench.t_range1 (c1,c2,c3)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*9)::int))
FROM generate_series(1, 1538);

INSERT INTO bench.t_range2 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1992);

INSERT INTO bench.t_range3 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    (random()*(10^(9-1)-1))::numeric(9,1)
FROM generate_series(1, 3897);
