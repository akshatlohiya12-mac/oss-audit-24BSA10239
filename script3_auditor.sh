#!/bin/bash
# Script 3: Disk and Permission Auditor
# loops through important directories and checks permissions and size

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "        Directory Audit Report          "
echo "========================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # getting permissions and size using ls and du
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "----------------------------------------"
# checking if VLC config folder exists in etc
VLC_CONF="/etc/vlc"
if [ -d "$VLC_CONF" ]; then
     echo "VLC config directory exists: $VLC_CONF"
     ls -ld $VLC_CONF | awk '{print "Permissions: " $1}'
else
     echo "No global VLC config directory found in /etc."
fi