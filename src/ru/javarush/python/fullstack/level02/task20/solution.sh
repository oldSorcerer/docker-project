#Запустите контейнер на основе образа nginx, ограничив его использование не более чем 1.5 CPU.
docker run -d --name cpu_limited_container  --cpus="1.5" nginx