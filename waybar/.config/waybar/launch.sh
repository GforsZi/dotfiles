#!/bin/sh

killall waybar

if [[ $USER = "gfors" ]]; then
  waybar -c ./config.jsonc &
  -s ./style.css
else
  waybar &
fi
