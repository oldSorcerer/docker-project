# Проверьте конфигурацию Logrotate
sudo logrotate -d /etc/logrotate.d/myapp

# Вручную запустите ротацию логов для тестирования
sudo logrotate -f /etc/logrotate.d/myapp