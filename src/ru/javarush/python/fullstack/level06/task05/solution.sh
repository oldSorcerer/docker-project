# Создать том с именем db_backup
docker volume create db_backup

# Запуск временного контейнера с использованием тома db_backup
docker run --rm -v db_backup:/data busybox

# Получение информации о томе db_backup
docker volume inspect db_backup
