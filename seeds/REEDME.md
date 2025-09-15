

#зaгрузить все seeds
dbt seed

#загрузить конкретный seed файл

dbt seed --select raw_projects

#полностью перезагрузить данные (удалит и создаст таблицу заново)

dbd seed --full-refresh


