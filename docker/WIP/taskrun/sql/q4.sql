-- Q4: Time series range scan
SELECT date_trunc('month', order_date), sum(total_amount)
FROM orders
GROUP BY 1
ORDER BY 1;

