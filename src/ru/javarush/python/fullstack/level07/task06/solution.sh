# Запуск контейнера с Nginx
docker run -d --name nginx -p 8080:80 nginx

# Запуск контейнера с PostgreSQL
docker run -d --name postgres -e POSTGRES_PASSWORD=root -p 5432:5432 postgres

# Мониторинг операций CPU и памяти
docker stats