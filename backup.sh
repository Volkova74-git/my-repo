#!/bin/bash

# Проверка на количество аргументов
if [ "$#" -ne 2 ]; then
    echo "Использование: $0 источник_директория целевая_директория"
    exit 1
fi

SOURCE_DIR=$1
DEST_DIR=$2
DATE=$(date +"%Y-%m-%d")

# Создание целевой директории, если она не существует
mkdir -p "$DEST_DIR"

# Копирование файлов с добавлением даты
for file in "$SOURCE_DIR"/*; do
    if [ -f "$file" ]; then
        BASENAME=$(basename "$file")
        cp "$file" "$DEST_DIR/${BASENAME%.*}_$DATE.${BASENAME##*.}"
    fi
done

echo "Резервное копирование завершено. Файлы скопированы в '$DEST_DIR'."
