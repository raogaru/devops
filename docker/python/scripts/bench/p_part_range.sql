CREATE OR REPLACE PROCEDURE bench.p_t_range1(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_range1 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_range2(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_range2 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_range3(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_range3 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_range4(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_range4 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_range5(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_range5 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_range6(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_range6 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_range7(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_range7 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_range8(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_range8 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_range9(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_range9 LIMIT 5;
END;
$$; 

CREATE OR REPLACE PROCEDURE bench.p_t_range10(INOUT p_refcur REFCURSOR)
LANGUAGE plpgsql AS $$
BEGIN
    OPEN p_refcur FOR SELECT * FROM bench.t_range10 LIMIT 5;
END;
$$; 
