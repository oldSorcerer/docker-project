# Использование минимального базового образа Alpine
FROM ???

# Установка обновлений и python3
RUN apk add --no-cache python3-dev && \
    pip install --upgrade pip

# Создание рабочей директории
WORKDIR /app

# Копирование исходного кода приложения в контейнер
COPY ???

# Команда для выполнения Python-приложения
CMD ["python3", "app.py"]