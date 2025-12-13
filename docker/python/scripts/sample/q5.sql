-- Q5: Join explosion
SELECT count(*)
FROM sample.orders o
JOIN sample.order_items oi ON oi.order_id = o.order_id
WHERE o.status = 'completed';

