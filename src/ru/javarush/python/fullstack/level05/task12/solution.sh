# Запуск контейнеров с помощью Docker Compose
docker compose up -d

sleep 3

winpty docker exec nginx_container apt-get update
winpty docker exec nginx_container apt-get install -y iputils-ping
# обновление и установка в контейнер утилиты ping

# Проверка связи между веб-сервером и базой данных
docker network inspect task12_my_bridge_network
winpty docker exec nginx_container ping -c 4 postgres_container

sleep 10