
-- json, query_tre, query_tree_optimizer
PRAGMA enable_profiling='json';

EXPLAIN ANALYZE 
SELECT
*
FROM
c
WHERE
EXISTS (
    SELECT
    1
    FROM
    d
    WHERE
    c.c1 = d.d1
) ;

