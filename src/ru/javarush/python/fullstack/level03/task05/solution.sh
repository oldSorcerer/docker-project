# Сборка Docker образа:
docker build -t my_node_app .

# Запуск контейнера:
docker run -d --name my_node_app -p 4000:4000 my_node_app