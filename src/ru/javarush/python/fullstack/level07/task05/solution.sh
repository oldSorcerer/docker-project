# Сборка Docker-образа
docker build . -t disk_io_app

# Запуск Docker-контейнера
docker run -d --name disk_io_container disk_io_app

# Мониторинг операций ввода/вывода
docker stats disk_io_container

#sleep 15