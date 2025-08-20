# Остановите и удалите сервис Nginx
docker service rm nginx_service

# Удалите конфигурацию Nginx (например, nginx_config_v1 и nginx_config_v2)
docker config rm nginx_config_v1
docker config rm nginx_config_v2

# Удалите секрет базы данных PostgreSQL (например, postgres_password)
docker secret rm postgres_password

# Проверьте, что конфигурации и секреты удалены
docker config ls
docker secret ls
