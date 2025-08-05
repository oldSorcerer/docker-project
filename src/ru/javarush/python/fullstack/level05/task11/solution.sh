# Создание пользовательской сети с драйвером bridge.
docker network create --name my_bridge_network

# Запуск контейнера с Nginx, подключенного к пользовательской сети.
docker run -d --name nginx_container --network my_bridge_network nginx

# Запуск контейнера с Busybox, подключенного к пользовательской сети.
docker run -d --name busy_container --network my_bridge_network busybox sleep 3600

# Тестирование связи по имени хоста со стороны контейнера Busybox.
docker exec busy_container ping -c 4 nginx_container