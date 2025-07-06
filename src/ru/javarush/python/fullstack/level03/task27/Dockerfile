# Первый этап: сборка React-приложения
???

# Установка рабочего каталога
WORKDIR /app

# Копирование package.json и package-lock.json для установки зависимостей
COPY package.json package-lock.json ./

# Установка зависимостей
RUN npm install

# Копирование всего исходного кода проекта
COPY . .

# Сборка приложения
RUN npm run build

# Второй этап: развертывание с использованием nginx
???

# Копирование собранного приложения из первого этапа
COPY --from=builder /app/build /usr/share/nginx/html

# Порты, которые будут использоваться для работы приложения
EXPOSE 80

# Запуск Nginx
CMD ["nginx", "-g", "daemon off;"]