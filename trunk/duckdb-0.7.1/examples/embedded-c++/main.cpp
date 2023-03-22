#include "duckdb.hpp"

using namespace duckdb;

int main() {
	DuckDB db(nullptr);

	Connection con(db);

	// con.Query("CREATE TABLE integers(i INTEGER)");
	// con.Query("INSERT INTO integers VALUES (3)");
	// auto result = con.Query("SELECT * FROM integers");


	con.Query("CREATE TABLE mytable(i INTEGER, j INTEGER)");
	con.Query("CREATE TABLE myothertable(k INTEGER)");

	con.Query("INSERT INTO mytable VALUES (1, 3)");
	con.Query("INSERT INTO myothertable VALUES (1)");

	 auto result = con.Query(
	    "SELECT a, b + 1, c + 2 FROM (SELECT COUNT(*), SUM(i), SUM(j) FROM mytable WHERE i > 2) tbl(a, b, c)");

	result->Print();
}
