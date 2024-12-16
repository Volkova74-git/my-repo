#!/bin/bash

read -p "Введите имя файла: " file_name

if [ -f "$file_name" ]; then
    # Считаем количество строк в файле
    line_count=$(wc -l < "$file_name")
    echo "Количество строк в файле '$file_name': $line_count"
else
    echo "Файл '$file_name' не найден."
fi
