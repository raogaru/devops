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
