#!/bin/bash
choice=$(printf "Low battery usage\nBalanced\nPerformance" | rofi -dmenu -i -p "Power")
case "$choice" in
  "Low battery usage") powerprofilesctl set power-saver ;;
  "Balanced") powerprofilesctl set balanced ;;
  "Performance") powerprofilesctl set performance ;;
esac
