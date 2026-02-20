CREATE OR REPLACE FUNCTION bench.f_t_large1(p_id bigint)
RETURNS SETOF bench.t_large1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large1 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large2(p_id bigint)
RETURNS SETOF bench.t_large2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large2 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_large3(p_id bigint)
RETURNS SETOF bench.t_large3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_large3 LIMIT (floor(random()*99 + 1)::int);
END;
$$;
