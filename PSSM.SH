#!/bin/bash
#This shell script will upgrade all pacman repos, uninstall all unneeded pacman repos and packages, and clear the pacman cache
echo "Welcome to Pacman_Self_System_Maintenance"
echo "BUILD_NUMBER" :: 0.1
echo "Built by: Mastabruce21 https://github.com/Mastabruce21"
echo "Script must be ran in root, you will be asked for your root password"
echo "WARNING: please check recent ARCH/MANJARO update news before running this script"
echo -e "\n$(date "+%d-%m-%Y --- %T") --- Starting work\n"
sudo pacman -Syu
sudo pacman -Qdt
sudo pacman -Rns $(pacman -Qdtq)
sudo pacman -Rsc
sudo paccache -r
sudo pacman -Sc
echo "Thank you for using PSSM Version 0.1"
read -rsp $'Press any key to continue...\n' -n1 key
exit

