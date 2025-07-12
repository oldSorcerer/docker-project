# Первый этап: сборка React-приложения
FROM node:14 as build

# Установка рабочих директорий
WORKDIR /app

# Копирование package.json и package-lock.json для установки зависимостей
COPY package.json package-lock.json ./

# Установка зависимостей
RUN npm install

# Копирование остальных исходных файлов приложения в контейнер
COPY . .

# Сборка приложения
RUN npm run build

# Второй этап: создание сервера на базе Nginx для обслуживания статических файлов
FROM nginx:alpine

# Копирование файлов сборки в директорию Nginx
COPY --from=build /app/build /usr/share/nginx/html

# Указание порта, который будет использовать контейнер
EXPOSE 80

# Команда для запуска Nginx
CMD ["nginx", "-g", "daemon off;"]