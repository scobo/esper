#!/bin/sh
rom_directory=$(<romdir.txt)
directories=(
  "FB Alpha - Arcade Games"
  # "MAME"
  # "Microsoft - MSX"
  # "Microsoft - MSX2"
  # "Nintendo - Family Computer Disk System"
  # "Nintendo - Super Nintendo Entertainment System"
  # "Sega - 32X"
  # "Sega - Mega Drive - Genesis"
 )
extensions=(
  "zip"
  # "zip"
  # "mx1"
  # "mx2"
  # "fds"
  # "sfc"
  # "32x"
  # "md"
)
compressed=(
  ""
  # ""
  # "zip"
  # "zip"
  # "zip"
  # "zip"
  # "zip"
  # "zip"
)
for index in "${!directories[@]}"; do
  echo -n "" > ../../playlists/"${directories[$index]}".lpl
  ext="${extensions[$index]}"
  if [ "${compressed[$index]}" != "" ] ; then
    ext="${compressed[$index]}"
  fi
  dir="$rom_directory"/"${directories[$index]}"
  for entry in "$dir"/*.$ext
  do
    echo "$entry"
    if [ -f "$entry" ]; then
      arr+=( -a "$f")
      fullname=$(basename "$entry")
      filename="${fullname%.*}"
      en_US="./names/${directories[$index]}.txt"
      override="./crc/${directories[$index]}.txt"
      game_name="$filename"
      matched="false"
      match=""
      hash=""
      echo "$filename|"
      while IFS= read -r line
        do
        match=$([[ "$line" =~ "$filename"[|](.+)$ ]] && echo ${BASH_REMATCH[1]})
        if [ "$match" != "" ] && [ "$matched" == "false" ]; then
          game_name="$match"
          matched="true"
        fi
      done <"$en_US"
      if [ "$matched" == "true" ] ; then
        path="/storage/roms/${directories[$index]}/$filename.${extensions[$index]}"
        if [ "${compressed[$index]}" != "" ] ; then
          path="/storage/roms/${directories[$index]}/$filename.${compressed[$index]}#$filename.${extensions[$index]}"
        fi

        while IFS= read -r line
          do
          match=$([[ "$line" =~ "$filename"[|](.+)$ ]] && echo ${BASH_REMATCH[1]})
          if [ "$match" != "" ] ; then
            hash="$match"
          fi
        done <"$override"
        if [ "$hash" == "" ] ; then
          hash=$(7z l -slt "$entry" | awk '{if ($3 ~ /^[A-F0-9]{8}$/) print $3}' | head -1)
        fi
        output="$path
$game_name
DETECT
DETECT
$hash|crc
${directories[$index]}.lpl"
        echo "$output"
        echo "$output" >> ../../playlists/"${directories[$index]}".lpl
      fi
    fi
  done
done
