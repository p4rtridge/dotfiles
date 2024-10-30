#!/bin/sh

# rofi theme
theme="$HOME/.config/rofi/main_without_icons.rasi"

get_options() {
  echo "⏻  Poweroff"
  echo "󰦛  Reboot"
  echo "  Lock"
  echo "  Log out"
}

main() {

  # get choice from rofi
  choice=$( (get_options) | rofi -dmenu -theme "$theme" -theme-str "listview { lines: 4; }")

  # run the selected command
  case $choice in
  '⏻  Poweroff')
    systemctl poweroff
    ;;
  '󰦛  Reboot')
    systemctl reboot
    ;;
  '  Lock')
    i3lock -c eb6f92 -L -i $HOME/.config/i3/wallpapers/lockscreen.png
    ;;
  '  Log out')
    i3-msg exit
    ;;
  esac

  # done
  set -e
}

main &

exit 0
