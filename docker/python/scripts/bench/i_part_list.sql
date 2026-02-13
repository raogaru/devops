INSERT INTO bench.t_list1 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    DATE '1970-01-01' + (random()*20000)::int,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3163);

INSERT INTO bench.t_list2 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::double precision,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30)
FROM generate_series(1, 2619);

INSERT INTO bench.t_list3 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2447);

INSERT INTO bench.t_list4 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*(10^(7-3)-1))::numeric(7,3),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 4608);

INSERT INTO bench.t_list5 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 4804);

INSERT INTO bench.t_list6 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,30),
    DATE '1970-01-01' + (random()*20000)::int,
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,5),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,11)
FROM generate_series(1, 3954);

INSERT INTO bench.t_list7 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::double precision,
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    substr(md5(random()::text),1,9),
    substr(md5(random()::text),1,(1+floor(random()*4)::int))
FROM generate_series(1, 2885);

INSERT INTO bench.t_list8 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,(1+floor(random()*34)::int)),
    (random()*10000)::real,
    (random()*(10^(12-1)-1))::numeric(12,1)
FROM generate_series(1, 3794);

INSERT INTO bench.t_list9 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::double precision,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,5),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3191);

INSERT INTO bench.t_list10 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,12),
    floor(random()*32767)::smallint,
    floor(random()*9223372036854775807)::bigint,
    (random()*10000)::double precision
FROM generate_series(1, 4868);
