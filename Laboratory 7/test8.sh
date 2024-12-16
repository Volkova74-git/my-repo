#!/bin/bash

disk_usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$disk_usage" -gt 80 ]; then
    echo "Предупреждение: Использование диска составляет $disk_usage%, что превышает 80%."
else
    echo "Использование диска составляет $disk_usage%, что в пределах нормы."
fi
