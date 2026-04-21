#!/bin/bash
SPACE_ICONS=("1" "2" "3" "4" "5" "6")

for i in "${!SPACE_ICONS[@]}"; do
  sid=$(($i + 1))
  sketchybar --add space space.$sid left \
    --set space.$sid \
    associated_space=$sid \
    icon="${SPACE_ICONS[$i]}" \
    icon.color=$WHITE \
    background.color=$SURFACE0 \
    background.corner_radius=5 \
    script="$HOME/.config/sketchybar/plugins/space_click.sh" \
    --subscribe space.$sid space_change mouse.clicked
done
