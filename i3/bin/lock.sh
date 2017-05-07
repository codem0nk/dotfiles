#!/bin/bash

set -e

# Use scrot to take screenshot of desktop & apply pixelation
function screenshot {
    scrot /tmp/screen.png
    convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
}

# Apply lock image to pixelated screenshot
function lockimg {
    convert /tmp/screen.png $HOME/lock-pic.png -gravity center -composite -matte /tmp/screen.png
}

# Stop playing music
function stopmusic {
    exec cmus-remote -s
}

# Call functions to perform desired action
screenshot && \
lockimg && \

# Call i3lock script & delete image in /tmp
i3lock -u -i /tmp/screen.png
rm /tmp/screen.png

# Stopmusic funtion last because it breaks shit ¯\_(ツ)_/¯
stopmusic

#nailed it
