#!/usr/bin/env bash

# This script is for installing Balena Etcher 
# on Debian based (Specificly Ubuntu Based) Linux
# operating systems. This script was created for 
# Linux Mint but should work on any Debian based OS.

while true
do
	clear
	echo "Select an option:"
	echo ""
	echo "0) Exit Script"
	echo "1) Install Etcher"
	echo "2) UnInstall Etcher"
	echo ""

	read -p "Option: " n
	case $n in
		0)
			clear
			exit
			;;
		1) 
			clear
			sudo apt install curl apt-transport-https -y
			curl -1sLf 'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' | sudo -E bash
			keyring_location=/usr/share/keyrings/balena-etcher-archive-keyring.gpg
			sudo apt update
			sudo apt install balena-etcher -y
			echo ""
			echo "-----Etcher Installed-----"
			echo ""
			read -p "Press any key to close the terminal ..."
			break
			;;
		2) 
			clear
			sudo rm /etc/apt/sources.list.d/balena-etcher.list
			sudo apt clean
			sudo rm -rf /var/lib/apt/lists/*
			sudo apt update
			sudo apt purge balena-etcher -y
			echo ""
			echo "-----Etcher UnInstalled-----"
			echo ""
			read -p "Press any key to close the terminal ..."
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