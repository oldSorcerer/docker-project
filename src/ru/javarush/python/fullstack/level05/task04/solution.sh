# Инициализация Docker Swarm
docker swarm init

# Создание overlay-сети
docker network create --driver overlay my_overlay_network

# Развертывание сервиса с контейнером Nginx в overlay-сети
docker service create --name nginx_service --network my_overlay_network -p 8080:80 nginx

# Проверка работы сервиса
docker service ls

#docker service rm nginx_service