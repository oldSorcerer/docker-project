# Загрузка образа Nginx из Docker Hub
docker pull nginx

# Запуск контейнера Nginx в фоновом режиме с перенаправлением порта
docker run -d --name nginx_server -p 8080:80 nginx