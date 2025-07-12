# Команда для отображения локально хранящихся Docker-образов с форматированием вывода
docker images --format "{{.Repository}}:{{.Tag}}"