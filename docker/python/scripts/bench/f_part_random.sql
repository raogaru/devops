CREATE OR REPLACE FUNCTION bench.f_t_random1()
RETURNS SETOF bench.t_random1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_random1 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_random2()
RETURNS SETOF bench.t_random2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_random2 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_random3()
RETURNS SETOF bench.t_random3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_random3 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_random4()
RETURNS SETOF bench.t_random4
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_random4 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_random5()
RETURNS SETOF bench.t_random5
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_random5 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_random6()
RETURNS SETOF bench.t_random6
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_random6 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_random7()
RETURNS SETOF bench.t_random7
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_random7 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_random8()
RETURNS SETOF bench.t_random8
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_random8 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_random9()
RETURNS SETOF bench.t_random9
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_random9 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_random10()
RETURNS SETOF bench.t_random10
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_random10 LIMIT 5;
END;
$$;
