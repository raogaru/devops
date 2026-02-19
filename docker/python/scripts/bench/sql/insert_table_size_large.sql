INSERT INTO bench.t_large1 (c1,c2,c3,c4)
SELECT
    substr(md5(random()::text),1,16),
    DATE '1970-01-01' + (random()*20000)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 14337);

INSERT INTO bench.t_large2 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*9223372036854775807)::bigint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*29)::int))
FROM generate_series(1, 12577);

INSERT INTO bench.t_large3 (c1,c2,c3,c4)
SELECT
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random() > 0.5)
FROM generate_series(1, 17857);
