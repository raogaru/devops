CREATE OR REPLACE PROCEDURE bench.p_t_small1(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_small1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_small2(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_small2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_small3(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_small3 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_small4(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_small4 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_small5(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_small5 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_small6(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_small6 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_small7(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_small7 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_small8(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_small8 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_small9(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_small9 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_small10(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_small10 LIMIT 5;
END;
$$; 
