# Инициализируем Docker Swarm на хосте с IP-адресом 192.168.1.10
docker swarm init --advertise-addr 192.168.1.10

# Получаем команду для присоединения рабочих узлов
docker swarm join-token worker
