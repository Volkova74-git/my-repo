#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Использование: $0 имя_файла старое_слово новое_слово"
    exit 1
fi

FILE=$1
OLD_WORD=$2
NEW_WORD=$3

sed -i "s/$OLD_WORD/$NEW_WORD/g" "$FILE"

echo "Замена '$OLD_WORD' на '$NEW_WORD' выполнена в файле '$FILE'."
