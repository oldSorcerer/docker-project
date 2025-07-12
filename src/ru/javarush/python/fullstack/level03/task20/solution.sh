# Команда отфильтрует и отобразит только образы из репозитория ubuntu с тегом 20.04.
docker images --filter=reference='ubuntu:20.04'