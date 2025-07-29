# Создаем директорию для веб-контента
mkdir -p ./web_content

# Создайте простой веб-страничный файл index.html
echo "<html><body><h1>Hello from Docker!</h1></body></html>" > ./web_content/index.html

# Запускаем контейнер Nginx с монтированием директории
