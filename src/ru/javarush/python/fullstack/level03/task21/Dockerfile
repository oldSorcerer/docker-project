# Использование минимального базового образа Alpine
FROM python:alpine

# Установка обновлений и python3
RUN apk add --no-cache python3-dev && \
    pip install --upgrade pip

# Создание рабочей директории
WORKDIR /app

# Копирование исходного кода приложения в контейнер
COPY app.py .

# Команда для выполнения Python-приложения
CMD ["python3", "app.py"]