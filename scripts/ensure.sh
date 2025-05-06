#!/usr/bin/env bash
hyprctl clients -j | jq -c -e ".[] | select(.class==\"$1\") | .pid" || $2
