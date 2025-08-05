# Запуск Docker контейнера с Nginx
docker run -d -p 8080:80 --network bridge --name nginx nginx