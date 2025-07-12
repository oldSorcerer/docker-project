# Сборка Docker-образа с вашим именем пользователя Docker Hub:
docker build . -t oldsorcerer/my_python_app:1.0

# Авторизация в Docker Hub:
docker login -u oldsorcerer

# Публикация образа в Docker Hub:
docker push oldsorcerer/my_python_app:1.0
