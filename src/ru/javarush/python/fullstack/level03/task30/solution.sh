# Сборка Docker-образа с тегом myapp:2.0
docker build . -t myapp:2.0

# Присвоение дополнительного тега myapp:latest к тому же образу
docker tag myapp:2.0 myapp:latest

# Проверка обоих тегов
docker run --rm myapp:2.0
docker run --rm myapp:latest
