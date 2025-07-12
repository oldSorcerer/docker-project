# Используем официальный образ Node.js версии 14 в качестве базового
FROM node:14-alpine

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл package.json в рабочую директорию
COPY package.json /app

# Копируем файл server.js в рабочую директорию
COPY server.js /app

# Устанавливаем зависимости, используя NPM
RUN npm install

# Определяем команду для запуска приложения
CMD ["node", "server.js"]