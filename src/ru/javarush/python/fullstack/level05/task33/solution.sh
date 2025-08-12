# Создайте пользовательскую bridge-сеть с названием secure_network
docker network create --driver bridge secure_network

# Запустите контейнер с Nginx, подключив его к сети secure_network
# Контейнер будет изолирован от других сетей и контейнеров
docker run -d --name nginx --network secure_network nginx

# Проверьте, что контейнер запущен и подключен к сети secure_network
docker network inspect secure_network
