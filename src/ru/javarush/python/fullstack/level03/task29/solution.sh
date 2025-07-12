# Собираем Docker-образ с тегом myapp:1.0
docker build . -t myapp:1.0

# Запускаем контейнер на основе образа с тегом myapp:1.0
docker run --rm myapp:1.0