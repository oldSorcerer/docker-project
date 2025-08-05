# Запуск контейнера с пробросом портов для HTTP и HTTPS
docker run -d --name nginx -p 8080:80 -p 8443:443 nginx