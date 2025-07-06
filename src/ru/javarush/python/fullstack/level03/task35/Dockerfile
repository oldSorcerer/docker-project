# Используем базовый образ Node.js
FROM node:14

# Установка директории для приложения
WORKDIR /usr/src/app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем исходный код приложения
COPY . .

# Добавляем новое текстовое сообщение
RUN echo "App updated" > updated.txt

# Открываем порт приложения
EXPOSE 8080

# Определяем команду для запуска приложения
CMD ["node", "app.js"]