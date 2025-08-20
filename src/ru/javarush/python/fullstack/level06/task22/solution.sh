# Создание конфигурации nginx_config_v1 в Docker
docker config create nginx_config_v1 nginx_v1.conf

# Создание сервиса Nginx с использованием конфигурации nginx_config_v1
docker service create --name nginx_service \
  --config source=nginx_config_v1,target=/etc/nginx/nginx.conf \
  --publish 8080:80 \
  nginx


# Создайте новую версию конфигурации в Docker
docker config create nginx_config_v2 nginx_v2.conf

# Обновите существующий сервис Nginx для использования новой конфигурации
docker service update --config-rm nginx_config_v1 \
  --config-add source=nginx_config_v2,target=/etc/nginx/nginx.conf \
  nginx_service