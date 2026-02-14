CREATE OR REPLACE FUNCTION bench.f_t_hash1(p_id bigint)
RETURNS SETOF bench.t_hash1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_hash1 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_hash2(p_id bigint)
RETURNS SETOF bench.t_hash2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_hash2 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_hash3(p_id bigint)
RETURNS SETOF bench.t_hash3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_hash3 LIMIT 5;
END;
$$;
