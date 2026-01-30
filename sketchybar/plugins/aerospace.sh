#!/bin/bash

# Get the workspace ID from the argument
WORKSPACE_ID=$1

# Check if this workspace is currently focused
if [ "$($AEROSPACE_FOCUSED_WORKSPACE)" == "$WORKSPACE_ID" ]; then
  # Active workspace - highlight it
  sketchybar --set space.$WORKSPACE_ID \
    background.drawing=on \
    background.color=0xff89b4fa \
    label.color=0xff1e1e2e
else
  # Check if workspace has windows
  if aerospace list-windows --workspace "$WORKSPACE_ID" | grep -q .; then
    # Has windows - show as occupied
    sketchybar --set space.$WORKSPACE_ID \
      background.drawing=on \
      background.color=0xff45475a \
      label.color=0xffffffff
  else
    # Empty workspace
    sketchybar --set space.$WORKSPACE_ID \
      background.drawing=off \
      label.color=0xff6c7086
  fi
fi
