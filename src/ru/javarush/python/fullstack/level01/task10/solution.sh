# Загрузка образа nginx с тегом latest из Docker Hub
docker pull nginx:latest

# Построение образа из Dockerfile в текущем каталоге с тегом my_custom_image
docker build -t my_custom_image .

# Вывод списка локальных образов Docker
docker images

# Удаление образа my_custom_image
docker rmi my_custom_image