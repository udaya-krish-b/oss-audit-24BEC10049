#!/bin/bash
# Script 5: Open Source Manifesto Generator

# alias manifesto="./script5_manifesto.sh"

read -p "Tool: " TOOL
read -p "Freedom: " FREEDOM
read -p "Build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "OPEN SOURCE MANIFESTO - $DATE" > "$OUTPUT"
echo "I use $TOOL daily." >> "$OUTPUT"
echo "Freedom means $FREEDOM." >> "$OUTPUT"
echo "I will build $BUILD and share it openly." >> "$OUTPUT"

echo "Saved to $OUTPUT"
cat "$OUTPUT"