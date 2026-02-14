CREATE OR REPLACE FUNCTION bench.f_t_large1(p_id bigint)
RETURNS SETOF bench.t_large1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large1 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large2(p_id bigint)
RETURNS SETOF bench.t_large2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large2 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large3(p_id bigint)
RETURNS SETOF bench.t_large3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large3 LIMIT 5;
END;
$$;
