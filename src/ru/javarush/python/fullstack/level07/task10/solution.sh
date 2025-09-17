# Сначала загрузите последнюю версию Prometheus с официального сайта
wget https://github.com/prometheus/prometheus/releases/download/v2.30.3/prometheus-2.30.3.linux-amd64.tar.gz

# Распакуйте архив:
tar -xvzf prometheus-*.tar.gz

# Переместите бинарные файлы в /usr/local/bin:
sudo mv prometheus-2.30.3.linux-amd64/prometheus /usr/local/bin
sudo mv prometheus-2.30.3.linux-amd64/promtool /usr/local/bin