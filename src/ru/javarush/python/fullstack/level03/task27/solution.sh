# Сборка Docker-образа:
docker build . -t my_react_nginx_app

# Запуск контейнера:
docker run -d -p 80:80 --name my_app my_react_nginx_app