# Используем минимальный базовый образ Node.js
FROM node:14-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем весь исходный код приложения
COPY . .

# Устанавливаем переменную окружения
ENV APP_ENV=production

# Указываем порт, на котором приложение будет работать
EXPOSE 5000

# Команда для запуска приложения
CMD ["npm", "start"]