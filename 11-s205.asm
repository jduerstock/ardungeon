;
; 11-s205.asm - kernel loader for ardungeon
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
		.include	"exp_kernel.inc"
		.include	"globals.inc"
		.include	"macros.inc"

;		.ORG	$8000

		.SEGMENT	"SEG8000"

sub_8000:				; CODE XREF: RAM:807Evp
		LDA	#$40 ; '@'
		STA	AR_POKMSK
		LDA	#0
		STA	IRQEN
		STA	NMIEN
		STA	$22F
		STA	$256
		TAX

loc_8014:				; CODE XREF: sub_8000+17vj
		STA	0,X
		INX
		BNE	loc_8014
		LDA	#7
		STA	$237
		dldi	off_20E, loc_2297
		dldi	off_20C, loc_224F
		dldi	off_20A, loc_21E7
		dldi	off_216, loc_22AC
		dldi	off_208, loc_2653
		dldi	off_254, byte_199D
		dldi	off_222, loc_2347
		JSR	sub_819E
		LDA	byte_258
		ASL	A
		ROL	A
		ROL	A
		AND	#3
		JSR	sub_8158
		LDA	#$40 ; '@'
		STA	NMIEN
		LDA	AR_POKMSK
		STA	IRQEN
		RTS
; End of function sub_8000

; ---------------------------------------------------------------------------
		JSR	sub_8000
		LDA	#$14
		STA	CHBASE
		JSR	sub_80BC
		JSR	sub_809F
		LDA	#0
		JSR	$1A0D
		LDA	#$40 ; '@'
		STA	AR_POKMSK
		STA	IRQEN
		JSR	sub_80D2
		JMP	$2EC6

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_809F:				; CODE XREF: RAM:8089^p
		LDX	#2
		LDA	#0

loc_80A3:				; CODE XREF: sub_809F+Evj
		STA	byte_18C1,X
		STA	byte_18C4,X
		STA	byte_18C7,X
		DEX
		BPL	loc_80A3
		STA	$1F
		STA	$20
		STA	$21
		STA	$25
		STA	$24
		STA	$26
		RTS
; End of function sub_809F


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_80BC:				; CODE XREF: RAM:8086^p
		LDA	#7
		STA	CONSOL_SAVE
		LDA	#0
		STA	$265
		STA	$2E
		STA	$18FF
		STA	$2F
		LDA	#$FF
		STA	$30
		RTS
; End of function sub_80BC


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_80D2:				; CODE XREF: RAM:8099^p
		LDX	#$1F

loc_80D4:				; CODE XREF: sub_80D2+9vj
		LDA	aSystemInitiali,X ; "	  System Initialization	     "
		STA	$197C,X
		DEX
		BPL	loc_80D4
		JSR	$245D

loc_80E0:				; CODE XREF: sub_80D2+39vj
		LDX	#3
		STX	6

loc_80E4:				; CODE XREF: sub_80D2+34vj
		LDX	6
		LDA	#$FF
		STA	$24E,X
		INX
		TXA
		AND	#$F
		ORA	#$30 ; '0'
		STA	SDLST
		JSR	$24A3
		BMI	loc_8104
		LDX	6
		LDA	byte_818A,X
		STA	$1998,X
		INC	$24E,X

loc_8104:				; CODE XREF: sub_80D2+25^j
		DEC	6
		BPL	loc_80E4
		LDA	$24E,X
		BMI	loc_80E0
		LDA	#'1'
		STA	SDLST
		LDA	#4
		STA	6
		dldi	off_9, $0280
		dldi	$2501, $0002

loc_8128:				; CODE XREF: sub_80D2+81vj
		dmv	word_232, $2501

loc_8134:				; CODE XREF: sub_80D2+65vj
		JSR	READSECTOR
		BMI	loc_8134
		LDY	#0

loc_813B:				; CODE XREF: sub_80D2+6Fvj
		LDA	$100,Y
		STA	(off_9),Y
		INY
		BPL	loc_813B
		LDA	off_9
		CLC
		ADC	#$80
		STA	off_9
		BCC	loc_814E
		INC	off_9+1

loc_814E:				; CODE XREF: sub_80D2+78^j
		INC	$2501
		DEC	6
		BNE	loc_8128
		JMP	$27D8
; End of function sub_80D2


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8158:				; CODE XREF: sub_8000+6F^p
		ASL	A
		ASL	A
		TAX
		LDY	#0

loc_815D:				; CODE XREF: sub_8158+Fvj
		LDA	a48k,X		; " 48K"
		STA	aSystemInitiali,Y ; "	  System Initialization	     "
		INX
		INY
		CPY	#4
		BCC	loc_815D
		RTS
; End of function sub_8158

; ---------------------------------------------------------------------------
aSystemInitiali:.BYTE "     System Initialization      " ; DATA XREF: sub_80D2:loc_80D4^r
					; sub_8158+8^w
byte_818A:	.BYTE '1','2','3','4'   ; DATA XREF: sub_80D2+29^r
a48k:		.BYTE " 48K"            ; DATA XREF: sub_8158:loc_815D^r
aqqk:		.BYTE " ??K"
a64k:		.BYTE " 64K"
a128k:		.BYTE "128K"

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_819E:				; CODE XREF: sub_8000+64^p
		SEI
		LDA	#0
		STA	byte_258
		LDA	CONSOL
		CMP	#5		; if select pressed
		BEQ	loc_8221	; skip memory tests
		LDA	#$FE		; try turning off
		STA	PORTB		; the OS ROM
		LDA	$D800		; load an OS location
		TAX			; copy it to X
		INX			; add 1
		STX	$D800		; store it back
		CPX	$D800		; did it change?
		BNE	loc_821C	; no, exit
		DEX			; subtract 1
		CMP	$D800		; test original value
		BEQ	loc_821C	; if the same, exit
		dldi	off_7, $8223	; copy from the end of this block
		dldi	off_9, loc_F900	; to $F900
		ldxy	$700		; copy $700 bytes
		JSR	BLOCKMOVE	; move it!
		LDA	#$80		; set the memory flag
		STA	byte_258	; $80 = 64K machine
		LDA	CONSOL
		CMP	#3		; if option pressed
		BEQ	loc_821C	; skip XE extended RAM test
		LDX	$4000		; load top of XE bank
		STX	4		; save it
		LDA	#$E2		; enable XE bank
		STA	PORTB
		INX			; add 1
		STX	$4000		; save it back
		LDA	#$FE		; disable XE bank
		STA	PORTB
		CPX	$4000		; did it change?
		BNE	loc_8205	; yes, skip restore
		DEX			; no, subtract 1
		STX	$4000		; restore original byte
		JMP	loc_821C	; leave
; ---------------------------------------------------------------------------

loc_8205:				; CODE XREF: sub_819E+5E^j
		LDA	#$E2		; enable XE bank
		STA	PORTB
		DEC	$4000		; subtract 1 from test byte
		LDX	$4000		; load it again
		CPX	4		; test v. saved value
		BNE	loc_821C	; if it's different, bail
		LDA	#$C0		; set 128K bit
		STA	byte_258	; in memory flag
		JSR	loc_F9CF	; perform XE RAM init

loc_821C:				; CODE XREF: sub_819E+1D^j sub_819E+23^j ...
		LDA	#$FE		; turn OS ROM off
		STA	PORTB

loc_8221:				; CODE XREF: sub_819E+B^j
		CLI			; enable interrupts
		RTS
; End of function sub_819E

; ---------------------------------------------------------------------------

		.SEGMENT	"SEGF900"

loc_F900:
		LDA	SEGNO		; load segment number
		CMP	#8		; segments 1-7 are maps
		BCS	loc_F937	; is it a map?
		STA	byte_F9CE	; yes, back it up
		dldi	off_7, SEG_AC00 ; copy from $AC00
		dldi	off_9, $C000	; copy to $C000
		ldxy	$1000		; copy $1000 bytes
		JSR	BLOCKMOVE	; move it
		dldi	off_7, $BC00	; copy from $BC00
		dldi	off_9, $D800	; to $D800
		ldxy	$400		; copy $400 bytes
		BEQ	loc_F94E	; always true; jump to F94E

loc_F937:				; CODE XREF: RAM:8228^j
		STA	byte_F9CD	; it's not a map
		dldi	off_7, $96F0	; copy from $96F0
		dldi	off_9, $DC00	; to $DC00
		ldxy	$1510		; copy $1510 bytes

loc_F94E:				; CODE XREF: RAM:8258^j
		JSR	BLOCKMOVE	; move it
		CLC
		RTS			; return
; ---------------------------------------------------------------------------

loc_F953:
		LDA	SEGNO
		CMP	#8
		BCS	loc_F98C
		CMP	byte_F9CE
		BNE	loc_F9AA
		dldi	off_7, $C000
		dldi	off_9, SEG_AC00
		ldxy	$1000
		JSR	BLOCKMOVE
		dldi	off_7, $D800
		dldi	off_9, $BC00
		ldxy	$400
		BEQ	loc_F9A5

loc_F98C:				; CODE XREF: RAM:F958^j
		CMP	byte_F9CD
		BNE	loc_F9AA
		dldi	off_7, $DC00
		dldi	off_9, $96F0
		ldxy	$1510

loc_F9A5:				; CODE XREF: RAM:F98A^j
		JSR	BLOCKMOVE
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_F9AA:				; CODE XREF: RAM:8280^j	RAM:82B2^j
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_F9AC:
		BIT	NMIST
		BPL	loc_F9B4
		JMP	(off_200)
; ---------------------------------------------------------------------------

loc_F9B4:				; CODE XREF: RAM:82D2^j
		PHA
		LDA	NMIST
		AND	#$20 ; ' '
		BEQ	loc_F9BF
		JMP	$D800
; ---------------------------------------------------------------------------

loc_F9BF:				; CODE XREF: RAM:82DD^j
		TXA
		PHA
		TYA
		PHA
		STA	NMIRES
		JMP	(VVBLKI)
; ---------------------------------------------------------------------------

loc_F9C9:
		CLD
		JMP	(off_216)
; ---------------------------------------------------------------------------

byte_F9CD:	.BYTE	$FF
byte_F9CE:	.BYTE	$FF
; ---------------------------------------------------------------------------

loc_F9CF:
		LDX	#$FF

loc_F9D1:				; CODE XREF: RAM:82F9vj
		TXA			; A = X
		DEX			; subtract 1
		STA	byte_FBA5,X	; save it in $FBA5+X
		BNE	loc_F9D1	; keep going until 0
		STX	$FCA4
		LDX	#0

loc_F9DD:				; CODE XREF: RAM:8307vj
		TXA
		INX
		STA	byte_FBA5+$100,X
		CPX	#$FF
		BNE	loc_F9DD
		LDA	#$FF
		LDX	#$FE

loc_F9EA:				; CODE XREF: RAM:8314vj
		STA	byte_FBA5+$200,X
		STA	byte_FBA5+$300,X
		DEX
		BNE	loc_F9EA
		RTS
; ---------------------------------------------------------------------------

loc_F9F4:
		LDA	#$80
		STA	$25D
		LDY	word_232+1
		STY	$263
		LDA	word_232
		STA	$262
		LSR	A
		BCS	loc_FA1E
		ROL	A
		SEC
		SBC	#1
		STA	$260
		STA	$25E
		TYA
		SBC	#0
		STA	$261
		STA	$25F
		JMP	loc_FA33
; ---------------------------------------------------------------------------

loc_FA1E:				; CODE XREF: RAM:8329^j
		ROL	A
		STA	$25E
		STY	$25F
		ADC	#1
		STA	$260
		BCC	loc_FA2D
		INY

loc_FA2D:				; CODE XREF: RAM:834D^j
		STY	$261
		ASL	$25D

loc_FA33:
		LDX	#0

loc_FA35:				; CODE XREF: RAM:8364vj	RAM:836Fvj
		LDA	byte_FBA5,X
		BEQ	loc_FA78
		TAX
		LDA	byte_FBA5+$200,X
		CMP	$25E
		BNE	loc_FA35
		LDA	$25F
		ORA	$25C
		CMP	byte_FBA5+$300,X
		BNE	loc_FA35
		BIT	$264
		BPL	loc_FA5B
		LDA	#$FF
		STA	byte_FBA5+$300,X
		JMP	loc_FA78
; ---------------------------------------------------------------------------

loc_FA5B:				; CODE XREF: RAM:8374^j
		JSR	sub_FB62
		JSR	sub_FB73
		JSR	sub_FB88
		STA	loc_FA6C+1
		STY	loc_FA6C+2
		LDY	#0

loc_FA6C:				; CODE XREF: RAM:8396vj
		LDA	$FFFF,Y
		STA	$100,Y
		INY
		BPL	loc_FA6C
		JMP	$FB4C
; ---------------------------------------------------------------------------

loc_FA78:				; CODE XREF: RAM:835B^j
		BIT	$25B
		BMI	loc_FAA9
		LDA	word_1903
		STA	word_232
		LDA	word_1903+1
		STA	word_232+1
		LDA	#2
		STA	6

loc_FA8D:				; CODE XREF: RAM:83B7vj
		JSR	READSECTOR
		BPL	loc_FA99
		DEC	6
		BNE	loc_FA8D

loc_FA96:				; CODE XREF: RAM:83C4vj
		JMP	loc_FB0C
; ---------------------------------------------------------------------------

loc_FA99:				; CODE XREF: RAM:83B3^j
		LDX	#3

loc_FA9B:				; CODE XREF: RAM:83C7vj
		LDA	$100,X
		CMP	$1905,X
		BNE	loc_FA96
		DEX
		BPL	loc_FA9B
		DEC	$25B

loc_FAA9:				; CODE XREF: RAM:839E^j
		dmv	word_232, $260
		LDA	#2
		STA	6

loc_FAB9:				; CODE XREF: RAM:83E3vj
		JSR	READSECTOR
		BPL	loc_FAC4
		DEC	6
		BNE	loc_FAB9
		BEQ	loc_FB0C

loc_FAC4:				; CODE XREF: RAM:83DF^j
		LDX	$FDA4
		JSR	sub_FB88
		STY	loc_FAD7+2
		EOR	#$80
		STA	loc_FAD7+1
		LDY	#0

loc_FAD4:				; CODE XREF: RAM:83FEvj
		LDA	$100,Y

loc_FAD7:
		STA	$FFFF,Y
		INY
		BPL	loc_FAD4
		LDA	#$FE
		STA	PORTB
		LDA	#$40
		STA	NMIEN
		CLI
		LDX	$FDA4
		LDA	#$FF
		STA	byte_FBA5+$300,X
		STA	byte_FBA5+$200,X
		dmv	word_232, $262
		LDA	#2
		STA	6

loc_FB03:				; CODE XREF: RAM:842Dvj
		JSR	READSECTOR
		BPL	loc_FB20
		DEC	6
		BNE	loc_FB03

loc_FB0C:				; CODE XREF: RAM:83E5^j
		dmv	word_232, $262
		LDA	#0
		STA	$25B
		LDY	#$FF
		RTS
; ---------------------------------------------------------------------------

loc_FB20:				; CODE XREF: RAM:8429^j
		LDX	$FDA4
		LDA	$25F
		ORA	$25C
		STA	byte_FBA5+$300,X
		LDA	$25E
		STA	byte_FBA5+$200,X
		JSR	sub_FB62
		JSR	sub_FB73
		JSR	sub_FB88
		STA	loc_FB46+1
		STY	loc_FB46+2
		LDY	#0

loc_FB43:				; CODE XREF: RAM:846Dvj
		LDA	$100,Y

loc_FB46:
		STA	$FFFF,Y
		INY
		BPL	loc_FB43
		INC	word_232
		BNE	loc_FB54
		INC	word_232+1

loc_FB54:				; CODE XREF: RAM:8472^j
		LDA	#$FE
		STA	PORTB
		LDA	#$40
		STA	NMIEN
		CLI
		LDY	#1
		RTS
; ---------------------------------------------------------------------------

sub_FB62:
		LDY	byte_FBA5+$100,X
		LDA	byte_FBA5,X
		STA	byte_FBA5,Y
		TAY
		LDA	byte_FBA5+$100,X
		STA	byte_FBA5+$100,Y
		RTS
; ---------------------------------------------------------------------------

sub_FB73:
		LDA	byte_FBA5
		STA	byte_FBA5,X
		STX	byte_FBA5
		TAY
		LDA	byte_FBA5+$100,Y
		STA	byte_FBA5+$100,X
		TXA
		STA	byte_FBA5+$100,Y
		RTS
; ---------------------------------------------------------------------------

sub_FB88:
		SEI
		LDY	#0
		STY	NMIEN
		TXA
		ASL	A
		ROL	A
		ROL	A
		ASL	A
		ASL	A
		AND	#$C
		ORA	#$E2
		STA	PORTB
		TXA
		AND	#$3F ; '?'
		ORA	#$40 ; '@'
		TAY
		LDA	$25D
		RTS
; ---------------------------------------------------------------------------

byte_FBA5:

		.BYTE	2
; ---------------------------------------------------------------------------
		STA	$6283
		JSR	$5835
		BCS	loc_84D4
		JMP	$5209
; ---------------------------------------------------------------------------

loc_84D4:				; CODE XREF: RAM:84CF^j
		JMP	$5225
; ---------------------------------------------------------------------------
		LDX	#0

loc_84D9:				; CODE XREF: RAM:84E3vj
		LDA	$63A2,X
		CMP	#$FF
		BEQ	loc_84E7
		INX
		CPX	#4
		BCC	loc_84D9
		BCS	loc_84EB

loc_84E7:				; CODE XREF: RAM:84DE^j
		TXA
		JMP	$555A
; ---------------------------------------------------------------------------

loc_84EB:				; CODE XREF: RAM:84E5^j
		LDX	#$31 ; '1'
		STX	$5D51
		INX
		STX	$5D67
		INX
		STX	$5D7D
		INX
		STX	$5D93
		JSR	$502E
		dldi	off_193A, $5F85
		dldi	off_1944, $5F3D
		LDX	#3

loc_8515:				; CODE XREF: RAM:851Cvj
		LDA	$63A2,X
		STA	$1946,X
		DEX
		BPL	loc_8515
		JSR	$508C

loc_8521:				; CODE XREF: RAM:852Avj
		JSR	$5049
		BCC	loc_852C
		CMP	#$1B
		BEQ	loc_853A
		BNE	loc_8521

loc_852C:				; CODE XREF: RAM:8524^j
		CLC
		ADC	#6
		STA	$6283
		JSR	$5835
		BCS	loc_853A
		JMP	$5209
; ---------------------------------------------------------------------------

loc_853A:				; CODE XREF: RAM:8528^j	RAM:8535^j
		JMP	$5225
; ---------------------------------------------------------------------------
		DEC	$627F
		LDA	$6398
		BPL	loc_8548
		JMP	$56C1
; ---------------------------------------------------------------------------

loc_8548:				; CODE XREF: RAM:8543^j
		LDA	#4
		LDY	#2
		JSR	$56D7
		LDY	#0
		LDA	(off_41),Y
		AND	#$78
		BEQ	loc_8561
		LDX	#0

loc_8559:				; CODE XREF: RAM:855Fvj
		CMP	$559E,X
		BEQ	loc_8567
		DEX
		BPL	loc_8559

loc_8561:				; CODE XREF: RAM:8555^j
		JSR	$5602
		JMP	$5209
; ---------------------------------------------------------------------------

loc_8567:				; CODE XREF: RAM:855C^j
		LDA	$559F,X
		PHA
		LDA	$55A0,X
		PHA
		RTS
; ---------------------------------------------------------------------------
		PHP
		EOR	$A0,X
		LDY	#0
		LDA	(off_43),Y
		TAX
		ORA	#$80
		STA	$51
		TYA
		STA	$6390,X
		JSR	$55B7
		JSR	$5602
		JMP	$5209
; ---------------------------------------------------------------------------
		dldi	off_3D, $6500
		ldi	$49, $0

loc_8595:				; CODE XREF: RAM:85B3vj
		LDY	#0
		LDA	(off_3D),Y
		AND	#$83
		CMP	$51
		BNE	loc_85A2
		JSR	$4A01

loc_85A2:				; CODE XREF: RAM:859D^j
		LDA	off_3D
		CLC
		ADC	#$10
		STA	off_3D
		BCC	loc_85AD
		INC	off_3D+1

loc_85AD:				; CODE XREF: RAM:85A9^j
		INC	$49
		LDA	$49
		CMP	#$40 ; '@'
		BCC	loc_8595
		LDA	$51
		AND	#3
		CMP	#3
		BNE	locret_85D3
		TAX
		LDA	#0
		STA	$6390,X
		LDX	#0

loc_85C5:				; CODE XREF: RAM:85D1vj
		LDA	#0
		STA	$6350,X
		TXA
		CLC
		ADC	#8
		TAX
		CMP	#$38 ; '8'
		BCC	loc_85C5

locret_85D3:				; CODE XREF: RAM:85BB^j
		RTS
; ---------------------------------------------------------------------------
		CLC
		LDA	#6
		ADC	off_41
		STA	$193C
		STA	off_7
		LDA	#0
		ADC	off_41+1
		STA	$193C+1
		STA	off_7+1
		LDY	#6
		LDA	(off_7),Y
		BNE	loc_85F1
		LDA	#$20 ; ' '
		STA	(off_7),Y

loc_85F1:				; CODE XREF: RAM:85EB^j
		dldi	off_16, $60E8
		LDX	$194A
		JSR	$3C5C
		LDA	#2
		JMP	$2BFC
; ---------------------------------------------------------------------------
		LDY	#0
		LDA	(off_41),Y
		AND	#$78 ; 'x'
		BEQ	loc_8616
		LDX	#0

loc_860E:				; CODE XREF: RAM:8614vj
		CMP	$564F,X
		BEQ	loc_8619
		DEX
		BPL	loc_860E

loc_8616:				; CODE XREF: RAM:860A^j
		JMP	$5209
; ---------------------------------------------------------------------------

loc_8619:				; CODE XREF: RAM:8611^j
		LDA	$5651,X
		PHA
		LDA	$5650,X
		PHA
; ---------------------------------------------------------------------------
		.BYTE $FF
		.WORD $5208
; ---------------------------------------------------------------------------
		RTS
; ---------------------------------------------------------------------------
		AND	#3
		TAX
		LDA	$565F,X
		PHA
		LDA	$5663,X
		PHA
		RTS
; ---------------------------------------------------------------------------
		LSR	$56,X
		LSR	$57,X
		ROR	$A6
		SBC	#$22 ; '"'
		LDA	I_FOOD
		BNE	loc_8641
		JMP	$5774
; ---------------------------------------------------------------------------

loc_8641:				; CODE XREF: RAM:863C^j
		DEC	I_FOOD
		LDA	$6398
		BMI	loc_8663
		LDA	$6399
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	$6054,X
		LDX	#$99
		JSR	$2E43
		LDA	#$1C
		LDX	#$98
		JSR	$2E43
		JMP	$5225
; ---------------------------------------------------------------------------

loc_8663:				; CODE XREF: RAM:8647^j
		dldi	off_16, $5FEF
		LDX	$194A
		JSR	$3C5C
		LDA	#$10
		JSR	$2BFC
		JMP	$5225
; ---------------------------------------------------------------------------
		LDA	$63BC
		BNE	loc_8681
		JMP	$5774
; ---------------------------------------------------------------------------

loc_8681:				; CODE XREF: RAM:867C^j
		DEC	$63BC
		LDA	$6398
		BMI	loc_8693
		LDA	#$10
		LDY	#8
		JSR	$56D7
		JMP	$5225
; ---------------------------------------------------------------------------

loc_8693:				; CODE XREF: RAM:8687^j
		dldi	off_16, $6064
		LDX	$194A
		JSR	$3C5C
		LDA	#$10
		JSR	$2BFC
		JMP	$5225
; ---------------------------------------------------------------------------
		PHA
		TYA
		LDX	#$98
		JSR	$2E43
		PLA
		LDX	#$9A
		JMP	$2E43
; ---------------------------------------------------------------------------

loc_86B6:				; CODE XREF: RAM:86D3vj	RAM:86DAvj
		JSR	$57DC
		JMP	$5225
; ---------------------------------------------------------------------------
		LDA	$63BD
		BNE	loc_86C7
		JMP	$5774
; ---------------------------------------------------------------------------

loc_86C4:				; CODE XREF: RAM:86CAvj
		JMP	$5225
; ---------------------------------------------------------------------------

loc_86C7:				; CODE XREF: RAM:86BF^j
		JSR	$57AB
		BCS	loc_86C4
		ldxy	$6129
		JSR	$4B4D
		BMI	loc_86B6
		LDA	#$88
		JSR	$49B0
		BMI	loc_86B6
		LDY	#2

loc_86DE:				; CODE XREF: RAM:86E6vj
		LDA	$611A,Y
		STA	(off_3D),Y
		INY
		CPY	#$F
		BNE	loc_86DE
		LDA	$4B
		STA	(off_3D),Y
		DEC	$63BD
		INC	$6390
		JMP	$54AF
; ---------------------------------------------------------------------------
		LDA	$63C1
		BEQ	loc_8746
		dldi	off_16, $6161
		JSR	$2E31
		LDA	#$73
		LDX	$6309
		CPX	#1
		BNE	loc_8710
		LDA	#$20

loc_8710:				; CODE XREF: RAM:870C^j
		STA	$6176
		LDA	#1
		CPX	#$A
		BCC	loc_871B
		LDA	#2

loc_871B:				; CODE XREF: RAM:8717^j
		STA	$616E
		LDA	$630A
		LDY	#1
		CMP	#$A
		BCC	loc_8729
		LDY	#2

loc_8729:				; CODE XREF: RAM:8725^j
		STY	$6186
		ASL	A
		TAX
		LDA	$6191,X
		STA	$6187
		LDA	$6192,X
		STA	$6188

loc_873A:				; CODE XREF: RAM:874Evj
		LDX	$194A
		JSR	$3C5C
		JSR	$2BFA
		JMP	$5225
; ---------------------------------------------------------------------------

loc_8746:				; CODE XREF: RAM:86F8^j
		dldi	off_16, $614D
		BNE	loc_873A
		LDA	#0
		STA	$6276
		LDA	#$D0
		STA	$51B0
		dldi	off_193A, $5F2E
		JMP	$51D8
; ---------------------------------------------------------------------------
		CMP	#$80
		BCS	locret_877C
		TAY
		LDA	$644B,Y
		STA	off_9+1
		LDA	$640B,Y
		STA	off_9
		LDY	#2
		LDA	#8
		STA	(off_9),Y

locret_877C:				; CODE XREF: RAM:8769^j
		RTS
; ---------------------------------------------------------------------------

loc_877D:				; CODE XREF: RAM:87A3vj	RAM:87A7vj
		dldi	off_16, $5F96
		LDX	$194A
		JSR	$3C5C

loc_878B:				; CODE XREF: RAM:879Avj
		dldi	off_1977, $57C6
		JMP	$2FF3
; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_878B
		CMP	#$1B
		BEQ	locret_87AD
		SEC
		SBC	#$31 ; '1'
		BCC	loc_877D
		CMP	#2
		BCS	loc_877D
		STA	$6283
		CLC

locret_87AD:				; CODE XREF: RAM:879E^j
		RTS
; ---------------------------------------------------------------------------
		dldi	off_16, $61C1
		LDX	$194A
		JSR	$3C5C
		JMP	$2BFA
; ---------------------------------------------------------------------------
		LDX	I_LOC_Z
		LDA	I_LOC_X
		CLC
		ADC	$628B,X
		STA	$6289
		SEC
		LDA	$6292,X
		SBC	I_LOC_Y
		STA	$628A
		BPL	loc_87DD
		LDA	#$FF
		STA	$6289

loc_87DD:				; CODE XREF: RAM:87D6^j
		dldi	off_16, $6299
		LDX	$194A
		DEC	$18FE
		JSR	$3C5C
		LDA	#0
		STA	$18FE
		JSR	$2BB0
		dldi	off_16, $2007
		LDX	$194A
		JSR	$3C5C
		JMP	$5209
; ---------------------------------------------------------------------------
		LDX	$6283
		LDA	$639C,X
		BMI	loc_8816
		CMP	$4B
		BEQ	loc_8816
		JSR	$5795

loc_8816:				; CODE XREF: RAM:880D^j	RAM:8811^j
		LDA	$4B
		JSR	$4EB4
		PHP
		JSR	$4EA2
		LDA	$4B
		LDX	$6283
		STA	$639C,X
		PLP
		RTS
; ---------------------------------------------------------------------------
		LDX	#0
		STX	$197B
		DEX
		STX	$58C1
		LDA	#$F
		STA	$6284

loc_8837:				; CODE XREF: RAM:887Avj
		LDX	$6284
		LDA	$6494,X
		CMP	#2
		BNE	loc_8877
		LDA	$64C4,X
		CMP	I_LOC_Z
		BNE	loc_8877
		LDA	$64A4,X
		CMP	I_LOC_X
		BNE	loc_8877
		LDA	$64B4,X
		CMP	I_LOC_Y
		BNE	loc_8877
		BIT	$4B
		BPL	loc_8867
		dldi	$59C1, $5E53

loc_8867:				; CODE XREF: RAM:885B^j
		LDX	$6284
		LDA	$64D4,X
		STA	$4B
		STA	$58C1
		JSR	$58C2
		BCS	locret_8892

loc_8877:				; CODE XREF: RAM:883F^j	RAM:8847^j ...
		DEC	$6284
		BPL	loc_8837
		LDA	$58C1
		BPL	locret_8892
		dldi	off_16, $59EE
		LDX	$194A
		JSR	$3C5C
		JSR	$2BB0

locret_8892:				; CODE XREF: RAM:8875^j	RAM:887F^j
		RTS
; ---------------------------------------------------------------------------
		.BYTE	0
; ---------------------------------------------------------------------------
		LDA	$4B
		JSR	$4B74
		LDA	#6
		CLC
		ADC	off_41
		STA	$59C1
		LDA	off_41+1
		ADC	#0
		STA	$59C2
		dldi	$5955, $599B
		LDY	#0
		LDA	(off_41),Y
		AND	#$7F
		BNE	loc_88D6
		LDA	$4B
		JSR	$4EC4
		LDY	#1
		LDA	(off_43),Y
		STA	$59E3
		INY
		LDA	(0),Y
		STA	$59E4
		dldi	$5955, $59AB

loc_88D6:				; CODE XREF: RAM:88B8^j	RAM:8904vj
		dmv	off_16, $5955
		LDX	$194A
		JSR	$3C5C

loc_88E6:				; CODE XREF: RAM:88F5vj
		dldi	off_1977, $5921
		JMP	$2FF3
; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_88E6
		CMP	#$1B
		BEQ	loc_891D+2
		JSR	$2BA5
		CMP	#'N'
		BEQ	loc_891D
		CMP	#'Y'
		BNE	loc_88D6
		LDA	#8
		STA	$1961
		LDY	#0
		LDA	(off_41),Y
		BNE	loc_8917
		JSR	$5957
		JMP	$594B
; ---------------------------------------------------------------------------

loc_8917:				; CODE XREF: RAM:890F^j
		LDY	#2
		LDA	#1
		STA	(off_41),Y

loc_891D:				; CODE XREF: RAM:8900^j	RAM:88F9^j
		.WORD	loc_F9AC
		.WORD	loc_F9AC
		.WORD	loc_F9C9
; ---------------------------------------------------------------------------

		.SEGMENT	"SEG8923"

		AND	#$38 ; '8'
		RTS
; ---------------------------------------------------------------------------
		JSR	$292B
		CLC
		RTS
; ---------------------------------------------------------------------------
		dldi	off_16, $2007
		JSR	$1C88
		RTS
; ---------------------------------------------------------------------------
		LDA	SEGADDR
		STA	off_9
		LDA	SEGADDR+1
		STA	off_9+1
		LDA	word_1903
		STA	word_232
		LDA	word_1903+1
		STA	word_232+1
		LDA	$1907
		STA	$B
		LDA	$1908
		STA	$C
		JSR	$2979
		BMI	loc_8976
		LDX	#$F

loc_895E:				; CODE XREF: RAM:8965vj
		LDA	$100,X
		STA	$180,X
		DEX
		BPL	loc_895E
		LDX	#3

loc_8969:				; CODE XREF: RAM:8972vj
		LDA	$1905,X
		CMP	$180,X
		BNE	loc_8976
		DEX
		BPL	loc_8969
		INX
		RTS
; ---------------------------------------------------------------------------

loc_8976:				; CODE XREF: RAM:895A^j	RAM:896F^j
		LDA	#$FF
		RTS
; ---------------------------------------------------------------------------
		BIT	byte_258
		BVC	loc_8986
		BIT	byte_25A
		BPL	loc_8986
		JMP	$F9F4
; ---------------------------------------------------------------------------

loc_8986:				; CODE XREF: RAM:897C^j	RAM:8981^j
		LDA	#2
		STA	6

loc_898A:				; CODE XREF: RAM:8991vj
		JSR	READSECTOR
		BPL	loc_8995
		DEC	6
		BNE	loc_898A
		BEQ	loc_899D

loc_8995:				; CODE XREF: RAM:898D^j
		INC	word_232
		BNE	loc_899D
		INC	word_232+1

loc_899D:				; CODE XREF: RAM:8993^j	RAM:8998^j
		TYA
		RTS
; ---------------------------------------------------------------------------
		.BYTE	$A8
		MOVEXY	0,1
aPleaseInsertTh:.BYTE	$A5,"Please insert The Dungeon Disk "
		.BYTE	$B2
		.WORD	$1911
		.BYTE	1
		.BYTE	$0D,$0D
		.BYTE	$A5,"Side "
		.BYTE	$B2
		.WORD	$1910
		.BYTE	1
aIntoAnyDrive_:	.BYTE	" into any drive.",$D
		MOVEXY	0,5
aPress:		.BYTE	$A5,"Press "
		BLINK	"SPACE BAR"
aToCon:		.BYTE	" to con"
; end of 'RAM'

		.END
