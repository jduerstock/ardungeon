;
; 11-s680.asm - copy protection check at during character save
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

		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;		.ORG	$9000

loc_9000:				; DATA XREF: RAM:loc_90AFvw
		JSR	$1827
		LDA	#$C
		STA	$6320
		STA	$195B
		LDA	#0
		TAX

loc_900E:				; CODE XREF: RAM:9015vj
		STA	byte_90BE,X
		STA	$91BE,X
		INX
		BNE	loc_900E
		STX	word_232
		INX
		STX	word_232+1
		dldi	off_9, $90BE
		LDA	#3
		STA	6

loc_902A:				; CODE XREF: RAM:905Bvj
		LDX	#8

loc_902C:				; CODE XREF: RAM:9030vj
		STA	$100,X
		DEX
		BPL	loc_902C

loc_9032:				; CODE XREF: RAM:903Fvj
		JSR	j_READSECTOR
		BPL	loc_9044
		LDX	#8

loc_9039:				; CODE XREF: RAM:9042vj
		LDA	unk_906B,X
		CMP	$100,X
		BNE	loc_9032
		DEX
		BPL	loc_9039

loc_9044:				; CODE XREF: RAM:9035^j
		LDY	#0

loc_9046:				; CODE XREF: RAM:904Cvj
		LDA	$100,Y
		STA	(9),Y
		INY
		BPL	loc_9046
		LDA	9
		CLC
		ADC	#$80 ; '€'
		STA	9
		BCC	loc_9059
		INC	$A

loc_9059:				; CODE XREF: RAM:9055^j
		DEC	6
		BNE	loc_902A
		LDX	#$7F ; ''

loc_905F:				; CODE XREF: RAM:9066vj
		LDA	$9074,X
		STA	$100,X
		DEX
		BPL	loc_905F
		JMP	$100
; ---------------------------------------------------------------------------
unk_906B:	.BYTE $28 ; (		; DATA XREF: RAM:loc_9039^r
		.BYTE $29 ; )
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE $28 ; (
		.BYTE $25 ; %
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE	1
; ---------------------------------------------------------------------------
		LDX	#$7F ; ''

loc_9076:				; CODE XREF: RAM:loc_907Fvj
		LDA	byte_90BE,X
		CMP	$913E,X
		BNE	loc_9083
		DEX

loc_907F:				; DATA XREF: RAM:90B2vw
		BPL	loc_9076
		BMI	loc_90AC

loc_9083:				; CODE XREF: RAM:907C^j
		LDX	#$7F ; ''

loc_9085:				; CODE XREF: RAM:908Evj
		LDA	$913E,X
		CMP	$91BE,X
		BNE	loc_9092
		DEX
		BPL	loc_9085
		BMI	loc_90AC

loc_9092:				; CODE XREF: RAM:908B^j
		LDX	#$7F ; ''

loc_9094:				; CODE XREF: RAM:909Dvj
		LDA	byte_90BE,X
		CMP	$91BE,X
		BNE	loc_90A1
		DEX
		BPL	loc_9094
		BMI	loc_90AC

loc_90A1:				; CODE XREF: RAM:909A^j
		LDX	#$FF
		STX	$265
		STX	$6320
		STX	$195B

loc_90AC:				; CODE XREF: RAM:9081^j	RAM:9090^j ...
		LDA	#0
		TAX

loc_90AF:				; CODE XREF: RAM:90B9vj
		STA	loc_9000,X
		STA	loc_907F+1,X
		STA	$9100,X
		INX
		BNE	loc_90AF
		JMP	$1830
; ---------------------------------------------------------------------------
byte_90BE:	.BYTE	0,  0,	0,  0,	0,  0,	0,  0 ;	DATA XREF: RAM:loc_900E^w
					; RAM:loc_9076^r ...
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
; end of 'RAM'


		.END
