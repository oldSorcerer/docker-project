# Создание сети bridge
docker network create --driver bridge my_bridge_network

# Запуск контейнера с Nginx и подключение к созданной сети
docker run -d --name nginx_container --network my_bridge_network nginx

# Запуск контейнера с Busybox и подключение к созданной сети
docker run -d --name busybox_container --network my_bridge_network busybox sleep 3600

# Проверка связи между контейнерами с использованием имени контейнера
docker exec -it busybox_container ping nginx_container

sleep 5
