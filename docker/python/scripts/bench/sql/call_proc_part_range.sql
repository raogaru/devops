BEGIN;
CALL bench.p_tpr1 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tpr2 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tpr3 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tpr4 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tpr5 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tpr6 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tpr7 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tpr8 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tpr9 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;

BEGIN;
CALL bench.p_tpr10 (p_refcur=>'c1', p_id=>(floor(random()*99 + 1)::int));
FETCH ALL FROM c1;
ROLLBACK;
