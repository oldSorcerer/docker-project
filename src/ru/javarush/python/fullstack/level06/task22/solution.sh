# Создание конфигурации nginx_config_v1 в Docker
docker config create nginx_config_v1 nginx_v1.conf

# Создание сервиса Nginx с использованием конфигурации nginx_config_v1
docker service create --name nginx_service \
  --config source=nginx_config_v1,target=/etc/nginx/nginx.conf \
  --publish 8080:80 \
  nginx


# Создайте новую версию конфигурации в Docker


# Обновите существующий сервис Nginx для использования новой конфигурации
