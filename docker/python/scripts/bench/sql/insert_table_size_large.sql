INSERT INTO bench.t_large1 (c1,c2,c3,c4,c5)
SELECT
    substr(md5(random()::text),1,(1+floor(random()*48)::int)),
    (random()*(10^(9-2)-1))::numeric(9,2),
    substr(md5(random()::text),1,10),
    floor(random()*9223372036854775807)::bigint,
    gen_random_uuid()
FROM generate_series(1, 17180);

INSERT INTO bench.t_large2 (c1,c2,c3,c4)
SELECT
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,7),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 13871);

INSERT INTO bench.t_large3 (c1,c2,c3,c4,c5)
SELECT
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,16),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,14)
FROM generate_series(1, 17602);
