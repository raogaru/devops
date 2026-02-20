INSERT INTO bench.t_medium1 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(12-0)-1))::numeric(12,0),
    (random() > 0.5),
    (random() > 0.5),
    substr(md5(random()::text),1,20),
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*16)::int)),
    (random() > 0.5),
    substr(md5(random()::text),1,30),
    (random()*10000)::real,
    decode(substring(md5(random()::text) for 8), 'hex'),
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,(1+floor(random()*37)::int))
FROM generate_series(1, 3175);

INSERT INTO bench.t_medium2 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
SELECT
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    (random() > 0.5),
    (random() > 0.5),
    (random()*10000)::real,
    (random()*(10^(5-0)-1))::numeric(5,0),
    substr(md5(random()::text),1,20),
    (random()*(10^(4-2)-1))::numeric(4,2),
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    (random() > 0.5),
    (random() > 0.5),
    (random()*10000)::real,
    floor(random()*2147483647)::int,
    floor(random()*9223372036854775807)::bigint,
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,(1+floor(random()*2)::int))
FROM generate_series(1, 2815);

INSERT INTO bench.t_medium3 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14)
SELECT
    substr(md5(random()::text),1,15),
    substr(md5(random()::text),1,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    gen_random_uuid(),
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    (random()*10000)::real,
    floor(random()*32767)::smallint,
    (random() > 0.5),
    floor(random()*32767)::smallint,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 3958);
