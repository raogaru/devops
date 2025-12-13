INSERT INTO job1.t1 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, gen_random_uuid(), decode(substring(md5(random()::text) for 8), 'hex'), DATE '1970-01-01' + (random()*20000)::int
FROM generate_series(1, 159);

INSERT INTO job1.t2 (c1,c2,c3,c4,c5,c6)
SELECT floor(random()*9223372036854775807)::bigint, (random()*(10^(4-2)-1))::numeric(4,2), gen_random_uuid(), substr(md5(random()::text),1,(1+floor(random()*6)::int)), substr(md5(random()::text),1,(1+floor(random()*35)::int)), substr(md5(random()::text),1,3)
FROM generate_series(1, 370);

INSERT INTO job1.t3 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT (random() > 0.5), floor(random()*9223372036854775807)::bigint, (random()*(10^(4-2)-1))::numeric(4,2), substr(md5(random()::text),1,(1+floor(random()*23)::int)), (random()*(10^(12-0)-1))::numeric(12,0), gen_random_uuid(), jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), substr(md5(random()::text),1,30), (random() > 0.5)
FROM generate_series(1, 367);

INSERT INTO job1.t4 (c1,c2,c3,c4,c5,c6)
SELECT substr(md5(random()::text),1,10), floor(random()*9223372036854775807)::bigint, (random()*(10^(8-2)-1))::numeric(8,2), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5), floor(random()*2147483647)::int
FROM generate_series(1, 291);

INSERT INTO job1.t5 (c1,c2,c3,c4,c5,c6,c7)
SELECT TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), floor(random()*2147483647)::int, TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random()*10000)::double precision, (random()*(10^(7-1)-1))::numeric(7,1), TIMESTAMP '2000-01-01' + ((random()*365*50) * INTERVAL '1 day'), (random() > 0.5)
FROM generate_series(1, 457);

INSERT INTO job1.t6 (c1,c2,c3,c4,c5,c6,c7)
SELECT (random()*(10^(7-0)-1))::numeric(7,0), substr(md5(random()::text),1,30), floor(random()*32767)::smallint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), gen_random_uuid(), substr(md5(random()::text),1,30), (random()*(10^(12-2)-1))::numeric(12,2)
FROM generate_series(1, 467);

INSERT INTO job1.t7 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT (random()*10000)::real, substr(md5(random()::text),1,18), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*10000)::double precision, decode(substring(md5(random()::text) for 8), 'hex'), floor(random()*32767)::smallint, (random()*(10^(6-2)-1))::numeric(6,2), substr(md5(random()::text),1,30), decode(substring(md5(random()::text) for 8), 'hex')
FROM generate_series(1, 399);

INSERT INTO job1.t8 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), (random()*10000)::double precision, TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), (random()*(10^(11-1)-1))::numeric(11,1), TIME '00:00' + ((random()*86400)::int * INTERVAL '1 second'), decode(substring(md5(random()::text) for 8), 'hex'), (random()*(10^(10-1)-1))::numeric(10,1), (random()*10000)::double precision
FROM generate_series(1, 395);

INSERT INTO job1.t9 (c1,c2,c3,c4,c5,c6,c7,c8,c9)
SELECT floor(random()*2147483647)::int, substr(md5(random()::text),1,14), decode(substring(md5(random()::text) for 8), 'hex'), decode(substring(md5(random()::text) for 8), 'hex'), (random() > 0.5), (random()*10000)::real, floor(random()*9223372036854775807)::bigint, jsonb_build_object(  'k', substr(md5(random()::text),1,4),   'v', floor(random()*100)), (random()*(10^(9-0)-1))::numeric(9,0)
FROM generate_series(1, 353);

INSERT INTO job1.t10 (c1,c2,c3,c4,c5)
SELECT floor(random()*2147483647)::int, DATE '1970-01-01' + (random()*20000)::int, floor(random()*32767)::smallint, substr(md5(random()::text),1,30), (random()*10000)::double precision
FROM generate_series(1, 245);
