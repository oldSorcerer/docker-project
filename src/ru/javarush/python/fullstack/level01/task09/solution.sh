# Запуск контейнера с образом nginx в фоновом режиме с именем web_container
docker run -d --name web_container nginx

# Вывод списка запущенных контейнеров
docker ps

# Остановка контейнера web_container
docker stop web_container

# Перезапуск контейнера web_container
docker restart web_container

# Остановка контейнера web_container перед удалением
docker stop web_container

# Удаление контейнера web_container
docker rm web_container
