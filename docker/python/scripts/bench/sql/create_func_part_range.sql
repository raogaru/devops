CREATE OR REPLACE FUNCTION bench.f_t_range1(p_id bigint)
RETURNS SETOF bench.t_range1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_range1 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_range2(p_id bigint)
RETURNS SETOF bench.t_range2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_range2 LIMIT (floor(random()*99 + 1)::int);
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_range3(p_id bigint)
RETURNS SETOF bench.t_range3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_range3 LIMIT (floor(random()*99 + 1)::int);
END;
$$;
