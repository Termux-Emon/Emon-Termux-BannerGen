#!/bin/bash
pkg update -y && pkg upgrade -y
pkg install figlet toilet cowsay lolcat -y
echo -e "\n✅ Requirements installed."
