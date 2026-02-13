INSERT INTO bench.t_list1 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,1),
    DATE '1970-01-01' + (random()*20000)::int,
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    floor(random()*32767)::smallint
FROM generate_series(1, 3281);

INSERT INTO bench.t_list2 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*32767)::smallint,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,7)
FROM generate_series(1, 3096);

INSERT INTO bench.t_list3 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*2147483647)::int,
    (random()*10000)::double precision,
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    (random()*(10^(9-3)-1))::numeric(9,3),
    (random() > 0.5)
FROM generate_series(1, 4998);

INSERT INTO bench.t_list4 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::real,
    gen_random_uuid(),
    (random() > 0.5),
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::real
FROM generate_series(1, 4476);

INSERT INTO bench.t_list5 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,3),
    DATE '1970-01-01' + (random()*20000)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day')
FROM generate_series(1, 1740);

INSERT INTO bench.t_list6 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,5),
    substr(md5(random()::text),1,18),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4870);

INSERT INTO bench.t_list7 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    gen_random_uuid()
FROM generate_series(1, 1133);

INSERT INTO bench.t_list8 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random() > 0.5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random() > 0.5),
    (random() > 0.5)
FROM generate_series(1, 3307);

INSERT INTO bench.t_list9 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,(1+floor(random()*43)::int)),
    substr(md5(random()::text),1,(1+floor(random()*44)::int)),
    (random()*(10^(10-3)-1))::numeric(10,3),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    (random()*10000)::real,
    gen_random_uuid()
FROM generate_series(1, 3336);

INSERT INTO bench.t_list10 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,18),
    substr(md5(random()::text),1,(1+floor(random()*47)::int)),
    (random() > 0.5)
FROM generate_series(1, 2828);
