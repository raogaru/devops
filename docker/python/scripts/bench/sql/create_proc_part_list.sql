CREATE OR REPLACE PROCEDURE bench.p_t_list1(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_list1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_list2(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_list2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_list3(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_list3 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_list4(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_list4 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_list5(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_list5 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_list6(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_list6 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_list7(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_list7 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_list8(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_list8 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_list9(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_list9 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_list10(INOUT p_refcur REFCURSOR,IN p_id bigint)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_list10 LIMIT 5;
END;
$$; 
