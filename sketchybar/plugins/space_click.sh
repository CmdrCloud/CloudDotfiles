#!/bin/bash
if [ "$SELECTED" = "true" ]; then
  sketchybar --set $NAME background.color=$BLUE icon.color=$BASE
else
  sketchybar --set $NAME background.color=$SURFACE0 icon.color=$WHITE
fi
