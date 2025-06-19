#!/bin/bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh
source "$CONFIG_DIR/plugins/colors.sh"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME label.color=$TEXT_FOCUS icon.color=$TEXT_FOCUS 
else
  sketchybar --set $NAME label.color=$LIGHT_GREY icon.color=$TEXT_GREY 
fi
