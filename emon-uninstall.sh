#!/bin/bash
FILE="/data/data/com.termux/files/usr/etc/bash.bashrc"
cp $FILE "$FILE.bak"
sed -i '/# Emon-Banner/,/^$/d' $FILE
echo "✅ Uninstalled Emon banner. Restart Termux."
