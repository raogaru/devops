INSERT INTO bench.t_list1 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,(1+floor(random()*7)::int)),
    substr(md5(random()::text),1,5),
    floor(random()*32767)::smallint
FROM generate_series(1, 4811);

INSERT INTO bench.t_list2 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*12)::int)),
    (random()*(10^(10-0)-1))::numeric(10,0),
    (random()*(10^(6-0)-1))::numeric(6,0),
    (random()*10000)::real
FROM generate_series(1, 4717);

INSERT INTO bench.t_list3 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4023);
