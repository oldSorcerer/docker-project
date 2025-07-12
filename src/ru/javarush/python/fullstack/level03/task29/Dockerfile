# Используем минимальный базовый образ Python
FROM python:3.12-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем Python-приложение в контейнер
COPY app.py /app/app.py

# Команда для запуска приложения
CMD ["python", "app.py"]
