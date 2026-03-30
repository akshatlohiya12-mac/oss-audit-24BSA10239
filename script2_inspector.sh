#!/bin/bash
# Script 2: FOSS Package Inspector
# Checks if a FOSS package is installed and its details

PACKAGE=${1:-"vlc"}

# seeing if the package is already on the system
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "[+] $PACKAGE is installed."
    echo "--- Package Details ---"
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description' | head -n 3
else
    echo "[-] $PACKAGE is NOT installed."
fi

echo "----------------------------------------"
# adding a philosophy note based on the package name
case $PACKAGE in
    vlc) 
        echo "VLC: The media player that plays anything, built by students for everyone." ;;
    apache2) 
        echo "Apache: The web server that built the open internet." ;;
    python3) 
        echo "Python: A language driven by community consensus and readability." ;;
    firefox) 
        echo "Firefox: A nonprofit champion fighting for an open web." ;;
    *) 
        echo "$PACKAGE: A vital piece of the diverse FOSS ecosystem." ;;
esac