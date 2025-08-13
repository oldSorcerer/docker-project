# Создаем несколько томов
docker volume create volume1
docker volume create volume2
docker volume create volume3

# Создаем и запускаем контейнеры, использующие эти тома
docker run -d --name container1 -v volume1:/data busybox sleep 1000
docker run -d --name container2 -v volume2:/data busybox sleep 1000
docker run -d --name container3 -v volume3:/data busybox sleep 1000

# Останавливаем контейнеры
docker stop container1 container2 container3

# Удаляем контейнеры
docker rm container1 container2 container3

# Очищаем неиспользуемые тома
docker volume prune -f

# Подтверждение удаления томов
echo "Неиспользуемые тома успешно удалены."