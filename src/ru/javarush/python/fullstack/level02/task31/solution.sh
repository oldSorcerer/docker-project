# Создаем каталог для хранения резервной копии, если он не существует
mkdir -p /backup

# Создаем резервную копию тома my_volume, используя контейнер busybox
docker run --rm -v my_volume:/volume -v /backup:/backup busybox tar czf /backup/my_volume_backup.tar.gz -C /volume .

# Восстанавливаем том my_volume из ранее созданной резервной копии
docker run --rm -v my_volume:/volume -v /backup:/backup busybox sh -c "tar xzf /backup/my_volume_backup.tar.gz -C /volume"

# c — создать новый архив (create).
# . — добавлять в архив всё содержимое текущей директории (т.е. весь том)

# sh — это команда для запуска шелла
# -c — указывает шёллу выполнить строку, которую вы помещаете в кавычки.
# x — извлечение файлов (extract)
# z — использовать gzip (архив .gz)
# f — указывает, что далее будет имя файла архива.
# -C /volume — говорит tar распаковать содержимое архива в каталог /volume.
#