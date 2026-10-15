#!/bin/bash
choice=$(printf "Lock\nSleep\nLog out\nRestart\nShutdown" | rofi -dmenu -i -p "" -no-custom -theme ~/.config/rofi/catppuccin.rasi)
case "$choice" in
  "Lock") dm-tool lock ;;
  "Sleep") systemctl suspend ;;
  "Log out") i3-msg exit ;;
  "Restart") systemctl reboot ;;
  "Shutdown") systemctl poweroff ;;
esac
