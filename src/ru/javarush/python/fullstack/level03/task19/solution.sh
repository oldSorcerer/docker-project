# Удаление всех "dangling" образов
docker rmi $(docker images -f "dangling=true" -q)