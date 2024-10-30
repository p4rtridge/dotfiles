#!/bin/bash

MAX_VOLUME=200

# Get the current volume of the default sink
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | head -n 1 | awk '{print $5}' | cut -d '%' -f1)

if [ "$1" = "--increase" ]; then
  volume=$((volume + 10))
fi

if [ "$1" = "--decrease" ]; then
  volume=$((volume - 10))
fi

if [ $volume -gt $MAX_VOLUME ]; then
  pactl set-sink-volume @DEFAULT_SINK@ 200%
else
  pactl set-sink-volume @DEFAULT_SINK@ "$volume%"
fi
