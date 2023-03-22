import pandas as pd
import duckdb
import datetime
from numpy import array
import random

class TestPandasObject(object):

    def test_object_to_string(self, duckdb_cursor):          
        con = duckdb.connect(database=':memory:', read_only=False)
        x = pd.DataFrame(
			[
				[1, 'a', 2],
				[1, None, 2],
				[1, 1.1, 2],
				[1, 1.1, 2],
				[1, 1.1, 2]
			]
		)
        x = x.iloc[1:].copy()       # middle col now entirely native float items
        con.register('view2', x)
        df = con.execute('select * from view2').fetchall()
        assert df == [(1, None, 2),(1, 1.1, 2), (1, 1.1, 2), (1, 1.1, 2)]

    def test_2273(self, duckdb_cursor):                  
        df_in = pd.DataFrame([[datetime.date(1992, 7, 30)]])
        assert duckdb.query("Select * from df_in").fetchall() == [(datetime.date(1992, 7, 30),)]

    def test_2499(self, duckdb_cursor):  
        df = pd.DataFrame(
            [
                [
                    array([
                            {'a': 0.881040697801939},
                            {'a': 0.9922600577751953},
                            {'a': 0.1589674833259317},
                            {'a': 0.8928451262745073},
                            {'a': 0.07022897889168278}
                    ], dtype=object)
                ],
                [
                    array([
                            {'a': 0.8759413504156746},
                            {'a': 0.055784331256246156},
                            {'a': 0.8605151517439655},
                            {'a': 0.40807139339337695},
                            {'a': 0.8429048322459952}
                    ], dtype=object)
                ],
                [
                    array([
                            {'a': 0.9697093934032401},
                            {'a': 0.9529257667149468},
                            {'a': 0.21398182248591713},
                            {'a': 0.6328512122275955},
                            {'a': 0.5146953214092728}
                    ], dtype=object)
                ]
            ], columns=['col'])

        con = duckdb.connect(database=':memory:', read_only=False)
        con.register('df', df)
        assert (con.execute('select count(*) from df').fetchone() == (3,) )
