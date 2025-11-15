--SET enable_hashjoin = off;
SET enable_seqscan = off;
EXPLAIN ANALYZE
SELECT pizza_name, name AS pizzeria_name
FROM menu
INNER JOIN pizzeria ON  pizzeria.id=menu.pizzeria_id;
