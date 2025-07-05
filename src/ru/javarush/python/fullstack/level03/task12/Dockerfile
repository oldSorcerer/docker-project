# Первый этап: сборка React-приложения
FROM ??? as build

WORKDIR /app

# Установка зависимостей
COPY package.json package-lock.json ./
RUN npm install

# Копирование исходного кода и сборка Node.Js-приложения
COPY . .
RUN npm run build

# Второй этап: настройка Nginx для хостинга статических файлов
FROM ???

# Копирование файлов сборки из первого этапа в директорию Nginx
COPY ??? /app/build /usr/share/nginx/html

# Конфигурация Nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]