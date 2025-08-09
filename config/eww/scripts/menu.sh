#!/bin/bash

names=(
  "thunar"
  "firefox"
  "firedoragon"
  "discord"
  "fitx5"
)

execs=(
  "thunar"
  "firefox"
  "firedragon"
  "discord"
  "fcitx5"
)

icons=(
  "/usr/share/icons/hicolor/128x128/apps/thunar.png"
  "/usr/share/icons/hicolor/128x128/apps/firefox.png"
  "/usr/share/icons/hicolor/128x128/apps/firedragon.png"
  "/usr/share/icons/hicolor/256x256/apps/discord.png"
  "/usr/share/icons/hicolor/128x128/apps/org.fcitx.Fcitx5.png"
)

terminal=(
  false
  false
  false
  false
  true
)

json="["

for i in "${!names[@]}"; do
  [[ $i -ne 0 ]] && json+=","
  json+="{\"name\":\"${names[$i]}\",\"exec\":\"${execs[$i]}\",\"icon\":\"${icons[$i]}\",\"terminal\":\"${terminal[$i]}\"}"
done

json+="]"
echo "$json"
