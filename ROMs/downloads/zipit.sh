#!/bin/sh
for entry in ./*.gbc
do
  if [ -f "$entry" ]; then
	fullname=$(basename "$entry")
	filename="${fullname%.*}"
	zip -9 "$filename".zip "$fullname"
  fi
done
