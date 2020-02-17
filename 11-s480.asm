;
; 11-s480.asm - new character template
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

	.SEGMENT "SEG_3B_KEY"

		.BYTE	$41,$e0,$00,$12,$ce,$29,$68,$15,$2c,$08,$8c,$20,$ca,$bc,$4d,$9d
		.BYTE	$47,$6c,$1c,$e5,$05,$c9,$7e,$2c,$2c,$69,$d7,$ca,$f9,$f7,$06,$b1
		.BYTE	$e6,$0d,$eb,$09,$d4,$d5,$da,$64,$3c,$ec,$5f,$2d,$fe,$cf,$48,$d0
		.BYTE	$34,$2f,$0c,$1b,$07,$7c,$3c,$ea,$2c,$6e,$8b,$d3,$68,$59,$9d,$0d
		.BYTE	$ac,$53,$2c,$7a,$4d,$bf,$d6,$40,$55,$3b,$1d,$ef,$41,$9e,$e8,$ba
		.BYTE	$b8,$69,$0a,$49,$02,$10,$43,$fd,$c3,$92,$b1,$e3,$e5,$b2,$3d,$64
		.BYTE	$d6,$88,$c9,$3d,$65,$d2,$ac,$19,$0c,$1e,$e8,$31,$44,$b0,$d8,$7e
		.BYTE	$d2,$73,$34,$6d,$33,$02,$6d,$49,$1c,$08,$06,$c1,$fc,$de,$e6,$9b

	.SEGMENT "SEG_3B"


		.BYTE	$FF
		.BYTE	2
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $C
		.BYTE	 $B
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE	$11
		.BYTE	3
		.BYTE	1
		.BYTE	$11
		.BYTE	$11
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	1
		.BYTE	0
		.BYTE	$FF
		.BYTE	 $C
		.BYTE	$3F ; ?
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
		.BYTE	$80 ; 
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$FA ; ú
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	 $B
		.BYTE	 $B
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $B
		.BYTE	 $B
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $B
		.BYTE	 $B
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $B
		.BYTE	 $B
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $B
		.BYTE	 $B
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $B
		.BYTE	 $B
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $B
		.BYTE	 $B
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $B
		.BYTE	$80 ; 
		.BYTE	6
		.BYTE	0
		.BYTE	$80 ; 
		.BYTE	$80 ; 
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
		.BYTE	$80 ; 
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
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
		.RES	3,$03
		.RES	31,$00
		.BYTE	$85 ; 
		.BYTE	$17
		.BYTE	$20
		.BYTE	$84 ; 
		.BYTE	$1C
		.BYTE	$20
		.BYTE	$2C ; ,
		.BYTE	$3C ; <
		.BYTE	$A9 ; ©
		.BYTE	0
		.BYTE	$8D ; 
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
		.BYTE	$A2 ; ¢
		.BYTE	3
		.BYTE	$9D ; 
		.BYTE	$45 ; E
		.BYTE	$63 ; c
		.BYTE	$CA ; Ê
		.BYTE	$10
		.BYTE	$FA ; ú
		.BYTE	$A9 ; ©
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$13
		.RES	74,$00
		.BYTE	$69 ; i
		.RES	152,$00
		.BYTE	$14
		.BYTE	$69 ; i
		.BYTE	$45 ; E
		.BYTE	$A2 ; ¢
		.BYTE	$98 ; 
		.BYTE	$A9 ; ©
		.BYTE	1
		.BYTE	$20
		.BYTE	$6D ; m
		.BYTE	$2E ; .
		.BYTE	$60 ; `
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	3
		.BYTE	3
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE	2
		.BYTE	2
		.BYTE	$AD
		.BYTE	$60
		.BYTE	$19
		.BYTE	$D0
		.BYTE	1
		.RES	1024,$80
		.BYTE	$85
		.BYTE	$14
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$11
		.BYTE	"Cheap Robe",0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.RES	3052,$00
