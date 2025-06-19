#!/bin/bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh
source "$CONFIG_DIR/plugins/colors.sh"

# // get the numbers of unread emails from thunderbird 
# // if label not "" then show the icon and the label
lsappinfo info -only StatusLabel "Thunderbird"


# // get the numbers of unread messages from ferdium 
# // if label not "" then show the icon and the label
lsappinfo info -only StatusLabel "Ferdium"

