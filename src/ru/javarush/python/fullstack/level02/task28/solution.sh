# Создайте именованный том:
docker volume create app_data

# Запустите контейнер с монтированием тома:
docker run -d -v app_data:/data --name app_container nginx