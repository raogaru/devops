CREATE OR REPLACE PROCEDURE bench.p_t_large1(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large1 LIMIT (floor(random() * (10 - 2 + 1) + 2)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_large2(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large2 LIMIT (floor(random() * (10 - 2 + 1) + 2)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_large3(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_large3 LIMIT (floor(random() * (10 - 2 + 1) + 2)::int);
END;
$$; 
