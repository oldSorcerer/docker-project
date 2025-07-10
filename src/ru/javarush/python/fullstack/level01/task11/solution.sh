# Создание новой сети с именем app_network
docker network create app_network

# Подключение контейнера с именем app_container к сети app_network
docker network connect app_network app_container

# Вывод списка всех доступных сетей
docker network ls

# Отключение контейнера app_container от сети app_network
docker network disconnect app_network app_container