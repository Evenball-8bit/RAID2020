;#resource "CZAR1.chr"
;#resource "CZAR2.chr"
;#resource "CZAR3.chr"
;#resource "CZAR4.chr"
;#resource "CHR_00.chr"
;#resource "CHR_01.chr"
;#resource "CHR_02.chr"
;#resource "CHR_03.chr"
;#resource "DRAWDATA.ASM"
;#resource "MEMORY.ASM"
;#resource "NORMTOP.ASM"
;#resource "PULSES.ASM"
;#link "STATE.s"
;#resource "SUBS.ASM"
;#resource "TTY.ASM"
;#resource "WORLDTAB.ASM"
;#resource "YOURBACK.ASM"

;#resource "RAID2020.cfg"
;#define CFGFILE RAID2020.cfg
;#define LIBARGS ,

;
; iNES header
;

.segment "HEADER"

INES_MAPPER = 11 ; 11 = Color Dreams
INES_MIRROR = 1 ; 0 = horizontal mirroring, 1 = vertical mirroring
INES_SRAM   = 0 ; 1 = battery backed SRAM at $6000-7FFF

.byte 'N', 'E', 'S', $1A ; ID
.byte $04 ; 16k PRG chunk count
.byte $04

 ; 8k CHR chunk count
.byte INES_MIRROR | (INES_SRAM << 1) | ((INES_MAPPER & $f) << 4)
.byte (INES_MAPPER & %11110000)
.byte $0, $0, $0, $0, $0, $0, $0, $0 ; padding

.segment "TILES_00"
	.incbin "CHR_00.chr"
.segment "TILES_01"
	.incbin "CHR_01.chr"
.segment "TILES_02"
	.incbin "CHR_02.chr"
.segment "TILES_03"
	.incbin "CHR_03.chr"