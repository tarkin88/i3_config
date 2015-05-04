#!/bin/sh -e

# Take a screenshot
scrot /tmp/screenshot.png
# scrot /tmp/screen_locked.png

# Apply the Blur
convert /tmp/screenshot.png -blur 0x7 /tmp/screenshotblur.png

# Lock screen displaying this image.
i3lock -i /tmp/screenshotblur.png

# Turn the screen off after a delay.
sleep 50; pgrep i3lock && xset dpms force off