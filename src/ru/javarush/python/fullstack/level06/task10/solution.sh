# Создайте том с именем readonly_volume
docker volume create readonly_volume

# Запустите контейнер с Nginx, монтируя том readonly_volume в директорию /app в режиме "только для чтения"
docker run -d --name nginx --mount source=readonly_volume,target=/app,readonly -p 8080:80 nginx

