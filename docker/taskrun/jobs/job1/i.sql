INSERT INTO job1.t1 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT substr(md5(random()::text),1,11), floor(random()*9223372036854775807)::bigint, (random() > 0.5), floor(random()*32767)::smallint, gen_random_uuid(), (random() > 0.5), substr(md5(random()::text),1,30), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 204);

INSERT INTO job1.t2 (c1,c2,c3,c4,c5,c6,c7)
SELECT gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*5)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), (random() > 0.5), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 338);

INSERT INTO job1.t3 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT (random()*(10^(12-3)-1))::numeric(12,3), (random()*(10^(7-0)-1))::numeric(7,0), DATE '1970-01-01' + (random()*20000)::int, DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, floor(random()*32767)::smallint, (random()*(10^(8-3)-1))::numeric(8,3), gen_random_uuid(), floor(random()*2147483647)::int
FROM generate_series(1, 183);

INSERT INTO job1.t4 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT (random()*10000)::double precision, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,(1+floor(random()*15)::int)), (random()*10000)::double precision, substr(md5(random()::text),1,15), substr(md5(random()::text),1,3), (random()*(10^(7-1)-1))::numeric(7,1), gen_random_uuid()
FROM generate_series(1, 358);

INSERT INTO job1.t5 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT (random() > 0.5), floor(random()*32767)::smallint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), gen_random_uuid(), floor(random()*32767)::smallint, floor(random()*2147483647)::int, (random()*10000)::real, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100))
FROM generate_series(1, 478);

INSERT INTO job1.t6 (c1,c2,c3,c4,c5)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,19), (random()*10000)::real, floor(random()*2147483647)::int
FROM generate_series(1, 200);

INSERT INTO job1.t7 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), (random() > 0.5), (random() > 0.5)
FROM generate_series(1, 288);

INSERT INTO job1.t8 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), floor(random()*32767)::smallint, (random()*(10^(8-0)-1))::numeric(8,0), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(8-3)-1))::numeric(8,3), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::real
FROM generate_series(1, 323);

INSERT INTO job1.t9 (c1,c2,c3,c4,c5)
SELECT TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*(10^(6-1)-1))::numeric(6,1), gen_random_uuid(), substr(md5(random()::text),1,11), gen_random_uuid()
FROM generate_series(1, 240);

INSERT INTO job1.t10 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT substr(md5(random()::text),1,30), floor(random()*2147483647)::int, substr(md5(random()::text),1,(1+floor(random()*37)::int)), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(11-2)-1))::numeric(11,2), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), substr(md5(random()::text),1,11), (random()*10000)::real, (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 336);
