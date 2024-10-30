#!/bin/sh

theme="$HOME/.config/rofi/main_without_icons.rasi"

rofi -modi "clipboard:greenclip print" -show clipboard -theme "$theme" -theme-str "listview { lines: 10; cycle: false; }" -run '{cmd}'
