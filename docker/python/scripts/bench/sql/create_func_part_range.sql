CREATE OR REPLACE FUNCTION bench.f_t_range1(p_id bigint)
RETURNS SETOF bench.t_range1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_range1 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_range2(p_id bigint)
RETURNS SETOF bench.t_range2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_range2 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_range3(p_id bigint)
RETURNS SETOF bench.t_range3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_range3 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_range4(p_id bigint)
RETURNS SETOF bench.t_range4
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_range4 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_range5(p_id bigint)
RETURNS SETOF bench.t_range5
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_range5 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_range6(p_id bigint)
RETURNS SETOF bench.t_range6
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_range6 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_range7(p_id bigint)
RETURNS SETOF bench.t_range7
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_range7 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_range8(p_id bigint)
RETURNS SETOF bench.t_range8
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_range8 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_range9(p_id bigint)
RETURNS SETOF bench.t_range9
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_range9 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_range10(p_id bigint)
RETURNS SETOF bench.t_range10
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_range10 LIMIT 5;
END;
$$;
