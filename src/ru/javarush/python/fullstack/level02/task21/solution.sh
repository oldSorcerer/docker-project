#Создайте контейнер на основе образа nginx, ограничив его использование памяти до 512 MB.
docker run -d --name memory_limited_container --memory="512m" nginx