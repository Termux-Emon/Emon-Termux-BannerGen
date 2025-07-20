#!/bin/bash

# ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
# ┃   Emon-Termux-BannerGen    ┃
# ┃     Made by EMON - 2025    ┃
# ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

clear
figlet -f big "EMON BANNER" | lolcat

# Color Variables
cyan='\033[0;36m'
lightgreen='\033[1;32m'
red='\033[1;31m'
yellow='\033[1;33m'

# Welcome Messages
echo -e $lightgreen "\033[1m         Termux Banner Tool by EMON"
echo -e $yellow "\033[1m       Create a custom startup banner"
echo
echo

# Ask for user input
echo -e "\033[1m\033[33mEnter your \033[31mBanner\033[33m name:\033[32m "
read varbanner
echo
echo -e "\033[1m\033[33mEnter your \033[32mCowsay\033[33m name:\033[0m "
read varcowsay
echo

# Create files with banner commands
echo "clear" > cl34r.txt
echo "cowsay -f eyes \"$varcowsay\" | lolcat" > C0w54y.txt
echo "toilet -f big \"$varbanner\" -F gay | lolcat" > 84nn3r.txt

# Append to Termux bash.bashrc startup file
cat cl34r.txt >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat C0w54y.txt >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat 84nn3r.txt >> /data/data/com.termux/files/usr/etc/bash.bashrc

# Done message
echo -e "\n${lightgreen}✅ Banner setup complete!"
echo -e "${cyan}👉 Restart Termux to see your custom EMON-style banner!"
