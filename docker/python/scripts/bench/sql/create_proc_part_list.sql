CREATE OR REPLACE PROCEDURE bench.p_t_list1(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_list1 LIMIT (floor(random() * (10 - 2 + 1) + 2)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_list2(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_list2 LIMIT (floor(random() * (10 - 2 + 1) + 2)::int);
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_list3(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_list3 LIMIT (floor(random() * (10 - 2 + 1) + 2)::int);
END;
$$; 
