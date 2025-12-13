-- Q2: Top selling product categories
SELECT p.category, sum(oi.amount)
FROM sample.order_items oi
JOIN sample.products p ON p.product_id = oi.product_id
GROUP BY p.category
ORDER BY 2 DESC;

