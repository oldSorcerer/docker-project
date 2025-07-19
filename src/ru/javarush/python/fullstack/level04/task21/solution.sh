# Запуск для разработки
docker compose --env-file .env.development up
echo "Development environment is running on port 8080"
docker compose down

# Запуск для продакшена
docker compose --env-file .env.production up
echo "Production environment is running on port 80"
docker compose down
