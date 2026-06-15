#!/bin/bash
SID=$(yabai -m query --spaces --space | jq -r '.index')
if [ "${NAME#space.}" = "$SID" ]; then
  sketchybar --set $NAME icon.color=0xddffffff
else
  sketchybar --set $NAME icon.color=0xaa6c7086
fi
