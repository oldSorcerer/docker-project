# Добавление официального репозитория Grafana
sudo apt-get install -y software-properties-common
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"

# Обновление списка пакетов
sudo apt-get update

# Установка Grafana
sudo apt-get install -y grafana