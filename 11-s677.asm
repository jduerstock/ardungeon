;
; 11-s677.asm - copy protection check
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

loc_9000:
		JSR	$1827
		LDA	#$C
		STA	$6320
		STA	$195B
		LDA	#0
		TAX

loc_900E:
		STA	unk_90BE,X
		STA	$91BE,X
		INX
		BNE	loc_900E
		STX	word_232
		INX
		STX	word_232+1
		dldi	off_9, unk_90BE
		LDA	#3
		STA	6

loc_902A:
		LDX	#8

loc_902C:
		STA	$100,X
		DEX
		BPL	loc_902C

loc_9032:
		JSR	j_READSECTOR

.ifndef		CRACKED

		BPL	loc_9044
		LDX	#8

loc_9039:
		LDA	unk_906B,X
		CMP	$100,X
		BNE	loc_9032
		DEX
		BPL	loc_9039

.else

		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		INC	word_232
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		
.endif

loc_9044:
		LDY	#0

loc_9046:
		LDA	$100,Y
		STA	(off_9),Y
		INY
		BPL	loc_9046
		LDA	off_9
		CLC
		ADC	#$80
		STA	off_9
		BCC	loc_9059
		INC	off_9+1

loc_9059:
		DEC	6
		BNE	loc_902A
		LDX	#$7F

loc_905F:
		LDA	loc_9074,X
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

loc_9074:				; DATA XREF: RAM:loc_905F^r
		LDX	#$7F

loc_9076:				; CODE XREF: RAM:loc_907Fvj
		LDA	unk_90BE,X
		CMP	$913E,X
		BNE	loc_9083
		DEX

loc_907F:				; DATA XREF: RAM:90B2vw
		BPL	loc_9076
		BMI	loc_90AC

loc_9083:				; CODE XREF: RAM:907C^j
		LDX	#$7F

loc_9085:				; CODE XREF: RAM:908Evj
		LDA	$913E,X
		CMP	$91BE,X
		BNE	loc_9092
		DEX
		BPL	loc_9085
		BMI	loc_90AC

loc_9092:				; CODE XREF: RAM:908B^j
		LDX	#$7F

loc_9094:				; CODE XREF: RAM:909Dvj
		LDA	unk_90BE,X
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
unk_90BE:	.RES	66,0

		.END


