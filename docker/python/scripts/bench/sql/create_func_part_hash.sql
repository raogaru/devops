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

CREATE OR REPLACE FUNCTION bench.f_t_hash4(p_id bigint)
RETURNS SETOF bench.t_hash4
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_hash4 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_hash5(p_id bigint)
RETURNS SETOF bench.t_hash5
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_hash5 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_hash6(p_id bigint)
RETURNS SETOF bench.t_hash6
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_hash6 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_hash7(p_id bigint)
RETURNS SETOF bench.t_hash7
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_hash7 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_hash8(p_id bigint)
RETURNS SETOF bench.t_hash8
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_hash8 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_hash9(p_id bigint)
RETURNS SETOF bench.t_hash9
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_hash9 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_hash10(p_id bigint)
RETURNS SETOF bench.t_hash10
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_hash10 LIMIT 5;
END;
$$;
