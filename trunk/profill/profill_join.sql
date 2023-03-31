
SELECT
	l_returnflag,
	l_linestatus,
	SUM(l_extendedprice) sum_ext,
	MIN(l_extendedprice),
	MAX(l_extendedprice),
	AVG(l_extendedprice)
FROM
	'lineitemsf1.snappy.parquet' lineitem
LEFT JOIN 'orders.parquet' orders ON
	(l_orderkey = o_orderkey)
WHERE
	l_shipdate <= DATE '1998-09-02'
	AND o_orderkey > 10
GROUP BY
	l_returnflag,
	l_linestatus
HAVING sum_ext < 111701729697
ORDER BY
	l_returnflag,
	l_linestatus;

