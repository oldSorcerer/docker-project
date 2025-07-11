#В контейнере с именем db_container создайте новый файл backup.sql в директории /data.
docker exec -d db_container touch /data/backup.sql