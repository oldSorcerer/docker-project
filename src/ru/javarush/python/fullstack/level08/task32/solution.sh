# Используем docker compose logs для получения логов всех запущенных контейнеров
logs=$(???)

# Ищем в логах строку, которая подтверждает успешный запуск сервера Nginx
if echo "$logs" | grep -q "???"; then
    echo "Nginx server has successfully started."
else
    echo "Nginx server start confirmation not found in logs."
fi