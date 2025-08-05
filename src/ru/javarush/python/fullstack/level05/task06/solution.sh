# Запускаем контейнер my_container без подключения к какой-либо сети
docker run -d --name my_container nginx

# Подключаем контейнер my_container к существующей сети my_bridge_network
docker network connect my_bridge_network my_container