# Добавление репозитория Filebeat:
sudo apt-get install apt-transport-https
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list'

# Обновление списка пакетов:
sudo apt-get update

# Установка Filebeat:
sudo apt-get install filebeat

# Включение модуля Docker в Filebeat:
sudo filebeat modules enable docker

# Запуск службы:
sudo systemctl start filebeat

# Настройка автозапуска:
sudo systemctl enable filebeat

# Проверка работы Filebeat:
sudo systemctl status filebeat
