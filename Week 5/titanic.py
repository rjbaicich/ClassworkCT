import pandas as pd
from IPython.display import display
from sqlalchemy.types import Integer, Text, String, DateTime, Float

df = pd.read_csv('https://raw.githubusercontent.com/lucchesia7/coding-temple-da-sql-day-1/main/day_1/data/titanic.csv')
connection = 'postgresql://qyacilce:mCnGzOtHwZwHpTCOZnIhJLGEf7rIM_kU@rajje.db.elephantsql.com/qyacilce'
df.to_sql("titanic", con=connection)
display(pd.read_sql_table("titanic",con=connection))
print(df)

#table_name = 'titanic'
# var1= "qyacilce"
# var2="mCnGzOtHwZwHpTCOZnIhJLGEf7rIM_kU"
# var3="rajje.db.elephantsql.com"
# connection = f'postgresql://{var1}:{var2}@{var3}/{var1}'