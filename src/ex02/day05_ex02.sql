DROP INDEX IF EXISTS idx_person_name;
CREATE INDEX idx_person_name ON person (UPPER(name));
SET enable_seqscan TO off;

SELECT *
FROM person
WHERE UPPER (name) = 'ANNA';

EXPLAIN ANALYZE
SELECT *
FROM person
WHERE UPPER (name) = 'ANNA';