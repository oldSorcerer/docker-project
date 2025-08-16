FROM nginx:latest

# Устанавливаем Certbot для получения SSL сертификатов
RUN apt-get update && \
    apt-get install -y certbot python3-certbot-nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Копируем исходные конфигурационные файлы Nginx
COPY ./default.conf /etc/nginx/conf.d/

# Указываем точку входа для контейнера
CMD ["nginx", "-g", "daemon off;"]