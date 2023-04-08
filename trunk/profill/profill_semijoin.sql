
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


EXPLAIN ANALYZE
SELECT
	*
FROM
	c
LEFT OUTER JOIN d ON
	c.c1 = d.d1 ;

