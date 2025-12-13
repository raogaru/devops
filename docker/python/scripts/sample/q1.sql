-- Q1: High-value customers (aggregation)
SELECT c.country, sum(o.total_amount)
FROM sample.customers c
JOIN sample.orders o ON o.customer_id = c.customer_id
WHERE o.order_date >= current_date - interval '1 year'
GROUP BY c.country;

