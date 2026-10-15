#!/bin/bash
out=""
for b in /sys/class/power_supply/BAT*; do
  [ -e "$b/capacity" ] || continue
  n=$(basename "$b")
  c=$(cat "$b/capacity")
  s=$(cat "$b/status")
  case "$s" in
    Charging) m="+" ;;
    Discharging) m="-" ;;
    *) m="" ;;
  esac
  out="$out$n $c%$m  "
done
echo "$out"
