#!/bin/bash

add() {
    local sum=$(( $1 + $2 ))
    echo "Сумма $1 и $2 равна: $sum"
}

if [ $# -ne 2 ]; then
    echo "Использование: $0 <число1> <число2>"
    exit 1
fi

add "$1" "$2"
