INSERT INTO bench.tpl1 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*36)::int)),
    substr(md5(random()::text),1,6),
    floor(random()*2147483647)::int,
    TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2052);

INSERT INTO bench.tpl2 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*22)::int)),
    floor(random()*2147483647)::int,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(8-3)-1))::numeric(8,3),
    substr(md5(random()::text),1,12)
FROM generate_series(1, 2577);

INSERT INTO bench.tpl3 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*32767)::smallint,
    substr(md5(random()::text),1,(1+floor(random()*13)::int)),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 1777);

INSERT INTO bench.tpl4 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    substr(md5(random()::text),1,(1+floor(random()*50)::int))
FROM generate_series(1, 1771);

INSERT INTO bench.tpl5 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    gen_random_uuid(),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'),
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint,
    (random()*(10^(11-2)-1))::numeric(11,2)
FROM generate_series(1, 4738);

INSERT INTO bench.tpl6 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,(1+floor(random()*1)::int)),
    floor(random()*2147483647)::int,
    substr(md5(random()::text),1,20),
    floor(random()*9223372036854775807)::bigint,
    substr(md5(random()::text),1,30),
    TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 4417);

INSERT INTO bench.tpl7 (c1,c2,c3,c4,c5,c6)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*9223372036854775807)::bigint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*(10^(9-0)-1))::numeric(9,0),
    gen_random_uuid(),
    (random()*10000)::double precision
FROM generate_series(1, 3254);

INSERT INTO bench.tpl8 (c1,c2,c3,c4,c5)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    substr(md5(random()::text),1,30),
    floor(random()*32767)::smallint,
    gen_random_uuid(),
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 4169);

INSERT INTO bench.tpl9 (c1,c2,c3,c4)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    floor(random()*32767)::smallint,
    DATE '1970-01-01' + (random()*20000)::int,
    (random()*10000)::double precision
FROM generate_series(1, 4220);

INSERT INTO bench.tpl10 (c1,c2,c3,c4,c5,c6,c7)
SELECT
    (random()*(10^(1-0)-1))::numeric(1,0),
    (random()*(10^(11-1)-1))::numeric(11,1),
    jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)),
    floor(random()*32767)::smallint,
    (random()*10000)::real,
    DATE '1970-01-01' + (random()*20000)::int,
    floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 2143);
