#!/bin/bash
if [ "$SELECTED" = "true" ]; then
  sketchybar --set $NAME \
    background.color=0xff89b4fa \
    label.color=0xff1e1e2e
else
  sketchybar --set $NAME \
    background.color=0xdd192022 \
    label.color=0xffcdd6f4
fi
