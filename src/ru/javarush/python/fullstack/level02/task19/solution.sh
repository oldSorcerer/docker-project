# Обновление списка пакетов внутри контейнера my_container
docker exec my_container apt-get update

# Установка текстового редактора Vim внутри контейнера my_container
docker exec my_container apt-get install -y vim