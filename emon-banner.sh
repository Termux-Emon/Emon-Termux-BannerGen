#!/bin/bash

# ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
# ┃   Emon-Termux-BannerGen Tool     ┃
# ┃      Made by EMON - 2025         ┃
# ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

clear
figlet -f big "EMON BANNER" | lolcat

# Colors
cyan='\033[0;36m'
lightgreen='\033[1;32m'
red='\033[1;31m'
yellow='\033[1;33m'

# Welcome message
echo -e $lightgreen "\033[1m         Termux Banner Tool by EMON "
echo -e $yellow "\033[1m       Custom banner with your name"
echo
echo

# User input for banner and cowsay
echo -e "\033[1m\033[33mআপনার \033[31mBanner\033[33m এর নাম দিন:\033[32m "
read varbanner
echo
echo -e "\033[1m\033[33mআপনার \033[32mCowsay নাম দিন:\033[0m "
read varcowsay
echo

# Create files to append to bash.bashrc
echo "clear" > cl34r.txt
echo "cowsay -f eyes \"$varcowsay\" | lolcat" > C0w54y.txt
echo "toilet -f big \"$varbanner\" -F gay | lolcat" > 84nn3r.txt

# Append to bash.bashrc
cat cl34r.txt >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat C0w54y.txt >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat 84nn3r.txt >> /data/data/com.termux/files/usr/etc/bash.bashrc

# Done message
echo -e "\n${lightgreen}✅ Banner setup সফলভাবে শেষ হয়েছে!"
echo -e "${cyan}👉 এখন Termux পুনরায় চালু করুন এবং দেখুন EMON এর স্টাইলিশ ব্যানার!"
