INSERT INTO bench.t_range1 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 2423);

INSERT INTO bench.t_range2 (c1,c2,c3,c4,c5,c6)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint
FROM generate_series(1, 4741);

INSERT INTO bench.t_range3 (c1,c2,c3,c4)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,9),
    (random() > 0.5)
FROM generate_series(1, 2397);
