;
; 11-s016.asm - stage two of boot loader for ardungeon
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
		.include	"equates.inc"
		.include	"macros.inc"

		.SEGMENT	"BOOTCONT"
byte_600	= $600
loc_2000	= $2000
byte_BD80	= $BD80

;		.ORG	$B000
loc_B000:
		LDX	loc_B000-1
		LDA	byte_B043,X
		STA	DAUX
		dldi	DBUF, byte_BD80
		LDA	#5
		STA	$80
		JSR	sub_B045
		dldi	SDLST, byte_B060
		LDA	$14

loc_B026:				; CODE XREF: RAM:B028vj
		CMP	$14
		BEQ	loc_B026
		LDA	#17
		STA	DAUX
		dldi	DBUF, byte_600
		LDA	#188
		STA	$80
		JSR	sub_B045
		JMP	$2000
; ---------------------------------------------------------------------------
byte_B043:	.BYTE 11		; DATA XREF: RAM:B003^r
		.BYTE 6

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_B045:				; CODE XREF: RAM:B017^p	RAM:B03D^p ...
		JSR	DSKINV
		BMI	sub_B045
		CLC
		LDA	DBUF
		ADC	#128
		STA	DBUF
		BCC	loc_B058
		INC	DBUF+1

loc_B058:				; CODE XREF: sub_B045+E^j
		INC	DAUX
		DEC	$80
		BNE	sub_B045
		RTS
; End of function sub_B045

; ---------------------------------------------------------------------------
byte_B060:	.BYTE $70		; DATA XREF: RAM:B07Dvo
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $42
		.WORD byte_BD80
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE $70 ; p
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE $70 ; p
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE $70 ; p
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE $41
		.WORD byte_B060
		.BYTE	0
; end of 'RAM'


		.END
