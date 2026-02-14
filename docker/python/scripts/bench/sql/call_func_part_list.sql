SELECT * FROM bench.f_t_list1 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_list2 (p_id=>(floor(random()*(100-1+1)+1)::int));
SELECT * FROM bench.f_t_list3 (p_id=>(floor(random()*(100-1+1)+1)::int));