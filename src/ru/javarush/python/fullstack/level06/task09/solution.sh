# Создайте два тома: data_volume и logs_volume
docker volume create data_volume
docker volume create logs_volume

# Запустите контейнер с Nginx, монтируя data_volume в директорию /data и logs_volume в директорию /logs
docker run -d --name nginx_container -v data_volume:/data -v logs_volume:/logs -p 8080:80 nginx

