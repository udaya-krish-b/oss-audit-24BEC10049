#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin")
GIT_CONFIG="$HOME/.gitconfig"

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "PATH: $DIR | PERMS: $PERMS | SIZE: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo "--- Software Specific Audit ---"
if [ -f "$GIT_CONFIG" ]; then
    echo "Found Git Config: $GIT_CONFIG"
    ls -l "$GIT_CONFIG" | awk '{print "Permissions: " $1 " Owner: " $3}'
else
    echo "Git config not found"
fi