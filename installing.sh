#!/bin/bash

echo -n "Install Commands: "

echo -e "\n\n\n   write and type the numbers of the programs you do not want to install, \n if you make a mistake, press Ctrl + C in cmd and restart the program."

read -p "Press Enter to Continue..."

clear

python=true
java=true

echo -n "[1] Python      "
echo -n "[2] Java        "
echo -n "[3] Vscode      "
echo -n "[4] Discord     "
echo -n "[5] Spotify     "
echo -e
echo -n "[6] Wine        "
echo -n "[7] Q4wine      "
echo -n "[8] Virtual Box "
echo -n "[9] Chrome      "
echo -e "\n\n\n\n\n"

read -p "Write the numbers of the programs you do not want to install: " numbers

# Verifica se o número "1" está presente na entrada
if echo "$numbers" | grep -q "1"; then
    python=false
fi
if echo "$numbers" | grep -q "2"; then
    java=false
fi

echo "Python: $python"
echo "Java: $java"
