# Запустите контейнер с PostgreSQL, установив пароль для пользователя


# Подождите, пока PostgreSQL полностью запустится (можно подождать несколько секунд)
sleep 10

# Создайте базу данных, если она не создана (в данном случае мы уже указали через переменную окружения)
docker exec -it postgres_container psql -U postgres -c "CREATE DATABASE mydatabase;"

# Создайте таблицу в базе данных для тестирования
docker exec -it postgres_container psql -U postgres -d mydatabase -c "CREATE TABLE test_table (id SERIAL PRIMARY KEY, name VARCHAR(50));"

# Вставьте тестовые данные в таблицу
docker exec -it postgres_container psql -U postgres -d mydatabase -c "INSERT INTO test_table (name) VALUES ('Test Entry 1'), ('Test Entry 2');"

# Выполните бэкап базы данных с использованием утилиты pg_dump и сохраните его на хосте


# Проверьте, что бэкап создан
ls -l mydatabase_backup.sql
