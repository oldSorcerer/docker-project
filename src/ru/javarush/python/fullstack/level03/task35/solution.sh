# Построение обновленного образа
docker build . -t oldsorcerer/mynodeapp:2.0

# Аутентификация в Docker Hub (это потребует ввода учетных данных)
docker login -u oldsorcerer

# Публикация образа в Docker Hub
docker push oldsorcerer/mynodeapp:2.0