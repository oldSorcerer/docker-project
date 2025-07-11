# Запустите контейнер на основе образа my_app, ограничив его использование 2 CPU и 1 GB памяти.
docker run -d --name resource_limited_container --cpus="2" --memory="1g" my_app