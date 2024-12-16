#!/bin/bash

read -p "Введите путь к файлу: " path

if [ -e "$path" ]; then
    echo "Файл найден!"
else
    echo "Файл не найден."
fi	


