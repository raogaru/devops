INSERT INTO bench.t_list1 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    decode(substring(md5(random()::text) for 8), 'hex'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::real,
    substr(md5(random()::text),1,7),
    substr(md5(random()::text),1,12)
FROM generate_series(1, 2359);

INSERT INTO bench.t_list2 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*34)::int)),
    substr(md5(random()::text),1,(1+floor(random()*18)::int))
FROM generate_series(1, 3502);

INSERT INTO bench.t_list3 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,13),
    (random()*10000)::double precision,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    (random()*(10^(8-1)-1))::numeric(8,1)
FROM generate_series(1, 4977);
