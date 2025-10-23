import polars as pl

df_jan = pl.read_csv('jan.csv', separator =';', encoding = 'latin1')
df_fev = pl.read_csv('fev.csv', separator=';', encoding = 'latin1')
df_mar = pl.read_csv('mar.csv', separator=';', encoding = 'latin1')
df_abr = pl.read_csv('abr.csv', separator=';', encoding = 'latin1')
df_mai = pl.read_csv('mai.csv', separator=';', encoding = 'latin1')
df_jun = pl.read_csv('jun.csv', separator=';', encoding = 'latin1')
df_jul = pl.read_csv('jul.csv', separator=';', encoding = 'latin1')
df_ago = pl.read_csv('ago.csv', separator=';', encoding = 'latin1')

df = pl.concat([df_jan, df_fev, df_mar, df_abr, df_mai, df_jun, df_jul, df_ago])
print(df.head())