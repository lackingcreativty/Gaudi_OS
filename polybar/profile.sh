#!/bin/bash
cur=$(powerprofilesctl get 2>/dev/null)
out=""
for p in power-saver balanced performance; do
  case "$p" in
    power-saver) name="SAVER" ;;
    balanced) name="BALANCED" ;;
    performance) name="PERF" ;;
  esac
  if [ "$p" = "$cur" ]; then c="%{F#cba6f7}"; else c="%{F#6c7086}"; fi
  out="$out%{A1:powerprofilesctl set $p:}$c$name%{F-}%{A} "
done
echo "$out"
