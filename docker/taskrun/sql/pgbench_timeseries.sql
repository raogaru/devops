/*
Tests: Time Range Scan
Index vs seq scan on date
Partition pruning (if enabled)
Parallel scan
*/
\set days random(1, 1500)

BEGIN;

SELECT date_trunc('month', order_date) AS month,
       sum(total_amount)
FROM orders
WHERE order_date >= date '2020-01-01' + :days * interval '1 day'
GROUP BY 1
ORDER BY 1;

END;

