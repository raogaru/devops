INSERT INTO bench.t_hash1 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 4274);

INSERT INTO bench.t_hash2 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,4),
    substr(md5(random()::text),1,(1+floor(random()*23)::int)),
    (random()*10000)::double precision,
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    (random()*10000)::real,
    floor(random()*32767)::smallint
FROM generate_series(1, 3853);

INSERT INTO bench.t_hash3 (c1,c2,c3,c4)
SELECT
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,30),
    (random()*10000)::double precision,
    substr(md5(random()::text),1,30)
FROM generate_series(1, 1561);
