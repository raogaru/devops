CREATE OR REPLACE FUNCTION bench.f_t_list1(p_id bigint)
RETURNS SETOF bench.t_list1
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_list1 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_list2(p_id bigint)
RETURNS SETOF bench.t_list2
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_list2 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_list3(p_id bigint)
RETURNS SETOF bench.t_list3
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_list3 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_list4(p_id bigint)
RETURNS SETOF bench.t_list4
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_list4 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_list5(p_id bigint)
RETURNS SETOF bench.t_list5
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_list5 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_list6(p_id bigint)
RETURNS SETOF bench.t_list6
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_list6 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_list7(p_id bigint)
RETURNS SETOF bench.t_list7
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_list7 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_list8(p_id bigint)
RETURNS SETOF bench.t_list8
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_list8 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_list9(p_id bigint)
RETURNS SETOF bench.t_list9
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_list9 LIMIT 5;
END;
$$;

CREATE OR REPLACE FUNCTION bench.f_t_list10(p_id bigint)
RETURNS SETOF bench.t_list10
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT * FROM bench.t_list10 LIMIT 5;
END;
$$;
