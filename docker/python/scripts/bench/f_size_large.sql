CREATE OR REPLACE FUNCTION bench.f_t_large1()
RETURNS SETOF bench.t_large1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large1 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large2()
RETURNS SETOF bench.t_large2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large2 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large3()
RETURNS SETOF bench.t_large3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large3 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large4()
RETURNS SETOF bench.t_large4
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large4 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large5()
RETURNS SETOF bench.t_large5
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large5 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large6()
RETURNS SETOF bench.t_large6
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large6 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large7()
RETURNS SETOF bench.t_large7
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large7 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large8()
RETURNS SETOF bench.t_large8
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large8 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large9()
RETURNS SETOF bench.t_large9
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large9 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large10()
RETURNS SETOF bench.t_large10
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large10 LIMIT 5;
END;
$$;
