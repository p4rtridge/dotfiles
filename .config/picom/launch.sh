#!/bin/bash

killall -q picom

while pgrep -u $UID -x picom >/dev/null; do sleep 0.5; done

picom -b
