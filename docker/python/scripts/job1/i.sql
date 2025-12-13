INSERT INTO job1.t1 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid(), DATE '1970-01-01' + (random()*20000)::int, (random()*10000)::double precision, (random()*(10^(12-2)-1))::numeric(12,2), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,30), gen_random_uuid(), (random()*(10^(10-0)-1))::numeric(10,0)
FROM generate_series(1, 219);

INSERT INTO job1.t2 (c1,c2,c3,c4,c5,c6)
SELECT substr(md5(random()::text),1,(1+floor(random()*32)::int)), DATE '1970-01-01' + (random()*20000)::int, (random()*(10^(6-2)-1))::numeric(6,2), substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*9223372036854775807)::bigint
FROM generate_series(1, 225);

INSERT INTO job1.t3 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT substr(md5(random()::text),1,1), substr(md5(random()::text),1,(1+floor(random()*15)::int)), DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision, substr(md5(random()::text),1,(1+floor(random()*14)::int)), substr(md5(random()::text),1,30), substr(md5(random()::text),1,20)
FROM generate_series(1, 140);

INSERT INTO job1.t4 (c1,c2,c3,c4,c5,c6,c7,c8)
SELECT substr(md5(random()::text),1,10), (random() > 0.5), substr(md5(random()::text),1,8), substr(md5(random()::text),1,30), gen_random_uuid(), (random()*10000)::double precision, floor(random()*9223372036854775807)::bigint, (random()*10000)::double precision
FROM generate_series(1, 330);

INSERT INTO job1.t5 (c1,c2,c3,c4,c5,c6,c7)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), gen_random_uuid(), substr(md5(random()::text),1,30), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), floor(random()*2147483647)::int, floor(random()*2147483647)::int
FROM generate_series(1, 130);

INSERT INTO job1.t6 (c1,c2,c3,c4,c5,c6)
SELECT (random()*(10^(8-2)-1))::numeric(8,2), floor(random()*32767)::smallint, gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), substr(md5(random()::text),1,(1+floor(random()*23)::int)), substr(md5(random()::text),1,30)
FROM generate_series(1, 225);

INSERT INTO job1.t7 (c1,c2,c3,c4,c5)
SELECT substr(md5(random()::text),1,10), substr(md5(random()::text),1,30), floor(random()*2147483647)::int, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second')
FROM generate_series(1, 176);

INSERT INTO job1.t8 (c1,c2,c3,c4,c5,c6)
SELECT DATE '1970-01-01' + (random()*20000)::int, floor(random()*9223372036854775807)::bigint, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), substr(md5(random()::text),1,(1+floor(random()*25)::int)), (random()*10000)::real, substr(md5(random()::text),1,11)
FROM generate_series(1, 270);

INSERT INTO job1.t9 (c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
SELECT gen_random_uuid(), (random() > 0.5), (random()*(10^(10-1)-1))::numeric(10,1), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,(1+floor(random()*19)::int)), (random()*(10^(9-2)-1))::numeric(9,2), floor(random()*2147483647)::int, (random()*10000)::real, floor(random()*9223372036854775807)::bigint, substr(md5(random()::text),1,30)
FROM generate_series(1, 216);

INSERT INTO job1.t10 (c1,c2,c3,c4,c5)
SELECT gen_random_uuid(), (random()*(10^(7-2)-1))::numeric(7,2), substr(md5(random()::text),1,17), floor(random()*2147483647)::int, (random()*10000)::real
FROM generate_series(1, 285);
