#!/bin/bash
[ -f "$HOME/.cache/lock.png" ] || exit 1
i3lock-color \
  --nofork \
  --image="$HOME/.cache/lock.png" \
  --clock --indicator \
  --time-str="%H:%M" --date-str="%A, %d %B" \
  --time-color=cdd6f4ff --date-color=a6adc8ff \
  --time-size=48 --date-size=16 \
  --radius=120 --ring-width=6 \
  --inside-color=1e1e2ecc --ring-color=cba6f7ff \
  --line-color=00000000 --separator-color=00000000 \
  --keyhl-color=f5c2e7ff --bshl-color=f38ba8ff \
  --insidever-color=1e1e2ecc --ringver-color=89b4faff \
  --insidewrong-color=1e1e2ecc --ringwrong-color=f38ba8ff \
  --verif-text="" --wrong-text="" --noinput-text="" --lock-text="" --lockfailed-text=""
