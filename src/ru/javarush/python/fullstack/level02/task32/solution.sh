# Поиск образов, связанных с PostgreSQL
docker search postgres

# Определение количества звёзд у официального образа postgres
stars=$(docker search postgres --filter "is-official=true" --format "{{.StarCount}}")
echo "Официальный образ postgres имеет $stars звёзд"