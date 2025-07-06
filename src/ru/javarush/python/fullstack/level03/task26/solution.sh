# Сборка Docker-образа:
docker build -t python_ubuntu_app .

# Запуск контейнера:
docker run --name hello_world_container python_ubuntu_app