# Предполагается, что у вас уже есть файл бэкапа app_data_backup.tar.gz в текущей директории

# Убедитесь, что том с именем app_data существует, если нет, создайте его
docker volume create app_data

# Восстановите данные из бэкапа в том app_data
docker run --rm -v app_data:/data -v $(pwd):/backup busybox tar -xzf /backup/app_data_backup.tar.gz -C /data

# Запустите контейнер с Nginx, монтируя восстановленный том app_data для использования данных
docker run -d --name nginx_app -v app_data:/usr/share/nginx/html -p 8080:80 nginx

# Проверьте, что контейнер запущен, и данные из тома app_data используются
docker ps
