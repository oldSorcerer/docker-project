# Обновление списка пакетов
sudo apt-get update -y

# Установка необходимых пакетов
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Добавление GPG ключа Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Добавление Docker репозитория
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Обновление списка пакетов после добавления репозитория Docker
sudo apt-get update -y

# Установка Docker Engine
sudo apt-get install -y docker-ce

# Запуск Docker и настройка его для автозапуска
sudo systemctl start docker
sudo systemctl enable docker

# Проверка версии Docker
docker --version