# Создание пользовательской сети типа bridge с именем my_bridge_network
docker network create --name my_bridge_network

# Запуск контейнера с Nginx и подключение его к my_bridge_network
docker run -d --name nginx_container --network my_bridge_network nginx

# Запуск контейнера с Busybox и подключение его к my_bridge_network
docker run -d --name busybox_container --network my_bridge_network busybox sleep 3600

# Проверка связи между контейнерами с помощью команды ping
docker exec busybox_container ping -c 4 nginx_container