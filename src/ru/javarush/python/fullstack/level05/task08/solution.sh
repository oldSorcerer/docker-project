# Создание сети с драйвером bridge
docker network create --driver bridge my_bridge_network

# Запуск контейнера и подключение его к сети
docker run -d --name container1 --network my_bridge_network nginx

# Отключение контейнера от сети
docker network disconnect my_bridge_network container1

# Удаление созданной сети
docker network rm my_bridge_network