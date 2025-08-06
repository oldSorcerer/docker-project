# Инициализация Docker Swarm
docker swarm init

# Создание сети
docker network create -d overlay my_overlay_network

# Развертывание стека с помощью Docker Compose
docker stack deploy -c docker-compose.yml my_stack

# Проверка развернутых сервисов
docker stack services my_stack

sleep 25
docker swarm leave --force
# принудительно исключает текущую ноду из Docker Swarm кластера