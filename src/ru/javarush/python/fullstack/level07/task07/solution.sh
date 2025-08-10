# Запуск контейнера с Nginx
docker run -d --name nginx_container -p 8080:80 nginx

# Запуск контейнера с PostgreSQL
docker run -d --name postgres_container \
    -e POSTGRES_PASSWORD=mysecretpassword \
    -p 5432:5432 \
    postgres

# Вывод имени контейнера, процента использования CPU и памяти.

