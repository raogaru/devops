INSERT INTO bench.t_random1 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*(10^(5-0)-1))::numeric(5,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 2195);

INSERT INTO bench.t_random2 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random() > 0.5),
    (random()*10000)::double precision
FROM generate_series(1, 2559);

INSERT INTO bench.t_random3 (c1,c2,c3)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random() > 0.5),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4007);
