CREATE OR REPLACE PROCEDURE bench.p_t_small1(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_small1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_small2(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_small2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_small3(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_small3 LIMIT 5;
END;
$$; 
