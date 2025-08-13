# Создайте том с именем logs_volume для хранения логов
docker volume create logs_volume

# Запустите контейнер (например, Nginx), монтируя том logs_volume
docker run -d --name nginx_log_container -v logs_volume:/var/log/nginx nginx

# Остановите контейнер
docker stop nginx_log_container

# Удалите контейнер
docker rm nginx_log_container

# Удалите том logs_volume
docker volume rm logs_volume

# Проверьте, что том больше не существует
docker volume ls