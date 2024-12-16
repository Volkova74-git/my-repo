#!/bin/bash

# Запрашиваем у пользователя путь к директории
read -p "Введите путь к директории: " dir_path

# Проверяем, существует ли директория
if [ -d "$dir_path" ]; then
    # Проходим по всем файлам в директории
    for file in "$dir_path"/*; do
        # Проверяем, является ли элемент файлом
        if [ -f "$file" ]; then
            # Получаем имя файла без пути
            file_name=$(basename "$file")
            # Добавляем префикс
            mv "$file" "$dir_path/backup_$file_name"
            echo "Префикс добавлен к файлу: $file_name"
        fi
    done
else
    echo "Указанная директория не найдена."
fi
