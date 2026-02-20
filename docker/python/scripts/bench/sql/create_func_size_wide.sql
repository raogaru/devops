CREATE OR REPLACE FUNCTION bench.f_t_wide1(p_id bigint)
RETURNS SETOF bench.t_wide1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_wide1 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_wide2(p_id bigint)
RETURNS SETOF bench.t_wide2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_wide2 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_wide3(p_id bigint)
RETURNS SETOF bench.t_wide3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_wide3 LIMIT (floor(random()*99 + 1)::int);
END;
$$;
