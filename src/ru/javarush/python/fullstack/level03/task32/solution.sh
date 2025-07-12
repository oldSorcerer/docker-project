# Сборка и запуск образа для разработки
docker build . --build-arg ENVIRONMENT=development -t myapp:dev
docker run --rm myapp:dev

# Сборка и запуск образа для продакшн
docker build . --build-arg ENVIRONMENT=production -t myapp:prod
docker run --rm myapp:prod
