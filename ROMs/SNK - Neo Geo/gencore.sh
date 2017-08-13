#!/bin/sh
dir="SNK - Neo Geo"
ext="zip"
echo -n "" > ../../.config/retroarch/retroarch-core-options.neogeo.cfg
for entry in ./*.zip
do
  if [ -f "$entry" ]; then
    fullname=$(basename "$entry")
    filename="${fullname%.*}"
    output="/storage/roms/$dir/$filename.$ext
$filename
/tmp/cores/fbalpha_libretro.so
FB Alpha
DEADBEEF|crc
$dir.lpl"
	output="fba-macro-$filename-P1_Buttons_AB = \"None\"
fba-macro-$filename-P1_Buttons_AC = \"None\"
fba-macro-$filename-P1_Buttons_AD = \"None\"
fba-macro-$filename-P1_Buttons_BC = \"None\"
fba-macro-$filename-P1_Buttons_BD = \"None\"
fba-macro-$filename-P1_Buttons_CD = \"None\"
fba-macro-$filename-P1_Buttons_ABC = \"None\"
fba-macro-$filename-P1_Buttons_ABD = \"None\"
fba-macro-$filename-P1_Buttons_ACD = \"None\"
fba-macro-$filename-P1_Buttons_BCD = \"None\"
fba-macro-$filename-P1_Buttons_ABCD = \"None\"
fba-macro-$filename-P2_Buttons_AB = \"None\"
fba-macro-$filename-P2_Buttons_AC = \"None\"
fba-macro-$filename-P2_Buttons_AD = \"None\"
fba-macro-$filename-P2_Buttons_BC = \"None\"
fba-macro-$filename-P2_Buttons_BD = \"None\"
fba-macro-$filename-P2_Buttons_CD = \"None\"
fba-macro-$filename-P2_Buttons_ABC = \"None\"
fba-macro-$filename-P2_Buttons_ABD = \"None\"
fba-macro-$filename-P2_Buttons_ACD = \"None\"
fba-macro-$filename-P2_Buttons_BCD = \"None\"
fba-macro-$filename-P2_Buttons_ABCD = \"None\"
fba-dipswitch-$filename-Autofire = \"(Default) Off\"
fba-dipswitch-$filename-Setting_mode = \"(Default) Off\"
fba-dipswitch-$filename-Coin_chutes = \"(Default) 1\"
fba-dipswitch-$filename-Coin_chutes_2 = \"(Default) 2\"
fba-dipswitch-$filename-Commmunicaton = \"(Default) Disabled\"
fba-dipswitch-$filename-Free_play = \"(Default) Off\"
fba-dipswitch-$filename-Stop_mode = \"(Default) Off\"
fba-dipswitch-$filename-BIOS = \"Universe BIOS ver. 3.2\"
fba-dipswitch-$filename-Memory_card = \"(Default) Writable\"
fba-dipswitch-$filename-New_card_type = \"(Default) Normal\""
    echo "$output" >> ../../.config/retroarch/retroarch-core-options.neogeo.cfg
  fi
done
