# Запуск контейнера с именем my_service
docker run -d --name my_service your_image_name

# Используем команду docker logs с флагом -f для отслеживания логов в режиме реального времени
docker logs -f my_service