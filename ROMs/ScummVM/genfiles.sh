#!/bin/sh
for entry in ./*
do
  if [ -d "$entry" ]; then
    output="$(basename "$entry")"
    echo -n "$output" > ./"$entry"/"$entry".scummvm
  fi
done
