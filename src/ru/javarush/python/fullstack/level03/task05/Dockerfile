# Используем официальный образ Node.js
FROM node:20

# Создаем рабочую директорию
WORKDIR /usr/src/app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем остальное приложение
COPY . .

# Контейнер будет слушать порт 4000
EXPOSE 4000

# Команда для запуска приложения
CMD ["node", "app.js"]