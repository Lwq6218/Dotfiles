#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# for changing Hyprland Layouts (Master or Dwindle) on the fly

notif="$HOME/.config/swaync/images/bell.png"

LAYOUT=$(hyprctl -j getoption general:layout | jq '.str' | sed 's/"//g')

case $LAYOUT in
"master")
	hyprctl keyword general:layout dwindle
	notify-send -e -u low -i "$notif" "Dwindle Layout"
	;;
"dwindle")
	notify-send -e -u low -i "$notif" "Master Layout"
	;;
*) ;;

esac
