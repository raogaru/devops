CREATE OR REPLACE PROCEDURE bench.p_t_medium1(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_medium1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_medium2(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_medium2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_medium3(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_medium3 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_medium4(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_medium4 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_medium5(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_medium5 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_medium6(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_medium6 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_medium7(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_medium7 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_medium8(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_medium8 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_medium9(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_medium9 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_medium10(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_medium10 LIMIT 5;
END;
$$; 
