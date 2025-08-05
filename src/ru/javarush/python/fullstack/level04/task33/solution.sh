# Запуск контейнеров
docker compose up -d

# Пауза для ожидания запуска контейнера
sleep 10

# Подключение и проверка данных
winpty docker exec -it postgres_container psql -U exampleuser -d exampledb -c "\l"

# Остановка контейнеров после проверки
docker compose down

#psql — запускает клиентскую утилиту PostgreSQL внутри контейнера.
#-U exampleuser — пользователь базы данных.
#-d exampledb — имя базы данных.
#-c "\l" — команда для psql: выведет список всех баз данных (то есть выполнит мета-команду \l).