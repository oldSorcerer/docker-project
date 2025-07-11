# Сборка Docker образа с именем my_python_app
docker build -t my_python_app .

# Запуск контейнера на основе собранного образа
docker run --rm my_python_app