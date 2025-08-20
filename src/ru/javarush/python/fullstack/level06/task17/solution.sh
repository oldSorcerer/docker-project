# Запустите контейнер с Nginx, смонтировав файл конфигурации в контейнер
docker run -d --name nginx -v ./host/nginx.conf:/etc/nginx/nginx.conf:ro -p 8080:80 nginx