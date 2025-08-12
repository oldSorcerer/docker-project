# Запустите контейнер с Nginx
docker run -d --name monitored_nginx nginx

# Включите мониторинг активности контейнера с помощью команды docker events
# Мониторьте все события, происходящие с контейнером monitored_nginx
docker events --filter container=monitored_nginx
