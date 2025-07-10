# Создание нового Docker тома с именем data_volume
docker volume create data_volume

# Просмотр информации о созданном томе data_volume
docker volume inspect data_volume

# Запуск контейнера и монтирование тома data_volume по пути /data
docker run -d --name my_container -v data_volume:/data alpine
#docker run -d --name my_container -v data_volume:/data busybox

#Удаление контейнера my_container и тома data_volume
docker rm -f my_container
docker volume rm data_volume

# -f позволяет принудительно остановить работающий контейнер и затем его удалить