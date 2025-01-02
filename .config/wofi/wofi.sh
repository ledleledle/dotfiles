#!/usr/bin/env bash

STYLE="$HOME/.config/wofi/themes/frappe/style.css"

if [[ ! $(pidof wofi) ]]; then
    wofi --style "${STYLE}"
else
    pkill wofi
fi
