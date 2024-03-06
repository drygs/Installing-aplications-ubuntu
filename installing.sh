#!/bin/bash

echo -n "Install Commands: "

echo -e "\n\n\n   write and type the numbers of the programs you do not want to install, \n if you make a mistake, press Ctrl + C in cmd and restart the program."

read -p "Press Enter to Continue..."

clear

python=true
java=true
vscode=true
discord=true
spotify=true
wine=true
q4wine=true
virtualbox=true
chrome=true
toinstall=""
gogo="Y"
read -p "Iniciate the program? (press enter)" -r toinstall
toinstall_upper=${toinstall^^}  # Convertendo para maiúsculas

while true; do

    if [ "$toinstall_upper" = "$gogo" ]; then
        break
    fi
    
    if [ -z "$toinstall" ]; then
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

        read -p "Write [y] yes on end else press enter to continue the selection: " -r toinstall

        # Verifica se o número "1" está presente na entrada
        if echo "$numbers" | grep -q "1"; then
            python=false
        fi
        if echo "$numbers" | grep -q "2"; then
            java=false
        fi
        if echo "$numbers" | grep -q "3"; then
            vscode=false
        fi
        if echo "$numbers" | grep -q "4"; then
            discord=false
        fi
        if echo "$numbers" | grep -q "5"; then
            spotify=false
        fi
        if echo "$numbers" | grep -q "6"; then
            wine=false
        fi
        if echo "$numbers" | grep -q "7"; then
            q4wine=false
        fi
        if echo "$numbers" | grep -q "8"; then
            virtualbox=false
        fi
        if echo "$numbers" | grep -q "9"; then
            chrome=false
        fi

        echo "Python: $python"
        echo "Java: $java"
        echo "Vscode: $vscode"
        echo "Discord: $discord"
        echo "Spotify: $spotify"
        echo "Wine: $wine"
        echo "Q4wine: $q4wine"
        echo "Virtual Box: $virtualbox"
        echo "Chrome: $chrome"


    else
        echo "Invalid entry. Please press Enter or type 'Y'."
    fi

done
