# Убедитесь, что сеть webnet создана
docker network create webnet

# Запуск контейнера web с Nginx, подключенного к сети webnet
docker run -d --name web --network webnet nginx

# Запуск контейнера db с PostgreSQL, подключенного к сети webnet
docker run -d --name db --network webnet -e POSTGRES_PASSWORD=mypassword postgres

# Установка утилиты nslookup в контейнере web
docker exec web apt-get update
docker exec web apt-get install -y dnsutils

# Проверка DNS с помощью nslookup
docker exec -it web nslookup db

# Проверьте, что оба контейнера подключены к одной и той же сети
docker network inspect webnet

sleep 10
