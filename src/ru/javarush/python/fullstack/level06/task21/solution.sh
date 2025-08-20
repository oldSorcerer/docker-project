# Создаем секрет для пароля базы данных PostgreSQL
echo "secret password" | docker secret create db_pass

# Создаем сервис PostgreSQL с использованием созданного секрета
docker service create --name postgres --secret db_pass \
-e POSTGRES_PASSWORD_FILE=/run/secrets/db_pass postgres