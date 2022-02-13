#!/bin/bash
echo "Marka telefona"
read brand

case $brand in
    samsung)
    echo "Skidka $brand 30%";;
    nokia)
    echo "Skidka $brand 20%";;
    apple)
    echo "Skidka $brand 10%";;
    *)
    echo "Skidka 0%"
esac