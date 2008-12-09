;
; 21-s011.asm - map section 1 (northwest corner of level 1)
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
		.BYTE	0
		.WORD asc_AC47		; "toast! LEV 1.1"
		HBStr	"in the "	; $80
		HBStr	"in a "		; $81
		HBStr	"at the "	; $82
		HBStr	" room."	; $83
		HBStr	"ungeon "	; $84
		HBStr	"corridor."	; $85
		HBStr	" Acrinimiril"	; $86
		HBStr	"Goblin"	; $87
		HBStr	"Chapel"	; $88
		HBStr	"in "		; $89
asc_AC47:	.BYTE	"toast! LEV 1.1",0 ; DATA XREF: RAM:AC01^o
		.BYTE	"in The City's sewer system.",$00
		.BYTE	$89,"Gram's Gold Exchange vault.",$00
		.BYTE	$81,$85,$00
		.BYTE	$81,"hallway.",$00
		.BYTE	$81,"passage.",$00
		.BYTE	$81,"long ",$85,$00
		.BYTE	$81,"typical d",$84,$85,$00
		.BYTE	$80,$87,"s' demesne.",$00
		.BYTE	$82,$87," king's palace.",$00
		.BYTE	"by a stairway leading down.",$00
		.BYTE	"inside The Loop.",$00
		.BYTE	$81,"mausoleum.",$00
		.BYTE	"by",$86,"'s tomb.",$00
		.BYTE	$80,"tomb of",$86,".",$00
		.BYTE	$81,"nondescript",$83,$00
		.BYTE	$81,"small",$83,$00
		.BYTE	$80,"Exit",$83,$00
		.BYTE	$81,"small area.",$00
		.BYTE	$80,"D",$84,$88,".",$00
		.BYTE	$80,$88," Sanctuary.",$00
		.BYTE	"in yet another small",$83,$00
		.BYTE	$81,"large",$83,$00
		.BYTE	$81,"room with three doors.",$00
		.BYTE	$81,"dim passage.",0
		.BYTE	"in the Chapel garden.",0
		.BYTE	"in an open area.",0
		.BYTE	$81,"charred barracks",$83,$00
		.BYTE	"in an empty officers' quarters.",$00
		.BYTE	"in an old storage",$83,$00
		.BYTE	$81,"dead-end passage.",$00
		.BYTE	$81,"debris-filled",$83,$00
		.BYTE	$81,$87,"'s",$83,$00
		.BYTE	$80,"reject",$83,$00
		.BYTE	"at a stairway leading down.",$00
		.BYTE	$81,"room with four doors.",$00
		.REPEAT 64
			.BYTE $FF,$00
		.ENDREPEAT
		.BYTE $FF
		.BYTE	8
		.BYTE	0
		.BYTE $20
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $20
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE $1C
		.BYTE	1
		.BYTE	1
		.BYTE	9
		.BYTE	5
		.BYTE $10
		.BYTE	1
		.BYTE	2
		.BYTE  $D
		.BYTE	6
		.BYTE $10
		.BYTE	5
		.BYTE	2
		.BYTE $19
		.BYTE $20
		.BYTE $1E
		.BYTE $1B
		.BYTE	3
		.BYTE  $D
		.BYTE $12
		.BYTE $15
		.BYTE	8
		.BYTE	4
		.BYTE	1
		.BYTE $20
		.BYTE  $B
		.BYTE $11
		.BYTE	5
		.BYTE	1
		.BYTE	5
		.BYTE	9
		.BYTE	1
		.BYTE	6
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
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE	4
		.BYTE	6
		.BYTE	1
		.BYTE $7A ; z
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	8
		.BYTE $22 ; "
		.BYTE $C0 ; ¿
		.BYTE	4
		.BYTE $82 ; Ç
		.BYTE	0
		.BYTE $54 ; T
		.BYTE  $E
		.BYTE $7A ; z
		.BYTE	6
		.BYTE	2
		.BYTE	5
		.BYTE $8D ; ç
		.BYTE	0
		.BYTE $F8 ; ¯
		.BYTE $22 ; "
		.BYTE $1A
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE	1
		.BYTE $85 ; Ö
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE	4
		.BYTE	6
		.BYTE	1
		.BYTE $89 ; â
		.BYTE	1
		.BYTE  $A
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	2
		.BYTE	4
		.BYTE	1
		.BYTE $8F ; è
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	4
		.BYTE $30 ; 0
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
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE $1D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $13
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
		.BYTE $1D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $1D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE	3
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
		.BYTE $1D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
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
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE	1
		.BYTE $F1 ; Ò
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $18
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE  $D
		.BYTE $18
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $18
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $1E
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE $10
		.BYTE $B5 ; µ
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $12
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $D1 ; —
		.BYTE $10
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $12
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $12
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE $10
		.BYTE $B9 ; π
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE  $F
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $F
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE $11
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE	0
		.BYTE $93 ; ì
		.BYTE	0
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE $3D ; =
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
		.BYTE  $D
		.BYTE  $D
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
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE $1D
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1D
		.BYTE $B0 ; ∞
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE $18
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $5D ; ]
		.BYTE	2
		.BYTE	6
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $18
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1E
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE $12
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $12
		.BYTE	0
		.BYTE	1
		.BYTE  $D
		.BYTE $12
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $12
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE $12
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $F
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1D
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $1D
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $D0 ; –
		.BYTE $18
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $89 ; â
		.BYTE $18
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $18
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D3 ; ”
		.BYTE $1E
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE $10
		.BYTE $60 ; `
		.BYTE	3
		.BYTE  $D
		.BYTE $10
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $10
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE $60 ; `
		.BYTE $D3 ; ”
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D3 ; ”
		.BYTE	5
		.BYTE	0
		.BYTE	9
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
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
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE $60 ; `
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $1A
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE $15
		.BYTE $BC ; º
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	3
		.BYTE $D3 ; ”
		.BYTE	4
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE $10
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	3
		.BYTE $10
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
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
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE	0
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
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D3 ; ”
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $10
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $D0 ; –
		.BYTE $18
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
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
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1A
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
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D1 ; —
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE $D3 ; ”
		.BYTE $18
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $18
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
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
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
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
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $D3 ; ”
		.BYTE	5
		.BYTE $D2 ; “
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $19
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	5
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $50 ; P
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
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
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE $13
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $13
		.BYTE  $A
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $13
		.BYTE  $A
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $19
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $3D ; =
		.BYTE $14
		.BYTE  $A
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	5
		.BYTE $DD ; ›
		.BYTE	8
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE $20
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
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
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
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
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $13
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $13
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	8
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE $20
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE $13
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $13
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $13
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
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
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $DD ; ›
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	8
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE $20
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
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
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
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
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
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
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
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
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $5D ; ]
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	8
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE $1D
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
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
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
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
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	9
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	9
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	8
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $1E
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
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
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	9
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	9
		.BYTE	7
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $1D
		.BYTE $3D ; =
		.BYTE	5
		.BYTE $CB ; À
		.BYTE $D0 ; –
		.BYTE $10
		.BYTE	5
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
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
		.BYTE $D0 ; –
		.BYTE $D1 ; —
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	8
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	8
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	6
		.BYTE $B3 ; ≥
		.BYTE	0
		.BYTE $D0 ; –
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
		.BYTE $D1 ; —
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $1E
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	5
		.BYTE  $D
		.BYTE $18
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	5
		.BYTE $18
		.BYTE	0
		.BYTE $1D
		.BYTE $D3 ; ”
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $1D
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
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
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $1C
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1C
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE $22 ; "
		.BYTE	5
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
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
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1C
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1C
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $50 ; P
		.BYTE $18
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
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
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $18
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
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
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	5
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $18
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $18
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $18
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $18
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $18
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $18
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $5D ; ]
		.BYTE $18
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $18
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	5
		.BYTE $18
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $D3 ; ”
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $3D ; =
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $1E
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $E0 ; ‡
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $E4 ; ‰
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $E5 ; Â
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $E5 ; Â
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $E6 ; Ê
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $E2 ; ‚
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $D1 ; —
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $50 ; P
		.BYTE $1F
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1F
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE $1D
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	3
		.BYTE $1D
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE $1D
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	3
		.BYTE $1D
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE $17
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE $17
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE  $D
		.BYTE $17
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE	0
		.BYTE  $D
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $E7 ; Á
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	5
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $1F
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE $1F
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
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
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $D3 ; ”
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D3 ; ”
		.BYTE  $C
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE  $C
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE  $F
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $F
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE  $C
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE  $C
		.BYTE	0
		.BYTE $8D ; ç
		.BYTE $D0 ; –
		.BYTE $10
		.BYTE	0
		.BYTE  $D
		.BYTE $8D ; ç
		.BYTE $10
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE  $D
		.BYTE $10
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $DD ; ›
		.BYTE  $F
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	5
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE $10
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	7
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $E1 ; ·
		.BYTE $DD ; ›
		.BYTE $30 ; 0
		.BYTE $17
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $D0 ; –
		.BYTE $17
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $E3 ; „
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE  $C
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $DD ; ›
		.BYTE $10
		.BYTE	0
		.BYTE  $D
		.BYTE $A0 ; †
		.BYTE  $D
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE $10
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $1D
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	3
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE	4
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1F
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1F
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE $BA ; ∫
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1D
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1D
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $E5 ; Â
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE $17
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE $17
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $E1 ; ·
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $8D ; ç
		.BYTE  $D
		.BYTE	4
		.BYTE $D8 ; ÿ
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE  $C
		.BYTE	0
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE  $C
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $9D ; ù
		.BYTE  $C
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE  $E
		.BYTE	8
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE $60 ; `
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE $10
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE $10
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE $D3 ; ”
		.BYTE $17
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1F
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $1F
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $F
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1D
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $1D
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $E2 ; ‚
		.BYTE $D0 ; –
		.BYTE $3D ; =
		.BYTE $17
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $DD ; ›
		.BYTE $17
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $E5 ; Â
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $50 ; P
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE  $C
		.BYTE	0
		.BYTE $AD ; ≠
		.BYTE $D0 ; –
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $AD ; ≠
		.BYTE  $D
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $1E
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE	0
		.BYTE	4
		.BYTE $60 ; `
		.BYTE	3
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	7
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE	7
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE	7
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE	3
		.BYTE	7
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE	7
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE	3
		.BYTE	7
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE	7
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $E0 ; ‡
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $E1 ; ·
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $E5 ; Â
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE  $C
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $DD ; ›
		.BYTE $10
		.BYTE	0
		.BYTE  $D
		.BYTE $8D ; ç
		.BYTE $10
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	3
		.BYTE $10
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D3 ; ”
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1E
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE $60 ; `
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE $60 ; `
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1D
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $1D
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE  $F
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1D
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $1D
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE	3
		.BYTE $5D ; ]
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	5
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE  $C
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE $10
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	5
		.BYTE $10
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE $EF ; Ô
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1D
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1D
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $F
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1D
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1D
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	7
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	7
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	7
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	7
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE	7
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE $10
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE  $D
		.BYTE	5
		.BYTE	0
