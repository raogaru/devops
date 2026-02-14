SELECT * FROM bench.f_t_small1 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_small2 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_small3 (p_id=>(floor(random()*(100-1+1)+1)::int));