#!/bin/bash
# Script 4: Log File Analyzer
# reads a log file line by line and counts keyword occurrences

LOGFILE=${1:-"/var/log/dpkg.log"}
KEYWORD=${2:-"install"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

echo "Scanning $LOGFILE for the word '$KEYWORD'..."

# reading file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "========================================"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "========================================"