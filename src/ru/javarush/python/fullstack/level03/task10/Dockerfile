# Использование базового образа Ubuntu 20.04
FROM ubuntu:20.04

# Установка curl и git с очисткой кэша
RUN apt-get update &&  \
    apt-get install -y curl git && \
    rm -rf /var/lib/apt/lists/*