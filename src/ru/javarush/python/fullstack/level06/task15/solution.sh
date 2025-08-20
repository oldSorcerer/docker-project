# Директория для хранения бэкапов
BACKUP_DIR="/path/to/backup_directory"

# Название тома, который нужно бэкапить
VOLUME_NAME="app_data"

# Создайте директорию для хранения бэкапов, если она не существует
mkdir -p $BACKUP_DIR

# Создайте бэкап с именем, соответствующим дате (например, app_data_backup_YYYYMMDD_HHMM.tar.gz)
BACKUP_FILE="$BACKUP_DIR/${VOLUME_NAME}_backup_$(date +%Y%m%d_%H%M).tar.gz"

# Создайте бэкап тома app_data
docker run --rm -v $VOLUME_NAME:/data -v $BACKUP_DIR:/backup busybox tar -czf "/backup/$(basename "$BACKUP_FILE")" -C /data .

# Удалите бэкапы, которым больше 7 дней
find $BACKUP_DIR -type f -name "${VOLUME_NAME}_backup_*.tar.gz" -mtime +7 -exec rm -f {} \;

#basename — это утилита и функция в Unix-подобных системах, которая извлекает “имя файла” из полного пути,
# то есть отбрасывает ведущие каталоги и, при необходимости, заданное суффиксное расширение.
# basename /var/log/nginx/access.log → access.log
# basename /var/log/nginx/ → nginx

#Зачем его используют
#Чтобы получить только имя файла для формирования нового пути, например:
#tar -czf "/backup/$(basename "$BACKUP_FILE")" ... сохраняет архив под тем же именем, что и исходный файл,
# независимо от того, где он расположен.