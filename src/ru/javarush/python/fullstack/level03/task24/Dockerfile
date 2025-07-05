# Этап 1: Сборка React-приложения
???

WORKDIR /app

# Копируем файлы package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем остальной исходный код приложения
COPY . .

# Собираем React-приложение
RUN npm run build

# Этап 2: Обслуживание приложения с помощью Nginx
???

# Копируем собранное React-приложение с предыдущего этапа
COPY --from=builder /app/build /usr/share/nginx/html

# Открываем порт 80
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]