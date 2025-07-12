# Используем базовый образ Node.js
FROM node:14

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем исходный код приложения
COPY . .

# Указываем порт, на котором будет работать приложение
EXPOSE 4000

# Определяем команду запуска приложения
CMD ["node", "app.js"]