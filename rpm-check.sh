#!/bin/bash
# rpm-check.sh

# Запрашивает описание rpm-архива, список файлов, и проверяется возможность установки.
# Результат сохраняется в файле.
#
# Этот сценарий иллюстрирует порядок работы со вложенными блоками кода.
SUCCESS=0
E_NOARGS=65

if [ -z "$1" ]
then
  echo "Порядок использования: `basename $0` rpm-file"
  exit $E_NOARGS
fi

{
  echo
  echo "Описание архива:"
  rpm -qpi $1       # Запрос описания.
  echo
  echo "Список файлов:"
  rpm -qpl $1       # Запрос списка.
  echo
  rpm -i --test $1  # Проверка возможности установки.
  if [ "$?" -eq $SUCCESS ]
  then
    echo "$1 может быть установлен."
  else
    echo "$1 -- установка невозможна!"
  fi
  echo
} > "$1.test"       # Перенаправление вывода в файл.

echo "Результаты проверки rpm-архива находятся в файле $1.test"

# За дополнительной информацией по ключам команды rpm см. man rpm.

exit 0