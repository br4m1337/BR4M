#!/usr/bin/env bash

# This script is to enable Snap on Linux Mint.

while true
do
    clear
    echo ""
    echo "Select an option:"
	echo ""
	echo "0) Exit Script"
	echo "1) Enable Snap"
	echo "2) Install Snap"
    echo "3) Install Snap Store"
    echo "4) All of the above please!"
    echo "5) Disable Snap"
	echo ""

    read -p "Option: " n
	case $n in
        0)
            clear
            exit
            ;;
        1)
            clear
            sudo mv /etc/apt/preferences.d/nosnap.pref /etc/apt/preferences.d/nosnap.pref.bak
            echo ""
			echo "-----Snap Enabled-----"
			echo ""
			read -p "Press any key to continue ..."
            break
            ;;
        2)
            clear
            sudo apt update
            sudo apt install snapd -y
            echo ""
			echo "-----Snap Installed-----"
			echo ""
			read -p "Press any key to continue ..."
            break
            ;;
        3)
            clear
            sudo apt update
            sudo snap install snap-store
            echo ""
			echo "-----Snap Store Installed-----"
			echo ""
            echo "***You must reboot your computer for changes to take affect***"
            echo ""
			read -p "Press any key to continue ..."
            break
            ;;
        4)
            clear
            sudo mv /etc/apt/preferences.d/nosnap.pref /etc/apt/preferences.d/nosnap.pref.bak
            sudo apt update
            sudo apt install snapd -y
            sudo snap install snap-store
            echo ""
			echo "-----Snap enabled, installed & Snap Store was installed-----"
			echo ""
            echo "***You must reboot your computer for changes to take affect***"
            echo ""
			read -p "Press any key to continue ..."
            break
            ;;
        5)
            clear
            sudo mv /etc/apt/preferences.d/nosnap.pref.bak /etc/apt/preferences.d/nosnap.pref
            echo ""
            echo "-----Snap Disabled-----"
			echo ""
			read -p "Press any key to continue ..."
            break
            ;;
        *)
            clear
            echo ""
			echo "Invalid Option!!"
			echo ""
			read -p "Press any key to continue ..."
            ;;
    esac
done
clear