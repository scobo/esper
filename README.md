# esper

## Included
* Latest copy of `./System/NstDatabase.xml` can be found at [rdanbrook/nestopia](https://github.com/rdanbrook/nestopia)
* Latest high score metadata file for `./System/fba` can be found at [libretro/fbalpha](https://github.com/libretro/fbalpha/tree/master/metadata)
* Latest high score and cheat metadata files for `./System/mame2003` can be found at [libretro/mame2003-libretro](https://github.com/libretro/mame2003-libretro/tree/master/metadata)

## Not Included
* BIOS files for `./System/Databases` and `./System/Machines` can be found at [bluemsx.com](http://www.bluemsx.com/)
* Samples for `./System/mame2003/samples` can be found at [samples.mameworld.info](http://samples.mameworld.info/)
* Instructions for making DonPachi samples for `./System/fba/samples` can be found at [pastebin.com/RD2iM9KG](https://pastebin.com/RD2iM9KG)

## System
| System | BIOS | MD5 | [Lakka](http://www.lakka.tv/doc/BIOSes/) |
| ------ | ------ | ------ | ------ |
| Atari - 7800 | `7800 BIOS (U).rom` | `0763f1ffb006ddbe32e52d497ee848ae` | Y
| Atari - Lynx | `lynxboot.img` | `fcd403db69f54290b51035d82f835e7b` | Y
| Magnavox - Odyssey2 | `o2rom.bin` | `562d5ebf9e030a40d6fabfc2f33139fd` | Y
| NEC - PC-FX | `pcfx.rom` | `08e36edbea28a017f79f8d4f7ff9b6d7` | Y
| NEC - PC Engine - TurboGrafx 16 | `syscard3.pce` | `ff1a674273fe3540ccef576376407d1d` | N*
| | `syscard3.us.pce` | `0754f903b52e3b3342202bdafb13efa5` | Y
| Nintendo - Game Boy Advance | `gba_bios.bin` | `a860e8c0b6d573d191e4ec7db1b1e4f6` | Y
| Nintendo - Famicom Disk System | `disksys.rom` | `ca30b50f880eb660a320674ed365ef7a` | Y
| Sega - Dreamcast | `dc_boot.bin` | `e10c53c2f8b90bab96ead2d368858623` | Y
| | `dc_flash.bin` | `0a93f7940c455905bea6e392dfde92a4` | Y
| Sega - Mega Drive - Genesis | `bios_CD_E.bin` | `e66fa1dc5820d254611fdcdba0662372` | Y
| | `bios_CD_J.bin` | `278a9397d192149e84e820ac621a8edd` | Y
| | `bios_CD_U.1.10.bin` | `2efd74e3232ff260e371b99f84024f7f` | Y
| | `bios_CD_U.bin` | `baca1df271d7c11fe50087c0358f4eb5` | N†
| Sega - Saturn | `saturn_bios.bin` | `f273555d7d91e8a5a6bfd9bcf066331c` | Y
| Sony - PlayStation | `scph5500.bin` | `8dd7d5296a650fac7319bce665a6a53c` | Y
| | `scph5501.bin` | `490f666e1afb15b7362b406ed1cea246` | Y
| | `scph5502.bin` | `32736f17079d0b2b7024407c39bd3050` | Y
| Sony - PlayStation Portable | `ppge_atlas.zim` | `a93fc411c1ce7d001a2a812643c70085` | Y

\* The US BIOS file Lakka recommends does not run some Japanese games, whereas the JP BIOS file will run all games.

† The US BIOS file Lakka recommends is US version 1.10, however the US CDX BIOS version 2.21 automatically boots CD+G images.

```
System/
├── Databases
├── dc
│   ├── dc_boot.bin
│   └── dc_flash.bin
├── fba
│   ├── samples
│   │   └── donpachi.zip
│   └── hiscore.dat
├── Machines
├── mame2003
│   ├── samples
│   │   └── *.zip
│   ├── cheat.dat
│   ├── hiscore.dat
│   └── history.dat
├── PPSSPP
│   └── ppge_atlas.zim
├── 7800 BIOS (U).rom
├── bios_CD_E.bin
├── bios_CD_J.bin
├── bios_CD_U.1.10.bin
├── bios_CD_U.bin
├── disksys.rom
├── gba_bios.bin
├── lynxboot.img
├── NstDatabase.xml
├── o2rom.bin
├── pcfx.rom
├── saturn_bios.bin
├── scph5500.bin
├── scph5501.bin
├── scph5502.bin
├── scummvm.ini
├── syscard3.pce
└── syscard3.us.pce
```
