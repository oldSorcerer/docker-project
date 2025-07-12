# Загрузка образа nginx:latest из Docker Hub
docker pull nginx:latest

# Запуск контейнера с переадресацией порта 80 контейнера на порт 8080 локальной машины
docker run -d --name my_nginx -p 8080:80 nginx:latest