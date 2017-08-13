#!/bin/sh
echo "[scummvm]
gui_browser_show_hidden=false
browser_lastpath=/storage/roms/ScummVM/
mute=false

" > ../../System/scummvm.ini
for entry in ./*
do
  if [ -d "$entry" ]; then
  output="[$(basename "$entry")]
gameid=$(basename "$entry")
path=/storage/roms/ScummVM/$(basename "$entry")

"
  echo -n "$output" >> ../../System/scummvm.ini
  fi
done
