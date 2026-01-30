#!/bin/bash

# Get the current time and date
TIME=$(date "+%H:%M")
DATE=$(date "+%a %d %b")

# Update the clock item
sketchybar --set clock label="$TIME  $DATE"
