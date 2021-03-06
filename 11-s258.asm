;
; 11-s258.asm - game main menu
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

off_65	= $65

	.SEGMENT "SEG_19_KEY"

		.BYTE	$41,$02,$00,$1A,$98,$32,$77,$DD
		.BYTE	$D6,$48,$43,$AC,$BA,$F7,$D0,$40
		.BYTE	$FE,$0D,$EA,$E8,$BE,$AF,$97,$69
		.BYTE	$98,$19,$0C,$27,$0D,$75,$75,$30
		.BYTE	$F0,$1E,$00,$42,$02,$50,$6B,$FB
		.BYTE	$A6,$9F,$57,$F6,$34,$15,$61,$93
		.BYTE	$F9,$4F,$43,$B9,$60,$A5,$8F,$7A
		.BYTE	$CD,$58,$A9,$86,$BD,$C6,$21,$A6
		.BYTE	$67,$D8,$72,$CD,$20,$F1,$74,$7B
		.BYTE	$17,$77,$8F,$1F,$CF,$F3,$73,$E1
		.BYTE	$F9,$C7,$48,$94,$50,$2C,$69,$10
		.BYTE	$7B,$7C,$82,$B5,$C7,$88,$40,$99
		.BYTE	$AF,$DA,$75,$53,$4E,$24,$33,$17
		.BYTE	$81,$ED,$96,$E4,$60,$F3,$26,$24
		.BYTE	$E3,$09,$E7,$84,$6A,$08,$05,$AE
		.BYTE	$AB,$B0,$EE,$B9,$97,$53,$4F,$5A

	.SEGMENT "SEG_19"

		LDA	#0
		JSR	$180F
		dldi	off_16, $8904
		JSR	$1818
		LDA	#$FF
		STA	$195B
		STA	$32
		STA	byte_F
		STA	$1975
		STA	$631F
		STA	$1912
		STA	$1935
		STA	$1938
		STA	$1939
		STA	SEG_AC00
		STA	$194B
		BIT	$265
		BMI	loc_764B
		ldi	SEGNO, $3D
		dldi	SEGADDR, $9000
		JSR	j_SEGLOAD
		JSR	$9000

loc_764B:				; CODE XREF: RAM:7634^j
		ldi	SEGNO, $2A
		dldi	SEGADDR, $9800
		JSR	j_SEGLOAD

loc_765D:				; CODE XREF: RAM:loc_7AC4vj
		ldi	SEGNO, $3B
		dldi	SEGADDR, SEG_6300
		JSR	j_SEGLOAD
		LDA	#0
		TAX

loc_7672:				; CODE XREF: RAM:7676vj
		STA	$7500,X
		DEX
		BNE	loc_7672

loc_7678:				; CODE XREF: RAM:76B9vj	RAM:76C0vj ...
		dldi	off_16, $8954
		JSR	$1818

loc_7683:				; CODE XREF: RAM:7686vj	RAM:76A2vj
		JSR	$181E
		BMI	loc_7683
		JSR	j_UPPER
		CMP	#'N'
		BNE	loc_7692
		JMP	loc_76A7
; ---------------------------------------------------------------------------

loc_7692:				; CODE XREF: RAM:768D^j
		CMP	#'E'
		BNE	loc_7699
		JMP	loc_7A95
; ---------------------------------------------------------------------------

loc_7699:				; CODE XREF: RAM:7694^j
		CMP	#'T'
		BNE	loc_76A0
		JMP	loc_78D8
; ---------------------------------------------------------------------------

loc_76A0:				; CODE XREF: RAM:769B^j
		CMP	#'U'
		BNE	loc_7683
		JMP	loc_78F0
; ---------------------------------------------------------------------------

loc_76A7:				; CODE XREF: RAM:768F^j	RAM:777Dvj
		dldi	off_16, $8A0D
		JSR	$1818
		LDA	#$19
		JSR	$1839
		BCC	loc_76BC
		JMP	loc_7678
; ---------------------------------------------------------------------------

loc_76BC:				; CODE XREF: RAM:76B7^j
		CPX	#0
		BNE	loc_76C3
		JMP	loc_7678
; ---------------------------------------------------------------------------

loc_76C3:				; CODE XREF: RAM:76BE^j
		LDA	#0
		STA	$6321,X
		DEX

loc_76C9:				; CODE XREF: RAM:76D0vj
		LDA	$18D5,X
		STA	$6321,X
		DEX
		BPL	loc_76C9
		LDA	$6321
		JSR	j_UPPER
		STA	$6321
		CMP	#$41 ; 'A'
		BCS	loc_76E2
		JMP	loc_776D
; ---------------------------------------------------------------------------

loc_76E2:				; CODE XREF: RAM:76DD^j
		CMP	#$5B ; '['
		BCC	loc_76E9
		JMP	loc_776D
; ---------------------------------------------------------------------------

loc_76E9:				; CODE XREF: RAM:76E4^j
		dldi	off_16, $8ABD
		JSR	$1818

loc_76F4:				; CODE XREF: RAM:76F7vj	RAM:773Avj ...
		JSR	$181E
		BMI	loc_76F4
		JSR	j_UPPER
		CMP	#$4D ; 'M'
		BNE	loc_7710
		LDA	#0
		STA	$633B
		LDA	#$14
		STA	$71
		LDA	#$8C ; ''
		STA	$72
		JMP	loc_774C
; ---------------------------------------------------------------------------

loc_7710:				; CODE XREF: RAM:76FE^j
		CMP	#$46 ; 'F'
		BNE	loc_7724
		LDA	#$80
		STA	$633B
		LDA	#$19
		STA	$71
		LDA	#$8C
		STA	$72
		JMP	loc_774C
; ---------------------------------------------------------------------------

loc_7724:				; CODE XREF: RAM:7712^j
		CMP	#$1B
		BNE	loc_772B
		JMP	loc_7678
; ---------------------------------------------------------------------------

loc_772B:				; CODE XREF: RAM:7726^j
		LDX	byte_7A84
		EOR	#$D5 ; 'Õ'
		CMP	unk_7A7D,X
		BEQ	loc_773D

loc_7735:				; CODE XREF: RAM:774Avj
		LDA	#0
		STA	byte_7A84
		JMP	loc_76F4
; ---------------------------------------------------------------------------

loc_773D:				; CODE XREF: RAM:7733^j
		INX
		STX	byte_7A84
		CPX	#6
		BCC	loc_76F4
		LDA	#$FF
		STA	byte_7A85
		BMI	loc_7735

loc_774C:				; CODE XREF: RAM:770D^j	RAM:7721^j
		LDA	#$4C ; 'L'
		STA	off_16
		LDA	#$8B ; ''
		STA	off_16+1
		JSR	$1818

loc_7757:				; CODE XREF: RAM:775Avj	RAM:7768vj
		JSR	$181E
		BMI	loc_7757
		JSR	j_UPPER
		CMP	#'Y'
		BNE	loc_7766
		JMP	loc_7780
; ---------------------------------------------------------------------------

loc_7766:				; CODE XREF: RAM:7761^j
		CMP	#'N'
		BNE	loc_7757
		JMP	loc_7678
; ---------------------------------------------------------------------------

loc_776D:				; CODE XREF: RAM:76DF^j	RAM:76E6^j
		dldi	off_16, $8AE4
		JSR	$1818

loc_7778:				; CODE XREF: RAM:777Bvj
		JSR	$181E
		BMI	loc_7778
		JMP	loc_76A7
; ---------------------------------------------------------------------------

loc_7780:				; CODE XREF: RAM:7763^j
		JSR	sub_793D
		LDY	#0
		JSR	sub_7A5D

loc_7788:				; CODE XREF: RAM:779Bvj
		JSR	sub_7959
		JSR	nullsub_1
		JSR	$181E
		CMP	#$1B
		BNE	loc_7798
		JMP	loc_78A7
; ---------------------------------------------------------------------------

loc_7798:				; CODE XREF: RAM:7793^j
		JSR	j_sub_262F
		BPL	loc_7788
		LDY	#5
		JSR	sub_7A5D
		LDX	#7

loc_77A4:				; CODE XREF: RAM:77C0vj
		LDA	unk_8CE0,X
		CMP	#4
		BCC	loc_77BA
		TXA
		ASL	A
		TAY
		LDA	unk_8D10,Y
		STA	unk_8D00,Y
		LDA	unk_8D11,Y
		STA	unk_8D01,Y

loc_77BA:				; CODE XREF: RAM:77A9^j
		LDA	#0
		STA	unk_8CE0,X
		DEX
		BPL	loc_77A4
		JSR	sub_79DD
		LDX	#$C8 ; 'È'

loc_77C7:				; CODE XREF: RAM:77E7vj
		LDA	$252

loc_77CA:				; CODE XREF: RAM:77CDvj
		CMP	$252
		BEQ	loc_77CA
		TXA
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	$D203
		ORA	#$A0 ; ' '
		STA	$D201
		JSR	$181E
		CMP	#$1B
		BNE	loc_77E6
		JMP	loc_78A7
; ---------------------------------------------------------------------------

loc_77E6:				; CODE XREF: RAM:77E1^j
		DEX
		BNE	loc_77C7
		LDY	#$A
		JSR	sub_7A5D
		LDA	#0
		LDX	#7

loc_77F2:				; CODE XREF: RAM:77F6vj
		STA	$D000,X
		DEX
		BPL	loc_77F2
		LDA	#$7F ; ''
		STA	$253
		LDX	#7

loc_77FF:				; CODE XREF: RAM:7820vj
		LDA	unk_7A75,X
		STA	COLBK
		DEX
		TXA
		AND	#$F
		TAX
		LDA	$253
		LSR	A
		LSR	A
		LSR	A
		STA	$D201
		STA	$D203
		LDA	$253

loc_7819:				; CODE XREF: RAM:781Cvj
		CMP	$253
		BEQ	loc_7819
		CMP	#1
		BNE	loc_77FF
		LDX	#7

loc_7824:				; CODE XREF: RAM:783Cvj
		TXA
		ASL	A
		TAY
		LDA	unk_8D01,Y
		STA	unk_8D20,X
		LDA	unk_8D00,Y
		TAY
		LDA	unk_8E16,Y
		CLC
		ADC	unk_8D20,X
		STA	unk_8D20,X
		DEX
		BPL	loc_7824
		LDX	#0
		LDY	#0

loc_7842:				; CODE XREF: RAM:7853vj
		LDA	unk_8D20,Y
		STA	$634A,X
		STA	$6349,X
		TXA
		CLC
		ADC	#8
		TAX
		INY
		CPY	#6
		BCC	loc_7842
		LDA	#0
		STA	$6345
		STA	$6347
		LDA	byte_8D26
		STA	$6348
		STA	$6346
		LDA	byte_8D27
		STA	$63B4
		JSR	sub_78BB
		STA	$637A
		STA	$6379
		JSR	sub_78BB
		STA	$6381
		JSR	sub_7941
		LDA	#6
		STA	off_16
		LDA	#$89
		STA	off_16+1
		JSR	$1818
		LDX	#$F0 ; 'ð'

loc_788B:				; CODE XREF: RAM:7894vj
		LDA	$252

loc_788E:				; CODE XREF: RAM:7891vj
		CMP	$252
		BEQ	loc_788E
		DEX
		BNE	loc_788B
		LDA	byte_7A85
		BPL	loc_78A0
		LDA	#$FF
		STA	$638F

loc_78A0:				; CODE XREF: RAM:7899^j
		mv	$6320, $195B
		RTS
; ---------------------------------------------------------------------------

loc_78A7:				; CODE XREF: RAM:7795^j	RAM:77E3^j
		JSR	sub_7941
		dldi	off_16, $8B30
		JSR	$1818
		JSR	sub_792B
		JMP	loc_7678

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_78BB:				; CODE XREF: RAM:786C^p	RAM:7875^p
		LDA	RANDOM
		AND	#7
		STA	$6C
		LDA	RANDOM
		AND	#7
		CLC
		ADC	$6C
		STA	$6C
		LDA	RANDOM
		AND	#7
		CLC
		ADC	#7
		ADC	$6C
		RTS
; End of function sub_78BB

; ---------------------------------------------------------------------------
		RTS
; ---------------------------------------------------------------------------

loc_78D8:				; CODE XREF: RAM:769D^j
		LDA	#>($7600-1)
		PHA
		LDA	#<($7600-1)
		PHA
		ldi	SEGNO, $22
		dldi	SEGADDR, $7600
		JMP	j_SEGLOAD
; ---------------------------------------------------------------------------

loc_78F0:				; CODE XREF: RAM:76A4^j	RAM:83E4vj ...
		dldi	off_16, a_CharacterUtil
		JSR	$1818

loc_78FB:				; CODE XREF: RAM:78FEvj	RAM:790Cvj
		JSR	$181E
		BMI	loc_78FB
		CMP	#$1B
		BNE	loc_7907
		JMP	loc_7678
; ---------------------------------------------------------------------------

loc_7907:				; CODE XREF: RAM:7902^j
		SEC
		SBC	#'1'
		CMP	#2
		BCS	loc_78FB
		ASL	A
		TAX
		LDA	off_7927+1,X
		PHA
		LDA	off_7927,X
		PHA
		LDA	#4
		STA	off_16
		LDA	#$89
		STA	off_16+1
		JSR	$1818
		RTS
; ---------------------------------------------------------------------------
		JMP	loc_83D2
; ---------------------------------------------------------------------------
off_7927:	.WORD loc_83D2-1	; DATA XREF: RAM:7914^r	RAM:7910^r
		.WORD loc_7AC7-1

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_792B:				; CODE XREF: RAM:78B5^p
		LDA	#1
		STA	$252

loc_7930:				; CODE XREF: sub_792B+Fvj
		JSR	$181E
		BPL	locret_793C
		LDA	$252
		CMP	#$F0 ; 'ð'
		BNE	loc_7930

locret_793C:				; CODE XREF: sub_792B+8^j
		RTS
; End of function sub_792B


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_793D:				; CODE XREF: RAM:loc_7780^p
		JSR	loc_84B1
		RTS
; End of function sub_793D


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7941:				; CODE XREF: RAM:787B^p	RAM:loc_78A7^p
		LDA	#0
		STA	$22F
		LDX	#7

loc_7948:				; CODE XREF: sub_7941+Evj
		STA	$D000,X
		STA	$D200,X
		DEX
		BPL	loc_7948
		STA	$D208
		JSR	$180F
		RTS
; End of function sub_7941


; --------------- S U B	R O U T	I N E ---------------------------------------


nullsub_1:				; CODE XREF: RAM:778B^p
		RTS
; End of function nullsub_1


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7959:				; CODE XREF: RAM:loc_7788^p
		LDX	#7
		STX	$6B

loc_795D:				; CODE XREF: sub_7959+81vj
		LDA	unk_8CF8,X
		CLC
		ADC	unk_8CE8,X
		STA	unk_8CE8,X
		LDA	unk_8CF0,X
		ADC	unk_8CE0,X
		CMP	#8
		BCS	loc_7974
		JMP	loc_79D1
; ---------------------------------------------------------------------------

loc_7974:				; CODE XREF: sub_7959+16^j
		LDY	unk_8DF0,X
		LDA	unk_8D10,Y
		STA	unk_8D00,Y
		LDA	unk_8D11,Y
		STA	unk_8D01,Y
		CPX	#7
		BNE	loc_79A5
		LDA	RANDOM
		AND	#$1F
		STA	$6C
		LDA	RANDOM
		AND	#$1F
		CLC
		ADC	$6C
		STA	$6C
		LDA	RANDOM
		AND	#$1F
		CLC
		ADC	#3
		ADC	$6C
		JMP	loc_79C0
; ---------------------------------------------------------------------------

loc_79A5:				; CODE XREF: sub_7959+2C^j
		LDA	RANDOM
		AND	#7
		STA	$6C
		LDA	RANDOM
		AND	#7
		CLC
		ADC	$6C
		STA	$6C
		LDA	RANDOM
		AND	#7
		CLC
		ADC	$6C
		ADC	#7

loc_79C0:				; CODE XREF: sub_7959+49^j
		TAX
		LDA	unk_8D28,X
		STA	unk_8D11,Y
		LDA	unk_8D8C,X
		STA	unk_8D10,Y
		LDX	$6B
		LDA	#0

loc_79D1:				; CODE XREF: sub_7959+18^j
		STA	unk_8CE0,X
		DEC	$6B
		LDX	$6B
		BMI	sub_79DD
		JMP	loc_795D
; End of function sub_7959


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_79DD:				; CODE XREF: RAM:77C2^p	sub_7959+7F^j
		LDA	#$F
		STA	$62

loc_79E1:				; CODE XREF: sub_79DD+3Evj
		CLC
		LDX	$62
		LDY	unk_8D00,X
		LDA	unk_8E0C,Y
		ADC	#$20
		STA	off_65
		LDA	#$8C
		ADC	#0
		STA	off_65+1
		LDY	unk_8D10,X
		LDA	unk_8E0C,Y
		ADC	#$20 ; ' '
		STA	$67
		LDA	#$8C ; ''
		ADC	#0
		STA	$68
		LDA	unk_8CC0,X
		STA	$69
		LDA	unk_8CD0,X
		STA	$6A
		LDY	unk_8DFA,X
		LDA	unk_8CE0,Y
		STA	$63
		JSR	loc_7A1E
		DEC	$62
		BPL	loc_79E1
		RTS
; End of function sub_79DD

; ---------------------------------------------------------------------------

loc_7A1E:				; CODE XREF: sub_79DD+39^p
		LDA	#0
		STA	$64

loc_7A22:				; CODE XREF: RAM:7A5Avj
		LDY	$63
		LDA	(off_65),Y
		ORA	#$AA ; 'ª'
		LDY	$64
		STA	($69),Y
		LDA	$63
		ORA	#$50 ; 'P'
		TAY
		LDA	(off_65),Y
		ORA	#$AA ; 'ª'
		STA	loc_7A3D+1
		LDA	$64
		ORA	#8
		TAY

loc_7A3D:				; DATA XREF: RAM:7A35^w
		LDA	#$FF
		STA	($69),Y
		LDX	$63
		INX
		CPX	#8
		BCC	loc_7A52
		LDA	$67
		STA	off_65
		LDA	$68
		STA	off_65+1
		LDX	#0

loc_7A52:				; CODE XREF: RAM:7A46^j
		STX	$63
		INC	$64
		LDA	$64
		CMP	#8
		BCC	loc_7A22
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7A5D:				; CODE XREF: RAM:7785^p	RAM:779F^p ...
		LDX	#0
		STX	$D208

loc_7A62:				; CODE XREF: sub_7A5D+Fvj
		LDA	unk_7A86,Y
		STA	$D200,X
		INY
		INX
		CPX	#4
		BCC	loc_7A62
		LDA	unk_7A86,Y
		STA	$D208
		RTS
; End of function sub_7A5D

; ---------------------------------------------------------------------------
unk_7A75:	.BYTE	$34 ; 4		; DATA XREF: RAM:loc_77FF^r
		.BYTE	$1A
		.BYTE	$28 ; (
		.BYTE	 $E
		.BYTE	$44 ; D
		.BYTE	$34 ; 4
		.BYTE	$1A
		.BYTE	$28 ; (
unk_7A7D:	.BYTE	$94 ; 		; DATA XREF: RAM:7730^r
		.BYTE	$91 ; 
		.BYTE	$90 ; 
		.BYTE	$85 ; 
		.BYTE	$81 ; 
		.BYTE	$F8 ; ø
		.BYTE	$E4 ; ä
byte_7A84:	.BYTE	0			; DATA XREF: RAM:loc_772B^r RAM:7737^w ...
byte_7A85:	.BYTE	0			; DATA XREF: RAM:7747^w	RAM:7896^r ...
unk_7A86:	.BYTE	$E5 ; å		; DATA XREF: sub_7A5D:loc_7A62^r
					; sub_7A5D+11^r
		.BYTE	$C4 ; -
		.BYTE	$36 ; 6
		.BYTE	$66 ; f
		.BYTE	$C5 ; Å
		.BYTE	$81 ; 
		.BYTE	$A4 ; ¤
		.BYTE	$F8 ; ø
		.BYTE	4
		.BYTE	$F3 ; ó
		.BYTE	0
		.BYTE	 $F
		.BYTE	1
		.BYTE	 $F
		.BYTE	$41 ; A
; ---------------------------------------------------------------------------

loc_7A95:				; CODE XREF: RAM:7696^j
		dldi	off_82F2, $8298
		JSR	sub_7EB0
		BCS	loc_7AC4
		JSR	sub_7E33
		BCS	loc_7AC4
		JSR	loc_7B84
		BCS	loc_7AC4
		LDA	#$FF
		STA	$631F
		LDA	byte_7A85
		BPL	loc_7ABD
		LDA	#$FF
		STA	$638F

loc_7ABD:				; CODE XREF: RAM:7AB6^j
		mv	$6320, $195B
		RTS
; ---------------------------------------------------------------------------

loc_7AC4:				; CODE XREF: RAM:7AA2^j	RAM:7AA7^j ...
		JMP	loc_765D
; ---------------------------------------------------------------------------

loc_7AC7:				; DATA XREF: RAM:7929^o
		dldi	off_82F2, $82B5
		JSR	sub_7EB0
		BCS	loc_7AC4
		JSR	sub_7E33
		BCS	loc_7AC4
		LDX	#$1F

loc_7ADD:				; CODE XREF: RAM:7AE4vj
		LDA	unk_8E60,X
		STA	$197C,X
		DEX
		BPL	loc_7ADD
		LDX	byte_83CD
		LDA	#$B8 ; '¸'
		CLC
		ADC	unk_83C9,X
		STA	byte_83BD
		LDA	#$8E ; ''
		ADC	#0
		STA	byte_83BE
		LDA	#$30 ; '0'
		STA	off_16
		LDA	#$80 ; ''
		STA	off_16+1
		JSR	$1818

loc_7B04:				; CODE XREF: RAM:7B07vj	RAM:7B18vj
		JSR	$181E
		BMI	loc_7B04
		JSR	j_UPPER
		CMP	#'Y'
		BEQ	loc_7B1B
		CMP	#'N'
		BEQ	loc_7AC4
		CMP	#$1B
		BEQ	loc_7AC4
		JMP	loc_7B04
; ---------------------------------------------------------------------------

loc_7B1B:				; CODE XREF: RAM:7B0E^j
		JSR	sub_7ECB
		LDX	#$1F

loc_7B20:				; CODE XREF: RAM:7B27vj
		LDA	unk_8E60,X
		STA	$197C,X
		DEX
		BPL	loc_7B20
		LDX	byte_83CD
		LDA	#0
		STA	unk_8EA8,X
		LDY	unk_83C9,X
		LDX	#$19

loc_7B36:				; CODE XREF: RAM:7B3Bvj
		STA	unk_8EB8,Y
		INY
		DEX
		BPL	loc_7B36
		LDA	#<2
		STA	word_232
		LDA	#>2
		STA	word_232+1
		LDX	#$7F ; ''

loc_7B49:				; CODE XREF: RAM:7B50vj
		LDA	unk_8EA0,X
		STA	$100,X
		DEX
		BPL	loc_7B49
		JSR	$1827
		LDA	#$57 ; 'W'
		LDX	#$80 ; ''
		LDY	#3
		JSR	$1833
		JSR	$1830
		BPL	loc_7B76
		LDA	#$DF ; 'ß'
		STA	off_16
		LDA	#$7F ; ''
		STA	off_16+1
		JSR	$1818

loc_7B6E:				; CODE XREF: RAM:7B71vj	RAM:7B81vj
		JSR	$181E
		BMI	loc_7B6E
		JMP	loc_7678
; ---------------------------------------------------------------------------

loc_7B76:				; CODE XREF: RAM:7B61^j
		LDA	#5
		STA	off_16
		LDA	#$80 ; ''
		STA	off_16+1
		JSR	$1818
		JMP	loc_7B6E
; ---------------------------------------------------------------------------

loc_7B84:				; CODE XREF: RAM:7AA9^p
		STX	byte_83CD
		LDA	#0
		STA	byte_83D1
		LDA	unk_8EB4,X
		AND	#$F
		CMP	#2
		BEQ	loc_7BFE
		LDA	unk_8EB4,X
		AND	#$F0 ; 'ð'
		CMP	#$20 ; ' '
		BEQ	loc_7BC1
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		TAY
		LDA	unk_834D,Y
		STA	byte_83BB
		LDA	unk_8355,Y
		STA	byte_83BC
		LDA	#$4D ; 'M'
		STA	off_16
		LDA	#$81 ; ''
		STA	off_16+1
		JSR	$1818

loc_7BBA:				; CODE XREF: RAM:7BBDvj
		JSR	$181E
		BMI	loc_7BBA
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_7BC1:				; CODE XREF: RAM:7B9C^j
		LDA	unk_8EB4,X
		AND	#$F
		TAY
		LDA	unk_834D,Y
		STA	byte_83BB
		LDA	unk_8355,Y
		STA	byte_83BC
		dldi	off_16, $8172
		JSR	$1818

loc_7BDE:				; CODE XREF: RAM:7BE1vj	RAM:7BFAvj
		JSR	$181E
		BMI	loc_7BDE
		JSR	j_UPPER
		CMP	#'Y'
		BNE	loc_7BF2
		LDA	#$FF
		STA	byte_83D1
		JMP	loc_7BFE
; ---------------------------------------------------------------------------

loc_7BF2:				; CODE XREF: RAM:7BE8^j
		CMP	#'N'
		BNE	loc_7BF8
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_7BF8:				; CODE XREF: RAM:7BF4^j
		CMP	#$1B
		BNE	loc_7BDE
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_7BFE:				; CODE XREF: RAM:7B93^j	RAM:7BEF^j
		JSR	sub_7ECB
		BCC	loc_7C06
		JMP	loc_7C3A
; ---------------------------------------------------------------------------

loc_7C06:				; CODE XREF: RAM:7C01^j
		LDY	#$1F

loc_7C08:				; CODE XREF: RAM:7C0Fvj
		LDA	unk_8E20,Y
		STA	$197C,Y
		DEY
		BPL	loc_7C08
		JSR	$1827
		LDA	#$13
		STA	byte_83CE
		LDA	#<SEG_6300
		STA	$76
		LDA	#>SEG_6300
		STA	$77
		LDA	byte_83CD
		ASL	A
		TAY
		LDA	unk_83C1,Y
		STA	word_232
		LDA	unk_83C2,Y
		STA	word_232+1

loc_7C32:				; CODE XREF: RAM:7C7Avj
		JSR	j_READSECTOR
		BPL	loc_7C4C

loc_7C37:				; CODE XREF: RAM:7C61vj	RAM:7D74vj ...
		JSR	$1830

loc_7C3A:				; CODE XREF: RAM:7C03^j	RAM:7CA6vj ...
		LDA	#$E7 ; 'ç'
		STA	off_16
		LDA	#$80 ; ''
		STA	off_16+1
		JSR	$1818

loc_7C45:				; CODE XREF: RAM:7C48vj
		JSR	$181E
		BMI	loc_7C45
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_7C4C:				; CODE XREF: RAM:7C35^j
		LDY	#$7F ; ''

loc_7C4E:				; CODE XREF: RAM:7C54vj
		LDA	$100,Y
		STA	($76),Y
		DEY
		BPL	loc_7C4E
		INC	word_232
		BNE	loc_7C5E
		INC	word_232+1

loc_7C5E:				; CODE XREF: RAM:7C59^j
		JSR	j_READSECTOR
		BMI	loc_7C37
		LDY	#$FF

loc_7C65:				; CODE XREF: RAM:7C6Bvj
		LDA	$80,Y
		STA	($76),Y
		DEY
		BMI	loc_7C65
		INC	word_232
		BNE	loc_7C75
		INC	word_232+1

loc_7C75:				; CODE XREF: RAM:7C70^j
		INC	$77
		DEC	byte_83CE
		BNE	loc_7C32
		JSR	$1830
		LDA	#<SEG_6300
		STA	$69
		LDA	#>SEG_6300
		STA	$6A
		LDA	byte_638E
		STA	loc_7CA2+1
		LDY	#0
		STY	byte_638E
		CLC
		LDX	#$11
		LDA	$6309

loc_7C98:				; CODE XREF: RAM:7C9Bvj	RAM:7CA0vj
		ADC	($69),Y
		INY
		BNE	loc_7C98
		INC	$6A
		DEX
		BPL	loc_7C98

loc_7CA2:				; DATA XREF: RAM:7C8A^w
		CMP	#$FF
		BEQ	loc_7CA9
		JMP	loc_7C3A
; ---------------------------------------------------------------------------

loc_7CA9:				; CODE XREF: RAM:7CA4^j
		LDX	byte_83CD
		LDA	unk_8EA8,X
		STA	byte_83D0
		BPL	loc_7CB7
		JMP	loc_7DA9
; ---------------------------------------------------------------------------

loc_7CB7:				; CODE XREF: RAM:7CB2^j
		INC	unk_8EB0,X
		BNE	loc_7CC1
		LDA	#$FF
		STA	unk_8EB0,X

loc_7CC1:				; CODE XREF: RAM:7CBA^j
		LDX	byte_83CD
		LDA	#$B8 ; '¸'
		CLC
		ADC	unk_83C9,X
		STA	byte_83BD
		LDA	#$8E ; ''
		ADC	#0
		STA	byte_83BE
		LDA	#6
		JSR	j_RND_A
		ASL	A
		TAX
		LDA	off_8305,X
		STA	byte_83BF
		LDA	off_8305+1,X
		STA	byte_83C0
		TXA
		ASL	A
		ASL	A
		TAX
		LDA	$634A,X
		BEQ	loc_7CFB
		DEC	$634A,X
		LDA	$6349,X
		BEQ	loc_7CFB
		DEC	$6349,X

loc_7CFB:				; CODE XREF: RAM:7CEE^j	RAM:7CF6^j
		LDA	#$11
		STA	I_LOC_X
		LDA	#3
		STA	I_LOC_Y
		LDA	#1
		STA	I_LOC_Z
		LDA	#$11
		STA	$6316
		STA	$6317
		LDA	#1
		STA	$631D
		LDA	#3
		STA	$6312
		LDA	#0
		STA	byte_638E
		dldi	$69, SEG_6300
		LDY	#0
		CLC
		LDX	#$11
		LDA	$6309

loc_7D31:				; CODE XREF: RAM:7D34vj	RAM:7D39vj
		ADC	($69),Y
		INY
		BNE	loc_7D31
		INC	$6A
		DEX
		BPL	loc_7D31
		STA	byte_638E
		LDA	byte_83CD
		ASL	A
		TAY
		LDA	unk_83C1,Y
		STA	word_232
		LDA	unk_83C2,Y
		STA	word_232+1
		dldi	$76, SEG_6300
		LDA	#$12
		STA	byte_83CE
		JSR	$1827

loc_7D5F:				; CODE XREF: RAM:7DA4vj
		LDY	#$7F ; ''

loc_7D61:				; CODE XREF: RAM:7D67vj
		LDA	($76),Y
		STA	$100,Y
		DEY
		BPL	loc_7D61
		LDA	#'W'
		LDX	#$80 ; ''
		LDY	#3
		JSR	$1833
		BPL	loc_7D77
		JMP	loc_7C37
; ---------------------------------------------------------------------------

loc_7D77:				; CODE XREF: RAM:7D72^j
		INC	word_232
		BNE	loc_7D7F
		INC	word_232+1

loc_7D7F:				; CODE XREF: RAM:7D7A^j
		LDY	#$FF

loc_7D81:				; CODE XREF: RAM:7D87vj
		LDA	($76),Y
		STA	$80,Y
		DEY
		BMI	loc_7D81
		LDA	#'W'
		LDX	#$80 ; ''
		LDY	#3
		JSR	$1833
		BPL	loc_7D97
		JMP	loc_7C37
; ---------------------------------------------------------------------------

loc_7D97:				; CODE XREF: RAM:7D92^j
		INC	word_232
		BNE	loc_7D9F
		INC	word_232+1

loc_7D9F:				; CODE XREF: RAM:7D9A^j
		INC	$77
		DEC	byte_83CE
		BNE	loc_7D5F
		JSR	$1830

loc_7DA9:				; CODE XREF: RAM:7CB4^j
		LDX	#$3F ; '?'

loc_7DAB:				; CODE XREF: RAM:7DB7vj
		LDA	$644B,X
		BEQ	loc_7DB6
		CLC
		ADC	#$63 ; 'c'
		STA	$644B,X

loc_7DB6:				; CODE XREF: RAM:7DAE^j
		DEX
		BPL	loc_7DAB
		LDA	$64E5
		CLC
		ADC	#$63 ; 'c'
		STA	$64E5
		LDA	RANDOM
		LDX	byte_83CD
		STA	$6311
		STA	unk_8EAC,X
		LDA	unk_8EB0,X
		STA	byte_83CF
		LDA	#$7F ; ''
		STA	unk_8EA8,X
		LDA	#$A0 ; ' '
		STA	$76
		LDA	#$8E ; ''
		STA	$77
		LDA	#<2
		STA	word_232
		LDA	#>2
		STA	word_232+1
		JSR	$1827
		LDY	#$7F ; ''

loc_7DF0:				; CODE XREF: RAM:7DF6vj
		LDA	($76),Y
		STA	$100,Y
		DEY
		BPL	loc_7DF0
		LDA	#$57 ; 'W'
		LDX	#$80 ; ''
		LDY	#3
		JSR	$1833
		JSR	$1830
		BPL	loc_7E09
		JMP	loc_7C3A
; ---------------------------------------------------------------------------

loc_7E09:				; CODE XREF: RAM:7E04^j
		LDA	byte_83D0
		BMI	loc_7E21
		JSR	$181E
		dldi	off_16, $81EC
		JSR	$1818

loc_7E1C:				; CODE XREF: RAM:7E1Fvj
		JSR	$181E
		BMI	loc_7E1C

loc_7E21:				; CODE XREF: RAM:7E0C^j
		BIT	byte_83D1
		BPL	loc_7E31
		LDX	#4

loc_7E28:				; CODE XREF: RAM:7E2Fvj
		LDA	$6318,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_7E28

loc_7E31:				; CODE XREF: RAM:7E24^j
		CLC
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7E33:				; CODE XREF: RAM:7AA4^p	RAM:7AD6^p
		LDX	#3
		LDA	#0

loc_7E37:				; CODE XREF: sub_7E33+8vj
		ORA	unk_8EA8,X
		DEX
		BPL	loc_7E37
		ORA	#0
		BNE	loc_7E53
		dldi	off_16, $7F8A
		JSR	$1818

loc_7E4C:				; CODE XREF: sub_7E33+1Cvj
		JSR	$181E
		BMI	loc_7E4C
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_7E53:				; CODE XREF: sub_7E33+C^j
		LDX	#0
		LDY	#0

loc_7E57:				; CODE XREF: sub_7E33+54vj
		LDA	unk_8EA8,X
		BNE	loc_7E69
		LDA	#$DE ; 'Þ'
		STA	off_82FD,Y
		LDA	#$82 ; ''
		STA	off_82FD+1,Y
		JMP	loc_7E82
; ---------------------------------------------------------------------------

loc_7E69:				; CODE XREF: sub_7E33+27^j
		BMI	loc_7E78
		LDA	#$E6 ; 'æ'
		STA	off_82FD,Y
		LDA	#$82 ; ''
		STA	off_82FD+1,Y
		JMP	loc_7E82
; ---------------------------------------------------------------------------

loc_7E78:				; CODE XREF: sub_7E33:loc_7E69^j
		LDA	#$ED ; 'í'
		STA	off_82FD,Y
		LDA	#$82 ; ''
		STA	off_82FD+1,Y

loc_7E82:				; CODE XREF: sub_7E33+33^j sub_7E33+42^j
		INY
		INY
		INX
		CPX	#4
		BCC	loc_7E57
		LDA	#$77 ; 'w'
		STA	off_16
		LDA	#$80 ; ''
		STA	off_16+1
		JSR	$1818

loc_7E94:				; CODE XREF: sub_7E33+64vj sub_7E33+71vj ...
		JSR	$181E
		BMI	loc_7E94
		CMP	#$1B
		BNE	loc_7E9F
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_7E9F:				; CODE XREF: sub_7E33+68^j
		SEC
		SBC	#$31 ; '1'
		CMP	#4
		BCS	loc_7E94
		TAX
		LDA	unk_8EA8,X
		BEQ	loc_7E94
		STX	byte_83CD
		RTS
; End of function sub_7E33


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7EB0:				; CODE XREF: RAM:7A9F^p	RAM:7AD1^p
		LDA	#$2D ; '-'
		STA	off_16
		LDA	#$7F ; ''
		STA	off_16+1
		JSR	$1818

loc_7EBB:				; CODE XREF: sub_7EB0+Evj sub_7EB0+19vj
		JSR	$181E
		BMI	loc_7EBB
		CMP	#$1B
		BNE	loc_7EC7
		JMP	loc_7F2B
; ---------------------------------------------------------------------------

loc_7EC7:				; CODE XREF: sub_7EB0+12^j
		CMP	#$20 ; ' '
		BNE	loc_7EBB
; End of function sub_7EB0


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7ECB:				; CODE XREF: RAM:loc_7B1B^p
					; RAM:loc_7BFE^p
		LDY	#$1F

loc_7ECD:				; CODE XREF: sub_7ECB+9vj
		LDA	$8E80,Y
		STA	$197C,Y
		DEY
		BPL	loc_7ECD
		JSR	$1827
		LDA	#3
		STA	$75

loc_7EDD:				; CODE XREF: sub_7ECB+41vj
		LDA	#2
		STA	word_232
		LDA	#0
		STA	word_232+1
		LDA	byte_230
		AND	#$F
		TAX
		LDA	$24D,X
		BMI	loc_7EF7
		JSR	j_READSECTOR
		BPL	loc_7F0E

loc_7EF7:				; CODE XREF: sub_7ECB+25^j sub_7ECB+4Bvj
		LDA	byte_230
		AND	#$F
		CLC
		ADC	#1
		CMP	#5
		BCC	loc_7F05
		LDA	#1

loc_7F05:				; CODE XREF: sub_7ECB+36^j
		ORA	#$30 ; '0'
		STA	byte_230
		DEC	$75
		BPL	loc_7EDD

loc_7F0E:				; CODE XREF: sub_7ECB+2A^j
		LDX	#7

loc_7F10:				; CODE XREF: sub_7ECB+4Evj
		LDA	aArChar,X	; "AR CHAR!"
		CMP	$100,X
		BNE	loc_7EF7
		DEX
		BPL	loc_7F10
		JSR	$1830
		LDX	#$7F ; ''

loc_7F20:				; CODE XREF: sub_7ECB+5Cvj
		LDA	$100,X
		STA	unk_8EA0,X
		DEX
		BPL	loc_7F20
		CLC
		RTS
; End of function sub_7ECB

; ---------------------------------------------------------------------------

loc_7F2B:				; CODE XREF: sub_7EB0+14^j
		SEC
		RTS
; ---------------------------------------------------------------------------
		.BYTE	$AD
		.WORD	off_82F2
		MOVEXY	0,8
		.BYTE	$A5
aPleaseInsertYo:.BYTE	"Please insert your character disk"
		.BYTE	$D
		MOVEXY	0,22
		.BYTE	$A5
aPressSpaceBa_0:.BYTE	"Press SPACE BAR to continue"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aOrEscToCance_0:.BYTE	"or ESC to cancel"
		.BYTE	$D
		.BYTE	$FF
		.BYTE	$AD
		.WORD	off_82F2
		MOVEXY	0,8
		.BYTE	$A5
aThisCharacterD:.BYTE	"This character disk has no characters"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aOnIt__0:	.BYTE	"on it."
		.BYTE	$D
byte_7FC0:	MOVEXY	0,22		; DATA XREF: RAM:802Evo	RAM:814Bvo ...
		.BYTE	$A5
aPressAnyKeyT_0:.BYTE	"Press any key to continue"
		.BYTE	$D
		.BYTE	$FF
		.BYTE	$AD
		.WORD	off_82F2
		MOVEXY	0,8
		.BYTE	$A5
aUnableToRemove:.BYTE	"Unable to remove character!"
		.BYTE	$D
		STRSUB	byte_810D
		.BYTE	$AD
		.WORD	off_82F2
		MOVEXY	0,8
		.BYTE	$A5
aThatCharacterH:.BYTE	"That Character has been removed."
		.BYTE	$D
		STRSUB byte_7FC0
		.BYTE	$AD
		.WORD	off_82F2
		MOVEXY	0,8
aAreYouSureYouW:.BYTE	$A5,"Are you sure you want to permanently",$D,$D
aRemove:	.BYTE	$A5,"remove "
		PRINTSTRP byte_83BD,25
aq:		.BYTE	"?"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aYOrN:		.BYTE	"(Y or N)"
		.BYTE	$D
		.BYTE	$FF
		.BYTE	$AD
		.WORD	off_82F2
		MOVEXY	0,8
a1:		.BYTE	" (1) "
		PRINTSTRP off_82F5,25
		MOVEXY	30,8
		PRINTSTRP off_82FD,7
		MOVEXY	0,10
a2:		.BYTE	" (2) "
		PRINTSTRP off_82F7,25
		MOVEXY	30,10
		PRINTSTRP off_82FF,7
		MOVEXY	0,12
a3:		.BYTE	" (3) "
		PRINTSTRP off_82F9,25
		MOVEXY	30,12
		PRINTSTRP off_8301,7
		MOVEXY	0,14
a4:		.BYTE	" (4) "
		PRINTSTRP off_82FB,25
		MOVEXY	30,14
		PRINTSTRP off_8303,7
		MOVEXY	0,22
		.BYTE	$A5
aSelect14OrEscT:.BYTE	"Select 1-4 or ESC to cancel"
		.BYTE	$D
		.BYTE	$FF
		.BYTE	$AD
		.WORD	off_82F2
		MOVEXY	0,8
		.BYTE	$A5
aUnableToLoadTh:.BYTE	"Unable to load this character!"
		.BYTE	$D
byte_810D:	.BYTE	$D		; DATA XREF: RAM:8003^o
		.BYTE	$A5
aMakeSureYourDi:.BYTE	"Make sure your disk is not write"
		.BYTE	$D
		.BYTE	$A5
aProtectedAndTr:.BYTE	"protected and try again."
		.BYTE	$D
		STRSUB byte_7FC0
		.BYTE	$AD
		.WORD	off_82F2
		MOVEXY	0,8
		.BYTE	$A5
aThisCharacterI:.BYTE	"This character is in "
		.BYTE	$B4
		.WORD	byte_83BB
		.BYTE	$F
		.BYTE	'!'
		.BYTE	$D
		STRSUB	byte_7FC0
		.BYTE	$AD
		.WORD	off_82F2
		MOVEXY	0,8
		.BYTE	$A5
aThisCharacterW:.BYTE	"This character was on his way to"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$B4
		.WORD byte_83BB
		.BYTE	$F
a_DoYouWantToBr:.BYTE	".  Do you want to bring"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aTheCharacterBa:.BYTE	"the character back to the Dungeon?"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
		.BYTE	$28 ; (
		.BYTE	$A1
aY:		.BYTE	'Y'
		.BYTE	$A0
aOr:		.BYTE	" or "
		.BYTE	$A1
aN:		.BYTE	'N'
		.BYTE	$A0
		.BYTE	$29 ; )
		.BYTE	 $D
		.BYTE	$FF
		.BYTE	$AD ; ­
		.WORD	off_82F2
		MOVEXY	0,8
		.BYTE	$A5
		.BYTE	$B4
		.WORD	byte_83BD
		.BYTE	$19
		.BYTE	$20
aHasBeen:	.BYTE	"has been"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aLostSomewhereI:.BYTE	"lost somewhere in the Dungeon and"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aMustBeReJoined:.BYTE	"must be re-joined."
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aTheReJoiningPr:.BYTE	"The re-joining process shall cost"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aSome:		.BYTE	"some "
		.BYTE	$B4
		.WORD byte_83BF
		.BYTE	$C
		.BYTE	"."
		.BYTE	$D
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A3
		.WORD loc_82D2
		.BYTE	$A5
aThisIsReJoinin:.BYTE	"This is Re-joining number "
		.BYTE	$B2
		.WORD byte_83CF
		.BYTE	3
a_:		.BYTE	"."
		.BYTE	$D
		.BYTE	$A3
		.WORD loc_82D8
		.BYTE	$D
		STRSUB byte_7FC0
		.BYTE	$A8
		.BYTE	$A5
aResumeExisting:.BYTE	"Resume Existing Character"
		.BYTE	$D
		.BYTE	$AE
		.BYTE	$A8
		.BYTE	$A5
aRemoveExisting:.BYTE	"Remove Existing Character"
		.BYTE	$D
		.BYTE	$AE
; ---------------------------------------------------------------------------

loc_82D2:				; DATA XREF: RAM:826E^o
		LDA	#$FF
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------

loc_82D8:				; DATA XREF: RAM:8292^o
		LDA	#0
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------
aEmpty:		.BYTE	"(EMPTY)",0
aLost:		.BYTE	"(LOST)",0
aOk:		.BYTE	"(OK)",0
off_82F2:	.BYTE	0, 0		; DATA XREF: RAM:7A97^w	RAM:7AC9^w ...
unk_82F4:	.BYTE	0		; DATA XREF: RAM:off_82FDvo
					; RAM:off_82FFvo ...
off_82F5:	.WORD	unk_8EB8	; DATA XREF: RAM:8083^o
off_82F7:	.WORD	unk_8ED2	; DATA XREF: RAM:8096^o
off_82F9:	.WORD	unk_8EEC	; DATA XREF: RAM:80A9^o
off_82FB:	.WORD	unk_8F06	; DATA XREF: RAM:80BC^o
off_82FD:	.WORD	unk_82F4	; DATA XREF: sub_7E33+2B^w sub_7E33+3A^w ...
off_82FF:	.WORD	unk_82F4	; DATA XREF: RAM:809D^o
off_8301:	.WORD	unk_82F4	; DATA XREF: RAM:80B0^o
off_8303:	.WORD	unk_82F4	; DATA XREF: RAM:80C3^o
off_8305:	.WORD	aStamina	; DATA XREF: RAM:7CDB^r	RAM:7CE1^r
					; "stamina"
		.WORD	aCharisma	; "charisma"
		.WORD	aStrength	; "strength"
		.WORD	aIntelligence	; "intelligence"
		.WORD	aWisdom		; "wisdom"
		.WORD	aSkill		; "skill"
		.WORD	aSpeed		; "speed"
aStamina:	.BYTE	"stamina",0       ; DATA XREF: RAM:off_8305^o
aCharisma:	.BYTE	"charisma",0      ; DATA XREF: RAM:8307^o
aStrength:	.BYTE	"strength",0      ; DATA XREF: RAM:8309^o
aIntelligence:	.BYTE	"intelligence",0  ; DATA XREF: RAM:830B^o
aWisdom:	.BYTE	"wisdom",0        ; DATA XREF: RAM:830D^o
aSkill:		.BYTE	"skill",0         ; DATA XREF: RAM:830F^o
aSpeed:		.BYTE	"speed",0         ; DATA XREF: RAM:8311^o
unk_834D:	.BYTE	$5D ; ]		; DATA XREF: RAM:7BA3^r	RAM:7BC7^r
		.BYTE	$69 ; i
		.BYTE	$75 ; u
		.BYTE	$84 ; 
		.BYTE	$93 ; 
		.BYTE	$9D ; 
		.BYTE	$A8 ; ¨
		.BYTE	$B3 ; ³
unk_8355:	.BYTE	$83 ; 		; DATA XREF: RAM:7BA9^r	RAM:7BCD^r
		.BYTE	$83 ; 
		.BYTE	$83 ; 
		.BYTE	$83 ; 
		.BYTE	$83 ; 
		.BYTE	$83 ; 
		.BYTE	$83 ; 
		.BYTE	$83 ; 
aTheUnknown:	.BYTE	"The Unknown",0
aTheCityqqq:	.BYTE	"The City???",0
aTheDungeonqqq:	.BYTE	"The Dungeon???",0
aTheWilderness:	.BYTE	"The Wilderness",0
aTheArena:	.BYTE	"The Arena",0
aThePalace:	.BYTE	"The Palace",0
aRevelation:	.BYTE	"Revelation",0
aDestiny:	.BYTE	"Destiny",0
byte_83BB:	.BYTE	$FF		; DATA XREF: RAM:7BA6^w	RAM:7BCA^w ...
byte_83BC:	.BYTE	$FF		; DATA XREF: RAM:7BAC^w	RAM:7BD0^w
byte_83BD:	.BYTE	$F4		; DATA XREF: RAM:7AEF^w	RAM:7CCA^w ...
byte_83BE:	.BYTE	$82		; DATA XREF: RAM:7AF6^w	RAM:7CD1^w
byte_83BF:	.BYTE	$F4		; DATA XREF: RAM:7CDE^w	RAM:8266^o
byte_83C0:	.BYTE	$82		; DATA XREF: RAM:7CE4^w
unk_83C1:	.BYTE	3		; DATA XREF: RAM:7C26^r	RAM:7D43^r
unk_83C2:	.BYTE	0		; DATA XREF: RAM:7C2C^r	RAM:7D49^r
		.BYTE	$BB ; »
		.BYTE	0
		.BYTE	$73 ; s
		.BYTE	1
		.BYTE	$2B ; +
		.BYTE	2
unk_83C9:	.BYTE	0		; DATA XREF: RAM:7AEC^r	RAM:7B31^r ...
		.BYTE	$1A
		.BYTE	$34 ; 4
		.BYTE	$4E ; N
byte_83CD:	.BYTE	0			; DATA XREF: RAM:7AE6^r	RAM:7B29^r ...
byte_83CE:	.BYTE	0			; DATA XREF: RAM:7C16^w	RAM:7C77^w ...
byte_83CF:	.BYTE	0			; DATA XREF: RAM:7DD1^w	RAM:828C^o
byte_83D0:	.BYTE	0			; DATA XREF: RAM:7CAF^w	RAM:loc_7E09^r
byte_83D1:	.BYTE	0			; DATA XREF: RAM:7B89^w	RAM:7BEC^w ...
; ---------------------------------------------------------------------------

loc_83D2:				; CODE XREF: RAM:7924^j
					; DATA XREF: RAM:off_7927^o
		dldi	off_16, byte_8662
		JSR	$1818

loc_83DD:				; CODE XREF: RAM:83E9vj
		JSR	$181E
		CMP	#$1B
		BNE	loc_83E7
		JMP	loc_78F0
; ---------------------------------------------------------------------------

loc_83E7:				; CODE XREF: RAM:83E2^j
		CMP	#$20 ; ' '
		BNE	loc_83DD
		dldi	off_16, $8904
		JSR	$1818
		LDY	#$1F

loc_83F8:				; CODE XREF: RAM:83FFvj
		LDA	unk_8E40,Y
		STA	$197C,Y
		DEY
		BPL	loc_83F8
		JSR	$1827
		LDA	#$31 ; '1'
		STA	byte_230
		LDA	#$80 ; ''
		STA	$234
		LDA	#0
		STA	$235
		LDA	#$21 ; '!'
		LDX	#$40 ; '@'
		LDY	#$EA ; 'ê'
		JSR	$1833
		JSR	$1830
		BPL	loc_8434

loc_8421:				; CODE XREF: RAM:8462vj	RAM:8493vj
		LDA	#$FE ; 'þ'
		STA	off_16
		LDA	#$87 ; ''
		STA	off_16+1
		JSR	$1818

loc_842C:				; CODE XREF: RAM:842Fvj
		JSR	$181E
		BMI	loc_842C
		JMP	loc_78F0
; ---------------------------------------------------------------------------

loc_8434:				; CODE XREF: RAM:841F^j
		LDX	#$7F ; ''
		LDA	#0

loc_8438:				; CODE XREF: RAM:843Cvj
		STA	$100,X
		DEX
		BPL	loc_8438
		LDX	#7

loc_8440:				; CODE XREF: RAM:8447vj
		LDA	unk_84A9,X
		STA	$100,X
		DEX
		BPL	loc_8440
		LDA	#1
		STA	word_232
		LDA	#0
		STA	word_232+1
		JSR	$1827
		LDA	#$57 ; 'W'
		LDX	#$80 ; ''
		LDY	#3
		JSR	$1833
		JSR	$1830
		BMI	loc_8421
		LDX	#0
		TXA

loc_8467:				; CODE XREF: RAM:846Bvj
		STA	$100,X
		INX
		BPL	loc_8467
		LDX	#7

loc_846F:				; CODE XREF: RAM:8476vj
		LDA	aArChar,X	; "AR CHAR!"
		STA	$100,X
		DEX
		BPL	loc_846F
		LDA	#2
		STA	word_232
		LDA	#0
		STA	word_232+1
		JSR	$1827
		LDA	#$57 ; 'W'
		LDX	#$80 ; ''
		LDY	#3
		JSR	$1833
		JSR	$1830
		BPL	loc_8496
		JMP	loc_8421
; ---------------------------------------------------------------------------

loc_8496:				; CODE XREF: RAM:8491^j
		LDA	#$80 ; ''
		STA	off_16
		LDA	#$88 ; ''
		STA	off_16+1
		JSR	$1818

loc_84A1:				; CODE XREF: RAM:84A4vj
		JSR	$181E
		BMI	loc_84A1
		JMP	loc_7678
; ---------------------------------------------------------------------------
unk_84A9:	.BYTE	0		; DATA XREF: RAM:loc_8440^r
		.BYTE	1
		.BYTE	0
		.BYTE	6
		.BYTE	6
		.BYTE	6
; ---------------------------------------------------------------------------
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_84B1:				; CODE XREF: sub_793D^p
		LDA	#$7F ; ''
		STA	$253
		LDA	#0
		STA	$22F
		LDA	#2
		STA	$18B9
		dldi	off_224, loc_8640
		LDA	#$E8 ; 'è'
		STA	$254
		LDA	#$85 ; ''
		STA	$255
		LDA	#0
		STA	9
		LDA	#4
		STA	$A
		LDX	#8

loc_84DE:				; CODE XREF: RAM:84F2vj
		LDY	#$77 ; 'w'

loc_84E0:				; CODE XREF: RAM:84E4vj
		TYA
		STA	(off_9),Y
		DEY
		BPL	loc_84E0
		LDA	off_9
		CLC
		ADC	#$78 ; 'x'
		STA	off_9
		BCC	loc_84F1
		INC	off_9+1

loc_84F1:				; CODE XREF: RAM:84ED^j
		DEX
		BNE	loc_84DE
		LDA	#0
		STA	loc_8504+1
		LDA	#$BD ; '½'
		STA	loc_8504+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; ''

loc_8504:				; CODE XREF: RAM:8508vj	RAM:850Evj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_8504
		INC	loc_8504+2
		DEY
		BNE	loc_8504
		LDX	#7

loc_8512:				; CODE XREF: RAM:8516vj
		STA	$D000,X
		DEX
		BPL	loc_8512
		LDA	#3
		TAX

loc_851B:				; CODE XREF: RAM:851Fvj
		STA	$D008,X
		DEX
		BPL	loc_851B
		ldi	SIZEM, $FF
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BBC0
		dldi	off_9, $0400
		LDA	#0
		STA	6

loc_8549:				; CODE XREF: RAM:856Fvj
		LDY	6
		LDA	(off_7),Y
		STA	4
		LDY	#7

loc_8551:				; CODE XREF: RAM:855Cvj
		LSR	4
		BCC	loc_855B
		LDA	(off_9),Y
		ORA	#$80
		STA	(off_9),Y

loc_855B:				; CODE XREF: RAM:8553^j
		DEY
		BPL	loc_8551
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_8569
		INC	$A

loc_8569:				; CODE XREF: RAM:8565^j
		INC	6
		LDA	6
		CMP	#$78 ; 'x'
		BCC	loc_8549
		LDA	off_7
		CLC
		ADC	#$78 ; 'x'
		STA	off_7
		BCC	loc_857C
		INC	off_7+1

loc_857C:				; CODE XREF: RAM:8578^j
		LDX	#0
		STX	6
		LDA	#$90 ; ''
		STA	$F0
		LDA	#$BD ; '½'
		STA	$F1

loc_8588:				; CODE XREF: RAM:8599vj
		CLC
		LDA	$F0,X
		ADC	#$80 ; ''
		STA	$F2,X
		LDA	$F1,X
		ADC	#0
		STA	$F3,X
		INX
		INX
		CPX	#8
		BCC	loc_8588

loc_859B:				; CODE XREF: RAM:85B8vj
		LDX	#0

loc_859D:				; CODE XREF: RAM:85B6vj
		LDY	6
		LDA	(off_7),Y
		LDY	#4

loc_85A3:				; CODE XREF: RAM:85A8vj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_85A3
		INX
		INX
		INC	6
		LDA	6
		CMP	#$78 ; 'x'
		BCS	loc_85BA
		CPX	#$A
		BCC	loc_859D
		BCS	loc_859B

loc_85BA:				; CODE XREF: RAM:85B2^j
		LDA	#9
		STA	$248
		LDA	#$86 ; ''
		STA	$249
		LDA	#$C0 ; 'À'
		STA	NMIEN
		DEC	$22F
		LDA	#0
		STA	$18B8
		STA	$253
		LDX	#7

loc_85D6:				; CODE XREF: RAM:85DDvj
		LDA	unk_85E0,X
		STA	$D000,X
		DEX
		BPL	loc_85D6
		RTS
; ---------------------------------------------------------------------------
unk_85E0:	.BYTE	$50 ; P		; DATA XREF: RAM:loc_85D6^r
		.BYTE	$70 ; p
		.BYTE	$90 ; 
		.BYTE	$B0 ; °
		.BYTE	$48 ; H
		.BYTE	$40 ; @
		.BYTE	$38 ; 8
		.BYTE	$30 ; 0
unk_85E8:	.BYTE	$70 ; p		; DATA XREF: RAM:8607vo
		.BYTE	$70 ; p
		.BYTE	$E0 ; à
		.BYTE	0
		.BYTE	$44 ; D
		.BYTE	0
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	$41 ; A
		.WORD unk_85E8
; ---------------------------------------------------------------------------
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#$5F ; '_'
		LDY	$BB60,X

loc_8613:				; CODE XREF: RAM:8638vj
		LDA	$BAA0,X
		STA	WSYNC
		STA	COLPF1
		STY	COLPF3
		LDA	$B960,X
		STA	CHBASE
		LDA	$BA40,X
		STA	WSYNC
		STA	$D016
		LDA	$BB00,X
		STA	COLPF2
		LDY	$BB5F,X
		DEX
		BPL	loc_8613
		PLA
		TAY
		PLA
		TAX
		PLA
		RTI
; ---------------------------------------------------------------------------

loc_8640:
		ldi	CHBASE, $98
		LDX	#3

loc_8647:				; CODE XREF: RAM:864Evj
		LDA	$BCB1,X
		STA	$D016,X
		DEX
		BPL	loc_8647
		LDX	#3
		LDA	$BCB5

loc_8655:				; CODE XREF: RAM:8659vj
		STA	COLPM0,X
		DEX
		BPL	loc_8655
		LDA	$BCB0
		STA	COLBK
		RTS
; ---------------------------------------------------------------------------
byte_8662:
		STRSUB	byte_88C4
		MOVEXY	0,8
aPleaseInsertTh:.BYTE	$A5,"Please insert the disk to be made into a",$0D,$0D
aCharacterDiskI:.BYTE	$A5,"character disk in drive 1.",$D,$D,$D
aWarningThisWil:.BYTE	$A5,"WARNING: This will erase any data on",$0D,$0D
aTheDisk:	.BYTE	$A5,"the disk!",$D,$D,$D
byte_86E5:	MOVEXY	0,22		; DATA XREF: RAM:87FCvo
aPressSpaceBarT:.BYTE	$A5,"Press SPACE BAR to continue",$0D,$0D
aOrEscToCancel:	.BYTE	$A5,"or ESC to cancel",$0D,$FF
		STRSUB	byte_88C4
		MOVEXY	0,8
aYouCannotStore:.BYTE	$A5,"You cannot store characters on an",$0D,$0D
aAlternateRea_0:.BYTE	$A5,"Alternate Reality disk!",$D,$D,$D
aCallItSelfPres:.BYTE	$A5,"(Call it self-preservation...)",$D
byte_877E:	MOVEXY	0,23		; DATA XREF: RAM:887Evo	RAM:88C2vo ...
aPressAnyKeyToC:.BYTE	$A5,"Press any key to continue",$0D,$FF
		STRSUB	byte_88C4
		MOVEXY	0,8
aThisDiskContai:.BYTE	$A5,"This disk contains information!",$0D,$0D
aIfYouContinueT:.BYTE	$A5,"If you continue this information will",$0D,$0D
aBeErased:	.BYTE	$A5,"be erased!",$0D,$0D,$0D
		STRSUB	byte_86E5
		STRSUB	byte_88C4
		MOVEXY	0,8
		.BYTE	$A5
aUnableToFormat:.BYTE	"Unable to format this disk!"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aMakeSureTheDri:.BYTE	"Make sure the drive door is closed"
		.BYTE	$D
		.BYTE	$A5
aAndTheDiskIsNo:.BYTE	"and the disk is not write protected"
		.BYTE	$D
		.BYTE	$A5
aAndTryAgain_:	.BYTE	"and try again."
		.BYTE	$D
		.BYTE	$D
		STRSUB byte_877E
		STRSUB byte_88C4
		MOVEXY	0,8
		.BYTE	$A5
aCharacterDiskH:.BYTE	"Character disk has been created!"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aNoErrorsEncoun:.BYTE	"No errors encountered."
		.BYTE	$D
		STRSUB byte_877E
byte_88C4:	.BYTE	$A8		; DATA XREF: RAM:8663^o	RAM:871A^o ...
		.BYTE	$A5
aCreateCharacte:.BYTE	"Create Character Disk"
		.BYTE	$D
		.BYTE	$AE
		.BYTE	$12
		.BYTE	1
		.BYTE	$41 ; A
		.BYTE	0
aArDungeonChar:	.BYTE	"AR DUNGEON CHAR"
		.BYTE	$A0
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$AC ; ¬
		.BYTE	0
		.BYTE	$A0 ;  
		.BYTE	$32 ; 2
		.BYTE	$41 ; A
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
aArChar:	.BYTE	"AR CHAR!"        ; DATA XREF: sub_7ECB:loc_7F10^r
					; RAM:loc_846F^r
		.BYTE	$A8,$FF
		.BYTE	$A8
		MOVEXY	0,10
		.BYTE	$A5
aYouAreNowJoine:.BYTE	"You are now joined.  Prepare to enter"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aAlternateRea_1:.BYTE	"Alternate Reality, The Dungeon."
		.BYTE	$D
		.BYTE	$FF
		.BYTE	$A8
		.BYTE	$A5
aAlternateReali:.BYTE	"Alternate Reality"
		.BYTE	$D
		.BYTE	$A5
aTheDungeon:	.BYTE	"The Dungeon"
		.BYTE	$D
		MOVEXY	0,8
aPressNToCreate:.BYTE	"Press N to create a new character"
		MOVEXY	0,10
aPressEToResume:.BYTE	"Press E to resume an existing character"
		MOVEXY	0,12
aPressTToTransf:.BYTE	"Press T to transfer a City character"
		MOVEXY	0,14
aPressUForChara:.BYTE	"Press U for character utilities"
		.BYTE	$FF
		.BYTE	$A8
		.BYTE	$A5
aCreateANewChar:.BYTE	"Create a new character"
		.BYTE	$D
		MOVEXY	0,3
		.BYTE	$A5
aNoteIfYouWishT:.BYTE	"NOTE: If you wish to keep this character"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aYouMustHaveADu:.BYTE	"you must have a Dungeon character disk"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aReadyWithFewer:.BYTE	"ready with fewer than four characters"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aOnIt_:		.BYTE	"on it."
		.BYTE	$D
		MOVEXY	0,12
aEnterName:	.BYTE	"Enter name :"
		.BYTE	$FF
		MOVEXY	0,14
		.BYTE	$A5
aArtThouMaleOrF:.BYTE	"Art thou male or female? (M or F)"
		.BYTE	$D
		.BYTE	$FF
		MOVEXY	0,14
		.BYTE	$A5
aIMSorryButICan:.BYTE	"I'm sorry but I can't pronounce"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aThatNamePlease:.BYTE	"that name, please choose another!"
		.BYTE	$D
		.BYTE	$A5
		STRSUB byte_877E
		.BYTE	$A8
		MOVEXY	0,10
		.BYTE	$A5
aCharacterTermi:.BYTE	"Character terminated."
		.BYTE	$D
		.BYTE	$FF
		MOVEXY	0,17
		.BYTE	$A5
aThyNameIs:	.BYTE	"Thy name is "
		.BYTE	$B3
		.WORD $6321
		.BYTE	$19
		.BYTE	$2E
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aThySexIs:	.BYTE	"Thy sex is "
		PRINTSTRP $71,6
		.BYTE	$2E
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aIsThisCorrectq:.BYTE	"Is this correct? (Y or N)"
		.BYTE	$D
		.BYTE	$FF

a_CharacterUtil:
		.BYTE	$A8
		.BYTE	$A5
aCharacterUtili:.BYTE	"Character Utilities"
		.BYTE	$D
		MOVEXY	0,10
a1CreateABlankC:.BYTE	"  (1) Create a blank character disk"
		.BYTE	$D
		.BYTE	$D
a2RemoveACharac:.BYTE	"  (2) Remove a character"
		MOVEXY	0,22
		.BYTE	$A5
aSelect12OrPres:.BYTE	"Select 1-2 or press ESC for main menu."
		.BYTE	$D
		.BYTE	$FF
aMale:		.BYTE	"male",0
aFemale:	.BYTE	"female",0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$3F ; ?
		.BYTE	$3C ; <
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE	 $F
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$3C ; <
		.BYTE	0
		.BYTE	3
		.BYTE	 $F
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	$3C ; <
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE	 $F
		.BYTE	$3C ; <
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$3C ; <
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$3C ; <
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$3C ; <
		.BYTE	$3F ; ?
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$3C ; <
		.BYTE	 $F
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$3C ; <
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	$F0 ; ð
		.BYTE	$3C ; <
		.BYTE	$FC ; ü
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$F0 ; ð
		.BYTE	0
		.BYTE	0
		.BYTE	$C0 ; À
		.BYTE	$C0 ; À
		.BYTE	$C0 ; À
		.BYTE	$C0 ; À
		.BYTE	$C0 ; À
		.BYTE	$FC ; ü
		.BYTE	0
		.BYTE	0
		.BYTE	$F0 ; ð
		.BYTE	$3C ; <
		.BYTE	$F0 ; ð
		.BYTE	$C0 ; À
		.BYTE	0
		.BYTE	$FC ; ü
		.BYTE	0
		.BYTE	0
		.BYTE	$FC ; ü
		.BYTE	$F0 ; ð
		.BYTE	$C0 ; À
		.BYTE	$F0 ; ð
		.BYTE	$3C ; <
		.BYTE	$F0 ; ð
		.BYTE	0
		.BYTE	0
		.BYTE	$F0 ; ð
		.BYTE	$F0 ; ð
		.BYTE	$F0 ; ð
		.BYTE	$F0 ; ð
		.BYTE	$FC ; ü
		.BYTE	$F0 ; ð
		.BYTE	0
		.BYTE	0
		.BYTE	$FC ; ü
		.BYTE	0
		.BYTE	$F0 ; ð
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$F0 ; ð
		.BYTE	0
		.BYTE	0
		.BYTE	$F0 ; ð
		.BYTE	0
		.BYTE	$F0 ; ð
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$F0 ; ð
		.BYTE	0
		.BYTE	0
		.BYTE	$FC ; ü
		.BYTE	$3C ; <
		.BYTE	$F0 ; ð
		.BYTE	$C0 ; À
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$F0 ; ð
		.BYTE	$3C ; <
		.BYTE	$F0 ; ð
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$F0 ; ð
		.BYTE	0
		.BYTE	0
		.BYTE	$F0 ; ð
		.BYTE	$3C ; <
		.BYTE	$FC ; ü
		.BYTE	$3C ; <
		.BYTE	$F0 ; ð
		.BYTE	$C0 ; À
		.BYTE	0
unk_8CC0:	.BYTE	$98 ; 		; DATA XREF: sub_79DD+27^r
		.BYTE	$A8 ; ¨
		.BYTE	$C0 ; À
		.BYTE	$D0 ; Ð
		.BYTE	$E8 ; è
		.BYTE	$F8 ; ø
		.BYTE	$10
		.BYTE	$20
		.BYTE	$38 ; 8
		.BYTE	$48 ; H
		.BYTE	$60 ; `
		.BYTE	$70 ; p
		.BYTE	$88 ; 
		.BYTE	$98 ; 
		.BYTE	$90 ; 
		.BYTE	$A0 ;  
unk_8CD0:	.BYTE	$9A ; 		; DATA XREF: sub_79DD+2C^r
		.BYTE	$9A ; 
		.BYTE	$9A ; 
		.BYTE	$9A ; 
		.BYTE	$9A ; 
		.BYTE	$9A ; 
		.BYTE	$9B ; 
		.BYTE	$9B ; 
		.BYTE	$9B ; 
		.BYTE	$9B ; 
		.BYTE	$9B ; 
		.BYTE	$9B ; 
		.BYTE	$9B ; 
		.BYTE	$9B ; 
		.BYTE	$AF ; ¯
		.BYTE	$AF ; ¯
unk_8CE0:	.BYTE	0		; DATA XREF: RAM:loc_77A4^r RAM:77BC^w ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8CE8:	.BYTE	0		; DATA XREF: sub_7959+8^r sub_7959+B^w
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8CF0:	.BYTE	1		; DATA XREF: sub_7959+E^r
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
unk_8CF8:	.BYTE	$10		; DATA XREF: sub_7959:loc_795D^r
		.BYTE	0
		.BYTE	$B0 ; °
		.BYTE	$D0 ; Ð
		.BYTE	$F0 ; ð
		.BYTE	$70 ; p
		.BYTE	$90 ; 
		.BYTE	$30 ; 0
unk_8D00:	.BYTE	2		; DATA XREF: RAM:77B1^w	RAM:782D^r ...
unk_8D01:	.BYTE	1		; DATA XREF: RAM:77B7^w	RAM:7827^r ...
		.BYTE	1
		.BYTE	3
		.BYTE	1
		.BYTE	4
		.BYTE	1
		.BYTE	5
		.BYTE	1
		.BYTE	6
		.BYTE	1
		.BYTE	7
		.BYTE	1
		.BYTE	8
		.BYTE	0
		.BYTE	9
unk_8D10:	.BYTE	2		; DATA XREF: RAM:77AE^r	sub_7959+1E^r ...
unk_8D11:	.BYTE	1		; DATA XREF: RAM:77B4^r	sub_7959+24^r ...
		.BYTE	1
		.BYTE	3
		.BYTE	1
		.BYTE	4
		.BYTE	1
		.BYTE	5
		.BYTE	1
		.BYTE	6
		.BYTE	1
		.BYTE	7
		.BYTE	1
		.BYTE	8
		.BYTE	0
		.BYTE	9
unk_8D20:	.BYTE	0		; DATA XREF: RAM:782A^w	RAM:7835^r ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_8D26:	.BYTE	0			; DATA XREF: RAM:785D^r
byte_8D27:	.BYTE	0			; DATA XREF: RAM:7866^r
unk_8D28:	.BYTE	0		; DATA XREF: sub_7959+68^r
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE	8
		.BYTE	9
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE	8
		.BYTE	9
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE	8
		.BYTE	9
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE	8
		.BYTE	9
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE	8
		.BYTE	9
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE	8
		.BYTE	9
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE	8
		.BYTE	9
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE	8
		.BYTE	9
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE	8
		.BYTE	9
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE	8
		.BYTE	9
unk_8D8C:	.BYTE	0		; DATA XREF: sub_7959+6E^r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	6
		.BYTE	6
		.BYTE	6
		.BYTE	6
		.BYTE	6
		.BYTE	6
		.BYTE	6
		.BYTE	6
		.BYTE	6
		.BYTE	6
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	8
		.BYTE	8
		.BYTE	8
		.BYTE	8
		.BYTE	8
		.BYTE	8
		.BYTE	8
		.BYTE	8
		.BYTE	8
		.BYTE	8
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE	9
unk_8DF0:	.BYTE	0		; DATA XREF: sub_7959:loc_7974^r
		.BYTE	2
		.BYTE	4
		.BYTE	6
		.BYTE	8
		.BYTE	 $A
		.BYTE	 $C
		.BYTE	 $E
		.BYTE	$10
		.BYTE	$12
unk_8DFA:	.BYTE	0		; DATA XREF: sub_79DD+31^r
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	2
		.BYTE	2
		.BYTE	3
		.BYTE	3
		.BYTE	4
		.BYTE	4
		.BYTE	5
		.BYTE	5
		.BYTE	6
		.BYTE	6
		.BYTE	7
		.BYTE	7
		.BYTE	8
		.BYTE	8
unk_8E0C:	.BYTE	0		; DATA XREF: sub_79DD+A^r sub_79DD+1A^r
		.BYTE	8
		.BYTE	$10
		.BYTE	$18
		.BYTE	$20
		.BYTE	$28 ; (
		.BYTE	$30 ; 0
		.BYTE	$38 ; 8
		.BYTE	$40 ; @
		.BYTE	$48 ; H
unk_8E16:	.BYTE	0		; DATA XREF: RAM:7831^r
		.BYTE	 $A
		.BYTE	$14
		.BYTE	$1E
		.BYTE	$28 ; (
		.BYTE	$32 ; 2
		.BYTE	$3C ; <
		.BYTE	$46 ; F
		.BYTE	$50 ; P
		.BYTE	$5A ; Z
unk_8E20:	.BYTE	"      Loading Character...      " ; DATA XREF: RAM:loc_7C08^r
unk_8E40:	.BYTE	$20		; DATA XREF: RAM:loc_83F8^r
		.BYTE	$20
		.BYTE	$46 ; F
		.BYTE	$6F ; o
		.BYTE	$72 ; r
		.BYTE	$6D ; m
		.BYTE	$61 ; a
		.BYTE	$74 ; t
		.BYTE	$74 ; t
		.BYTE	$69 ; i
		.BYTE	$6E ; n
		.BYTE	$67 ; g
		.BYTE	$20
		.BYTE	$43 ; C
		.BYTE	$68 ; h
		.BYTE	$61 ; a
		.BYTE	$72 ; r
		.BYTE	$61 ; a
		.BYTE	$63 ; c
		.BYTE	$74 ; t
		.BYTE	$65 ; e
		.BYTE	$72 ; r
		.BYTE	$20
		.BYTE	$64 ; d
		.BYTE	$69 ; i
		.BYTE	$73 ; s
		.BYTE	$6B ; k
		.BYTE	$2E ; .
		.BYTE	$2E ; .
		.BYTE	$2E ; .
		.BYTE	$20
		.BYTE	$20
unk_8E60:	.BYTE	"      Removing Character...  "
		.BYTE	"      Checking Character Disk...   "
unk_8EA0:	.BYTE	0		; DATA XREF: RAM:loc_7B49^r
					; sub_7ECB+58^w
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8EA8:	.BYTE	0		; DATA XREF: RAM:7B2E^w	RAM:7CAC^r ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8EAC:	.BYTE	0		; DATA XREF: RAM:7DCB^w
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8EB0:	.BYTE	0		; DATA XREF: RAM:loc_7CB7^w RAM:7CBE^w ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8EB4:	.BYTE	0		; DATA XREF: RAM:7B8C^r	RAM:7B95^r ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8EB8:	.BYTE	0		; DATA XREF: RAM:loc_7B36^w
					; RAM:off_82F5^o
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8ED2:	.BYTE	0		; DATA XREF: RAM:off_82F7^o
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8EEC:	.BYTE	0		; DATA XREF: RAM:off_82F9^o
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8F06:	.BYTE	0		; DATA XREF: RAM:off_82FB^o
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
