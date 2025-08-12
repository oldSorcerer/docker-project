# Запустите контейнер с Nginx, смонтировав сертификаты и ключи для использования TLS
docker run -d -p 443:443 --name nginx_tls \
  -v /docker/cert.pem:/etc/nginx/cert.pem \
  -v /docker/key.pem:/etc/nginx/key.pem \
  -v /docker/nginx.conf:/etc/nginx/nginx.conf \
  nginx