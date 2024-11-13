import pandas as pd

df = pd.read_csv('data.csv')
average_salary = sum(df['salary']) / len(df['salary'])
print(f'Средняя зарплата сотрудников: {average_salary}')
filtered_df = df[df['age'] > 30]
print("Сотрудники старше 30 лет:\n", filtered_df)
