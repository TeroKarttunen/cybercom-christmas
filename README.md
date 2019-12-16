# cybercom-christmas
Commodore 64 based holiday greetings demo!

This directory contains a C64Studio IDE based development project that can be compiled with ACME compiler.

**releases** directory contains pre-built binaries for the project

**cybercom.asm** is the main program file that contains main loop and raster interrupt code
**framesxx-xx.asm** files contain character sets (fonts) for different frames
**memory_copy_routines.asm** contains code for copying frame characters to screen memory
**music.asm** contains music player code
**music_notes.asm** contains music note data (input for player routine)
**screenmem_banks.asm** contain screen memory maps (one for even and one for odd frames)
**sprites.asm** contain sprite data and initialization code

**mysprites.spm** contains spritemate compatible data for the santa and the sledge
