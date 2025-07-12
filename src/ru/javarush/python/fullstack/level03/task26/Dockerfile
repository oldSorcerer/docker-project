# Использование образа ubuntu:20.04 в качестве базового
FROM ubuntu:20.04

# Обновление пакетов и установка Python
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

# Создание директории для приложения
WORKDIR /app

# Копирование Python-приложение в рабочую директорию
COPY app.py /app/app.py

# Команда запуска приложения
CMD ["python3", "app.py"]