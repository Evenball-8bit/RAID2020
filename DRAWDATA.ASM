;*************************************************************************
;*** PALETTES


BOOTPAL:   .byte  $00,$00,$00 				;BOOT SCREEN
.byte  $0F,$07,$31,$30,$0E,$30,$30,$16,$2A,$30	;BASIC PALETTE
.byte  $12,$00, $30,$2D,$3D,$30			;FIRST=BOTTLES
							;SECOND=RAID 2020
							;THIRD=PILLS
							;4TH=GUN

BRIEFPAL:  .byte  $00,$00,$00 				;USED FOR BRIEFING
.byte  $0F,$21,$11,$10, $0F,$21,$30,$1B, $0F,$21	;SCREEN.  
.byte  $30,$30, $0F,$20,$10,$00			;FIRST = SHADDOW'S
							;BORDER (COLOR 01)
							;SUITCASE (COLOR 03.						
							;SECOND = WINDOWS
							;AND TEXT (COLOR 01)
							;AND COKE (COLOR 02)
							;AND CASH (COLOR 03).
							;THIRD = STATE MAP
   							;01,=BACKGND, 
							;02=THIN STRIPES
							;03=FAT STRIPES
							;FORTH = SHADDOW
							;(3 GRAY SHADES).
						

WHITEPAL:  .byte  $00,$00,$00 	;USED FOR GAME
.byte  $0F,$30,$30,$30		;MESSAGES.  ALL WHITE.  BUT REST IS NEVER
				;USED SO NO NEED TO WASTE MEMORY.

PIERPAL:    .byte  $00,$00,$00 				;PIER BACKGROUND PAL
.byte  $2F,$07,$21,$20,$00,$06,$11,$18,$51,$11	;BASIC PALETTE
.byte  $20,$21,$00,$2D,$10,$21
PIERSPAL:     .byte  $00,$00,$00 			;PIER SPRITES
.byte  $3F,$36,$2E,$00,$00,$38,$30,$00,$00,$2F	;BASIC PALETTE
.byte  $3D,$00,$00,$1A,$20,$2E

WAREPAL:   .byte  $00,$00,$00 				;WAREHOUSE BACK
.byte  $0F,$3D,$20,$00,$CF,$12,$02,$22,$EF,$12	;BASIC PALETTE
.byte  $20,$3D,$EF,$07,$20,$19

BULSPAL:
WARESPAL:   .byte  $00,$00,$00 				;WAREHOUSE SPRITES 
.byte  $0F,$00,$35,$3F,$00,$0F,$29,$20,$FD,$30	;BASIC PALETTE
.byte  $1D,$19,$00,$20,$2E,$16

SWAMPP: .byte  $01,$03,$3C ;# OF BLINKERS, FRAMES, BLINK FREQ.
.byte  $21,$20,$3D,$0C,$00,$0A,$28,$17,$00,$29	;BASIC PALETTE
.byte  $1A,$37,$00,$30,$21,$21
.byte  $00,$21,$30,$21,$00,$21,$21,$30	;BLINK DATA

SWAMPS:       .byte  $00,$00,$00 			;SWAMP SPRITES
.byte  $0F,$20,$3D,$3F,$00,$3E,$18,$00,$41,$39	;BASIC PALETTE
.byte  $0A,$2A,$00,$25,$20,$3E

BULPAL:   .byte  $01,$05,$32 				;PITBUL BACK
.byte  $0F,$2D, $10,$20,$0E,$24,$3E,$07,$2A,$14	;BASIC PALETTE	;1C>2D
.byte  $3B,$00,$2A,$0F,$15,$3C
.byte  $2A,$15,$0F,$1E,$2A,$0F,$0F,$04,$2A,$0F	;BLINK DATA
	.byte  $0F,$11,$2A,$0F,$0F,$14

TECHPAL:  .byte  $00,$00,$00 				;TECHNOPOLIS BACK
.byte  $3F,$31,$1B,$10,$00,$22,$20,$2A,$04,$1B	;BASIC PALETTE
.byte  $0B,$2C,$00,$1B,$20,$16

TECHSPAL:  .byte  $00,$00,$00 				;TECH SPRITES
.byte  $0F,$00,$35,$3F,$00,$0F,$29,$20,$09,$30	;BASIC PALETTE
.byte  $2E,$12,$9D,$14,$30,$0E

SPACEBPAL:
SPACESPAL: .byte  $01,$04,$28 ;# OF BLINKERS, FRAMES, BLINK FREQ.
.byte  $3E,$32,$11,$26,$0E,$2E,$32,$11,$FA,$1C	;BASIC PALETTE
.byte  $22,$01,$FA,$2D,$04,$25
.byte  $B9,$2D,$15,$26,$FA,$2D,$06,$36,$FA,$2D	;BLINK DATA
.byte  $36,$37

TUNNLPAL: .byte  $00,$00,$00 ;# OF BLINKERS, FRAMES, BLINK FREQ.
.byte  $0E,$12,$05,$39,$0A,$30,$06,$10,$00,$1A	;BASIC PALETTE
.byte  $10,$1F,$00,$05,$04,$08

TUNNLSPAL:  .byte  $00,$00,$00 ;# OF BLINKERS, FRAMES, BLINK FREQ.
.byte  $3F,$36,$2E,$00,$00,$38,$30,$00,$00,$2F	;BASIC PALETTE
.byte  $3D,$00,$00,$25,$07,$18

TUNLPAL2: .byte  $00,$00,$00 ;# OF BLINKERS, FRAMES, BLINK FREQ.
.byte  $0E,$12,$05,$39,$00,$10,$07,$18,$00,$00	;BASIC PALETTE
.byte  $00,$0A,$00,$00,$00,$00

;*** HERO ANIMATIONS	    *********************************************
;
;IMPORTANT NOTE:  THE BULLET SPRITES SHOULD RECOMMEND BASE SPRITE OF 1
;(0 IN USE BY TOPBAR).   THEN THE HERO SHOULD RECOMMEND 8 TO ALLOW
;FOR 1 HERO BULLET AND 7 ENEMY BULLETS IN THE LOWEST (HIGHEST VISUAL PRIORITY)
;RANGE.  THE ENEMIES SHOULD FOLLOW WITH A RECOMMENDED BASE SPRITE OF 8 ALSO
;SO THAT THEY JUST STACK UP AFTER THE HERO.

BOOTHERO:	.byte  $53,$01,$14
.word	DUMMYHERO

DUMMYHERO:   .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $FA,$00

JETSKING: .byte  $53,$01,$08 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	JETSKI

JETSKI:   .byte  $08,$04,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $60,$00,$61,$00,$80,$00,$81,$00	;NEW ROW
.byte  $E1,$00,$E0,$00,$C0,$00,$A0,$03	;NEW ROW
.byte  $6A,$03,$6B,$03,$4B,$03,$4A,$03	;NEW ROW

TECHHERO: .byte  $53,$04,$08 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	TECHHRO1
.word	TECHHRO2
.word	TECHHRO3
.word	TECHHRO4

WAREHERO: .byte  $53,$04,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	WARHERO4
.word	WARHERO2
.word	WARHERO3
.word	WARHERO1

TECHHRO1:
WARHERO1: .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $97,$00,$98,$00	;NEW ROW
.byte  $B7,$00,$B8,$00	;NEW ROW
.byte  $D7,$00,$D8,$00	;NEW ROW
.byte  $F7,$00,$F8,$00	;NEW ROW
	 
TECHHRO2:
WARHERO2: .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $97,$00,$98,$00	;NEW ROW
.byte  $B7,$00,$B8,$00	;NEW ROW
.byte  $D5,$00,$D6,$00	;NEW ROW
.byte  $F5,$00,$F6,$00	;NEW ROW

TECHHRO3:
WARHERO3: .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $97,$00,$98,$00	;NEW ROW
.byte  $B7,$00,$B8,$00	;NEW ROW
.byte  $95,$00,$96,$00	;NEW ROW
.byte  $B5,$00,$B6,$00	;NEW ROW

WARHERO4: .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $97,$00,$98,$00	;NEW ROW
.byte  $B7,$00,$B8,$00	;NEW ROW
.byte  $D7,$00,$D8,$00	;NEW ROW
.byte  $D1,$00,$D2,$00	;NEW ROW

TECHHRO4: .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $97,$00,$98,$00	;NEW ROW
.byte  $B7,$00,$B8,$00	;NEW ROW
.byte  $95,$00,$D3,$00	;NEW ROW
.byte  $F3,$00,$F4,$00	;NEW ROW

JETPACK:  .byte  $53,$02,$08 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	JETTING
.word	JETTING2

JETTING:  .byte  $08,$03,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $80,$00,$97,$00,$98,$00	;NEW ROW (C0)
.byte  $C6,$00,$C5,$00,$B8,$00	;NEW ROW
.byte  $80,$00,$D7,$00,$D8,$00	;NEW ROW
.byte  $80,$00,$B5,$02,$B6,$02	;NEW ROW

JETTING2: .byte  $08,$03,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $80,$00,$97,$00,$98,$00	;NEW ROW
.byte  $65,$00,$C5,$00,$B8,$00	;NEW ROW
.byte  $80,$00,$D7,$00,$D8,$00	;NEW ROW
.byte  $80,$00,$B5,$02,$B6,$02	;NEW ROW

HEROING:  .byte  $53,$04,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	hero1
.word	hero2
.word	hero3
.word	hero4

BOATING:  .byte  $53,$01,$14 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	HEROBOAT

HEROBOAT: .byte  $08,$04,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $75,$43,$B4,$03,$94,$43,$74,$43	;NEW ROW
.byte  $75,$C3,$B4,$83,$94,$C3,$74,$C3	;NEW ROW

OURSHIP:     .byte  $53,$01,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	SHIP1

SHIP1:  .byte  $08,$03,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $91,$00,$92,$00,$93,$00	;NEW ROW
.byte  $B1,$00,$B2,$00,$B3,$00	;NEW ROW

HOVERING:  .byte  $53,$01,$14 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	HVRCRAFT

CYCLING:  .byte  $53,$01,$14 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	CYCLE1

CYCLE1:  .byte  $08,$04,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $A7,$40,$E2,$42,$C2,$42,$C1,$43	;NEW ROW
.byte  $8C,$43,$8B,$43,$8A,$42,$89,$43	;NEW ROW
.byte  $C9,$43,$C8,$43,$AC,$43,$8D,$43	;NEW ROW

;******   BULLETS. ***********

SIMPLEB: .byte  $01,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $E4,$03	;AVAILABLE IN ALL WORLDS.

DOUBLEB: .byte  $01,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $E3,$03	;AVAILABLE IN ALL WORLDS.

SHIT:     .byte  $01,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $BD,$01	;BIRD SHIT FOR PIER

SPACEBALL: .byte  $01,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $33,$03	

FBALL:  .byte  $53,$02,$14 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	REDFIRE1  
.word	REDFIRE2   

REDFIRE1: .byte  $01,$01,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $21,$03	;NEW ROW
.byte  $41,$03	;NEW ROW

REDFIRE2: .byte  $01,$01,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $22,$03	;NEW ROW
.byte  $42,$03	;NEW ROW

BAZOSHOT: .byte  $01,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $2D,$01	;TECHNOPOLIS

FREEZEBUL: .byte  $01,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $C0,$03	;FREEZE GUN BULLET. VALID IN PIER AND WAREHOUSE

BAZO2: .byte  $01,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $2D,$03	;NEW ROW

EROSHOT: .byte  $01,$01,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $61,$03	;NEW ROW  OK IN TECHNOPOLIS
.byte  $81,$03	;NEW ROW

ROBOSHOT: .byte  $01,$01,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $4A,$03	;NEW ROW
.byte  $4A,$03	;NEW ROW

BUBBLE:  .byte  $53,$04,$06 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	BB1
.word	BB2		;SPACE BULLET (BUBBLE)
.word	BB3
.word	BB2		

BB1: .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $D0,$00	;NEW ROW
BB2: .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $D1,$00	;NEW ROW
BB3: .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $D2,$00	;NEW ROW

POWERUP:  .byte  $08,$02,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $9A,$03,$9A,$43	;SYMBOL TO GET NEW GUN IN SPACE

;*****    ENEMIES.  MOST ARE ANIMATION, SOME ARE JUST SPRITES.   ******

REDROID:  .byte  $53,$03,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	REDROID1
.word	REDROID2
.word	REDROID3

REDROID1: .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $1A,$03,$1B,$03	;NEW ROW
.byte  $3A,$03,$3B,$03	;NEW ROW
.byte  $5A,$03,$5B,$03	;NEW ROW
.byte  $7A,$03,$59,$03	;NEW ROW
.byte  $9A,$03,$9B,$03	;NEW ROW

REDROID2: .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $18,$03,$19,$03	;NEW ROW
.byte  $38,$03,$39,$03	;NEW ROW
.byte  $58,$03,$5B,$03	;NEW ROW
.byte  $78,$03,$7B,$03	;NEW ROW
.byte  $92,$03,$99,$03	;NEW ROW

REDROID3: .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $1A,$03,$1B,$03	;NEW ROW
.byte  $3A,$03,$3B,$03	;NEW ROW
.byte  $16,$03,$5B,$03	;NEW ROW
.byte  $36,$03,$37,$03	;NEW ROW
.byte  $56,$03,$57,$03	;NEW ROW

BLKDROID: .byte  $53,$03,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	WARBLAK1
.word	WARBLAK2
.word	WARBLAK3

WARBLAK1: .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $1E,$02,$1F,$02	;NEW ROW
.byte  $3E,$02,$3F,$02	;NEW ROW
.byte  $5E,$02,$5F,$02	;NEW ROW
.byte  $7E,$02,$7F,$02	;NEW ROW
.byte  $9E,$02,$9F,$02	;NEW ROW

WARBLAK2: .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $7C,$03,$7D,$02	;NEW ROW
.byte  $9C,$02,$9D,$02	;NEW ROW
.byte  $BC,$02,$BD,$02	;NEW ROW
.byte  $DC,$02,$DD,$02	;NEW ROW
.byte  $BE,$02,$BF,$02	;NEW ROW

WARBLAK3: .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $1E,$02,$1F,$02	;NEW ROW
.byte  $3E,$02,$3F,$02	;NEW ROW
.byte  $1C,$02,$1D,$02	;NEW ROW
.byte  $3C,$02,$3D,$02	;NEW ROW
.byte  $5C,$02,$5D,$02	;NEW ROW

TRACK:    .byte  $53,$03,$06 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	TRACKER1
.word	TRACKER2
.word	TRACKER3

TRACKER1:  .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $82,$01,$83,$01	;NEW ROW
.byte  $A2,$01,$A3,$01	;NEW ROW

TRACKER2: .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $83,$41,$A3,$81	;NEW ROW
.byte  $A3,$41,$A2,$41	;NEW ROW

TRACKER3: .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $A3,$C1,$A2,$C1	;NEW ROW
.byte  $83,$C1,$82,$C1	;NEW ROW

KNIFING:  .byte  $53,$04,$05 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	KNIFE3
.word	KNIFE1
.word	KNIFE4
.word	KNIFE2

KNIFE1:   .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $8A,$02,$40,$00	;NEW ROW
.byte  $40,$00,$D3,$C2	;NEW ROW

KNIFE2:   .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $40,$00,$D3,$42	;NEW ROW
.byte  $8A,$82,$40,$02	;NEW ROW

KNIFE3:   .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $93,$02,$40,$02	;NEW ROW
.byte  $0D,$02,$40,$02	;NEW ROW

KNIFE4:   .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $B4,$02,$2F,$02	;NEW ROW
.byte  $40,$00,$40,$00	;NEW ROW

FLYANIM:  .byte  $53,$02,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	fly1
.word	fly2

BLOBBING: .byte  $53,$02,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	blob1
.word	blob2

GUNDOWN:  .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $13,$03,$14,$03	;NEW ROW
.byte  $33,$03,$34,$03	;NEW ROW

fly1:     .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $11,$03,$12,$03	;NEW ROW
.byte  $31,$03,$32,$03	;NEW ROW

fly2:     .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $51,$03,$52,$03	;NEW ROW
.byte  $71,$03,$72,$03	;NEW ROW

blob1:    .byte  $08,$02,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $50,$02,$30,$02	;WAREHOUSE BLOB

blob2:    .byte  $08,$02,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $6F,$02,$8E,$02	;NEW ROW

BOLT:     .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $AF,$03	;WAREHOUSE LIGHTENING BOLT

SPIDEY:   .byte  $53,$02,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	spidey1
.word	spidey2

THUG:     .byte  $53,$04,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	thug1
.word	thug2
.word	thug3
.word	thug4

DEALING:  .byte  $53,$04,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	DEALER1
.word	DEALER2
.word	DEALER3
.word	DEALER4

CHOPPER:  .byte  $53,$03,$05 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	CHOPPER2
.word	CHOPPER1
.word	CHOPPER3

CHOPPER1: .byte  $00,$03,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $3F,$00,$7A,$00,$17,$00	;NEW ROW
.byte  $18,$00,$7F,$00,$54,$00	;NEW ROW
.byte  $90,$00,$B0,$00,$3B,$00	;NEW ROW

CHOPPER2: .byte  $00,$03,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $15,$00,$16,$00,$17,$00	;NEW ROW
.byte  $18,$00,$34,$00,$54,$00	;NEW ROW
.byte  $90,$00,$B0,$00,$3B,$00	;NEW ROW

CHOPPER3: .byte  $08,$03,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $15,$00,$16,$00,$BC,$00	;NEW ROW
.byte  $18,$00,$9E,$00,$54,$80	;NEW ROW
.byte  $BD,$00,$B0,$00,$3B,$00	;NEW ROW

MEANCHOP:  .byte  $53,$03,$05 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	MCHOPER2
.word	MCHOPER1
.word	MCHOPER3

MCHOPER1: .byte  $00,$03,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $3F,$01,$7A,$01,$17,$01	;NEW ROW
.byte  $18,$01,$7F,$01,$54,$01	;NEW ROW
.byte  $90,$01,$B0,$01,$3B,$01	;NEW ROW

MCHOPER2: .byte  $00,$03,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $15,$01,$16,$01,$17,$01	;NEW ROW
.byte  $18,$01,$34,$01,$54,$01	;NEW ROW
.byte  $90,$01,$B0,$01,$3B,$01	;NEW ROW

MCHOPER3: .byte  $08,$03,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $15,$01,$16,$01,$BC,$01	;NEW ROW
.byte  $18,$01,$9E,$01,$54,$81	;NEW ROW
.byte  $BD,$01,$B0,$01,$3B,$01	;NEW ROW

BOMB:     .byte  $53,$04,$06 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	BOMB1
.word	BOMB2	;PITBULL'S ROLLING BOMBS
.word	BOMB3
.word	BOMB4

BOMB1:    .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $65,$02	;NEW ROW

BOMB2:    .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $66,$02	;NEW ROW

BOMB3:    .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $65,$42	;NEW ROW

BOMB4:    .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $85,$02	;NEW ROW


RAT:      .byte  $53,$02,$14 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	rat1
.word	rat2

rat1:     .byte  $00,$04,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $40,$00,$63,$00,$64,$00,$46,$00	;NEW ROW
.byte  $23,$00,$A7,$00,$C2,$00,$E2,$00	;NEW ROW
.byte  $43,$00,$48,$00,$29,$00,$89,$00	;NEW ROW

rat2:     .byte  $00,$04,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $40,$00,$8B,$00,$8C,$00,$8D,$00	;NEW ROW
.byte  $AC,$00,$C8,$00,$C9,$00,$CA,$00	;NEW ROW
.byte  $CB,$00,$CC,$00,$91,$00,$B1,$00	;NEW ROW


BOMBER:   .byte  $53,$02,$0F ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	BOMBDROP
.word	BOMBDRP2

BOMBDROP: .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $6E,$02,$6E,$42	;NEW ROW
.byte  $8E,$02,$8E,$42	;NEW ROW

BOMBDRP2: .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $6F,$02,$6F,$42	;NEW ROW
.byte  $8F,$02,$8F,$42	;NEW ROW


BATFLY:   .byte  $53,$02,$06 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	BAT
.word	BAT2

BAT:      .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $30,$00,$30,$40	;NEW ROW
.byte  $50,$00,$50,$40	;NEW ROW

BAT2:     .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $31,$40,$31,$00	;NEW ROW
.byte  $51,$40,$51,$00	;NEW ROW

COCHRCH:  .byte  $53,$03,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	COCHRCH1
.word	COCHRCH2
.word	cochrch3

COCHRCH1: .byte  $00,$04,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $61,$03,$62,$03,$63,$03,$64,$03	;NEW ROW
.byte  $81,$03,$82,$03,$83,$03,$84,$03	;NEW ROW

COCHRCH2: .byte  $00,$04,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $00,$03,$01,$03,$02,$03,$03,$03	;NEW ROW
.byte  $04,$03,$05,$03,$06,$03,$07,$03	;NEW ROW

cochrch3: .byte  $00,$04,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $08,$03,$09,$03,$0A,$03,$0B,$03	;NEW ROW
.byte  $0C,$03,$0D,$03,$0E,$03,$0F,$03	;NEW ROW

BIRD:     .byte  $53,$02,$14 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	BIRD1
.word	BIRD2

SPACEMAN:  .byte  $53,$03,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	KILLER4			;PIER SCENE, SPACEMAN LOOKING GUY.
.word	KILLER3
.word	KILLER2

CRITTER:  .byte  $53,$02,$1E ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	critter1
.word	critter2

critter1: .byte  $00,$02,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $40,$02,$41,$02	;NEW ROW

critter2: .byte  $00,$02,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $42,$02,$43,$02	;NEW ROW

BULLYPIT: .byte  $53,$02,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	PITBULL1
.word	PITBULL2

PITBULL1:  .byte  $08,$04,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $40,$02,$35,$02,$55,$02,$75,$03	;NEW ROW
.byte  $BB,$02,$BA,$03,$77,$03,$76,$03	;NEW ROW
.byte  $DB,$03,$DA,$03,$D9,$02,$F9,$03	;NEW ROW
.byte  $D4,$02,$F4,$02,$DF,$02,$DE,$02	;NEW ROW

PITBULL2: .byte  $08,$04,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $01,$02,$02,$02,$03,$02,$40,$02	;NEW ROW
.byte  $08,$02,$07,$03,$06,$03,$05,$03	;NEW ROW
.byte  $09,$02,$0A,$03,$0B,$03,$40,$02	;NEW ROW
.byte  $0C,$02,$10,$02,$0F,$02,$0E,$02	;NEW ROW

FLYING:  .byte  $53,$03,$14 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	enmy1   
.word	enmy2   		;BANK 3 ENEMY
.word	enmy3   

ZOOKING:  .byte  $53,$04,$0F ;(O)BJECT/(S)PRITE, SCENES, FREQUENCY
.word	bazooka1
.word	bazooka2		;BANK 2 ENEMY
.word	bazooka3
.word	bazooka2

ROBOCOP:   .byte  $53,$04,$0F ;(O)BJECT/(S)PRITE, SCENES, FREQUENCY
.word	robocop1
.word	robocop2		;BANK 2 ENEMY
.word	robocop3
.word	robocop3

ROBOHALF: .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $3B,$03,$3C,$03	;NEW ROW
.byte  $5B,$03,$5C,$03	;BANK 2.  HALF A ROBOCOP TO PUT ON BUILDINGS

LITLSHIP: .byte  $53,$02,$02 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	HOVER1
.word	HOVER2

HOVER1:    .byte  $0A,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $35,$00,$36,$00	;NEW ROW
.byte  $55,$00,$56,$00	;NEW ROW

HOVER2:   .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $A9,$00,$AA,$00	;NEW ROW
.byte  $C9,$00,$CA,$00	;NEW ROW

HVRCRAFT: .byte  $08,$04,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $37,$42,$36,$42,$35,$42,$34,$42	;NEW ROW
.byte  $57,$42,$56,$42,$55,$42,$54,$42	;BANK 2 ENEMY
.byte  $77,$42,$76,$42,$75,$42,$74,$42	;NEW ROW
.byte  $F2,$42,$D2,$42,$D1,$42,$94,$42	;NEW ROW

GATORING:    .byte  $53,$02,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	GATOR1			;BANK 1 ENEMY
.word	GATOR2

GATOR1:   .byte  $08,$03,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $47,$02,$48,$02,$49,$02	;NEW ROW
.byte  $47,$82,$48,$82,$49,$82	;NEW ROW

GATOR2:   .byte  $08,$03,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $47,$02,$48,$02,$19,$02	;NEW ROW
.byte  $47,$82,$48,$82,$19,$82	;NEW ROW

MINE:     .byte  $08,$02,$02 ;BASE, WIDTH, HEIGHT
.byte  $52,$03,$53,$03	;NEW ROW
.byte  $72,$03,$73,$03	;NEW ROW

PLATFORM: .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $31,$03,$32,$03	;NEW ROW
.byte  $51,$03,$52,$03	;NEW ROW

WORM:     .byte  $53,$02,$1E ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	WORMY
.word	WORMY2

WORMY:    .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $19,$02,$1A,$02	;NEW ROW
.byte  $1B,$02,$1C,$02	;NEW ROW

WORMY2:   .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $1D,$02,$1E,$02	;NEW ROW
.byte  $1F,$02,$20,$02	;NEW ROW

SHARKING:   .byte  $53,$10,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	SHARKY1
.word	SHARKY1
.word	SHARKY1
.word	SHARKY1
.word	SHARKY1
.word	SHARKY1
.word	SHARKY1
.word	SHARKY1
.word	SHARKY2
.word	SHARKY2
.word	SHARKY3			;BANK 1 ENEMY
.word	SHARKY3	      
.word	SHARKY2
.word	SHARKY2
.word	SHARKY3	      
.word	SHARKY3	      

METEOR:   .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $D5,$42,$D5,$02	;NEW ROW
.byte  $D5,$C2,$D5,$82	;NEW ROW

LITLMETR:  .byte  $08,$01,$01
.byte  $9C,$02

SATLITE:  .byte  $08,$04,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $01,$00,$02,$00,$03,$00,$04,$00	
.byte  $05,$00,$06,$00,$07,$00,$08,$00	;BANK 1 ENEMY
.byte  $09,$00,$0A,$00,$0B,$00,$0C,$00	
.byte  $0D,$00,$0E,$03,$0F,$03,$10,$00	

SAUC:    .byte  $53,$02,$0A ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	saucer			;BANK 1
.word	saucer2

;*** SPRITES *********************************

LUGI:     .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $CF,$00	;THE RAT HOCKS THIS LUGI

BUZZER:   .byte  $53,$02,$02 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	BEE1
.word	BEE2

BEE1:      .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $E1,$03	;NEW ROW

BEE2:     .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $66,$03	;NEW ROW

BIRD1:    .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $99,$00,$9A,$00	;NEW ROW
.byte  $B9,$00,$BA,$00	;NEW ROW

BIRD2:    .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $9B,$00,$9C,$00	;NEW ROW
.byte  $BB,$00,$BC,$00	;NEW ROW

saucer:   .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $76,$01,$77,$01	;NEW ROW
.byte  $96,$01,$97,$01	;NEW ROW

saucer2:  .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $78,$01,$79,$01	;NEW ROW
.byte  $98,$01,$99,$01	;NEW ROW

enmy1:    .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $1E,$02,$1F,$02	;NEW ROW
.byte  $3E,$02,$3F,$02	;NEW ROW
.byte  $5E,$02,$5F,$02	;NEW ROW
.byte  $7E,$02,$7F,$02	;NEW ROW
.byte  $9E,$02,$9F,$02	;NEW ROW

enmy3:    .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $1E,$02,$1F,$02	;NEW ROW
.byte  $3E,$02,$3F,$02	;NEW ROW
.byte  $1C,$02,$1D,$02	;NEW ROW
.byte  $3C,$02,$3D,$02	;NEW ROW
.byte  $5C,$02,$5D,$02	;NEW ROW

enmy2:    .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $7C,$02,$7D,$02	;NEW ROW
.byte  $9C,$02,$3F,$02	;NEW ROW
.byte  $BC,$02,$BD,$02	;NEW ROW
.byte  $DC,$02,$DD,$02	;NEW ROW
.byte  $BE,$02,$BF,$02	;NEW ROW


bazooka1: .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $3E,$01,$3F,$01	;NEW ROW
.byte  $5E,$01,$5F,$01	;NEW ROW
.byte  $7E,$01,$7F,$01	;NEW ROW
.byte  $9E,$01,$9F,$01	;NEW ROW

bazooka3: .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $3E,$01,$3F,$01	;NEW ROW
.byte  $5E,$01,$5F,$01	;NEW ROW
.byte  $3D,$01,$7F,$01	;NEW ROW
.byte  $5D,$01,$9F,$01	;NEW ROW

bazooka2: .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $9D,$01,$7D,$01	;NEW ROW
.byte  $BD,$01,$BE,$01	;NEW ROW
.byte  $73,$01,$BF,$01	;NEW ROW
.byte  $DE,$01,$DF,$01	;NEW ROW

robocop1: .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $3B,$03,$3C,$03	;NEW ROW
.byte  $5B,$03,$5C,$03	;NEW ROW
.byte  $7B,$03,$7C,$03	;NEW ROW
.byte  $9B,$03,$9C,$03	;NEW ROW
.byte  $BB,$03,$BC,$03	;NEW ROW

robocop3: .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $3B,$03,$3C,$03	;NEW ROW
.byte  $5B,$03,$5C,$03	;NEW ROW
.byte  $39,$03,$3A,$03	;NEW ROW
.byte  $59,$03,$5A,$03	;NEW ROW
.byte  $79,$03,$7A,$03	;NEW ROW

robocop2: .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $99,$03,$9A,$03	;NEW ROW
.byte  $B9,$03,$BA,$03	;NEW ROW
.byte  $D9,$03,$DA,$03	;NEW ROW
.byte  $F9,$03,$38,$03	;NEW ROW
.byte  $78,$03,$58,$03	;NEW ROW

HFRAME1:   .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $97,$00,$98,$01	;NEW ROW
.byte  $B7,$00,$B8,$00	;NEW ROW
.byte  $D7,$02,$D8,$02	;NEW ROW
.byte  $F7,$02,$F8,$02	;NEW ROW

HFRAME2:  .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $97,$00,$98,$01	;NEW ROW
.byte  $B7,$00,$B8,$00	;NEW ROW
.byte  $D5,$02,$D6,$02	;NEW ROW
.byte  $F5,$02,$F6,$02	;NEW ROW

HFRAME3:  .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $97,$00,$98,$01	;NEW ROW
.byte  $B7,$00,$B8,$00	;NEW ROW
.byte  $95,$02,$96,$02	;NEW ROW
.byte  $B5,$02,$B6,$02	;NEW ROW

KILLER2:  .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $69,$03,$6A,$03	;NEW ROW
.byte  $89,$03,$8A,$03	;NEW ROW
.byte  $4A,$03,$4B,$03	;NEW ROW
.byte  $6B,$03,$6C,$03	;NEW ROW

KILLER3:  .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $67,$03,$68,$03	;NEW ROW
.byte  $87,$03,$88,$03	;NEW ROW
.byte  $A9,$03,$AA,$03	;NEW ROW
.byte  $C9,$03,$CA,$03	;NEW ROW

KILLER4:  .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $67,$03,$68,$03	;NEW ROW
.byte  $87,$03,$88,$03	;NEW ROW
.byte  $A7,$03,$A8,$03	;NEW ROW
.byte  $C7,$03,$C8,$03	;NEW ROW

SHARKY1:   .byte  $08,$03,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $40,$03,$11,$03,$12,$03	;NEW ROW
.byte  $40,$03,$13,$03,$14,$03	;NEW ROW
.byte  $C6,$03,$D3,$03,$F2,$03	;NEW ROW

SHARKY2:  .byte  $08,$03,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $40,$03,$40,$03,$40,$03	;NEW ROW
.byte  $20,$03,$21,$03,$22,$03	;NEW ROW
.byte  $23,$03,$25,$03,$29,$03	;NEW ROW

SHARKY3:  .byte  $08,$03,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $44,$03,$64,$03,$40,$03	;NEW ROW
.byte  $A6,$03,$86,$03,$66,$03	;NEW ROW
.byte  $1D,$03,$1E,$03,$1F,$03	;NEW ROW

spidey1:  .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $26,$03	;NEW ROW

spidey2:  .byte  $08,$01,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $27,$03	;NEW ROW

hero2:    .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $97,$00,$98,$00	;NEW ROW
.byte  $B7,$00,$B8,$00	;NEW ROW
.byte  $D5,$02,$D6,$00	;NEW ROW
.byte  $F5,$02,$F6,$00	;NEW ROW

hero1:    .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $97,$00,$98,$00	;NEW ROW
.byte  $B7,$00,$B8,$00	;NEW ROW
.byte  $D7,$00,$D8,$00	;NEW ROW
.byte  $F7,$00,$F8,$00	;NEW ROW

hero3:    .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $97,$00,$98,$00	;NEW ROW
.byte  $B7,$00,$B8,$00	;NEW ROW
.byte  $95,$02,$96,$02	;NEW ROW
.byte  $B5,$02,$B6,$02	;NEW ROW

hero4:    .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $97,$00,$98,$00	;NEW ROW
.byte  $B7,$00,$B8,$00	;NEW ROW
.byte  $D3,$02,$D4,$02	;NEW ROW
.byte  $F3,$02,$F4,$02	;NEW ROW

thug1:    .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $91,$00,$92,$00	;NEW ROW
.byte  $B1,$00,$B2,$00	;NEW ROW
.byte  $D1,$03,$D2,$03	;NEW ROW
.byte  $F1,$03,$F2,$03	;NEW ROW

thug2:    .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $53,$00,$54,$00	;NEW ROW
.byte  $73,$00,$74,$00	;NEW ROW
.byte  $93,$03,$94,$03	;NEW ROW
.byte  $B3,$03,$B4,$03	;NEW ROW

thug3:    .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $91,$00,$92,$00	;NEW ROW
.byte  $B1,$00,$B2,$00	;NEW ROW
.byte  $55,$03,$56,$03	;NEW ROW
.byte  $75,$03,$76,$03	;NEW ROW

thug4:    .byte  $08,$02,$04 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $53,$00,$54,$00	;NEW ROW
.byte  $73,$00,$74,$00	;NEW ROW
.byte  $57,$03,$58,$03	;NEW ROW
.byte  $77,$03,$78,$03	;NEW ROW

DEALER1:  .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $7B,$00,$7C,$00	;NEW ROW
.byte  $7D,$00,$9D,$00	;NEW ROW
.byte  $9E,$00,$7E,$00	;NEW ROW
.byte  $9F,$02,$7F,$02	;NEW ROW
.byte  $BF,$02,$BE,$02	;NEW ROW

DEALER2:  .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $37,$00,$7C,$00	;NEW ROW
.byte  $7D,$00,$9D,$00	;NEW ROW
.byte  $9E,$00,$7E,$00	;NEW ROW
.byte  $9F,$02,$7F,$02	;NEW ROW
.byte  $36,$02,$35,$02	;NEW ROW

DEALER3:  .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $7B,$00,$7C,$00	;NEW ROW
.byte  $7D,$00,$9D,$00	;NEW ROW
.byte  $9E,$00,$7E,$00	;NEW ROW
.byte  $9F,$02,$7F,$02	;NEW ROW
.byte  $33,$02,$34,$02	;NEW ROW

DEALER4:  .byte  $08,$02,$05 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $7B,$00,$7C,$00	;NEW ROW
.byte  $AD,$00,$9D,$00	;NEW ROW
.byte  $CD,$00,$7E,$00	;NEW ROW
.byte  $9F,$02,$7F,$02	;NEW ROW
.byte  $BF,$02,$BE,$02	;NEW ROW

ARMRBT0: .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $EB,$02,$8D,$02	;BANK 0 BOOTS
.byte  $6F,$02,$AE,$02	

COOLGUN0:  .byte  $08,$02,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $48,$02,$49,$02	;BANK 0 GUN

ARMRBT3: .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $4B,$03,$4C,$03	;BANK 3 BOOTS
.byte  $6B,$03,$6C,$03	

COOLGUN3:  .byte  $08,$02,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $20,$00,$6E,$00	;BANK 3 GUN

GUNTURET: .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $82,$00,$82,$40	;NEW ROW
.byte  $82,$80,$82,$C0	;NEW ROW

LOGUP:    .byte  $08,$01,$03 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $A2,$01	;NEW ROW
.byte  $A3,$01	;NEW ROW
.byte  $A2,$81	;NEW ROW

LOGSIDE:  .byte  $08,$03,$01 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $C2,$81,$C3,$41,$C2,$C1	;NEW ROW

;END OF GAME EXPLOSIONS.

ENDBLOW:  .byte  $53,$03,$05 ;4F=OBJECT/53=SPRITE, SCENES, FREQUENCY
.word	ENDBLOW1
.word	ENDBLOW2
.word	ENDBLOW3

ENDBLOW1: .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $51,$83,$51,$C3	;NEW ROW
.byte  $51,$03,$31,$03	;NEW ROW

ENDBLOW2: .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $71,$03,$72,$03	;NEW ROW
.byte  $71,$83,$72,$83	;NEW ROW

ENDBLOW3: .byte  $08,$02,$02 ;BASE+$80 IF 1 BY 2, WIDTH, HEIGHT
.byte  $82,$03,$83,$03	;NEW ROW
.byte  $A2,$03,$A3,$03	;NEW ROW


BLOWN22:  .byte  $01,$02,$02 ;BLOCK SIZE, BLOCK WIDTH, BLOCK HEIGHT
.byte  $00,$05	;NEW ROW
.byte  $02,$07	;NEW ROW
.byte  $02	;PALETTE INFO
