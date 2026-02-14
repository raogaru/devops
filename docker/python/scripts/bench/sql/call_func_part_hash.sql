SELECT * FROM bench.f_t_hash1 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_hash2 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_hash3 (p_id=>(floor(random()*(100-1+1)+1)::int));