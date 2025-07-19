# Обновляем список пакетов и устанавливаем необходимые зависимости
sudo apt-get update
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Добавляем официальный GPG-ключ Docker
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Добавляем репозиторий Docker в список источников APT
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Устанавливаем Docker Engine
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin

# Добавляем текущего пользователя в группу docker для использования Docker без sudo
sudo usermod -aG docker $USER

# Активируем изменения в группах пользователя (потребуется выйти и зайти снова)
newgrp docker

# Устанавливаем Docker Compose как плагин
sudo apt-get install -y docker-compose-plugin

# Проверяем установку Docker Compose, отображая его версию
docker compose version
