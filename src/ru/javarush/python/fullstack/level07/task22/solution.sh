# Добавление репозитория Elasticsearch:
sudo apt-get install -y apt-transport-https
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list'

# Обновление списка пакетов:
sudo apt-get update

# Установка Elasticsearch:
sudo apt-get install elasticsearch

# Запуск службы:
sudo systemctl start elasticsearch

# Настройка автозапуска:
sudo systemctl enable elasticsearch