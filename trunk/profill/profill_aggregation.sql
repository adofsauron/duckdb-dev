
-- json, query_tre, query_tree_optimizer
PRAGMA enable_profiling='json';

EXPLAIN ANALYZE 
select sum(d1) from d where d1 > 1 group by d1;

EXPLAIN ANALYZE 
SELECT gender, AVG(score) AS avg_score
FROM students
WHERE age > 19
GROUP BY gender
HAVING AVG(score) > 90;
PRAGMA enable_profiling='query_tree_optimizer';


