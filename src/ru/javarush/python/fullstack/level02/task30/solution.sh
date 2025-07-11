# Создайте именованный том:
docker volume create shared_volume

# Запустите первый контейнер:
docker run -d --name container_one -v shared_volume:/shared nginx

# Запустите второй контейнер:
docker run -d --name container_two -v shared_volume:/shared nginx
