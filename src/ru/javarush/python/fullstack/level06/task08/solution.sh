# Создать том
docker volume create app_data

# Запустите контейнер с Nginx, монтируя том app_data в директорию /app внутри контейнера
docker run -d --name nginx_app -v app_data:/app -p 8080:80 nginx