#!/bin/bash
# Script 4: Log File Analyzer

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "File not found"
    exit 1
fi

until [ -s "$LOGFILE" ]; do
    echo "Waiting for log file to have data..."
    sleep 2
done

while IFS= read -r LINE; do
    if [[ "$LINE" =~ $KEYWORD ]]; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Found $COUNT occurrences of '$KEYWORD'"

echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5