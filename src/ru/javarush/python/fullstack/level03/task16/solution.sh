# Сборка Docker-образа:
docker build -t react_nginx_app .

# Запуск контейнера:
docker run -d -p 80:80 react_nginx_app