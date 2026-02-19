INSERT INTO bench.t_hash1 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,2),
    floor(random()*2147483647)::int,
    (random()*(10^(12-0)-1))::numeric(12,0),
    floor(random()*32767)::smallint,
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1426);

INSERT INTO bench.t_hash2 (c1,c2,c3,c4,c5,c6)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*42)::int)),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,13),
    (random()*10000)::real,
    substr(md5(random()::text),1,(1+floor(random()*18)::int))
FROM generate_series(1, 2447);

INSERT INTO bench.t_hash3 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 4780);
