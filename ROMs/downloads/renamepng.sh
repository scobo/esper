#!/bin/sh
directories=(
  "Named_Boxarts"
  "Named_Snaps"
  "Named_Titles"
)
systems=(
  "FB Alpha - Arcade Games"
  # "MAME"
  # "Microsoft - MSX"
  # "Microsoft - MSX2"
  # "Nintendo - Family Computer Disk System"
  # "Nintendo - Super Nintendo Entertainment System"
  # "Sega - Mega Drive - Genesis"
)

for ii in "${!systems[@]}"; do
  en_US="./names/${systems[$ii]}.txt"
  missing=()
  renamed=()
  skipped=()
  while IFS= read -r line
    do
    IFS=\| read -a names <<<"$line"
    for jj in "${!directories[@]}"; do
      old_name=$(echo "${names[0]}" | sed -r 's/[&*/:<>?\|`]/_/g')
      old_path="../../Thumbnails/${systems[$ii]}/${directories[$jj]}/${old_name}.png"
      new_name=$(echo "${names[1]}" | sed -r 's/[&*/:<>?\|`]/_/g')
      new_path="../../Thumbnails/${systems[$ii]}/${directories[$jj]}/${new_name}.png"
      if [ -e "$new_path" ]
      then
        echo " INFO: Skipping! File exists in ${directories[$jj]}.
       $old_name
       $new_name"
        skipped+=("${directories[$jj]}/${old_name}")
      else
        if [ -e "$old_path" ] && [ ! -e "$new_path" ]
        then
          echo " INFO: Renaming file in ${directories[$jj]}.
       $old_name
       $new_name"
          mv "$old_path" "$new_path"
          renamed+=("${directories[$jj]}/${old_name}")
        else
          echo "ERROR: File not found in ${directories[$jj]}!
       $old_name
       $new_name"
          missing+=("${directories[$jj]}/${old_name}")
        fi
      fi
    done
    echo "--------------------------------------------------------------------------------"
  done <"$en_US"
  if [ ${#renamed[@]} != 0 ]
  then
    for kk in "${!renamed[@]}"; do
      if [ $kk == 0 ]
      then
        echo " DONE: Renamed files!
       ${renamed[$mm]}"
      else
        echo "       ${renamed[$kk]}"
      fi
    done
  else
    for ll in "${!skipped[@]}"; do
      if [ $ll == 0 ]
      then
        echo " DONE: Skipped files!
       ${skipped[$mm]}"
      else
        echo "       ${skipped[$ll]}"
      fi
    done
  fi
  if [ ${#missing[@]} != 0 ]
  echo "--------------------------------------------------------------------------------"
  then
    for mm in "${!missing[@]}"; do
      if [ $mm == 0 ]
      then
        echo "ERROR: Missing files!
       ${missing[$mm]}"
      else
        echo "       ${missing[$mm]}"
      fi
    done
  fi
done
