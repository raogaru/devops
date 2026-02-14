CREATE OR REPLACE PROCEDURE bench.p_t_random1(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_random1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_random2(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_random2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_random3(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_random3 LIMIT 5;
END;
$$; 
