INSERT INTO bench.t_random1 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*(10^(10-0)-1))::numeric(10,0),
    substr(md5(random()::text),1,30),
    substr(md5(random()::text),1,14),
    (random()*(10^(8-1)-1))::numeric(8,1),
    substr(md5(random()::text),1,(1+floor(random()*22)::int))
FROM generate_series(1, 2569);

INSERT INTO bench.t_random2 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    gen_random_uuid(),
    decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 1148);

INSERT INTO bench.t_random3 (c1,c2,c3,c4,c5)
SELECT
    floor(random()*2147483647)::int,
    (random()*10000)::real,
    substr(md5(random()::text),1,30),
    decode(substring(md5(random()::text) for 8), 'hex'),
    substr(md5(random()::text),1,19)
FROM generate_series(1, 4466);
