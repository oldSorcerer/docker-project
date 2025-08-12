# Добавление репозитория Filebeat:
sudo apt-get install apt-transport-https
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list'

# Обновление списка пакетов:


# Установка Filebeat:


# Включение модуля Docker в Filebeat:


# Запуск службы:


# Настройка автозапуска:


# Проверка работы Filebeat:
