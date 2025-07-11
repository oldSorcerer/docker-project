# Запустите контейнер на основе образа nginx, смонтировав директорию /host/project на хосте в директорию /app внутри контейнера.
docker run -d --name project_container -v /host/project:/app nginx