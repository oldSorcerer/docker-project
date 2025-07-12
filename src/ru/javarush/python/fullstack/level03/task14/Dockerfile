# Используем базовый образ Alpine
FROM alpine:latest

# Определяем аргумент сборки
ARG APP_VERSION

# Устанавливаем переменную окружения с использованием значения аргумента сборки
ENV MY_VERSION=${APP_VERSION}

# Простая команда для проверки версии
CMD echo "Application version: $MY_VERSION"