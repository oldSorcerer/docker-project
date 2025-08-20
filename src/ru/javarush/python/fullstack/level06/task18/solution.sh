# Запустите контейнер, смонтировав директорию с хоста в контейнер с правами только для чтения
docker run --rm --name my_container --mount type=bind,source=/data,target=/app,readonly docker-image