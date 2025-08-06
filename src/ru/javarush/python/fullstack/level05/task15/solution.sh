# Запуск контейнера с ограничением по IP
docker run -d --name nginx -p 127.0.0.1:8080:80 nginx