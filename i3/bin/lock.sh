#!/bin/bash

# Use scrot to take screenshot of desktop & apply pixelation

    scrot /tmp/screen.png
    convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png

# Apply lock image to screenshot

    convert /tmp/screen.png $HOME/lock-pic.png -gravity center -composite -matte /tmp/screen.png

# Stop playing music

    exec cmus-remote -s &

# Run i3lock script & delete image in /tmp

    i3lock -u -i /tmp/screen.png
    rm /tmp/screen.png
