#!/bin/bash

# Called with: aerospace.sh <workspace_id>
# $NAME is set by sketchybar to the item name (e.g. space.1)

FOCUSED=$(aerospace list-workspaces --focused)

if [ "$1" = "$FOCUSED" ]; then
  # Active workspace — Catppuccin Mauve pill
  sketchybar --set "$NAME" \
    background.drawing=on \
    background.color=0xffcba6f7 \
    background.corner_radius=8 \
    background.height=26 \
    label.color=0xff1e1e2e \
    label.font="CaskaydiaCove Nerd Font Mono:Bold:11.0" \
    label.align="center" \
    icon.align="center"
else
  # Check if workspace has any windows
  WINDOW_COUNT=$(aerospace list-windows --workspace "$1" 2>/dev/null | wc -l | tr -d ' ')

  if [ "$WINDOW_COUNT" -gt 0 ]; then
    # Occupied but not focused — subtle Surface0 pill
    sketchybar --set "$NAME" \
      background.drawing=on \
      background.color=0xff313244 \
      background.corner_radius=8 \
      background.height=26 \
      label.color=0xffbac2de \
      label.font="CaskaydiaCove Nerd Font Mono:Semibold:12.0"
  else
    # Empty workspace — invisible, just a dot-like dim label
    sketchybar --set "$NAME" \
      background.drawing=off \
      label.color=0xff585b70 \
      label.font="CaskaydiaCove Nerd Font Mono:Regular:11.0"
  fi
fi
