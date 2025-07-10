# Создать директорию на хосте, если она не существует
mkdir -p /host/data

# Запустить контейнер Ubuntu с подключенной директорией
docker run -v /host/data:/container/data -it ubuntu
