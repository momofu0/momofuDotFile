#!/bin/bash

pos=$(hyprctl cursorpos)
x=$(echo $pos | cut -d',' -f1)
y=$(echo $pos | cut -d',' -f2)

eww update launch_x=$x
eww update launch_y=$y

eww open launcher