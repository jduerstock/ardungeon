;
; 32-s695.asm - trailing garbage for disk 3 side 2
;
; Copyright (c) 2008 Jason Duerstock
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

;	I don't believe this data is used for anything; it is just included
;	to ensure the correct hash is produced for the full disk image

	.SEGMENT "CRUFT_32"

		.BYTE	$81,$8d,$02,$11,$c4,$12,$a4,$f2,$86,$99,$49,$a8,$2c,$b9,$43,$d5
		.BYTE	$a4,$0d,$7e,$00,$d2,$04,$a4,$99,$be,$d4,$64,$51,$06,$b7,$6b,$42
		.BYTE	$34,$42,$31,$57,$ca,$12,$4e,$00,$67,$5f,$e3,$66,$dc,$7b,$03,$d5
		.BYTE	$a4,$8e,$d9,$f3,$10,$1e,$ea,$c2,$6f,$95,$80,$4d,$67,$1f,$09,$67
		.BYTE	$5b,$1e,$06,$69,$d4,$7a,$35,$05,$0e,$07,$4c,$bd,$37,$77,$c9,$3f
		.BYTE	$1b,$6a,$0b,$e5,$66,$2b,$90,$db,$80,$ae,$74,$9d,$23,$37,$d3,$05
		.BYTE	$ac,$6f,$e2,$fd,$1e,$c8,$66,$99,$f7,$10,$ac,$83,$d9,$28,$06,$5a
		.BYTE	$a2,$59,$02,$0a,$06,$1b,$1a,$c2,$6e,$36,$b3,$53,$e6,$5e,$d9,$54
		.BYTE	$d5,$18,$37,$59,$3d,$0c,$37,$34,$3c,$0f,$dd,$55,$16,$ce,$16,$73
		.BYTE	$ff,$5e,$45,$02,$06,$c2,$18,$04,$4f,$f8,$86,$8d,$0a,$42,$7d,$4a
		.BYTE	$97,$5f,$a5,$9f,$1d,$ca,$f5,$50,$67,$ec,$6a,$07,$67,$79,$33,$b7
		.BYTE	$9c,$8d,$40,$01,$ca,$44,$7d,$be,$64,$f8,$4f,$7c,$2c,$af,$43,$60
		.BYTE	$83,$e4,$70,$25,$9c,$19,$20,$85,$3e,$5e,$9d,$4f,$27,$f3,$0b,$46
		.BYTE	$09,$0c,$01,$31,$13,$10,$ad,$d4,$58,$b6,$f5,$53,$86,$48,$43,$c4
		.BYTE	$83,$6f,$d2,$08,$06,$6f,$1a,$ea,$37,$22,$a6,$1c,$08,$2d,$16,$6b
		.BYTE	$cc,$df,$79,$5a,$12,$44,$0d,$be,$5f,$ef,$6e,$77,$c8,$43,$2c,$11
		.BYTE	$e7,$b0,$3b,$0a,$98,$5c,$c2,$aa,$6d,$a8,$d0,$91,$9a,$36,$17,$e5
		.BYTE	$ee,$24,$58,$25,$06,$5f,$1a,$6c,$3f,$22,$ac,$c7,$a7,$79,$99,$56
		.BYTE	$d7,$27,$2f,$31,$6d,$10,$ad,$d4,$58,$8c,$a3,$5d,$2d,$05,$06,$7f
		.BYTE	$fc,$70,$c0,$0a,$39,$37,$25,$f8,$fc,$dc,$af,$40,$a7,$ce,$fa,$44
		.BYTE	$ac,$89,$5b,$a1,$84,$f8,$a3,$b4,$38,$ca,$62,$4d,$16,$67,$0b,$77
		.BYTE	$9f,$6c,$33,$0a,$3d,$0c,$06,$a2,$5c,$3e,$a8,$49,$12,$63,$0d,$05
		.BYTE	$d1,$22,$7d,$4b,$ba,$b4,$a8,$38,$e4,$a8,$86,$3d,$a4,$f1,$bf,$05
		.BYTE	$e3,$f8,$e9,$c1,$dc,$7f,$ec,$42,$a0,$dc,$74,$a5,$d4,$16,$eb,$99
		.RES	2944,$00
