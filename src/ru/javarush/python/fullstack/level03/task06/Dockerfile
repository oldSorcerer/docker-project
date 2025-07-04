# Используем базовый образ Node.js версии 20
FROM ???

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN ???

# Копируем весь код приложения
COPY . .

# Устанавливаем переменную окружения NODE_ENV
ENV NODE_ENV=production

# Открываем порт 8080
EXPOSE ???

# Команда для запуска приложения
CMD [ "npm", "start" ]