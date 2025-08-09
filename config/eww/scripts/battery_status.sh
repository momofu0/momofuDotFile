#!/bin/bash

BATTERY_DIR="/sys/class/power_supply/BAT1"
CAPACITY=$(cat "$BATTERY_DIR/capacity")
STATUS=$(cat "$BATTERY_DIR/status")

get_icon_and_class() {
    local cap=$1
    local status=$2

    if [ "$status" = "Charging" ]; then
        CLASS="CHARGING"
    elif [ "$cap" -gt 90 ]; then
        CLASS="BAT1"
    elif [ "$cap" -gt 65 ]; then
        CLASS="BAT2"
    elif [ "$cap" -gt 45 ]; then
        CLASS="BAT3"
    elif [ "$cap" -gt 15 ]; then
        CLASS="BAT4"
    else
        CLASS="BAT5"
    fi

    case $CLASS in
        CHARGING) ICON="󰂄 ";;
        BAT1) ICON=" ";;
        BAT2) ICON=" ";;
        BAT3) ICON=" ";;
        BAT4) ICON=" ";;
        BAT5) ICON=" ";;
        *) ICON="";;
    esac

        jq -n --arg icon "$ICON" --arg class "$CLASS" '{icon: $icon, class: $class}'
}

get_icon_and_class "$CAPACITY" "$STATUS"
