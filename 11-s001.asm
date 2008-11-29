;
; 11-s001.asm - boot sector for ardungeon
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
		.INCLUDE "equates.inc"
		.INCLUDE "macros.inc"

loc_B000	= $B000

		.SEGMENT	"BOOTSTRAP"
;		.ORG	$600
byte_600:	.BYTE	1
		.BYTE	1
		.WORD	byte_600
		.WORD	loc_606
; ---------------------------------------------------------------------------
loc_606:
		dldi	SDLST, byte_640
		LDA	RTCLOK+2

loc_612:
		CMP	RTCLOK+2
		BEQ	loc_612
		LDA	PORTB
		ORA	#2
		STA	PORTB
		LDA	#16
		STA	DAUX
		LDA	#0
		STA	COLOR2
		STA	SOUNDR
		STA	DBUF
		LDA	#>loc_B000
		STA	DBUF+1

loc_632:
		JSR	DSKINV
		BMI	loc_632
		LDA	byte_600
		STA	loc_B000-1
		JMP	loc_B000
; ---------------------------------------------------------------------------
byte_640:	.BYTE	ANTIC_BLANK8
		.BYTE	ANTIC_JMP_WVBLANK
		.WORD	byte_640
		.BYTE	$9B
aAhoyPiratesCha:.BYTE	"Ahoy pirates!  Change the first byte in this sector "
		.BYTE	"to a 0."
