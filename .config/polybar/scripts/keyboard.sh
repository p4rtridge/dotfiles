#!/bin/bash

current_engine=$(fcitx5-remote -n)

if [[ "$current_engine" == "bamboo" ]]; then
  echo "vi"
else
  echo "en"
fi
