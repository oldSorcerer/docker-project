# Создайте том с именем website_data для хранения данных веб-сайта
docker volume create website_data

# Запустите контейнер с Nginx, монтируя том website_data в директорию /usr/share/nginx/html контейнера
docker run -d --name nginx_container -v website_data:/usr/share/nginx/html -p 8080:80 nginx