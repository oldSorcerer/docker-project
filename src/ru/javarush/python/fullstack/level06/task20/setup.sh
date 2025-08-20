# Создайте конфигурацию в Docker с помощью команды docker config create
docker config create nginx_config ./nginx.conf

# Создайте сервис Nginx, который будет использовать эту конфигурацию
docker service create --name nginx --config source=nginx_config,target=/etc/nginx/nginx.conf -p 8080:80 nginx