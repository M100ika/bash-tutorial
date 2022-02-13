#!/bin/bash

file=/etc/passwd

if [[ -e $file ]]
then
  echo "Файл паролей найден."
fi

dir=/home/bozo

if cd "$dir" 2>/dev/null; then   # "2>/dev/null" подавление вывода сообщений об ошибках.
  echo "Переход в каталог $dir выполнен."
else
  echo "Невозможно перейти в каталог $dir."
fi