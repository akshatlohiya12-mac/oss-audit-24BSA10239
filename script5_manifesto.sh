#!/bin/bash
# Script 5: Open Source Manifesto Generator
# asks user questions and writes a custom paragraph to a text file

echo "Answer three questions to generate your manifesto."
echo "------------------------------------------------"
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# generating the text file and appending lines
echo "--- Open Source Manifesto ---" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Technology shapes our world. I rely on $TOOL every day to get things done. To me, the absolute core of open source is $FREEDOM. If I had the time and resources today, I would build $BUILD and release it into the public domain for everyone to use." >> "$OUTPUT"

echo "------------------------------------------------"
echo "Manifesto saved to $OUTPUT"
echo "Here is what it says:"
echo ""
cat "$OUTPUT"