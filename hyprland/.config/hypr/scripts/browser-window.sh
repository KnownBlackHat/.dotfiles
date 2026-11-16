#!/bin/bash

sleep 3

windows=($(hyprctl clients -j | jq -r '.[] | select(.class=="zen") | .address'))

if [ ${#windows[@]} -ge 2 ]; then
    hyprctl dispatch movetoworkspacesilent 1, address:${windows[0]}
    hyprctl dispatch movetoworkspacesilent 3, address:${windows[1]}

elif [ ${#windows[@]} -eq 1 ]; then
    hyprctl dispatch movetoworkspacesilent 1, address:${windows[0]}
fi
