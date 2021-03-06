#!/bin/bash
# Явные переменные

echo

# Когда перед именем переменной не употребляется символ '$'?
# В операциях присваивания.

# Присваивание
a=879
echo "Значение переменной \"a\" -- $a."

# Присваивание с помощью ключевого слова 'let'
let a=16+5
echo "Значение переменной \"a\" теперь стало равным: $a."

echo

# В заголовке цикла 'for' (своего рода неявное присваивание)
echo -n "Значения переменной \"a\" в цикле: "
for a in 7 8 9 11
do
  echo -n "$a "
done

echo
echo

# При использовании инструкции 'read' (тоже одна из разновидностей присваивания)
echo -n "Введите значение переменной \"a\" "
read a
echo "Значение переменной \"a\" теперь стало равным: $a."

echo

exit 0