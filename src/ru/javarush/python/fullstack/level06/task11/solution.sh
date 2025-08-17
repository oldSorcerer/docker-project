# Создайте том с именем config_volume
docker volume create config_volume

# Запустите временный контейнер и запишите в том файл конфигурации
docker run --rm -v config_volume:/config busybox sh -c "echo 'server {listen 80; }' > /config/nginx.conf"

# Запустите еще один временный контейнер, чтобы проверить содержимое тома с помощью команды ls
docker run --rm -v config_volume:/config busybox ls /config

# Вывод содержимого файла конфигурации
docker run --rm -v config_volume:/config busybox cat /config/nginx.conf

sleep 10