/*
Tests: Heavy Aggregation (CPU + IO)
Hash aggregation
Parallel aggregation
work_mem impact
*/

BEGIN;

SELECT p.category, sum(oi.amount) AS total_sales
FROM order_items oi
JOIN products p ON p.product_id = oi.product_id
GROUP BY p.category;
