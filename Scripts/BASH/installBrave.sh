#!/usr/bin/env bash

# This script is for installing Brave Web Browser 
# on Debian based (Specificly Ubuntu Based) Linux
# operating systems. This script was created for 
# Linux Mint but should work on any Debian based OS.

while true
do
    clear
	echo "Select an option:"
	echo ""
	echo "0) Exit Script"
	echo "1) Install Brave"
	echo "2) UnInstall Brave"
	echo ""

	read -p "Option: " n
    case $n in
		0)
			clear
			exit
			;;
		1) 
			clear
			sudo apt install curl -y
            sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
            echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
            sudo apt update
            sudo apt install brave-browser
			echo ""
			echo "-----Brave Installed-----"
			echo ""
			read -p "Press any key to close terminal ..."
			break
			;;
		2) 
			clear
			sudo rm /etc/apt/sources.list.d/brave-browser-release.list
			sudo apt clean
			sudo rm -rf /var/lib/apt/lists/*
			sudo apt update
			sudo apt purge brave-browser -y
			echo ""
			echo "-----Brave UnInstalled-----"
			echo ""
			read -p "Press any key to close terminal ..."
			break
			;;
		*) 
			clear
			echo ""
			echo "Invalid Option!!"
			echo ""
			read -p "Press any key to return to menu ..."
			;;
	esac
done
clear