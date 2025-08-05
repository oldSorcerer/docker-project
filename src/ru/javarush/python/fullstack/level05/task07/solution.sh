# Отключаем контейнер от сети
docker network disconnect my_bridge_network my_container

# Проверка состояния контейнера
docker inspect my_container -f '{{.State.Status}}'
