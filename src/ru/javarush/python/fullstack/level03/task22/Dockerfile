# Используем базовый образ Ubuntu
FROM ubuntu:latest

# Обновляем список пакетов в пакетном менеджере
RUN apt-get update

# Устанавливаем curl
RUN apt-get install -y curl

# Устанавливаем git
RUN apt-get install -y git

# Очищаем кеш пакетного менеджера apt
RUN apt-get clean

# Удаляем закэшированные списки пакетов, чтобы уменьшить размер образа
RUN rm -rf /var/lib/apt/lists/*
