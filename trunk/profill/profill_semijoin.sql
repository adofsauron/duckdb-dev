
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

