#!/bin/bash

names=(
  "firefox"
)

execs=(
  "firefox"
)

icons=(
  "/usr/share/icons/hicolor/128x128/apps/firefox.png"
)

terminal=(
  false
)

json="["

for i in "${!names[@]}"; do
  [[ $i -ne 0 ]] && json+=","
  json+="{\"name\":\"${names[$i]}\",\"exec\":\"${execs[$i]}\",\"icon\":\"${icons[$i]}\",\"terminal\":\"${terminal[$i]}\"}"
done

json+="]"
echo "$json"
