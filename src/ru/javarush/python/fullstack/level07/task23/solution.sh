# Добавление репозитория Logstash:
sudo apt-get install apt-transport-https
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list'


# Обновление списка пакетов:
sudo apt-get update

# Установка Logstash:
sudo apt-get install logstash

# Запуск службы:
sudo systemctl start logstash

# Настройка автозапуска:
sudo systemctl enable logstash
