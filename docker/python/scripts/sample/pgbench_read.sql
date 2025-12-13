/* 
Tests: OLTP Read (Point + Join)
Index vs seq scan on customers
Nested loop vs hash join
Cache behavior
*/

\set cid random(1, 100000)

BEGIN;

SELECT c.customer_id,
       c.country,
       count(o.order_id) AS order_cnt,
       sum(o.total_amount) AS total_spent
FROM sample.customers c
LEFT JOIN sample.orders o
  ON o.customer_id = c.customer_id
WHERE c.customer_id = :cid
GROUP BY c.customer_id, c.country;

END;

