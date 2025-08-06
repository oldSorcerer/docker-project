# Создание сети
docker network create webnet

# Запуск контейнера web с Nginx, подключенного к сети webnet
docker run -d --name web --network webnet nginx

winpty docker exec web apt-get update
winpty docker exec web apt-get install -y iputils-ping
# обновление и установка в контейнер утилиты ping

# Запуск контейнера db с PostgreSQL, подключенного к сети webnet
docker run -d --name db --network webnet -e POSTGRES_PASSWORD=mypassword postgres

# Проверка связи с помощью ping
docker exec -it web ping -c 4 db

sleep 10
