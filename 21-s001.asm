;
; 21-s001.asm - standalone disk copier
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

		.SEGMENT	"SEG_279D"

off_80	= $80
off_82	= $82
off_84	= $84

;		* =  $279D
byte_279D:	.BYTE $21		; DATA XREF: RAM:279Fvo
		.BYTE 9
		.WORD byte_279D
		.WORD loc_27A3
; ---------------------------------------------------------------------------

loc_27A3:				; DATA XREF: RAM:27A1^o
		LDY	#$FF
		STY	$3F8
		INY
		STY	$244
		STY	$3FA
		ldi	PORTB, $FF
		LDA	#$9D
		STA	off_80
		STA	off_82
		LDA	#$27
		STA	off_80+1
		LDA	#$B7
		STA	off_82+1
		LDX	#5

loc_27C4:				; CODE XREF: RAM:27C9vj	RAM:27D0vj
		LDA	(off_80),Y
		STA	($82),Y
		INY
		BNE	loc_27C4
		INC	off_80+1
		INC	$83
		DEX
		BNE	loc_27C4
		JMP	$B7D7
; ---------------------------------------------------------------------------
		.BYTE	0
		.BYTE	0
; ---------------------------------------------------------------------------

		.SEGMENT	"SEG_B7D7"
;		* =  $B7D7
		dldi	$0002, $B841
		ldi	$0009, $02
		LDX	$E424
		LDY	$E425
		INX
		BNE	loc_B7ED
		INY

loc_B7ED:				; CODE XREF: RAM:B7EA^j
		STX	off_84
		STY	off_84+1
		LDA	#0
		STA	off_80
		STA	off_80+1
		LDA	#1
		STA	$82
		STA	$83
		JMP	$E474

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_B800:				; CODE XREF: sub_B80F+2vp RAM:B850vp
		LDA	#0
		TAX

loc_B803:				; CODE XREF: sub_B800+9vj
		STA	$BC40,X
		INX
		CPX	#$C8 ; '�'
		BNE	loc_B803
		RTS
; End of function sub_B800


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_B80C:				; CODE XREF: RAM:loc_B8C2vp
					; RAM:loc_B941vp ...
		JMP	(off_84)
; End of function sub_B80C


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_B80F:				; CODE XREF: RAM:B93Evp	RAM:B94Avp ...
		STX	$F6
		JSR	sub_B800
		LDA	$F6
		TAX
		ASL	A
		TAY
		LDA	off_BC04,Y
		STA	$F0
		LDA	off_BC04+1,Y
		STA	$F1
		LDY	unk_BC14,X

loc_B826:				; CODE XREF: sub_B80F+1Dvj
		LDA	($F0),Y
		STA	$BC40,Y
		DEY
		BPL	loc_B826
		RTS
; End of function sub_B80F


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_B82F:				; CODE XREF: RAM:B848vp	RAM:B933vp ...
		STA	$2C6
		STA	$2C8
		LDA	#0
		STA	$2C5
		LDA	$14

loc_B83C:				; CODE XREF: sub_B82F+Fvj
		CMP	$14
		BEQ	loc_B83C
		RTS
; End of function sub_B82F

; ---------------------------------------------------------------------------

loc_B841:
		LDA	#'1'
		STA	$300

loc_B846:				; CODE XREF: RAM:BAE7vj
		LDA	#0
		JSR	sub_B82F
		LDA	#$C
		STA	$2C5
		JSR	sub_B800
		LDA	#$4A ; 'J'
		STA	$F2
		LDA	#$BC ; '�'
		STA	$F3
		LDX	#0

loc_B85D:				; CODE XREF: RAM:B884vj
		TXA
		ASL	A
		TAY
		LDA	off_BB3A,Y
		STA	$F0
		LDA	off_BB3A+1,Y
		STA	$F1
		LDY	unk_BB44,X

loc_B86D:				; CODE XREF: RAM:B872vj
		LDA	($F0),Y
		STA	($F2),Y
		DEY
		BPL	loc_B86D
		CLC
		LDA	$F2
		ADC	#$28 ; '('
		STA	$F2
		LDA	$F3
		ADC	#0
		STA	$F3
		INX
		CPX	#5
		BNE	loc_B85D

loc_B886:				; CODE XREF: RAM:B8CFvj
		LDX	#2
		LDA	off_80
		BNE	loc_B894

loc_B88C:				; CODE XREF: RAM:B890vj
		STA	$BC4A,X
		DEX
		BPL	loc_B88C
		BMI	loc_B89D

loc_B894:				; CODE XREF: RAM:B88A^j	RAM:B89Bvj
		LDA	$BB49,X
		STA	$BC4A,X
		DEX
		BPL	loc_B894

loc_B89D:				; CODE XREF: RAM:B892^j	RAM:B8DBvj
		LDX	#2
		LDA	off_80+1
		BNE	loc_B8AB

loc_B8A3:				; CODE XREF: RAM:B8A7vj
		STA	$BC72,X
		DEX
		BPL	loc_B8A3
		BMI	loc_B8B4

loc_B8AB:				; CODE XREF: RAM:B8A1^j	RAM:B8B2vj
		LDA	$BB49,X
		STA	$BC72,X
		DEX
		BPL	loc_B8AB

loc_B8B4:				; CODE XREF: RAM:B8A9^j	RAM:B8E7vj ...
		LDA	$82
		ORA	#$10
		STA	$BCA7
		LDA	$83
		ORA	#$10
		STA	$BCD4

loc_B8C2:				; CODE XREF: RAM:B903vj
		JSR	sub_B80C
		CMP	#$56 ; 'V'
		BNE	loc_B8D1
		LDA	off_80
		EOR	#1
		STA	off_80
		BCS	loc_B886

loc_B8D1:				; CODE XREF: RAM:B8C7^j
		CMP	#$46 ; 'F'
		BNE	loc_B8DD
		LDA	off_80+1
		EOR	#1
		STA	off_80+1
		BCS	loc_B89D

loc_B8DD:				; CODE XREF: RAM:B8D3^j
		CMP	#$53 ; 'S'
		BNE	loc_B8EF
		INC	$82
		LDA	$82
		CMP	#5
		BNE	loc_B8B4
		LDA	#1
		STA	$82
		BNE	loc_B8B4

loc_B8EF:				; CODE XREF: RAM:B8DF^j
		CMP	#$44 ; 'D'
		BNE	loc_B901
		INC	$83
		LDA	$83
		CMP	#5
		BNE	loc_B8B4
		LDA	#1
		STA	$83
		BNE	loc_B8B4

loc_B901:				; CODE XREF: RAM:B8F1^j
		CMP	#$9B ; '�'
		BNE	loc_B8C2
		LDA	#$50 ; 'P'
		LDX	off_80
		BNE	loc_B90D
		LDA	#$57 ; 'W'

loc_B90D:				; CODE XREF: RAM:B909^j
		STA	$86
		LDA	#1
		STA	$87
		STA	$89
		LDA	#0
		STA	$88
		STA	$8A
		STA	$309
		STA	$8F
		LDX	#$59 ; 'Y'
		STX	$8B
		STX	$8D
		LDY	#7
		STY	$8C
		STY	$8E

loc_B92C:				; CODE XREF: RAM:B92Fvj
		STA	$91,X
		DEX
		BPL	loc_B92C

loc_B931:				; CODE XREF: RAM:BACBvj
		LDA	#$C8 ; '�'
		JSR	sub_B82F
		LDA	$82
		CMP	$83
		BNE	loc_B948
		LDX	#0
		JSR	sub_B80F

loc_B941:				; CODE XREF: RAM:B946vj
		JSR	sub_B80C
		CMP	#$9B ; '�'
		BNE	loc_B941

loc_B948:				; CODE XREF: RAM:B93A^j
		LDX	#2
		JSR	sub_B80F
		LDA	$82
		STA	$301
		LDA	#6
		STA	$306
		LDA	#$80 ; '�'
		STA	$308
		dmv	DAUX, $87
		dldi	$304, $400

loc_B970:				; CODE XREF: RAM:B9D3vj
		LDA	#3
		STA	$90

loc_B974:				; CODE XREF: RAM:B985vj
		LDA	#'R'
		STA	$302
		LDA	#$40 ; '@'
		STA	$303
		JSR	$E459
		BPL	loc_B989
		DEC	$90
		BNE	loc_B974
		BEQ	loc_B9BA

loc_B989:				; CODE XREF: RAM:B981^j
		dmv	$F6, $304
		LDY	#$7F ; ''

loc_B995:				; CODE XREF: RAM:B99Avj
		LDA	($F6),Y
		BNE	loc_B99E
		DEY
		BPL	loc_B995
		BMI	loc_B9BA

loc_B99E:				; CODE XREF: RAM:B997^j
		CLC
		LDA	$304
		ADC	#$80 ; '�'
		STA	$304
		LDA	$305
		ADC	#0
		STA	$305
		LDX	$8B
		LDY	$8C
		LDA	$91,X
		ORA	byte_BAEA,Y
		STA	$91,X

loc_B9BA:				; CODE XREF: RAM:B987^j	RAM:B99C^j
		INC	DAUX
		BNE	loc_B9C2
		INC	DAUX+1

loc_B9C2:				; CODE XREF: RAM:B9BD^j
		DEC	$8C
		BPL	loc_B9CE
		LDA	#7
		STA	$8C
		DEC	$8B
		BMI	loc_B9D5

loc_B9CE:				; CODE XREF: RAM:B9C4^j
		LDA	$305
		CMP	#$B8 ; '�'
		BCC	loc_B970

loc_B9D5:				; CODE XREF: RAM:B9CC^j
		LDA	#$46 ; 'F'
		JSR	sub_B82F
		LDA	$82
		CMP	$83
		BNE	loc_B9EC
		LDX	#1
		JSR	sub_B80F

loc_B9E5:				; CODE XREF: RAM:B9EAvj
		JSR	sub_B80C
		CMP	#$9B ; '�'
		BNE	loc_B9E5

loc_B9EC:				; CODE XREF: RAM:B9DE^j
		dmv	$87, DAUX
		LDA	$83
		STA	$301
		LDA	$8F
		BNE	loc_BA3A
		LDA	off_80+1
		BNE	loc_BA3A

loc_BA03:				; CODE XREF: RAM:BA38vj
		LDX	#4
		JSR	sub_B80F
		LDA	#$21 ; '!'
		STA	$302
		LDA	#$40 ; '@'
		STA	$303
		LDA	#0
		STA	DAUX+1
		STA	$304
		LDA	#1
		STA	$305
		STA	DAUX
		LDA	#$E0 ; '�'
		STA	$306
		JSR	$E459
		BPL	loc_BA3A
		LDX	#5
		JSR	sub_B80F

loc_BA31:				; CODE XREF: RAM:BA36vj
		JSR	sub_B80C
		CMP	#$9B ; '�'
		BNE	loc_BA31
		BEQ	loc_BA03

loc_BA3A:				; CODE XREF: RAM:B9FD^j	RAM:BA01^j ...
		LDX	#3
		JSR	sub_B80F
		dldi	$304, $400
		dmv	DAUX, $89

loc_BA53:				; CODE XREF: RAM:BA68vj	RAM:BA70vj ...
		LDX	$8D
		LDY	$8E
		LDA	$91,X
		AND	byte_BAEA,Y
		BNE	loc_BA74
		INC	DAUX
		BNE	loc_BA66
		INC	DAUX+1

loc_BA66:				; CODE XREF: RAM:BA61^j
		DEC	$8E
		BPL	loc_BA53
		LDA	#7
		STA	$8E
		DEC	$8D
		BPL	loc_BA53
		BMI	loc_BACE

loc_BA74:				; CODE XREF: RAM:BA5C^j
		LDA	#3
		STA	$90
		LDA	#6
		STA	$306

loc_BA7D:				; CODE XREF: RAM:BA8Evj
		LDA	$86
		STA	$302
		LDA	#$80 ; '�'
		STA	$303
		JSR	$E459
		BPL	loc_BA93
		DEC	$90
		BNE	loc_BA7D
		JMP	loc_BADB
; ---------------------------------------------------------------------------

loc_BA93:				; CODE XREF: RAM:BA8A^j
		CLC
		LDA	#1
		ADC	DAUX
		STA	DAUX
		STA	$89
		LDA	#0
		ADC	DAUX+1
		STA	DAUX+1
		STA	$8A
		DEC	$8E
		BPL	loc_BAB4
		LDA	#7
		STA	$8E
		DEC	$8D
		BMI	loc_BACE

loc_BAB4:				; CODE XREF: RAM:BAAA^j
		CLC
		LDA	#$80 ; '�'
		ADC	$304
		STA	$304
		LDA	#0
		ADC	$305
		STA	$305
		CMP	#$B8 ; '�'
		BNE	loc_BA53
		INC	$8F
		JMP	loc_B931
; ---------------------------------------------------------------------------

loc_BACE:				; CODE XREF: RAM:BA72^j	RAM:BAB2^j
		LDA	#$A8 ; '�'
		JSR	sub_B82F
		LDX	#6
		JSR	sub_B80F
		JMP	loc_BAE0
; ---------------------------------------------------------------------------

loc_BADB:				; CODE XREF: RAM:BA90^j
		LDX	#7
		JSR	sub_B80F

loc_BAE0:				; CODE XREF: RAM:BAD8^j	RAM:BAE5vj
		JSR	sub_B80C
		CMP	#$9B ; '�'
		BNE	loc_BAE0
		JMP	loc_B846
; ---------------------------------------------------------------------------
byte_BAEA:	.BYTE $80,$40,$20,$10,	8,  4,	2,  1 ;	DATA XREF: RAM:B9B5^r
					; RAM:BA59^r
unk_BAF2:	.BYTE	0		; DATA XREF: RAM:off_BB3Avo
		.BYTE	0
		.BYTE	0
		.BYTE $B6 ; �
		.BYTE $25 ; %
		.BYTE $32 ; 2
		.BYTE $29 ; )
		.BYTE $26 ; &
		.BYTE $39 ; 9
unk_BAFB:	.BYTE	0		; DATA XREF: RAM:BB3Cvo
		.BYTE	0
		.BYTE	0
		.BYTE $A6 ; �
		.BYTE $2F ; /
		.BYTE $32 ; 2
		.BYTE $2D ; -
		.BYTE $21 ; !
		.BYTE $34 ; 4
unk_BB04:	.BYTE $B3 ; �		; DATA XREF: RAM:BB3Evo
		.BYTE $2F ; /
		.BYTE $35 ; 5
		.BYTE $32 ; 2
		.BYTE $23 ; #
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $24 ; $
		.BYTE $32 ; 2
		.BYTE $29 ; )
		.BYTE $36 ; 6
		.BYTE $25 ; %
		.BYTE $1D
		.BYTE $11
unk_BB12:	.BYTE $A4 ; �		; DATA XREF: RAM:BB40vo
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $34 ; 4
		.BYTE $29 ; )
		.BYTE $2E ; .
		.BYTE $21 ; !
		.BYTE $34 ; 4
		.BYTE $29 ; )
		.BYTE $2F ; /
		.BYTE $2E ; .
		.BYTE	0
		.BYTE $24 ; $
		.BYTE $32 ; 2
		.BYTE $29 ; )
		.BYTE $36 ; 6
		.BYTE $25 ; %
		.BYTE $1D
		.BYTE $11
unk_BB25:	.BYTE $30 ; 0		; DATA XREF: RAM:BB42vo
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $B2 ; �
		.BYTE $A5 ; �
		.BYTE $B4 ; �
		.BYTE $B5 ; �
		.BYTE $B2 ; �
		.BYTE $AE ; �
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE $2F ; /
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE $34 ; 4
		.BYTE $21 ; !
		.BYTE $32 ; 2
		.BYTE $34 ; 4
off_BB3A:	.WORD unk_BAF2		; DATA XREF: RAM:B860^r	RAM:B865^r
		.WORD unk_BAFB
		.WORD unk_BB04
		.WORD unk_BB12
		.WORD unk_BB25
unk_BB44:	.BYTE	8		; DATA XREF: RAM:B86A^r
		.BYTE	8
		.BYTE  $D
		.BYTE $12
		.BYTE $14
		.BYTE $2E ; .
		.BYTE $2F ; /
		.BYTE	0
unk_BB4C:	.BYTE $29 ; )		; DATA XREF: RAM:off_BC04vo
		.BYTE $2E ; .
		.BYTE $33 ; 3
		.BYTE $25 ; %
		.BYTE $32 ; 2
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE $2F ; /
		.BYTE $35 ; 5
		.BYTE $32 ; 2
		.BYTE $23 ; #
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $24 ; $
		.BYTE $29 ; )
		.BYTE $33 ; 3
		.BYTE $2B ; +
		.BYTE  $C
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $B2 ; �
		.BYTE $A5 ; �
		.BYTE $B4 ; �
		.BYTE $B5 ; �
		.BYTE $B2 ; �
		.BYTE $AE ; �
unk_BB6C:	.BYTE $29 ; )		; DATA XREF: RAM:BC06vo
		.BYTE $2E ; .
		.BYTE $33 ; 3
		.BYTE $25 ; %
		.BYTE $32 ; 2
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE $24 ; $
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $34 ; 4
		.BYTE $29 ; )
		.BYTE $2E ; .
		.BYTE $21 ; !
		.BYTE $34 ; 4
		.BYTE $29 ; )
		.BYTE $2F ; /
		.BYTE $2E ; .
		.BYTE	0
		.BYTE $24 ; $
		.BYTE $29 ; )
		.BYTE $33 ; 3
		.BYTE $2B ; +
		.BYTE  $C
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $B2 ; �
		.BYTE $A5 ; �
		.BYTE $B4 ; �
		.BYTE $B5 ; �
		.BYTE $B2 ; �
		.BYTE $AE ; �
unk_BB91:	.BYTE $32 ; 2		; DATA XREF: RAM:BC08vo
		.BYTE $25 ; %
		.BYTE $21 ; !
		.BYTE $24 ; $
		.BYTE $29 ; )
		.BYTE $2E ; .
		.BYTE $27 ; '
unk_BB98:	.BYTE $37 ; 7		; DATA XREF: RAM:BC0Avo
		.BYTE $32 ; 2
		.BYTE $29 ; )
		.BYTE $34 ; 4
		.BYTE $29 ; )
		.BYTE $2E ; .
		.BYTE $27 ; '
unk_BB9F:	.BYTE $26 ; &		; DATA XREF: RAM:BC0Cvo
		.BYTE $2F ; /
		.BYTE $32 ; 2
		.BYTE $2D ; -
		.BYTE $21 ; !
		.BYTE $34 ; 4
		.BYTE $34 ; 4
		.BYTE $29 ; )
		.BYTE $2E ; .
		.BYTE $27 ; '
unk_BBA9:	.BYTE $26 ; &		; DATA XREF: RAM:BC0Evo
		.BYTE $2F ; /
		.BYTE $32 ; 2
		.BYTE $2D ; -
		.BYTE $21 ; !
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE $25 ; %
		.BYTE $32 ; 2
		.BYTE $32 ; 2
		.BYTE $2F ; /
		.BYTE $32 ; 2
		.BYTE  $E
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $B2 ; �
		.BYTE $A5 ; �
		.BYTE $B4 ; �
		.BYTE $B5 ; �
		.BYTE $B2 ; �
		.BYTE $AE ; �
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE $2F ; /
		.BYTE	0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $34 ; 4
		.BYTE $32 ; 2
		.BYTE $39 ; 9
		.BYTE  $E
unk_BBCE:	.BYTE $24 ; $		; DATA XREF: RAM:BC10vo
		.BYTE $2F ; /
		.BYTE $2E ; .
		.BYTE $25 ; %
		.BYTE  $E
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $B2 ; �
		.BYTE $A5 ; �
		.BYTE $B4 ; �
		.BYTE $B5 ; �
		.BYTE $B2 ; �
		.BYTE $AE ; �
unk_BBE0:	.BYTE $37 ; 7		; DATA XREF: RAM:BC12vo
		.BYTE $32 ; 2
		.BYTE $29 ; )
		.BYTE $34 ; 4
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $25 ; %
		.BYTE $32 ; 2
		.BYTE $32 ; 2
		.BYTE $2F ; /
		.BYTE $32 ; 2
		.BYTE  $E
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $B2 ; �
		.BYTE $A5 ; �
		.BYTE $B4 ; �
		.BYTE $B5 ; �
		.BYTE $B2 ; �
		.BYTE $AE ; �
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE $2F ; /
		.BYTE	0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $34 ; 4
		.BYTE $21 ; !
		.BYTE $32 ; 2
		.BYTE $34 ; 4
off_BC04:	.WORD unk_BB4C		; DATA XREF: sub_B80F+A^r sub_B80F+F^r
		.WORD unk_BB6C
		.WORD unk_BB91
		.WORD unk_BB98
		.WORD unk_BB9F
		.WORD unk_BBA9
		.WORD unk_BBCE
		.WORD unk_BBE0
unk_BC14:	.BYTE $1F		; DATA XREF: sub_B80F+14^r
		.BYTE $24 ; $
		.BYTE	6
		.BYTE	6
		.BYTE	9
		.BYTE $24 ; $
		.BYTE $11
		.BYTE $23 ; #
		.BYTE	0
; end of 'RAM'


		.END
