#!/bin/bash

vol=$(pamixer --get-volume)
mute=$(pamixer --get-mute)

if [ "$mute" = true ]; then
    icon="󰖁"
else
    icon="󰕾"
fi

jq -n --argjson vol "$vol" --arg icon "$icon" '{volume: $vol, icon: $icon}'
