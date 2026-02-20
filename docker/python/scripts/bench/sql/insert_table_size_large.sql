INSERT INTO bench.t_large1 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*44)::int)),
    floor(random()*32767)::smallint,
    (random() > 0.5),
    substr(md5(random()::text),1,(1+floor(random()*21)::int))
FROM generate_series(1, 14268);

INSERT INTO bench.t_large2 (c1,c2,c3)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 10354);

INSERT INTO bench.t_large3 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*4)::int)),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 11947);
