#!/bin/bash

read -p "Введите путь к директории для архивации: " dir

if [ -d "dir" ]; then
    current=$(date + "%Y-%m-%d")
    arch_name="archive_$current.tar.gz"
    tar -czf "$arch_name" -C "$dir" .

    echo "Архив '$arch_name' успешно создан."
else
    echo "Указанная директория не найдена."
fi
