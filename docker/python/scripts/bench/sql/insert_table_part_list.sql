INSERT INTO bench.t_list1 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,(1+floor(random()*37)::int)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4337);

INSERT INTO bench.t_list2 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*24)::int)),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,7),
    (random()*(10^(10-0)-1))::numeric(10,0)
FROM generate_series(1, 1462);

INSERT INTO bench.t_list3 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 3140);
