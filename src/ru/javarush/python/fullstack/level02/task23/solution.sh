# Запустите контейнер с образом nginx, ограничив использование 512 MB оперативной памяти и 512 MB подкачки (swap).
docker run -d --name swap_limited_container --memory 512m --memory-swap 1024m nginx