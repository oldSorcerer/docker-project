# Используем базовый образ Ubuntu
FROM ubuntu:latest

# Обновляем список пакетов в пакетном менеджере
# Устанавливаем curl
# Устанавливаем git
# Очищаем кеш пакетного менеджера apt
# Удаляем закэшированные списки пакетов, чтобы уменьшить размер образа
RUN apt-get update &&  \
    apt-get install -y curl && \
    apt-get install -y git &&  \
    apt-get clean &&  \
    rm -rf /var/lib/apt/lists/*
