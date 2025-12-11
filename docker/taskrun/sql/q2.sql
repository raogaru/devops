-- Q2: Top selling product categories
SELECT p.category, sum(oi.amount)
FROM order_items oi
JOIN products p ON p.product_id = oi.product_id
GROUP BY p.category
ORDER BY 2 DESC;

