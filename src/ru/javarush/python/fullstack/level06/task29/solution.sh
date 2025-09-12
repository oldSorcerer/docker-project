# Создайте секрет для пароля базы данных PostgreSQL
echo "mysecretpassword" | docker secret create postgres_db_password -

# Создайте сеть для сервиса PostgreSQL, если она не создана
docker network create postgres_network

# Создайте сервис PostgreSQL, используя секрет для пароля
docker service create --name postgres_service \
  --secret source=postgres_db_password,target=postgres_password \
  -e POSTGRES_PASSWORD_FILE=/run/secrets/postgres_password \
  --network postgres_network \
  postgres


# можно как в лекции но лучше использовать source target так как не всегда новый
# секрет буде там же где и старый