# Вывод списка всех локальных Docker образов с отображением тегов и размеров
docker images --format "table {{.Repository}}\t{{.Tag}}\t{{.Size}}"