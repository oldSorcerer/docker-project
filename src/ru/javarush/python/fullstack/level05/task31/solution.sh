# Убедитесь, что сеть webnet создана и активна
docker network ls

# Используйте команду docker network inspect для вывода информации о сети webnet
docker network inspect webnet

# Вывод информации о подключенных к сети webnet контейнерах
docker network inspect webnet | grep -A 5 Containers

# Проверка атрибутов сети, таких как драйвер и другие параметры
docker network inspect webnet | grep -E '"Driver":|"Scope":|"EnableIPv6":|"Subnet":|"Gateway":'

# grep -A 5 Containers — находит строку, где есть слово Containers,
# и показывает её плюс 5 строк после.