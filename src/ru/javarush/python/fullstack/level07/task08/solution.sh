# Запуск приложения в контейнере
docker build -t performance-test .
???

# Мониторинг производительности контейнера
??? | tee performance.log

# Выборка пиковых значений из логов
echo "Анализируем данные..."
grep -Eo '([0-9]+\.[0-9]+)%' performance.log | sort -nr | head -1 | awk '{print "Пиковая загрузка CPU: "$1}'
grep -Eo '([0-9]+\.[0-9]+MiB)' performance.log | sort -nr | head -1 | awk '{print "Пиковая загрузка памяти: "$1}'

# Завершение работы контейнера после тестирования
???