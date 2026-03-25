#!/bin/bash

PREV_FILE="/tmp/sketchybar_prev_workspace"
FOCUSED=$(aerospace list-workspaces --focused)
ALL=($(aerospace list-workspaces --all))
PREV=$(cat "$PREV_FILE" 2>/dev/null)

index_of() {
  local val="$1"
  local i=0
  for w in "${ALL[@]}"; do
    [[ "$w" == "$val" ]] && echo $i && return
    ((i++))
  done
  echo -1
}

if [ "$1" = "$FOCUSED" ]; then
  echo "$FOCUSED" >"$PREV_FILE"

  if [ -n "$PREV" ] && [ "$PREV" != "$FOCUSED" ]; then
    FROM=$(index_of "$PREV")
    TO=$(index_of "$FOCUSED")

    if [ "$FROM" -ne -1 ] && [ "$TO" -ne -1 ]; then
      if [ "$TO" -gt "$FROM" ]; then STEP=1; else STEP=-1; fi

      IDX=$((FROM + STEP))
      while [ "$IDX" -ne "$TO" ]; do
        MID="${ALL[$IDX]}"
        sketchybar --animate tanh 4 --set "space.$MID" \
          background.color=0x88ffffff \
          background.height=20
        sketchybar --animate tanh 4 --set "space.$MID" \
          background.color=0x00ffffff \
          background.height=20
        IDX=$((IDX + STEP))
      done
    fi
  fi

  sketchybar --animate tanh 15 --set "$NAME" \
    background.color=0xeeffffff \
    background.height=20 \
    background.corner_radius=20 \
    padding_left=12 \
    padding_right=12 \
    width=20

else
  WINDOW_COUNT=$(aerospace list-windows --workspace "$1" 2>/dev/null | wc -l | tr -d ' ')
  if [ "$WINDOW_COUNT" -gt 0 ]; then
    sketchybar --animate tanh 20 --set "$NAME" \
      background.color=0x40ffffff \
      background.height=20 \
      background.corner_radius=20 \
      padding_left=12 \
      padding_right=12 \
      width=20
  else
    sketchybar --animate tanh 20 --set "$NAME" \
      background.color=0x00ffffff \
      background.height=20 \
      background.corner_radius=20 \
      padding_left=12 \
      padding_right=12 \
      width=20
  fi
fi
