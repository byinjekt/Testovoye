#!/bin/sh

#Проверка на два аргумента
if [ $# -ne 2 ]; then
    exit 1
fi

filename=$1
extension=$2

base_name="${filename%.*}"

#Проверка на наличие расширения у файла
if [ "$base_name" == "$filename" ]; then
    new_filename="${filename}.${extension}"
else
    new_filename="${base_name}.${extension}"
fi

mv "$filename" "$new_filename"
