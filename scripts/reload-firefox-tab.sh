#!/bin/bash

wid=$(xdotool search --desktop 0 --name "Firefox" | head -1)
xdotool windowactivate $wid
xdotool key F5
i3-msg focus left