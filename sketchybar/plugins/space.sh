#!/bin/bash
if [ "$SELECTED" = "true" ]; then
  sketchybar --set $NAME \
    icon.color=0xffcdd6f4 \
    label.color=0xffcdd6f4
else
  sketchybar --set $NAME \
    icon.color=0x996c7086 \
    label.color=0x996c7086
fi
