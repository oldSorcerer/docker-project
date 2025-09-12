# Инициализация репозитория Restic для резервного копирования (если еще не инициализирован)
restic init --repo /path/to/backup/repo

# Выполните резервное копирование данных из директории /path/to/data
restic -r /path/to/backup/repo backup /path/to/data

# Проверьте, что резервное копирование прошло успешно
restic -r /path/to/backup/repo snapshots

# показывает все снапшоты

# Восстановите данные из последней резервной копии в директорию /path/to/restore
restic -r /path/to/backup/repo restore latest --target /path/to/restore


# Проверьте, что данные были восстановлены в директорию /path/to/restore
ls -l /path/to/restore
