#!/bin/bash

pactl subscribe | stdbuf -oL grep --line-buffered "Event 'change' on sink" | while read -r _; do
    /usr/bin/eww update volume_status="$(/home/momofu/.config/eww/scripts/get_volume_status.sh)"
done
