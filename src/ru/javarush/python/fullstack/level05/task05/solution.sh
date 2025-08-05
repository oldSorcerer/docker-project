# Создание новой сети с драйвером bridge
docker network create --driver bridge my_bridge_network

# Запуск контейнера с Nginx и подключение его к сети
docker run -d --name nginx_container --network my_bridge_network nginx

# Запуск контейнера с Redis и подключение его к сети
docker run -d --name redis_container --network my_bridge_network redis

# Проверка работы контейнеров в сети
docker network inspect my_bridge_network