#!/bin/sh
grep -r -c '|crc' ../../Playlists/*.lpl | awk -F: '{ s+=$2 } END { print s " games" }'
