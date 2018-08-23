#!/bin/bash

# script by > ANIKET DINDA
# Website > https://hackingvila.wordpress.com




## this will pull the ssid and password of all the wifi connection on the system
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'
echo -e "\e[1;33m       Published By =>        \033[5;37m \033[44m https://hackingvila.wordpress.com   \e[0m"
echo -e ""
echo -e $red       "           __   ___ __        ______                           ___ ___ __                 "
echo -e $yellow    ".--.--.--.|__|.'  _|__|______|   __ \.---.-.-----.-----.______|   |   |__|.-----.--.--.--."
echo -e $green     "|  |  |  ||  ||   _|  |______|    __/|  _  |__ --|__ --|______|   |   |  ||  -__|  |  |  |"
echo -e $okegreen  "|________||__||__| |__|      |___|   |___._|_____|_____|       \_____/|__||_____|________|"
echo -e $green "................................................................................................."
echo -e "\033[92m       Script By =>        \033[5;37m \e[1;31m Aniket Dinda   \e[0m"                                                                                        
echo -e ""


SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

PKG_NAME='wipass'
INSTALL_DIR="/opt/$PKG_NAME/"
NM_PATH='/etc/NetworkManager/system-connections/'  #### NM stands for network manager
symbol='=>' 


function show_all {

    echo
    echo
    
    for file in `ls  $NM_PATH`; do
	
	fpath="$NM_PATH$file"
	ssid=$(cat $fpath | grep ssid= | cut -d'=' -f 2)
	pass=$(cat $fpath | grep psk=  | cut -d'=' -f 2)

	[[ ! -z "ssid" && ! -z "$pass" ]] && echo -e "$ssid $symbol \e[31m$pass\e[0m"
	
    done
    echo
}

function show_ssids {

    echo
    echo
    
    for file in `ls  $NM_PATH`; do
	
	fpath="$NM_PATH$file"
	ssid=$(cat $fpath | grep ssid= | cut -d'=' -f 2)

	[[ ! -z "ssid" ]] && echo -e "$ssid"
	
    done
    echo
}


function usage {

    echo -e "Usage:  wipass [OPTIONS]";
    echo -e "\t-a | --all\tShow All [default]"
    echo -e "\t-s | --ssids\tShow all ssid"
    echo -e "\t-h | --help\tShow the help"
    echo -e "\t-v | --version\tVersion Infomation"
 }

while true; do

    case $1 in

	-a|--all)      show_all; exit;;
	-h|--help)     usage; exit;;
	-s|--ssids)    show_ssids; exit;;
	-v|--version)  cat "$INSTALL_DIR.version"; exit;;
	*)            usage; exit;;

    esac
    
done

show_all
# restore $IFS
IFS=$SAVEIFS
