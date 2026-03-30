#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -s "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed"
    dpkg -s "$PACKAGE" | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE NOT installed"
fi

case $PACKAGE in
    git) echo "Git: decentralized version control system" ;;
    python) echo "Python: community-driven programming language" ;;
    firefox) echo "Firefox: open-source web browser" ;;
    vlc) echo "VLC: free multimedia player" ;;
    apache2) echo "Apache: open-source web server" ;;
    *) echo "Unknown package" ;;
esac