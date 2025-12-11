/*
Tests: Write / Churn (Updates)
WAL pressure
HOT updates
Autovacuum behavior
*/

\set oid random(1, 1000000)

BEGIN;

UPDATE orders
SET status = 'completed'
WHERE order_id = :oid;

END;

