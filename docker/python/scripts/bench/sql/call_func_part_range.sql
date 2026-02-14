SELECT * FROM bench.f_t_range1 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_range2 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_range3 (p_id=>(floor(random()*(100-1+1)+1)::int));