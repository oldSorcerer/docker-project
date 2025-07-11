# Используем образ Ubuntu
FROM ubuntu

# Обновляем пакетный индекс, устанавливаем Git и curl, затем удаляем кэш пакетов
RUN apt-get update && \
    apt-get install -y \
    git curl && \
    rm -rf /var/lib/apt/lists/*

# Устанавливаем рабочую директорию
WORKDIR /app

# Команда по умолчанию
CMD ["bash"]