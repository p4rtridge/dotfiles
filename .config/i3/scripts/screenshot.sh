#!/bin/sh

theme="$HOME/.config/rofi/main_without_icons.rasi"

get_options() {
  echo "󰄀  Full Screenshot"
  echo "󰀁  Partial Screenshot"
}

main() {

  # get choice from rofi
  choice=$( (get_options) | rofi -dmenu -theme "$theme" -theme-str "listview { lines: 2; }")

  # run the selected command
  case $choice in
  '󰄀  Full Screenshot')
    SCREENSHOT_DIR="$HOME/Pictures/Screenshots"

    mkdir -p "$SCREENSHOT_DIR"

    SCREENSHOT_PATH="$SCREENSHOT_DIR/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"

    scrot "$SCREENSHOT_PATH"

    dunstify -I $SCREENSHOT_PATH "Screenshot Taken"
    ;;
  '󰀁  Partial Screenshot')
    SCREENSHOT_DIR="$HOME/Pictures/Screenshots"

    mkdir -p "$SCREENSHOT_DIR"

    SCREENSHOT_PATH="$SCREENSHOT_DIR/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"

    scrot -s -f "$SCREENSHOT_PATH"

    dunstify -I $SCREENSHOT_PATH "Screenshot Taken"
    ;;
  esac

  # done
  set -e
}

if [ "$1" = "--rofi" ]; then
  main
else
  SCREENSHOT_DIR="$HOME/Pictures/Screenshots"

  mkdir -p "$SCREENSHOT_DIR"

  SCREENSHOT_PATH="$SCREENSHOT_DIR/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"

  scrot "$SCREENSHOT_PATH"

  dunstify -I $SCREENSHOT_PATH "Screenshot Taken"
fi

exit 0
