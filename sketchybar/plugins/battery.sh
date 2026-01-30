#!/bin/bash

# Get battery information
PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

# Determine icon based on battery level and charging state
if [[ $CHARGING != "" ]]; then
  ICON="󰂄"
  COLOR=0xff89b4fa
else
  if [ "$PERCENTAGE" -gt 80 ]; then
    ICON="󰁹"
    COLOR=0xffa6e3a1
  elif [ "$PERCENTAGE" -gt 60 ]; then
    ICON="󰂀"
    COLOR=0xffa6e3a1
  elif [ "$PERCENTAGE" -gt 40 ]; then
    ICON="󰁾"
    COLOR=0xfff9e2af
  elif [ "$PERCENTAGE" -gt 20 ]; then
    ICON="󰁼"
    COLOR=0xfff9e2af
  else
    ICON="󰁺"
    COLOR=0xfff38ba8
  fi
fi

# Update the battery item
sketchybar --set battery icon="$ICON" \
  label="$PERCENTAGE%" \
  icon.color=$COLOR
