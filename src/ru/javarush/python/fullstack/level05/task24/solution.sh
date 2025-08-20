# Инициализация Docker Swarm 
docker swarm init

# Загрузите последний образ Nginx
docker pull nginx:latest

# Обновите сервис my_web, чтобы он использовал последнюю версию образа Nginx
docker service update --image nginx:latest --update-order start-first my_web

#--update-order start-first
#stop-first
# определяет порядок обновления реплик при деплое сервиса в Docker Swarm

#docker swarm leave --force
# принудительно исключает текущую ноду из Docker Swarm кластера