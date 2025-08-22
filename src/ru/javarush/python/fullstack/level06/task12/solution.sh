# Создайте том с именем app_data
docker volume create app_data

# Запустите контейнер с Nginx, монтируя том app_data для хранения данных
docker run -d --name nginx_app -v app_data:/usr/share/nginx/html -p 8080:80 nginx

# Запишите тестовый файл в том (например, index.html)
docker exec nginx_app sh -c "echo 'Hello Docker' > /usr/share/nginx/html/index.html"

# Создайте бэкап данных тома app_data и сохраните его на хосте в виде архива
docker run --rm -v app_data:/data -v $(pwd):/backup busybox tar -czf /backup/app_data_backup.tar.gz /data

# Проверьте, что бэкап создан в текущей директории
ls -l app_data_backup.tar.gz