# Убедитесь, что сеть webnet создана и активна


# Используйте команду docker network inspect для вывода информации о сети webnet


# Вывод информации о подключенных к сети webnet контейнерах


# Проверка атрибутов сети, таких как драйвер и другие параметры
docker network inspect webnet | grep -E '"Driver":|"Scope":|"EnableIPv6":|"Subnet":|"Gateway":'
