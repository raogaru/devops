-- ----------------------------------------
BEGIN;
CALL job1.p_t1('c1');
FETCH ALL FROM c1;
COMMIT;
-- ----------------------------------------
BEGIN;
CALL job1.p_t2('c1');
FETCH ALL FROM c1;
COMMIT;
-- ----------------------------------------
BEGIN;
CALL job1.p_t3('c1');
FETCH ALL FROM c1;
COMMIT;
-- ----------------------------------------
BEGIN;
CALL job1.p_t4('c1');
FETCH ALL FROM c1;
COMMIT;
-- ----------------------------------------
BEGIN;
CALL job1.p_t5('c1');
FETCH ALL FROM c1;
COMMIT;
-- ----------------------------------------
BEGIN;
CALL job1.p_t6('c1');
FETCH ALL FROM c1;
COMMIT;
-- ----------------------------------------
BEGIN;
CALL job1.p_t7('c1');
FETCH ALL FROM c1;
COMMIT;
-- ----------------------------------------
BEGIN;
CALL job1.p_t8('c1');
FETCH ALL FROM c1;
COMMIT;
-- ----------------------------------------
BEGIN;
CALL job1.p_t9('c1');
FETCH ALL FROM c1;
COMMIT;
-- ----------------------------------------
BEGIN;
CALL job1.p_t10('c1');
FETCH ALL FROM c1;
COMMIT;

