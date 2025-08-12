# Убедитесь, что контейнер web запущен
docker ps

# Остановите контейнер web перед изменением сети
docker stop web

# Создайте новую сеть с названием my_custom_network и подсетью 192.168.2.0/24
docker network create --subnet=192.168.2.0/24 my_custom_network

# Подключите контейнер web к новой сети my_custom_network
docker network connect my_custom_network web

# Запустите контейнер web после подключения к новой сети
docker start web

# Проверьте подключение контейнера web к новой сети
docker network inspect my_custom_network
