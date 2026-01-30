#!/bin/bash

# Get the current volume level
VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

# Set icon based on volume level and mute state
if [ "$MUTED" = "true" ]; then
  ICON="󰖁"
  LABEL=""
else
  if [ "$VOLUME" -eq 0 ]; then
    ICON="󰕿"
  elif [ "$VOLUME" -lt 33 ]; then
    ICON="󰖀"
  elif [ "$VOLUME" -lt 66 ]; then
    ICON="󰕾"
  else
    ICON="󰕾"
  fi
  LABEL="$VOLUME%"
fi

# Update the volume item
sketchybar --set volume icon="$ICON" label="$LABEL"
