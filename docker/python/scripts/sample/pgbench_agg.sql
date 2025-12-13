/*
Tests: Heavy Aggregation (CPU + IO)
Hash aggregation
Parallel aggregation
work_mem impact
*/

BEGIN;

SELECT p.category, sum(oi.amount) AS total_sales
FROM sample.order_items oi
JOIN sample.products p ON p.product_id = oi.product_id
GROUP BY p.category;
