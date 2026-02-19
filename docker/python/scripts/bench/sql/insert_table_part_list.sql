INSERT INTO bench.t_list1 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4946);

INSERT INTO bench.t_list2 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*(10^(5-2)-1))::numeric(5,2),
    (random()*(10^(10-2)-1))::numeric(10,2)
FROM generate_series(1, 2004);

INSERT INTO bench.t_list3 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,(1+floor(random()*8)::int)),
    floor(random()*2147483647)::int
FROM generate_series(1, 2393);
