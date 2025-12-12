/* 
Tests: Mixed OLTP (Recommended)
Read + write contention
Locking behavior
Buffer churn
*/
\set cid random(1, 100000)
\set oid random(1, 1000000)

BEGIN;

SELECT sum(total_amount)
FROM orders
WHERE customer_id = :cid;

UPDATE orders
SET total_amount = total_amount + 1
WHERE order_id = :oid;

END;

