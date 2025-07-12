# Сборка образа
docker build . -t python_alpine_app

# Запуск контейнера
docker run -d --name my_python_app python_alpine_app