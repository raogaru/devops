BEGIN;
CALL bench.p_t_list1 (p_refcur=>'c1', p_id=>(floor(random()*(100-1+1)+1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_t_list2 (p_refcur=>'c1', p_id=>(floor(random()*(100-1+1)+1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_t_list3 (p_refcur=>'c1', p_id=>(floor(random()*(100-1+1)+1)::int));
FETCH ALL FROM c1;
ROLLBACK;
