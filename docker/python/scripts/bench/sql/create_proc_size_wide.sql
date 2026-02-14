CREATE OR REPLACE PROCEDURE bench.p_t_wide1(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_wide1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_wide2(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_wide2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_wide3(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_wide3 LIMIT 5;
END;
$$; 
