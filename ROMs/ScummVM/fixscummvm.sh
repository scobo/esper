#!/bin/sh
output="$(cat ./ScummVM.lpl.bak)"
echo -n "$output" > ../../playlists/ScummVM.lpl
