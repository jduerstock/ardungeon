;
; 21-s093.asm - section of the dungeon map (level 1, northeast corner)
;
; This source code is copyright (c) 2008 Jason Duerstock
; jason.duerstock@gmail.com
;
; The original program is copyright (c) 1987 Intellicreations Inc.
;
; This file is part of the ardungeon project which is an attempt to
; reverse engineer "Alternate Reality: The Dungeon" for the Atari 8-bit
; computer. 
;
; ardungeon is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License version 2
; as published by the Free Software Foundation.
;
; ardungeon is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
;
; You should have received a copy of the GNU General Public License
; along with ardungeon; if not, write to the 
; Free Software Foundation, Inc.
; 51 Franklin Street, Fifth Floor
; Boston, MA  02110-1301  USA
;

		.include	"macros.inc"

;		.ORG	$AC00
		.BYTE	2
		.WORD	aToastLev1_3	; "toast! LEV 1.3"
		HBStr	"at a "
		HBStr	"in a "
		HBStr	"in the "
		HBStr	" room."
		HBStr	"stairway leading down."
		HBStr	"in a secret"
		HBStr	"passage."
		HBStr	" another small room."
		HBStr	"hallway."
		HBStr	"in a quiet"
		HBStr	" area."
aToastLev1_3:	.BYTE	"toast! LEV 1.3",0 ; DATA XREF: RAM:AC01^o
aTaureanMaze_:	.BYTE	$82,"Taurean Maze.",0
		.BYTE	$81,$88,$00
aLongCorridor_:	.BYTE	$81,"long corridor.",0
aPelinorSPuzzle:.BYTE	$81,"Pelinor's Puzzle.",0
aBlinkMineField:.BYTE	$81,"blink-mine field.",0
aLost_:		.BYTE	"lost.",0
		.BYTE	$85," ",$88,$00
aAratnaMaze_:	.BYTE	"Aratna maze.",0
aDeadEnd:	.BYTE	$81,"dead-end ",$86,$00
aDamp:		.BYTE	$81,"damp",$8A,$00
aDim:		.BYTE	$81,"dim ",$88,$00
aBubblingFounta:.BYTE	$80,"bubbling fountain.",0
aFirstCityBankS:.BYTE	$82,"First City Bank's vault.",0
aAtTheLightWiza:.BYTE	"at the Light Wizards Guild.",0
		.BYTE	$81,$86,$00
aByA:		.BYTE	"by a ",$84,$00
		.BYTE	$80,$84,$00
		.BYTE	0
		.BYTE	0
aWellLighted:	.BYTE	$81,"well-lighted",$8A,$00
aInAnOpen:	.BYTE	"in an open",$8A,$00
aTreasure:	.BYTE	$81,"treasure",$83,$00
aMusty:		.BYTE	$81,"musty",$83,$00
aSmall:		.BYTE	$81,"small",$83,$00
aCreepy:	.BYTE	$81,"creepy",$83,$00
aLarge:		.BYTE	$81,"large",$83,$00
		.BYTE	0
		.BYTE	0
		.BYTE	$85,$83,$00
aInYet:		.BYTE	"in yet",$87,$00
aIn:		.BYTE	"in",$87,$00
		.BYTE	$89,$8A,$00
aNondescript:	.BYTE	$81,"nondescript",$83,$00
aDangerous:	.BYTE	$81,"dangerous",$8A,$00
aRoomFilledWith:.BYTE	$81,"room filled with debris.",0
		.BYTE	$89,$83,$00
aInTheCitySSewe:.BYTE	"in The City's sewer system.",0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$80,"dangerous",$8E,$00
aDebrisLittered:.BYTE	$80,"debris-littered",$83,$00
		.BYTE	$80,$89,$83,$00
aInTheCitySSe_0:.BYTE "in The City's sewer system.",0
		.BYTE $80
		.BYTE $86
		.BYTE ' '
		.BYTE $8A
		.BYTE	0
		.BYTE $90
		.BYTE $92
		.BYTE	0
		.BYTE $80
aTypical:	.BYTE "typical"
		.BYTE $8F
		.BYTE $8A
		.BYTE	0
aAtDerRathskell:.BYTE "at Der Rathskeller Bar & Grille",0
aInAnEnclosedBo:.BYTE "in an enclosed booth.",0
		.BYTE $81
aPalaceEntrance:.BYTE "Palace entrance.",0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE  $A
		.BYTE	0
		.BYTE	1
		.BYTE $20
		.BYTE	0
		.BYTE	1
		.BYTE $1F
		.BYTE $20
		.BYTE $20
		.BYTE	0
		.BYTE	1
		.BYTE $18
		.BYTE	6
		.BYTE $1F
		.BYTE	1
		.BYTE	2
		.BYTE $12
		.BYTE	8
		.BYTE $18
		.BYTE	1
		.BYTE	3
		.BYTE $13
		.BYTE  $A
		.BYTE $18
		.BYTE	1
		.BYTE	3
		.BYTE	5
		.BYTE	6
		.BYTE $12
		.BYTE	1
		.BYTE	4
		.BYTE	0
		.BYTE $20
		.BYTE $13
		.BYTE	8
		.BYTE	5
		.BYTE	1
		.BYTE	8
		.BYTE $12
		.BYTE	6
		.BYTE	5
		.BYTE	0
		.BYTE	8
		.BYTE	1
		.BYTE	7
		.BYTE	5
		.BYTE $13
		.BYTE $20
		.BYTE $1F
		.BYTE $19
		.BYTE	6
		.BYTE $13
		.BYTE $11
		.BYTE $18
		.BYTE  $A
		.BYTE	7
		.BYTE $1D
		.BYTE	6
		.BYTE $20
		.BYTE	5
		.BYTE	3
		.BYTE	7
		.BYTE $14
		.BYTE  $B
		.BYTE $10
		.BYTE	4
		.BYTE $10
		.BYTE	8
		.BYTE $16
		.BYTE	3
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE	4
		.BYTE	6
		.BYTE	1
		.BYTE $6A ; j
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	8
		.BYTE $22 ; "
		.BYTE $C0 ; ¿
		.BYTE	1
		.BYTE $89 ; â
		.BYTE	1
		.BYTE	6
		.BYTE	0
		.BYTE  $A
		.BYTE  $C
		.BYTE  $E
		.BYTE	1
		.BYTE $A5 ; •
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE	4
		.BYTE	6
		.BYTE	4
		.BYTE $98 ; ò
		.BYTE	0
		.BYTE $54 ; T
		.BYTE  $E
		.BYTE $7A ; z
		.BYTE $54 ; T
		.BYTE $24 ; $
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	6
		.BYTE	1
		.BYTE $8F ; è
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE	4
		.BYTE	6
		.BYTE	1
		.BYTE $74 ; t
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE $98 ; ò
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE $25 ; %
		.BYTE $F0 ; 
		.BYTE $DD ; ›
		.BYTE $33 ; 3
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE	7
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE  $D
		.BYTE	7
		.BYTE	0
		.BYTE  $D
		.BYTE $50 ; P
		.BYTE	1
		.BYTE $C9 ; …
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE $91 ; ë
		.BYTE  $D
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	9
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $33 ; 3
		.BYTE	4
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE $17
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE	4
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE  $B
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $B
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $B
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $B
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE	7
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE	7
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	7
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	7
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	7
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE	5
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE	3
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $D0 ; –
		.BYTE $17
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D1 ; —
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D5 ; ’
		.BYTE $17
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	1
		.BYTE $91 ; ë
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE $19
		.BYTE $AE ; Æ
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $D0 ; –
		.BYTE $17
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE $CA ;  
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	1
		.BYTE $92 ; í
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D3 ; ”
		.BYTE $17
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE $C8 ; »
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	8
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE $91 ; ë
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE $92 ; í
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $92 ; í
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	5
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D1 ; —
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D1 ; —
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D5 ; ’
		.BYTE $DD ; ›
		.BYTE $1D
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D5 ; ’
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D5 ; ’
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $D3 ; ”
		.BYTE $10
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $DD ; ›
		.BYTE $1D
		.BYTE $B6 ; ∂
		.BYTE	5
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $16
		.BYTE $91 ; ë
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE $DD ; ›
		.BYTE $11
		.BYTE	5
		.BYTE $10
		.BYTE $3D ; =
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $1D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE	0
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE	0
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	5
		.BYTE $30 ; 0
		.BYTE	5
		.BYTE $D7 ; ◊
		.BYTE  $D
		.BYTE	0
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE  $D
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $3D ; =
		.BYTE	3
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	5
		.BYTE $D7 ; ◊
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE  $F
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	5
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE  $A
		.BYTE $CE ; Œ
		.BYTE  $D
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	3
		.BYTE	2
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	5
		.BYTE $D7 ; ◊
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE  $D
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE $35 ; 5
		.BYTE	5
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE  $C
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE  $C
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	5
		.BYTE $D7 ; ◊
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE  $A
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE  $A
		.BYTE $CE ; Œ
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $C
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE  $C
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE  $A
		.BYTE $CE ; Œ
		.BYTE  $D
		.BYTE $D1 ; —
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE $18
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE $18
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE  $A
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	5
		.BYTE $D7 ; ◊
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE  $A
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1D
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $50 ; P
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE  $C
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $A
		.BYTE	0
		.BYTE $11
		.BYTE $D1 ; —
		.BYTE $23 ; #
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE $10
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE $1F
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE $1F
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D1 ; —
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	5
		.BYTE $D7 ; ◊
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $16
		.BYTE $B1 ; ±
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $A
		.BYTE	0
		.BYTE	5
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE  $A
		.BYTE $CE ; Œ
		.BYTE  $D
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE	1
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $20
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $16
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $23 ; #
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $19
		.BYTE $40 ; @
		.BYTE $5D ; ]
		.BYTE	0
		.BYTE $19
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $50 ; P
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $23 ; #
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $17
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $17
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE	0
		.BYTE  $A
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $16
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE	8
		.BYTE $16
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $23 ; #
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE	8
		.BYTE $23 ; #
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $19
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $19
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $23 ; #
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	8
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $D9 ; Ÿ
		.BYTE $17
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $17
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $D0 ; –
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE $20
		.BYTE	0
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D8 ; ÿ
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	6
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	1
		.BYTE $10
		.BYTE $14
		.BYTE	0
		.BYTE	1
		.BYTE	3
		.BYTE $14
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $15
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $A
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $10
		.BYTE $14
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE  $E
		.BYTE  $C
		.BYTE $10
		.BYTE $30 ; 0
		.BYTE $14
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE $15
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $10
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE $14
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE $14
		.BYTE	0
		.BYTE $10
		.BYTE	1
		.BYTE $14
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	9
		.BYTE $15
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $15
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $24 ; $
		.BYTE $60 ; `
		.BYTE $D8 ; ÿ
		.BYTE	0
		.BYTE $24 ; $
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE $60 ; `
		.BYTE $D9 ; Ÿ
		.BYTE	0
		.BYTE $16
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1D
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1D
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $19
		.BYTE $60 ; `
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $19
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $23 ; #
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE $1E
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE $1E
		.BYTE	0
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $24 ; $
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $24 ; $
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $16
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $16
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D3 ; ”
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1D
		.BYTE $60 ; `
		.BYTE $50 ; P
		.BYTE  $D
		.BYTE $1D
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $5D ; ]
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $19
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $19
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $15
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $15
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE  $D
		.BYTE $35 ; 5
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $25 ; %
		.BYTE $60 ; `
		.BYTE	5
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE $CF ; œ
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $1D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $1D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $1D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $1D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	8
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	8
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $1D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $1D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	5
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE $25 ; %
		.BYTE $F5 ; ı
; end of 'RAM'


		.END
