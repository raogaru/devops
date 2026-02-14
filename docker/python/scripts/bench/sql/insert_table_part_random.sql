INSERT INTO bench.t_random1 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*49)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    (random()*10000)::real
FROM generate_series(1, 4350);

INSERT INTO bench.t_random2 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,14),
    substr(md5(random()::text),1,9)
FROM generate_series(1, 4816);

INSERT INTO bench.t_random3 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random() > 0.5),
    (random()*(10^(6-2)-1))::numeric(6,2),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4593);
