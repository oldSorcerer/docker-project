# Инициализируем Docker Swarm
docker swarm init

# Создаем overlay сеть для связи между сервисами
docker network create -d overlay my_overlay_network

# Создаем сервис веб-сервера Nginx, подключаем его к overlay сети и пробрасываем порт 80 на 8080 хоста
docker service create --name nginx_container --network my_overlay_network -p 8080:80 nginx

# Создаем сервис базы данных PostgreSQL, подключаем его к overlay сети и задаем пароль для пользователя root
docker service create --name postgres_container --network my_overlay_network -e POSTGRES_PASSWORD=mypassword postgres

#docker swarm leave --force
# принудительно исключает текущую ноду из Docker Swarm кластера