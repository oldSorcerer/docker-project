# Запуск нескольких контейнеров
docker run -d --name mongo_container mongo
docker run -d --name redis_container redis

# Сбор метрик с использованием docker stats
docker stats --no-stream --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}"

# Оптимизация потребляемых ресурсов
docker update --memory 512m mongo_container
docker update --cpus 0.5 redis_container

