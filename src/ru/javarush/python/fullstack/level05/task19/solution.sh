# Создание сети macvlan
docker network create -d macvlan \
--subnet=192.168.1.0/24 \
--gateway=192.168.1.1 \
-o parent=eth0 my_macvlan_network

# Запуск контейнера с Nginx и подключение к сети macvlan
docker run -d --name nginx_container --network my_macvlan_network nginx

# Запуск контейнера с Busybox и подключение к сети macvlan
docker run -d --name busybox_container --network my_macvlan_network busybox sleep 3600

# Проверка связи между контейнерами с помощью команды ping
docker exec -it busybox_container ping -c 4 nginx_container

# Проверка сети
docker network inspect my_macvlan_network
