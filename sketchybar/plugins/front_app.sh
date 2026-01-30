#!/bin/bash

# Get the name of the frontmost application
FRONT_APP=$(osascript -e 'tell application "System Events" to get name of first application process whose frontmost is true')

# Update the front_app item
sketchybar --set front_app label="$FRONT_APP"
