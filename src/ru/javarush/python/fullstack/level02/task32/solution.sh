# Поиск образов, связанных с PostgreSQL
???

# Определение количества звёзд у официального образа postgres
stars=$(docker search postgres --filter "is-official=true" --format "{{.StarCount}}")
echo "Официальный образ postgres имеет $stars звёзд"
