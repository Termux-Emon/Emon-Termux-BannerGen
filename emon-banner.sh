#!/bin/bash
# Emon-Termux-Banner installer

bash requirements.sh

clear
figlet -f big "EMON BANNER" | lolcat
echo -e "\nEnter your banner text:"
read BANNER
echo -e "Enter your cowsay text:"
read COW

echo "clear" > tmp_clear.txt
echo "cowsay -f eyes \"$COW\" | lolcat" > tmp_cow.txt
echo "toilet -f big \"$BANNER\" -F gay | lolcat" > tmp_banner.txt

FILE="/data/data/com.termux/files/usr/etc/bash.bashrc"

if grep -qxF "# Emon-Banner" $FILE; then
  echo "Already installed."
else
  echo -e "\n# Emon-Banner" >> $FILE
  cat tmp_clear.txt >> $FILE
  cat tmp_cow.txt >> $FILE
  cat tmp_banner.txt >> $FILE
  echo "✅ Banner ready. Restart Termux."
fi

rm tmp_*.txt
