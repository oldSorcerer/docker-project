# Сборка Docker-образа:
docker build . -t my_python_alpine_app

# Запуск контейнера:
docker run -d --name my_python_app my_python_alpine_app