#!/bin/bash

names=(
  "firefox"
  "fitx5"
)

execs=(
  "firefox"
  "fcitx"
)

icons=(
  "/usr/share/icons/hicolor/128x128/apps/firefox.png"
  "/usr/share/icons/hicolor/128x128/apps/org.fcitx.Fcitx5.png"
)

terminal=(
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
