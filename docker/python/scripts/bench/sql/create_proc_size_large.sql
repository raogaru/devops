CREATE OR REPLACE PROCEDURE bench.p_t_large1(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_large2(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_large3(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large3 LIMIT 5;
END;
$$; 
