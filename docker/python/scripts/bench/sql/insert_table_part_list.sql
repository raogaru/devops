INSERT INTO bench.t_list1 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    substr(md5(random()::text),1,30),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4340);

INSERT INTO bench.t_list2 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 2331);

INSERT INTO bench.t_list3 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    DATE '1970-01-01' + (random()*20000)::int,
    gen_random_uuid(),
    substr(md5(random()::text),1,(1+floor(random()*30)::int)),
    substr(md5(random()::text),1,(1+floor(random()*47)::int)),
    floor(random()*2147483647)::int,
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 3494);
