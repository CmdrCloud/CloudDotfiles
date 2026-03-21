#!/bin/bash

FOCUSED=$(aerospace list-workspaces --focused)

if [ "$1" = "$FOCUSED" ]; then
  # Active — solid white dot
  sketchybar --set "$NAME" \
    background.color=0xaaffffff \
    background.height=20 \
    background.corner_radius=20 \
    padding_left=12 \
    padding_right=12 \
    width=20

else
  WINDOW_COUNT=$(aerospace list-windows --workspace "$1" 2>/dev/null | wc -l | tr -d ' ')

  if [ "$WINDOW_COUNT" -gt 0 ]; then
    # Occupied — dim white dot
    sketchybar --set "$NAME" \
      background.color=0x40ffffff \
      background.height=20 \
      background.corner_radius=20 \
      padding_left=12 \
      padding_right=12 \
      width=20

  else
    # Empty — barely visible dot
    sketchybar --set "$NAME" \
      background.color=0x00ffffff \
      background.height=20 \
      background.corner_radius=20 \
      width=20 \
      padding_left=12 \
      padding_right=12
  fi
fi
