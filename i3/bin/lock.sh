#!/bin/bash

# Use scrot to take screenshot of desktop
scrot /tmp/screen.png

# Apply pixelation to screenshot
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png

# Apply lock image to screenshot
convert /tmp/screen.png $HOME/lock-pic.png -gravity center -composite -matte /tmp/screen.png

# Pause playing music
exec cmus-remote -u &

# Run i3lock script
i3lock -u -i /tmp/screen.png
rm /tmp/screen.png
