;		.ORG	$7600
		.BYTE	0
; ---------------------------------------------------------------------------
		JMP	loc_7612
; ---------------------------------------------------------------------------
		JMP	loc_760C
; ---------------------------------------------------------------------------
		JMP	loc_760C
; ---------------------------------------------------------------------------
		.BYTE $6F ; o
		.BYTE $85 ; Ö
; ---------------------------------------------------------------------------

loc_760C:				; CODE XREF: RAM:7604j	RAM:7607j
		LDA	#0
		STA	$192A
		RTS
; ---------------------------------------------------------------------------

loc_7612:				; CODE XREF: RAM:7601j
		LDA	$18B9
		CMP	#1
		BEQ	loc_761E
		LDA	#1
		JSR	$180F

loc_761E:				; CODE XREF: RAM:7617j
		LDA	#$41 ; 'A'
		STA	$1977
		LDA	#$76 ; 'v'
		STA	$1978
		LDX	#$48 ; 'H'

loc_762A:				; CODE XREF: RAM:7630j
		LDA	$78A2,X
		STA	$90,X
		DEX
		BPL	loc_762A
		STX	$1975
		INX
		STX	$32
		STX	$F
		STX	$1937
		STX	byte_7855
		RTS
; ---------------------------------------------------------------------------
		BIT	$1975
		BMI	loc_7649
		JMP	loc_76F7
; ---------------------------------------------------------------------------

loc_7649:				; CODE XREF: RAM:7644j
		JSR	loc_7A37
		JSR	sub_7E4D
		LDA	$6315
		CMP	#4
		BNE	loc_76A0
		LDA	$1912
		CMP	#1
		BNE	loc_766E
		LDA	$D20A
		CMP	#$EC ; 'Ï'
		BCC	loc_766E
		LDX	#$77 ; 'w'
		LDY	#$FD ; '˝'
		JSR	$1884
		JMP	loc_76A0
; ---------------------------------------------------------------------------

loc_766E:				; CODE XREF: RAM:765Bj	RAM:7662j
		LDA	$1912
		CMP	#8
		BNE	loc_76A0
		LDA	$6388
		AND	#2
		BEQ	loc_76A0
		LDA	$6315
		CMP	#4
		BNE	loc_76A0
		LDA	#0
		STA	$6313
		LDA	#1
		STA	$6314
		STA	$6315
		LDA	#0
		STA	$192A
		LDA	#$FF
		STA	$1975
		DEC	$1956
		JMP	$180C
; ---------------------------------------------------------------------------

loc_76A0:				; CODE XREF: RAM:7654j	RAM:766Bj ...
		LDA	byte_7855
		BPL	loc_76CF
		LDA	$D20A
		BPL	loc_76CF
		LDX	$6394
		INX
		BNE	loc_76CF
		LDA	#$3F ; '?'
		JSR	$1899
		JSR	$1887
		BEQ	loc_76CF
		LDY	#0
		LDA	($41),Y
		BPL	loc_76CF
		AND	#7
		CMP	#1
		BEQ	loc_76CF
		LDA	#2
		LDY	#2
		STA	($41),Y
		JSR	$18A5

loc_76CF:				; CODE XREF: RAM:76A3j	RAM:76A8j ...
		LDA	$194B
		CMP	$96F0
		BEQ	loc_76F1
		PHA
		LDA	#0
		JSR	sub_77E5
		PLA
		CLC
		ADC	#7
		STA	$1909
		LDA	#$F0 ; ''
		STA	$190B
		LDA	#$96 ; 'ñ'
		STA	$190C
		JSR	$1842

loc_76F1:				; CODE XREF: RAM:76D5j
		JSR	sub_7AD4
		JMP	loc_7736
; ---------------------------------------------------------------------------

loc_76F7:				; CODE XREF: RAM:7646j
		BIT	$1954
		BPL	loc_7733
		LDA	#3
		STA	byte_77FA

loc_7701:				; CODE XREF: RAM:772Ej
		LDA	#$34 ; '4'
		JSR	sub_77E5
		LDA	$252

loc_7709:				; CODE XREF: RAM:770Cj
		CMP	$252
		BEQ	loc_7709
		LDA	$194D
		AND	#1
		ORA	$6390
		BNE	loc_7720
		LDA	#0
		JSR	sub_77E5
		JMP	loc_7723
; ---------------------------------------------------------------------------

loc_7720:				; CODE XREF: RAM:7716j
		JSR	sub_77EE

loc_7723:				; CODE XREF: RAM:771Dj
		LDA	$252

loc_7726:				; CODE XREF: RAM:7729j
		CMP	$252
		BEQ	loc_7726
		DEC	byte_77FA
		BPL	loc_7701
		JMP	loc_774E
; ---------------------------------------------------------------------------

loc_7733:				; CODE XREF: RAM:76FAj	RAM:77C2j
		JSR	sub_7AD4

loc_7736:				; CODE XREF: RAM:76F4j
		LDA	$194D
		AND	#1
		ORA	$6390
		BNE	loc_7748
		LDA	#0
		JSR	sub_77E5
		JMP	loc_774B
; ---------------------------------------------------------------------------

loc_7748:				; CODE XREF: RAM:773Ej
		JSR	sub_77EE

loc_774B:				; CODE XREF: RAM:7745j
		JSR	loc_7856

loc_774E:				; CODE XREF: RAM:7730j
		LDA	#$E5 ; 'Â'
		STA	$89
		LDA	#$80 ; 'Ä'
		STA	$8A
		JSR	loc_7EF4
		LDA	$63C0
		BEQ	loc_776F
		LDA	$6312
		CMP	$196A
		BEQ	loc_777C
		STA	$196A
		JSR	sub_7EC7
		JMP	loc_777C
; ---------------------------------------------------------------------------

loc_776F:				; CODE XREF: RAM:775Cj
		LDA	#$55 ; 'U'
		CMP	$196A
		BEQ	loc_777C
		STA	$196A
		JSR	sub_7EBC

loc_777C:				; CODE XREF: RAM:7764j	RAM:776Cj ...
		LDA	#$89 ; 'â'
		STA	$1977
		LDA	#$77 ; 'w'
		STA	$1978
		JMP	$1806
; ---------------------------------------------------------------------------
		LDA	$31
		CMP	#$20 ; ' '
		BNE	loc_7797
		LDA	#0
		STA	$1933
		DEC	$195F

loc_7797:				; CODE XREF: RAM:778Dj
		LDA	$63C0
		CMP	byte_77FC
		BEQ	loc_77A5
		STA	byte_77FC
		DEC	$1956

loc_77A5:				; CODE XREF: RAM:779Dj
		LDA	$194D
		AND	#1
		ORA	$6390
		CMP	byte_77FB
		BEQ	loc_77B8
		STA	byte_77FB
		DEC	$1956

loc_77B8:				; CODE XREF: RAM:77B0j
		LDA	$1956
		BEQ	loc_77C5
		LDA	#0
		STA	$1956
		JMP	loc_7733
; ---------------------------------------------------------------------------

loc_77C5:				; CODE XREF: RAM:77BBj
		JSR	$1821
		AND	#$F
		BEQ	loc_777C
		JSR	loc_7EE4
		LDA	#$41 ; 'A'
		STA	$1977
		LDA	#$76 ; 'v'
		STA	$1978
		LDX	#0
		STX	$1954
		DEX
		STX	byte_7855
		JMP	$1809

; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_77E5:				; CODE XREF: RAM:76DAp	RAM:7703p ...
		LDX	#4

loc_77E7:				; CODE XREF: sub_77E5+6j
		STA	$18BA,X
		DEX
		BPL	loc_77E7
		RTS
; End of function sub_77E5


; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_77EE:				; CODE XREF: RAM:loc_7720p
					; RAM:loc_7748p
		LDX	#4

loc_77F0:				; CODE XREF: sub_77EE+9j
		LDA	$194E,X
		STA	$18BA,X
		DEX
		BPL	loc_77F0
		RTS
; End of function sub_77EE

; ---------------------------------------------------------------------------
byte_77FA:	.BYTE 0			; DATA XREF: RAM:76FEw	RAM:772Bw
byte_77FB:	.BYTE $FF		; DATA XREF: RAM:77ADr	RAM:77B2w
byte_77FC:	.BYTE $FF		; DATA XREF: RAM:779Ar	RAM:779Fw
		.BYTE	7
		.BYTE $58 ; X
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	1
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE $C1 ; ¡
		.BYTE $FF
		.BYTE $C1 ; ¡
		.BYTE $FF
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE  $F
		.BYTE $92 ; í
		.BYTE $47 ; G
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE	0
		.BYTE $41 ; A
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $72 ; r
		.BYTE	0
		.BYTE	2
		.BYTE	8
		.BYTE	1
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE	0
		.BYTE $41 ; A
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $4A ; J
		.BYTE	0
		.BYTE	2
		.BYTE $10
		.BYTE	1
		.BYTE	0
		.BYTE $E1 ; ·
		.BYTE	0
		.BYTE	"A"
aAcrystalDoom:	.BYTE	"Crystal Doom",0
		.BYTE	0
byte_7855:	.BYTE 0			; DATA XREF: RAM:763Dw	RAM:loc_76A0r ...
; ---------------------------------------------------------------------------

loc_7856:				; CODE XREF: RAM:loc_774Bp
		LDX	#$47 ; 'G'

loc_7858:				; CODE XREF: RAM:7885j
		STX	byte_8F77
		LDA	unk_8AFD,X
		STA	loc_7875+1
		LDA	unk_8B45,X
		STA	loc_7875+2
		LDA	unk_7FC5,X
		STA	loc_787B+1
		LDA	unk_800D,X
		STA	loc_787B+2
		LDX	#$11

loc_7875:				; CODE XREF: RAM:787Fj
					; DATA XREF: RAM:785Ew	...
		LDA	$FFFF,X
		LDY	unk_8AEB,X

loc_787B:				; DATA XREF: RAM:786Aw	RAM:7870w
		STA	$FFFF,Y
		DEX
		BPL	loc_7875
		LDX	byte_8F77
		DEX
		BPL	loc_7858
		RTS

; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_7888:				; CODE XREF: sub_7AD4p
		LDX	#$D8 ; 'ÿ'
		LDA	#0

loc_788C:				; CODE XREF: sub_7888+17j
		STA	byte_8F7A,X
		STA	unk_9052,X
		STA	unk_912A,X
		STA	unk_9202,X
		STA	unk_92DA,X
		STA	unk_93B2,X
		DEX
		BNE	loc_788C
		RTS
; End of function sub_7888

; ---------------------------------------------------------------------------

loc_78A2:				; CODE XREF: RAM:78E5j
		LDX	$64
		LDA	unk_8AFD,X
		STA	$B2
		LDA	unk_8B45,X
		STA	$B3
		LDA	$FFFF
		AND	#$FF
		TAX
		LDA	unk_8E00,X
		AND	#$FF
		STA	$B0
		LDA	($B2),Y
		BIT	$7E
		BNE	loc_78C6
		ORA	#$FF
		STA	$FFFF,Y

loc_78C6:				; CODE XREF: RAM:78BFj
		LDA	$6E
		ADC	$76
		STA	$6E
		LDA	$77
		ADC	$6F
		STA	$6F
		TAX
		LDA	$FFFF,X
		ADC	$72
		STA	$9D
		LDA	$FFFF,X
		ADC	$73
		STA	$9E
		INC	$64
		DEC	$62
		BNE	loc_78A2
		JMP	loc_79F5
; ---------------------------------------------------------------------------

loc_78EA:				; CODE XREF: sub_7AD4+E0p
					; sub_7AD4+16Bp ...
		LDX	$87
		LDA	unk_8EE5,X
		STA	$69
		LDA	unk_8F2D,X
		STA	$68
		LDA	#0
		STA	$6C
		STA	$6D
		BIT	byte_8F7A
		BPL	loc_7917
		LDA	$69
		EOR	#$FF
		STA	$69
		LDA	$68
		EOR	#$FF
		STA	$68
		INC	$68
		BNE	loc_7913
		INC	$69

loc_7913:				; CODE XREF: RAM:790Fj
		LDA	#$47 ; 'G'
		STA	$6D

loc_7917:				; CODE XREF: RAM:78FFj
		LDX	byte_8F75
		BIT	$1957
		BPL	loc_7929
		CPX	#5
		BCC	loc_7929
		CPX	#7
		BCS	loc_7929
		DEX
		DEX

loc_7929:				; CODE XREF: RAM:791Dj	RAM:7921j ...
		LDA	$96F1,X
		STA	loc_7959+1
		CLC
		ADC	#$48 ; 'H'
		STA	$70
		LDA	$9701,X
		STA	loc_7959+2
		ADC	#0
		STA	$71

loc_793E:				; CODE XREF: RAM:7A1Bj
		LDX	$63
		BPL	loc_7945
		JMP	locret_7A1E
; ---------------------------------------------------------------------------

loc_7945:				; CODE XREF: RAM:7940j
		CPX	#$48 ; 'H'
		BCC	loc_794C
		JMP	locret_7A1E
; ---------------------------------------------------------------------------

loc_794C:				; CODE XREF: RAM:7947j
		LDA	unk_948B,X
		BPL	loc_7954
		JMP	loc_79F5
; ---------------------------------------------------------------------------

loc_7954:				; CODE XREF: RAM:794Fj
		LDY	$6D
		LDA	unk_948B,X

loc_7959:				; DATA XREF: RAM:792Cw	RAM:7937w
		ORA	$FFFF,Y
		STA	unk_948B,X
		BPL	loc_7963
		INC	$88

loc_7963:				; CODE XREF: RAM:795Fj
		TXA
		AND	#3
		TAY
		LDA	unk_8B8D,Y
		STA	$A6
		STA	$7E
		TXA
		LSR	A
		LSR	A
		STA	loc_79EF+1
		LDA	#0
		STA	$6E
		STA	$6F
		SEC
		LDA	#$23 ; '#'
		SBC	$67
		STA	$64
		LDA	$67
		TAX
		ADC	#0
		ASL	A
		STA	$62
		LDA	$6D
		STA	$65
		LDA	unk_8E81,X
		STA	$76
		LDA	unk_8E41,X
		STA	$77
		LDY	unk_8EC1,X
		STY	byte_8F76
		LDA	unk_8B9B,Y
		STA	$C2
		LDA	unk_8B9E,Y
		STA	$C3
		LDA	unk_8BA1,Y
		STA	$C9
		LDA	unk_8BA4,Y
		STA	$CA
		CPY	#0
		BEQ	loc_79BA

loc_79B5:				; CODE XREF: RAM:79B8j
		LSR	$65
		DEY
		BNE	loc_79B5

loc_79BA:				; CODE XREF: RAM:79B3j
		LDA	$65
		AND	#3
		TAX
		LDA	unk_8B8D,X
		STA	$A0
		LDA	$65
		LSR	A
		LSR	A
		STA	loc_79DF+1
		LDX	byte_8F76
		CLC
		LDA	$70
		ADC	unk_8B95,X
		STA	$9D
		LDA	$71
		ADC	unk_8B98,X
		STA	$9E
		LDA	$9D

loc_79DF:				; DATA XREF: RAM:79C8w
		ADC	#$FF
		STA	$9D
		BCC	loc_79E7
		INC	$9E

loc_79E7:				; CODE XREF: RAM:79E3j
		LDA	$9D
		STA	$72
		LDA	$9E
		STA	$73

loc_79EF:				; DATA XREF: RAM:7971w
		LDY	#$FF
		CLC
		JMP	$90
; ---------------------------------------------------------------------------

loc_79F5:				; CODE XREF: RAM:78E7j	RAM:7951j
		CLC
		LDA	$66
		ADC	$6A
		STA	$66
		LDA	$67
		ADC	$6B
		STA	$67
		CLC
		LDA	$63
		ADC	byte_8F7A
		STA	$63
		CLC
		LDA	$6C
		ADC	$68
		STA	$6C
		LDA	$6D
		ADC	$69
		STA	$6D
		CMP	#$48 ; 'H'
		BCS	locret_7A1E
		JMP	loc_793E
; ---------------------------------------------------------------------------

locret_7A1E:				; CODE XREF: RAM:7942j	RAM:7949j ...
		RTS

; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_7A1F:				; CODE XREF: sub_7AD4+D7p
					; sub_7AD4+162p ...
		LDA	#0
		STA	$7A
		LDX	#8

loc_7A25:				; CODE XREF: sub_7A1F+15j
		ASL	A
		ROL	$7A
		ASL	$79
		BCC	loc_7A33
		CLC
		ADC	$78
		BCC	loc_7A33
		INC	$7A

loc_7A33:				; CODE XREF: sub_7A1F+Bj sub_7A1F+10j
		DEX
		BNE	loc_7A25
		RTS
; End of function sub_7A1F

; ---------------------------------------------------------------------------

loc_7A37:				; CODE XREF: RAM:loc_7649p
		LDX	$6312
		LDA	unk_7ABC,X
		STA	loc_7A99+1
		LDA	unk_7AC0,X
		STA	loc_7A9F+1
		LDA	unk_7AC4,X
		STA	loc_7AAA+1
		LDA	unk_7AC8,X
		STA	loc_7AB0+1
		LDA	#0
		STA	$7B
		LDA	$6314
		LSR	A
		STA	$7C
		ROR	$7B
		LDA	$6313
		ASL	A
		ASL	A
		ORA	$7B
		CLC
		ADC	unk_7ACC,X
		STA	$7B
		LDA	$7C
		ADC	unk_7AD0,X
		CLC
		ADC	#$B0 ; '∞'
		STA	$7C
		LDY	#0
		LDX	#9
		STX	$7D

loc_7A7B:				; CODE XREF: RAM:7AB9j
		LDA	unk_8CA3,X
		STA	loc_7A8D+1
		LDA	unk_8CAD,X
		STA	loc_7A8D+2
		LDX	#0

loc_7A89:				; CODE XREF: RAM:7AA5j
		LDY	#0

loc_7A8B:				; CODE XREF: RAM:7A94j
		LDA	($7B),Y

loc_7A8D:				; DATA XREF: RAM:7A7Ew	RAM:7A84w
		STA	$FFFF,X
		INX
		INY
		CPY	#4
		BNE	loc_7A8B
		LDA	$7B
		CLC

loc_7A99:				; DATA XREF: RAM:7A3Dw
		ADC	#$FF
		STA	$7B
		LDA	$7C

loc_7A9F:				; DATA XREF: RAM:7A43w
		ADC	#$FF
		STA	$7C
		CPX	#$2C ; ','
		BCC	loc_7A89
		LDA	$7B
		CLC

loc_7AAA:				; DATA XREF: RAM:7A49w
		ADC	#$FF
		STA	$7B
		LDA	$7C

loc_7AB0:				; DATA XREF: RAM:7A4Fw
		ADC	#$FF
		STA	$7C
		LDX	$7D
		DEX
		STX	$7D
		BPL	loc_7A7B
		RTS
; ---------------------------------------------------------------------------
unk_7ABC:	.BYTE	4		; DATA XREF: RAM:7A3Ar
		.BYTE $80 ; Ä
		.BYTE $FC ; ¸
		.BYTE $80 ; Ä
unk_7AC0:	.BYTE	0		; DATA XREF: RAM:7A40r
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
unk_7AC4:	.BYTE $54 ; T		; DATA XREF: RAM:7A46r
		.BYTE $7C ; |
		.BYTE $AC ; ¨
		.BYTE $84 ; Ñ
unk_7AC8:	.BYTE	0		; DATA XREF: RAM:7A4Cr
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE	5
unk_7ACC:	.BYTE $6C ; l		; DATA XREF: RAM:7A66r
		.BYTE $A4 ; §
		.BYTE $94 ; î
		.BYTE $5C ; \
unk_7AD0:	.BYTE $FB ; ˚		; DATA XREF: RAM:7A6Dr
		.BYTE $FD ; ˝
		.BYTE	4
		.BYTE	2

; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_7AD4:				; CODE XREF: RAM:loc_76F1p
					; RAM:loc_7733p
		JSR	sub_7888
		LDX	#$47 ; 'G'
		LDA	#0

loc_7ADB:				; CODE XREF: sub_7AD4+Bj
		STA	$948B,X
		DEX
		BPL	loc_7ADB
		STA	$88
		LDX	$6312
		LDA	unk_8DCB,X
		STA	byte_7DE0
		LDA	unk_8DD1,X
		STA	byte_7DE1
		LDA	unk_8DCC,X
		STA	byte_7DDE
		LDA	unk_8DD0,X
		STA	byte_7DE3
		LDA	unk_8DCC,X
		STA	byte_7DDF
		LDA	unk_8DD2,X
		STA	byte_7DE2
		LDY	unk_7DE4,X
		LDA	$6316,Y
		CLC
		ADC	unk_7DE8,X
		BPL	loc_7B1B
		EOR	#$FF
		CLC
		ADC	#1

loc_7B1B:				; CODE XREF: sub_7AD4+40j
		STA	$7F
		LDX	#0

loc_7B1F:				; CODE XREF: sub_7AD4+306j
		STX	$80
		LDA	$88
		CMP	#$48 ; 'H'
		BCC	loc_7B2A
		JMP	locret_7DDD
; ---------------------------------------------------------------------------

loc_7B2A:				; CODE XREF: sub_7AD4+51j
		LDA	unk_8CA3,X
		STA	$7B
		LDA	unk_8CAD,X
		STA	$7C
		LDA	unk_8CB7,X
		STA	byte_8F77
		LDA	#$FF
		STA	byte_8F7A
		LDA	#5
		STA	$7D

loc_7B43:				; CODE XREF: sub_7AD4+EAj
		LDA	$7D
		ASL	A
		ASL	A
		ORA	byte_7DE3
		TAY
		LDA	($7B),Y
		AND	byte_7DDE
		BNE	loc_7B55
		JMP	loc_7BB7
; ---------------------------------------------------------------------------

loc_7B55:				; CODE XREF: sub_7AD4+7Cj
		BIT	byte_7DDE
		BPL	loc_7B5E
		LSR	A
		LSR	A
		LSR	A
		LSR	A

loc_7B5E:				; CODE XREF: sub_7AD4+84j
		STA	byte_8F75
		LDY	$7D
		LDA	unk_8CD7,Y
		STA	$81
		LDA	unk_8CE2,Y
		STA	$82
		LDA	unk_8D2F,Y
		STA	$83
		LDA	unk_8D35,Y
		STA	$84
		LDY	$80
		INY
		JSR	sub_7E0D
		CMP	#$48 ; 'H'
		BCS	loc_7BB7
		SBC	#0
		STA	$85
		STA	$63
		DEY
		JSR	sub_7E0D
		STA	$86
		LDA	$85
		SEC
		SBC	$86
		STA	$87
		LDY	$7D
		LDA	unk_8CC1,Y
		STA	$6B
		LDA	#$23 ; '#'
		SEC
		SBC	$63
		LDX	unk_8CCC,Y
		STX	$6A
		BEQ	loc_7BB2
		STX	$78
		STA	$79
		JSR	sub_7A1F
		STA	$66
		LDA	$7A

loc_7BB2:				; CODE XREF: sub_7AD4+D1j
		STA	$67
		JSR	loc_78EA

loc_7BB7:				; CODE XREF: sub_7AD4+7Ej sub_7AD4+ABj
		DEC	$7D
		DEC	byte_8F77
		BMI	loc_7BC1
		JMP	loc_7B43
; ---------------------------------------------------------------------------

loc_7BC1:				; CODE XREF: sub_7AD4+E8j
		LDX	$80
		LDA	unk_8CB7,X
		STA	byte_8F77
		LDA	#1
		STA	byte_8F7A
		LDA	#5
		STA	$7D

loc_7BD2:				; CODE XREF: sub_7AD4+175j
		LDA	$7D
		ASL	A
		ASL	A
		ORA	byte_7DE2
		TAY
		LDA	($7B),Y
		AND	byte_7DDF
		BNE	loc_7BE4
		JMP	loc_7C42
; ---------------------------------------------------------------------------

loc_7BE4:				; CODE XREF: sub_7AD4+10Bj
		BIT	byte_7DDF
		BPL	loc_7BED
		LSR	A
		LSR	A
		LSR	A
		LSR	A

loc_7BED:				; CODE XREF: sub_7AD4+113j
		STA	byte_8F75
		LDY	$7D
		LDA	unk_8CD7,Y
		STA	$81
		LDA	unk_8CE2,Y
		STA	$82
		LDA	unk_8D78,Y
		STA	$83
		LDA	unk_8D7E,Y
		STA	$84
		LDY	$80
		INY
		JSR	sub_7E2D
		CMP	#$48 ; 'H'
		BCS	loc_7C42
		STA	$85
		STA	$63
		DEY
		JSR	sub_7E2D
		STA	$86
		CLC
		SBC	$85
		STA	$87
		LDY	$7D
		LDA	unk_8CC1,Y
		STA	$6B
		LDA	$63
		SEC
		SBC	#$24 ; '$'
		LDX	unk_8CCC,Y
		STX	$6A
		BEQ	loc_7C3D
		STX	$78
		STA	$79
		JSR	sub_7A1F
		STA	$66
		LDA	$7A

loc_7C3D:				; CODE XREF: sub_7AD4+15Cj
		STA	$67
		JSR	loc_78EA

loc_7C42:				; CODE XREF: sub_7AD4+10Dj
					; sub_7AD4+13Aj
		INC	$7D
		DEC	byte_8F77
		BMI	loc_7C4C
		JMP	loc_7BD2
; ---------------------------------------------------------------------------

loc_7C4C:				; CODE XREF: sub_7AD4+173j
		LDA	#$14
		ORA	byte_7DE1
		TAY
		LDA	($7B),Y
		AND	byte_7DE0
		BNE	loc_7C5C
		JMP	loc_7CAB
; ---------------------------------------------------------------------------

loc_7C5C:				; CODE XREF: sub_7AD4+183j
		BIT	byte_7DE0
		BPL	loc_7C65
		LSR	A
		LSR	A
		LSR	A
		LSR	A

loc_7C65:				; CODE XREF: sub_7AD4+18Bj
		STA	byte_8F75
		LDA	#$72 ; 'r'
		STA	$83
		LDA	#$8D ; 'ç'
		STA	$84
		LDA	#$24 ; '$'
		STA	$81
		LDA	#$8D ; 'ç'
		STA	$82
		LDY	$80
		INY
		JSR	sub_7E0D
		STA	$63
		STA	$85
		LDA	#$89 ; 'â'
		STA	$83
		LDA	#$8D ; 'ç'
		STA	$84
		LDY	$80
		INY
		JSR	sub_7E2D
		SEC
		SBC	#1
		STA	$86
		SEC
		SBC	$85
		STA	$87
		LDA	#0
		STA	$6A
		STA	$6B
		LDY	$80
		INY
		JSR	sub_7DEC
		STA	$67
		JSR	loc_78EA

loc_7CAB:				; CODE XREF: sub_7AD4+185j
		LDX	$80
		LDY	unk_8CB7,X
		DEY
		STY	byte_8F77
		LDY	#4
		STY	$7D
		LDA	#$FF
		STA	byte_8F7A
		LDA	#0
		STA	$6A
		STA	$6B

loc_7CC3:				; CODE XREF: sub_7AD4+269j
		LDA	$7D
		ASL	A
		ASL	A
		ORA	byte_7DE1
		TAY
		LDA	($7B),Y
		AND	byte_7DE0
		BNE	loc_7CD5
		JMP	loc_7D36
; ---------------------------------------------------------------------------

loc_7CD5:				; CODE XREF: sub_7AD4+1FCj
		BIT	byte_7DE0
		BPL	loc_7CDE
		LSR	A
		LSR	A
		LSR	A
		LSR	A

loc_7CDE:				; CODE XREF: sub_7AD4+204j
		STA	byte_8F75
		LDY	$7D
		INY
		LDA	unk_8CD7,Y
		STA	$81
		LDA	unk_8CE2,Y
		STA	$82
		LDA	unk_8D2F,Y
		STA	$83
		LDA	unk_8D35,Y
		STA	$84
		LDY	$80
		INY
		JSR	sub_7E0D
		CMP	#$48 ; 'H'
		BCS	loc_7D36
		SEC
		SBC	#1
		STA	$85
		STA	$63
		LDY	$7D
		LDA	unk_8CD7,Y
		STA	$81
		LDA	unk_8CE2,Y
		STA	$82
		LDA	unk_8D2F,Y
		STA	$83
		LDA	unk_8D35,Y
		STA	$84
		LDY	$80
		INY
		JSR	sub_7E0D
		STA	$86
		LDA	$85
		SEC
		SBC	$86
		STA	$87
		JSR	sub_7DEC
		STA	$67
		JSR	loc_78EA

loc_7D36:				; CODE XREF: sub_7AD4+1FEj
					; sub_7AD4+22Cj
		DEC	$7D
		DEC	byte_8F77
		BMI	loc_7D40
		JMP	loc_7CC3
; ---------------------------------------------------------------------------

loc_7D40:				; CODE XREF: sub_7AD4+267j
		LDX	$80
		LDY	unk_8CB7,X
		DEY
		STY	byte_8F77
		LDY	#6
		STY	$7D
		LDA	#1
		STA	byte_8F7A
		LDA	#0
		STA	$6A
		STA	$6B

loc_7D58:				; CODE XREF: sub_7AD4+2FCj
		LDA	$7D
		ASL	A
		ASL	A
		ORA	byte_7DE1
		TAY
		LDA	($7B),Y
		AND	byte_7DE0
		BNE	loc_7D6A
		JMP	loc_7DC9
; ---------------------------------------------------------------------------

loc_7D6A:				; CODE XREF: sub_7AD4+291j
		BIT	byte_7DE0
		BPL	loc_7D73
		LSR	A
		LSR	A
		LSR	A
		LSR	A

loc_7D73:				; CODE XREF: sub_7AD4+299j
		STA	byte_8F75
		LDY	$7D
		DEY
		LDA	unk_8CD7,Y
		STA	$81
		LDA	unk_8CE2,Y
		STA	$82
		LDA	unk_8D78,Y
		STA	$83
		LDA	unk_8D7E,Y
		STA	$84
		LDY	$80
		INY
		JSR	sub_7E2D
		CMP	#$48 ; 'H'
		BCS	loc_7DC9
		STA	$85
		STA	$63
		LDY	$7D
		LDA	unk_8CD7,Y
		STA	$81
		LDA	unk_8CE2,Y
		STA	$82
		LDA	unk_8D78,Y
		STA	$83
		LDA	unk_8D7E,Y
		STA	$84
		LDY	$80
		INY
		JSR	sub_7E2D
		STA	$86
		CLC
		SBC	$85
		STA	$87
		LDY	$80
		INY
		JSR	sub_7DEC
		STA	$67
		JSR	loc_78EA

loc_7DC9:				; CODE XREF: sub_7AD4+293j
					; sub_7AD4+2C1j
		INC	$7D
		DEC	byte_8F77
		BMI	loc_7DD3
		JMP	loc_7D58
; ---------------------------------------------------------------------------

loc_7DD3:				; CODE XREF: sub_7AD4+2FAj
		LDX	$80
		INX
		CPX	#$A
		BCS	locret_7DDD
		JMP	loc_7B1F
; ---------------------------------------------------------------------------

locret_7DDD:				; CODE XREF: sub_7AD4+53j
					; sub_7AD4+304j
		RTS
; End of function sub_7AD4

; ---------------------------------------------------------------------------
byte_7DDE:	.BYTE 0			; DATA XREF: sub_7AD4+21w sub_7AD4+79r ...
byte_7DDF:	.BYTE 0			; DATA XREF: sub_7AD4+2Dw
					; sub_7AD4+108r ...
byte_7DE0:	.BYTE 0			; DATA XREF: sub_7AD4+15w
					; sub_7AD4+180r ...
byte_7DE1:	.BYTE 0			; DATA XREF: sub_7AD4+1Bw
					; sub_7AD4+17Ar ...
byte_7DE2:	.BYTE 0			; DATA XREF: sub_7AD4+33w
					; sub_7AD4+102r
byte_7DE3:	.BYTE 0			; DATA XREF: sub_7AD4+27w sub_7AD4+73r
unk_7DE4:	.BYTE	1		; DATA XREF: sub_7AD4+36r
		.BYTE	0
		.BYTE	1
		.BYTE	0
unk_7DE8:	.BYTE $DD ; ›		; DATA XREF: sub_7AD4+3Dr
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›

; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_7DEC:				; CODE XREF: sub_7AD4+1CFp
					; sub_7AD4+25Ap ...
		LDA	unk_8D24,Y
		STA	$78
		LDA	$7F
		STA	$79
		JSR	sub_7A1F
		LDX	#0

loc_7DFA:				; CODE XREF: sub_7DEC+16j
		SEC

loc_7DFB:				; CODE XREF: sub_7DEC+12j
		INX
		SBC	#$24 ; '$'
		BCS	loc_7DFB
		DEC	$7A
		BPL	loc_7DFA
		DEX
		TXA
		ADC	#$23 ; '#'
		SEC
		SBC	unk_8D72,Y
		RTS
; End of function sub_7DEC


; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_7E0D:				; CODE XREF: sub_7AD4+A6p sub_7AD4+B4p ...
		LDA	($81),Y
		STA	$78
		LDA	$7F
		STA	$79
		JSR	sub_7A1F
		LDX	#0

loc_7E1A:				; CODE XREF: sub_7E0D+15j
		SEC

loc_7E1B:				; CODE XREF: sub_7E0D+11j
		INX
		SBC	#$24 ; '$'
		BCS	loc_7E1B
		DEC	$7A
		BPL	loc_7E1A
		DEX
		STX	$7E
		LDA	($83),Y
		SEC
		SBC	$7E
		RTS
; End of function sub_7E0D


; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_7E2D:				; CODE XREF: sub_7AD4+135p
					; sub_7AD4+141p ...
		LDA	($81),Y
		STA	$78
		LDA	$7F
		STA	$79
		JSR	sub_7A1F
		LDX	#0

loc_7E3A:				; CODE XREF: sub_7E2D+15j
		SEC

loc_7E3B:				; CODE XREF: sub_7E2D+11j
		INX
		SBC	#$24 ; '$'
		BCS	loc_7E3B
		DEC	$7A
		BPL	loc_7E3A
		DEX
		STX	$7E
		LDA	($83),Y
		CLC
		ADC	$7E
		RTS
; End of function sub_7E2D


; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_7E4D:				; CODE XREF: RAM:764Cp
		LDA	$AF00
		ASL	A
		ASL	A
		CLC
		ADC	$AF00
		TAX

loc_7E57:				; CODE XREF: sub_7E4D+69j
		LDA	$6313
		CMP	$AF04,X
		BCC	loc_7EB1
		CMP	$AF02,X
		BCS	loc_7EB1
		LDA	$6314
		CMP	$AF01,X
		BCC	loc_7EB1
		CMP	$AF03,X
		BCS	loc_7EB1
		LDA	$AF05,X

loc_7E74:				; CODE XREF: sub_7E4D+6Dj
		CMP	$1912
		BEQ	locret_7EB0
		STA	$1912
		ASL	A
		ASL	A
		ASL	A
		TAX
		LDY	#0

loc_7E82:				; CODE XREF: sub_7E4D+3Fj
		LDA	$AF7E,X
		STA	$194B,Y
		INX
		INY
		CPY	#8
		BCC	loc_7E82
		LDA	$194E
		LDX	$194F
		LDY	$1950
		STA	$1950
		STX	$194E
		STY	$194F
		LDA	$194C
		AND	#$F0 ; ''
		STA	$1953
		LDA	$194C
		AND	#$F
		STA	$194C

locret_7EB0:				; CODE XREF: sub_7E4D+2Aj
		RTS
; ---------------------------------------------------------------------------

loc_7EB1:				; CODE XREF: sub_7E4D+10j sub_7E4D+15j ...
		TXA
		SEC
		SBC	#5
		TAX
		BCS	loc_7E57
		LDA	#0
		BCC	loc_7E74
; End of function sub_7E4D


; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_7EBC:				; CODE XREF: RAM:7779p

; FUNCTION CHUNK AT 7F4B SIZE 00000018 BYTES

		LDA	#$C6 ; '∆'
		STA	$89
		LDA	#$83 ; 'É'
		STA	$8A
		JMP	loc_7F4B
; End of function sub_7EBC


; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_7EC7:				; CODE XREF: RAM:7769p
		LDA	#$C6 ; '∆'
		STA	$89
		LDA	#$83 ; 'É'
		STA	$8A
		JSR	loc_7EF4
		LDA	$6312
		ASL	A
		TAX
		LDA	off_83BE,X
		STA	$89
		LDA	off_83BE+1,X
		STA	$8A
		JMP	loc_7EF4
; End of function sub_7EC7

; ---------------------------------------------------------------------------

loc_7EE4:				; CODE XREF: RAM:77CCp
		TAY
		LDX	unk_83AE,Y
		BNE	loc_7EEA

loc_7EEA:
		LDA	off_83A6,X
		STA	$89
		LDA	off_83A6+1,X
		STA	$8A

loc_7EF4:				; CODE XREF: RAM:7756p	sub_7EC7+8p ...
		LDY	#0
		LDA	($89),Y
		STA	$8D
		INY
		LDA	($89),Y
		STA	$8E
		INY
		LDA	($89),Y
		STA	loc_7F21+1
		INY
		LDA	($89),Y
		STA	loc_7F29+1
		INY
		LDA	($89),Y
		STA	$8F
		LDA	$89
		CLC
		ADC	#5
		STA	$89
		BCC	loc_7F1B
		INC	$8A

loc_7F1B:				; CODE XREF: RAM:7F17j	RAM:7F48j
		LDX	$8F
		LDA	unk_7FB3,X
		CLC

loc_7F21:				; DATA XREF: RAM:7F02w
		ADC	#$FF
		STA	loc_7F33+1
		LDA	unk_7FBC,X

loc_7F29:				; DATA XREF: RAM:7F08w
		ADC	#$FF
		STA	loc_7F33+2
		LDY	$8D
		DEY

loc_7F31:				; CODE XREF: RAM:7F37j
					; DATA XREF: sub_7EBC+91w ...
		LDA	($89),Y

loc_7F33:				; DATA XREF: RAM:7F23w	RAM:7F2Bw
		STA	$FFFF,Y
		DEY
		BPL	loc_7F31
		LDA	$89
		CLC
		ADC	$8D
		STA	$89
		BCC	loc_7F44
		INC	$8A

loc_7F44:				; CODE XREF: RAM:7F40j
		INC	$8F
		DEC	$8E
		BNE	loc_7F1B
		RTS
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_7EBC

loc_7F4B:				; CODE XREF: sub_7EBC+8j
		LDA	#$A9 ; '©'
		STA	loc_7F31
		LDA	#$FF
		STA	loc_7F31+1
		JSR	loc_7EF4
		LDA	#$B1 ; '±'
		STA	loc_7F31
		LDA	#$89 ; 'â'
		STA	loc_7F31+1
		RTS
; END OF FUNCTION CHUNK	FOR sub_7EBC
; ---------------------------------------------------------------------------
		.BYTE	0
		.BYTE	8
		.BYTE $10
		.BYTE $18
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $30 ; 0
		.BYTE $38 ; 8
		.BYTE $40 ; @
		.BYTE $48 ; H
		.BYTE $50 ; P
		.BYTE $58 ; X
		.BYTE $60 ; `
		.BYTE $68 ; h
		.BYTE $70 ; p
		.BYTE $78 ; x
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE $90 ; ê
		.BYTE $98 ; ò
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $B0 ; ∞
		.BYTE $B8 ; ∏
		.BYTE $C0 ; ¿
		.BYTE $C8 ; »
		.BYTE $D0 ; –
		.BYTE $D8 ; ÿ
		.BYTE $E0 ; ‡
		.BYTE $E8 ; Ë
		.BYTE $F0 ; 
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	8
		.BYTE $10
		.BYTE $18
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $30 ; 0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
unk_7FB3:	.BYTE	0		; DATA XREF: RAM:7F1Dr
		.BYTE $40 ; @
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $80 ; Ä
unk_7FBC:	.BYTE	8		; DATA XREF: RAM:7F26r
		.BYTE	9
		.BYTE  $A
		.BYTE  $C
		.BYTE  $D
		.BYTE  $E
		.BYTE $10
		.BYTE $11
		.BYTE $12
unk_7FC5:	.BYTE $58 ; X		; DATA XREF: RAM:7867r
		.BYTE $59 ; Y
		.BYTE $5A ; Z
		.BYTE $5B ; [
		.BYTE $5C ; \
		.BYTE $5D ; ]
		.BYTE $5E ; ^
		.BYTE $5F ; _
		.BYTE $98 ; ò
		.BYTE $99 ; ô
		.BYTE $9A ; ö
		.BYTE $9B ; õ
		.BYTE $9C ; ú
		.BYTE $9D ; ù
		.BYTE $9E ; û
		.BYTE $9F ; ü
		.BYTE $D8 ; ÿ
		.BYTE $D9 ; Ÿ
		.BYTE $DA ; ⁄
		.BYTE $DB ; €
		.BYTE $DC ; ‹
		.BYTE $DD ; ›
		.BYTE $DE ; ﬁ
		.BYTE $DF ; ﬂ
		.BYTE $58 ; X
		.BYTE $59 ; Y
		.BYTE $5A ; Z
		.BYTE $5B ; [
		.BYTE $5C ; \
		.BYTE $5D ; ]
		.BYTE $5E ; ^
		.BYTE $5F ; _
		.BYTE $98 ; ò
		.BYTE $99 ; ô
		.BYTE $9A ; ö
		.BYTE $9B ; õ
		.BYTE $9C ; ú
		.BYTE $9D ; ù
		.BYTE $9E ; û
		.BYTE $9F ; ü
		.BYTE $D8 ; ÿ
		.BYTE $D9 ; Ÿ
		.BYTE $DA ; ⁄
		.BYTE $DB ; €
		.BYTE $DC ; ‹
		.BYTE $DD ; ›
		.BYTE $DE ; ﬁ
		.BYTE $DF ; ﬂ
		.BYTE $58 ; X
		.BYTE $59 ; Y
		.BYTE $5A ; Z
		.BYTE $5B ; [
		.BYTE $5C ; \
		.BYTE $5D ; ]
		.BYTE $5E ; ^
		.BYTE $5F ; _
		.BYTE $98 ; ò
		.BYTE $99 ; ô
		.BYTE $9A ; ö
		.BYTE $9B ; õ
		.BYTE $9C ; ú
		.BYTE $9D ; ù
		.BYTE $9E ; û
		.BYTE $9F ; ü
		.BYTE $D8 ; ÿ
		.BYTE $D9 ; Ÿ
		.BYTE $DA ; ⁄
		.BYTE $DB ; €
		.BYTE $DC ; ‹
		.BYTE $DD ; ›
		.BYTE $DE ; ﬁ
		.BYTE $DF ; ﬂ
unk_800D:	.BYTE	8		; DATA XREF: RAM:786Dr
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
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $C
		.BYTE  $C
		.BYTE  $C
		.BYTE  $C
		.BYTE  $C
		.BYTE  $C
		.BYTE  $C
		.BYTE  $C
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE $10
		.BYTE $10
		.BYTE $10
		.BYTE $10
		.BYTE $10
		.BYTE $10
		.BYTE $10
		.BYTE $10
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE $40 ; @
		.BYTE $41 ; A
		.BYTE $42 ; B
		.BYTE $43 ; C
		.BYTE $44 ; D
		.BYTE $45 ; E
		.BYTE $46 ; F
		.BYTE $47 ; G
		.BYTE $80 ; Ä
		.BYTE $81 ; Å
		.BYTE $82 ; Ç
		.BYTE $83 ; É
		.BYTE $84 ; Ñ
		.BYTE $85 ; Ö
		.BYTE $86 ; Ü
		.BYTE $87 ; á
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE $40 ; @
		.BYTE $41 ; A
		.BYTE $42 ; B
		.BYTE $43 ; C
		.BYTE $44 ; D
		.BYTE $45 ; E
		.BYTE $46 ; F
		.BYTE $47 ; G
		.BYTE $80 ; Ä
		.BYTE $81 ; Å
		.BYTE $82 ; Ç
		.BYTE $83 ; É
		.BYTE $84 ; Ñ
		.BYTE $85 ; Ö
		.BYTE $86 ; Ü
		.BYTE $87 ; á
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE $40 ; @
		.BYTE $41 ; A
		.BYTE $42 ; B
		.BYTE $43 ; C
		.BYTE $44 ; D
		.BYTE $45 ; E
		.BYTE $46 ; F
		.BYTE $47 ; G
		.BYTE $80 ; Ä
		.BYTE $81 ; Å
		.BYTE $82 ; Ç
		.BYTE $83 ; É
		.BYTE $84 ; Ñ
		.BYTE $85 ; Ö
		.BYTE $86 ; Ü
		.BYTE $87 ; á
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
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $C
		.BYTE  $C
		.BYTE  $C
		.BYTE  $C
		.BYTE  $C
		.BYTE  $C
		.BYTE  $C
		.BYTE  $C
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE $10
		.BYTE $10
		.BYTE $10
		.BYTE $10
		.BYTE $10
		.BYTE $10
		.BYTE $10
		.BYTE $10
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $38 ; 8
		.BYTE	7
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $FB ; ˚
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE $80 ; Ä
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $E0 ; ‡
		.BYTE $EA ; Í
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $BF ; ø
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE  $B
		.BYTE  $B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE $82 ; Ç
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $EF ; Ô
		.BYTE $EB ; Î
		.BYTE $EB ; Î
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE $A0 ; †
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE  $B
		.BYTE  $B
		.BYTE  $B
		.BYTE  $B
		.BYTE  $B
		.BYTE  $B
		.BYTE  $B
		.BYTE  $B
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $BF ; ø
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE  $B
		.BYTE  $B
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $82 ; Ç
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $A0 ; †
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE $EB ; Î
		.BYTE $EB ; Î
		.BYTE $EF ; Ô
		.BYTE $EF ; Ô
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $E0 ; ‡
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $BF ; ø
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE  $B
		.BYTE  $B
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE $FB ; ˚
		.BYTE $FB ; ˚
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
unk_8272:	.BYTE $18		; DATA XREF: RAM:off_83A6o
		.BYTE	3
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $FB ; ˚
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FA ; ˙
unk_82BF:	.BYTE $18		; DATA XREF: RAM:83ACo
		.BYTE	3
		.BYTE $18
		.BYTE	1
		.BYTE	3
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $EF ; Ô
		.BYTE $EB ; Î
		.BYTE $EB ; Î
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $EB ; Î
		.BYTE $EB ; Î
		.BYTE $EF ; Ô
		.BYTE $EF ; Ô
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
unk_830C:	.BYTE $18		; DATA XREF: RAM:83A8o
		.BYTE	3
		.BYTE	8
		.BYTE	1
		.BYTE	5
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $FB ; ˚
		.BYTE $FB ; ˚
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
unk_8359:	.BYTE $18		; DATA XREF: RAM:83AAo
		.BYTE	3
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	3
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
off_83A6:	.WORD unk_8272		; DATA XREF: RAM:loc_7EEAr RAM:7EEFr
		.WORD unk_830C
		.WORD unk_8359
		.WORD unk_82BF
unk_83AE:	.BYTE	0		; DATA XREF: RAM:7EE5r
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	2
		.BYTE	0
off_83BE:	.WORD unk_84BB		; DATA XREF: sub_7EC7+10r sub_7EC7+15r
		.WORD unk_84F0
		.WORD unk_8515
		.WORD unk_854A
		.BYTE $30 ; 0
		.BYTE	5
		.BYTE $18
		.BYTE	0
		.BYTE	2
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $EA ; Í
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE	2
		.BYTE	2
		.BYTE	0
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $82 ; Ç
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $EA ; Í
		.BYTE $E8 ; Ë
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE	2
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $2B ; +
		.BYTE $2B ; +
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $2B ; +
		.BYTE  $B
		.BYTE  $B
		.BYTE $2B ; +
		.BYTE $AB ; ´
		.BYTE $2B ; +
		.BYTE  $B
		.BYTE  $B
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $E8 ; Ë
		.BYTE $E8 ; Ë
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE $2B ; +
		.BYTE $2B ; +
		.BYTE $2B ; +
		.BYTE $AB ; ´
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE  $A
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AB ; ´
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
unk_84BB:	.BYTE $10		; DATA XREF: RAM:off_83BEo
		.BYTE	3
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	3
		.BYTE	2
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE	8
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $20
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $20
		.BYTE $20
unk_84F0:	.BYTE $20		; DATA XREF: RAM:83C0o
		.BYTE	1
		.BYTE $20
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE	0
unk_8515:	.BYTE $10		; DATA XREF: RAM:83C2o
		.BYTE	3
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	3
		.BYTE $20
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE  $A
		.BYTE $20
		.BYTE $20
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE	8
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE	0
unk_854A:	.BYTE $20		; DATA XREF: RAM:83C4o
		.BYTE	1
		.BYTE $20
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	2
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE	0
		.WORD byte_85A1
		.WORD byte_85DA
		.WORD byte_860C
		.WORD byte_8640
		.WORD byte_8686
		.WORD byte_86B9
		.WORD byte_86F2
		.WORD byte_873B
		.WORD byte_8776
		.WORD byte_87AE
		.WORD byte_87E9
		.WORD byte_8815
		.WORD byte_8840
		.WORD byte_886A
		.WORD byte_8896
		.WORD byte_88C0
		.WORD byte_88F9
		.WORD byte_8939
		.WORD byte_8961
		.WORD byte_89AD
		.WORD byte_89F3
		.WORD byte_8A2C
		.WORD byte_8A62
		.WORD byte_8A98
		.WORD byte_8AC2
byte_85A1:	.BYTE $A6,  0,	1	; DATA XREF: RAM:856Fo
		.BYTE $A5
aASignOnTheDoor:.BYTE "A sign on the door says:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aDamonPythiasSh:.BYTE $22,"Damon & Pythias Shoppe",$22
		.BYTE $D
		.BYTE $FF
byte_85DA:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8571o
		.BYTE $A5
aASignAboveTheD:.BYTE "A sign above the door reads:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheRetreat:	.BYTE $22,"THE RETREAT",$22
		.BYTE $D
		.BYTE $FF
byte_860C:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8573o
		.BYTE $A5
aASignReads:	.BYTE "A sign reads:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aDerRathskeller:.BYTE $22,"Der Rathskeller Bar & Grille",$22
		.BYTE $D
		.BYTE $FF
byte_8640:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8575o
		.BYTE $A5
aCarvedAboveThe:.BYTE "Carved above the doorway are the words:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aFineWeaponsArm:.BYTE $22,"Fine Weapons & Armor",$22
		.BYTE $D
		.BYTE $FF
byte_8686:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8577o
		.BYTE $A5
aAnArrowPainted:.BYTE "An arrow painted on the floor"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aPointsSouth_:	.BYTE "points South."
		.BYTE $D
		.BYTE $FF
byte_86B9:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8579o
		.BYTE $A5
aWritingOnTheWa:.BYTE "Writing on the wall says:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aBewareOfTheDra:.BYTE $22,"BEWARE OF THE DRAGON!",$22
		.BYTE $D
		.BYTE $FF
byte_86F2:	.BYTE $A6,  0,	1	; DATA XREF: RAM:857Bo
		.BYTE $A5
aWritingCarvedI:.BYTE "Writing carved into the door reads:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheGauntlet:	.BYTE $22,"THE GAUNTLET"
		.BYTE $D
		.BYTE $A5
aDoNotEnter:	.BYTE " DO NOT ENTER",$22
		.BYTE $D
		.BYTE $FF
byte_873B:	.BYTE $A6,  0,	1	; DATA XREF: RAM:857Do
		.BYTE $A5
aGlowingLetters:.BYTE "Glowing letters on the door proclaim:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aEnchantress:	.BYTE $22,"Enchantress",$22,$D
		.BYTE $FF
byte_8776:	.BYTE $A6,  0,	1	; DATA XREF: RAM:857Fo
		.BYTE $A5
aWritingScrawle:.BYTE "Writing scrawled on the ground reads:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aGoBack:	.BYTE $22,"GO BACK!",$22
		.BYTE $D
		.BYTE $FF
byte_87AE:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8581o
		.BYTE $A5
aScratchingsOnT:.BYTE "Scratchings on the wall read:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThereIsNoEscap:.BYTE $22,"THERE IS NO ESCAPE!",$22,$D
		.BYTE $FF
byte_87E9:	.BYTE $A6,  0,	2	; DATA XREF: RAM:8583o
		.BYTE $A5
aARedArrowOnThe:.BYTE "A red arrow on the ground points East."
		.BYTE $D
		.BYTE $FF
byte_8815:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8585o
		.BYTE $A5
aADirtySignRead:.BYTE "A dirty sign reads:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aGoblinsOnly:	.BYTE $22,"Goblins only!",$22
		.BYTE $D
		.BYTE $FF
byte_8840:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8587o
		.BYTE $A5
aACrookedSignSa:.BYTE "A crooked sign says:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTrollsOnly:	.BYTE $22,"TROLLS ONLY",$22
		.BYTE $D
		.BYTE $FF
byte_886A:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8589o
		.BYTE $A5
aAPlaqueReads:	.BYTE "A plaque reads:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aShrineOfMonste:.BYTE $22,"Shrine of Monsters",$22,$D
		.BYTE $FF
byte_8896:	.BYTE $A6,  0,	2	; DATA XREF: RAM:858Bo
		.BYTE $A5
aYouHearTheSoun:.BYTE "You hear the sound of running water."
		.BYTE $D
		.BYTE $FF
byte_88C0:	.BYTE $A6,  0,	1	; DATA XREF: RAM:858Do
		.BYTE $A5
aGlowingLette_0:.BYTE "Glowing letters float in midair:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aSeekTheLight:	.BYTE $22,"SEEK THE LIGHT",$22
		.BYTE $D
		.BYTE $FF
byte_88F9:	.BYTE $A6,  0,	1	; DATA XREF: RAM:858Fo
		.BYTE $A5
aANotePostedOnT:.BYTE "A note posted on the door reads:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aBewareTheCaver:.BYTE $22,"BEWARE!  THE CAVERNS!",$22,$D
		.BYTE $FF
byte_8939:	.BYTE $A6,  0,	2	; DATA XREF: RAM:8591o
		.BYTE $A5
aTheStenchIsBec:.BYTE "The stench is becoming unbearable."
		.BYTE $D
		.BYTE $FF
byte_8961:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8593o
		.BYTE $A5
aASignAboveTh_0:.BYTE "A sign above the door says:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWelcomeToTheCh:.BYTE $22,"Welcome to the Chapel. Please come in!",$22
		.BYTE $D
		.BYTE $FF
byte_89AD:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8595o
		.BYTE $A5
aBlackLettersHo:.BYTE "Black letters hovering slowly say:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheShadowWillH:.BYTE $22,"THE SHADOW WILL HIDE THEE",$22,$D
		.BYTE $FF
byte_89F3:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8597o
		.BYTE $A5
aTheRuneOfTheAl:.BYTE "The rune of the all-knowing eye is upon"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheDoor_:	.BYTE "the door."
		.BYTE $D
		.BYTE $FF
byte_8A2C:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8599o
		.BYTE $A5
aOnTheWallIsAPa:.BYTE "On the wall is a painting of"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAPurplePyramid:.BYTE "a purple pyramid.",$D
		.BYTE $FF
byte_8A62:	.BYTE $A6,  0,	1	; DATA XREF: RAM:859Bo
		.BYTE $A5
aASkullHangsFro:.BYTE "A skull hangs from the ceiling"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAboveTheDoor_:	.BYTE "above the door."
		.BYTE $D
		.BYTE $FF
byte_8A98:	.BYTE $A6,  0,	2	; DATA XREF: RAM:859Do
		.BYTE $A5
aYouHearTheCrac:.BYTE "You hear the crackle of electricity.",$D
		.BYTE $FF
byte_8AC2:	.BYTE $A6,  0,	2	; DATA XREF: RAM:859Fo
		.BYTE $A5
aYouStandBefore:.BYTE "You stand before an elaborate door.",$D
		.BYTE $FF
unk_8AEB:	.BYTE	0		; DATA XREF: RAM:7878r
		.BYTE	8
		.BYTE $10
		.BYTE $18
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $30 ; 0
		.BYTE $38 ; 8
		.BYTE $40 ; @
		.BYTE $48 ; H
		.BYTE $50 ; P
		.BYTE $58 ; X
		.BYTE $60 ; `
		.BYTE $68 ; h
		.BYTE $70 ; p
		.BYTE $78 ; x
		.BYTE $80 ; Ä
		.BYTE $88 ; à
unk_8AFD:	.BYTE $7B ; {		; DATA XREF: RAM:785Br	RAM:78A4r
		.BYTE $8D ; ç
		.BYTE $9F ; ü
		.BYTE $B1 ; ±
		.BYTE $C3 ; √
		.BYTE $D5 ; ’
		.BYTE $E7 ; Á
		.BYTE $F9 ; ˘
		.BYTE  $B
		.BYTE $1D
		.BYTE $2F ; /
		.BYTE $41 ; A
		.BYTE $53 ; S
		.BYTE $65 ; e
		.BYTE $77 ; w
		.BYTE $89 ; â
		.BYTE $9B ; õ
		.BYTE $AD ; ≠
		.BYTE $BF ; ø
		.BYTE $D1 ; —
		.BYTE $E3 ; „
		.BYTE $F5 ; ı
		.BYTE	7
		.BYTE $19
		.BYTE $2B ; +
		.BYTE $3D ; =
		.BYTE $4F ; O
		.BYTE $61 ; a
		.BYTE $73 ; s
		.BYTE $85 ; Ö
		.BYTE $97 ; ó
		.BYTE $A9 ; ©
		.BYTE $BB ; ª
		.BYTE $CD ; Õ
		.BYTE $DF ; ﬂ
		.BYTE $F1 ; Ò
		.BYTE	3
		.BYTE $15
		.BYTE $27 ; '
		.BYTE $39 ; 9
		.BYTE $4B ; K
		.BYTE $5D ; ]
		.BYTE $6F ; o
		.BYTE $81 ; Å
		.BYTE $93 ; ì
		.BYTE $A5 ; •
		.BYTE $B7 ; ∑
		.BYTE $C9 ; …
		.BYTE $DB ; €
		.BYTE $ED ; Ì
		.BYTE $FF
		.BYTE $11
		.BYTE $23 ; #
		.BYTE $35 ; 5
		.BYTE $47 ; G
		.BYTE $59 ; Y
		.BYTE $6B ; k
		.BYTE $7D ; }
		.BYTE $8F ; è
		.BYTE $A1 ; °
		.BYTE $B3 ; ≥
		.BYTE $C5 ; ≈
		.BYTE $D7 ; ◊
		.BYTE $E9 ; È
		.BYTE $FB ; ˚
		.BYTE  $D
		.BYTE $1F
		.BYTE $31 ; 1
		.BYTE $43 ; C
		.BYTE $55 ; U
		.BYTE $67 ; g
		.BYTE $79 ; y
unk_8B45:	.BYTE $8F ; è		; DATA XREF: RAM:7861r	RAM:78A9r
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $94 ; î
unk_8B8D:	.BYTE $C0 ; ¿		; DATA XREF: RAM:7967r	RAM:79BFr
		.BYTE $30 ; 0
		.BYTE  $C
		.BYTE	3
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $FF
unk_8B95:	.BYTE	0		; DATA XREF: RAM:79D1r
		.BYTE $10
		.BYTE $54 ; T
unk_8B98:	.BYTE	0		; DATA XREF: RAM:79D8r
		.BYTE	5
		.BYTE	6
unk_8B9B:	.BYTE $A7 ; ß		; DATA XREF: RAM:799Dr
		.BYTE $37 ; 7
		.BYTE $7F ; 
unk_8B9E:	.BYTE $8B ; ã		; DATA XREF: RAM:79A2r
		.BYTE $8C ; å
		.BYTE $8C ; å
unk_8BA1:	.BYTE $EF ; Ô		; DATA XREF: RAM:79A7r
		.BYTE $5B ; [
		.BYTE $91 ; ë
unk_8BA4:	.BYTE $8B ; ã		; DATA XREF: RAM:79ACr
		.BYTE $8C ; å
		.BYTE $8C ; å
		.BYTE	0
		.BYTE $12
		.BYTE $24 ; $
		.BYTE $36 ; 6
		.BYTE $48 ; H
		.BYTE $5A ; Z
		.BYTE $6C ; l
		.BYTE $7E ; ~
		.BYTE $90 ; ê
		.BYTE $A2 ; ¢
		.BYTE $B4 ; ¥
		.BYTE $C6 ; ∆
		.BYTE $D8 ; ÿ
		.BYTE $EA ; Í
		.BYTE $FC ; ¸
		.BYTE  $E
		.BYTE $20
		.BYTE $32 ; 2
		.BYTE $44 ; D
		.BYTE $56 ; V
		.BYTE $68 ; h
		.BYTE $7A ; z
		.BYTE $8C ; å
		.BYTE $9E ; û
		.BYTE $B0 ; ∞
		.BYTE $C2 ; ¬
		.BYTE $D4 ; ‘
		.BYTE $E6 ; Ê
		.BYTE $F8 ; ¯
		.BYTE  $A
		.BYTE $1C
		.BYTE $2E ; .
		.BYTE $40 ; @
		.BYTE $52 ; R
		.BYTE $64 ; d
		.BYTE $76 ; v
		.BYTE $88 ; à
		.BYTE $9A ; ö
		.BYTE $AC ; ¨
		.BYTE $BE ; æ
		.BYTE $D0 ; –
		.BYTE $E2 ; ‚
		.BYTE $F4 ; Ù
		.BYTE	6
		.BYTE $18
		.BYTE $2A ; *
		.BYTE $3C ; <
		.BYTE $4E ; N
		.BYTE $60 ; `
		.BYTE $72 ; r
		.BYTE $84 ; Ñ
		.BYTE $96 ; ñ
		.BYTE $A8 ; ®
		.BYTE $BA ; ∫
		.BYTE $CC ; Ã
		.BYTE $DE ; ﬁ
		.BYTE $F0 ; 
		.BYTE	2
		.BYTE $14
		.BYTE $26 ; &
		.BYTE $38 ; 8
		.BYTE $4A ; J
		.BYTE $5C ; \
		.BYTE $6E ; n
		.BYTE $80 ; Ä
		.BYTE $92 ; í
		.BYTE $A4 ; §
		.BYTE $B6 ; ∂
		.BYTE $C8 ; »
		.BYTE $DA ; ⁄
		.BYTE $EC ; Ï
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	0
		.BYTE	9
		.BYTE $12
		.BYTE $1B
		.BYTE $24 ; $
		.BYTE $2D ; -
		.BYTE $36 ; 6
		.BYTE $3F ; ?
		.BYTE $48 ; H
		.BYTE $51 ; Q
		.BYTE $5A ; Z
		.BYTE $63 ; c
		.BYTE $6C ; l
		.BYTE $75 ; u
		.BYTE $7E ; ~
		.BYTE $87 ; á
		.BYTE $90 ; ê
		.BYTE $99 ; ô
		.BYTE $A2 ; ¢
		.BYTE $AB ; ´
		.BYTE $B4 ; ¥
		.BYTE $BD ; Ω
		.BYTE $C6 ; ∆
		.BYTE $CF ; œ
		.BYTE $D8 ; ÿ
		.BYTE $E1 ; ·
		.BYTE $EA ; Í
		.BYTE $F3 ; Û
		.BYTE $FC ; ¸
		.BYTE	5
		.BYTE  $E
		.BYTE $17
		.BYTE $20
		.BYTE $29 ; )
		.BYTE $32 ; 2
		.BYTE $3B ; ;
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE	0
		.BYTE	5
		.BYTE  $A
		.BYTE  $F
		.BYTE $14
		.BYTE $19
		.BYTE $1E
		.BYTE $23 ; #
		.BYTE $28 ; (
		.BYTE $2D ; -
		.BYTE $32 ; 2
		.BYTE $37 ; 7
		.BYTE $3C ; <
		.BYTE $41 ; A
		.BYTE $46 ; F
		.BYTE $4B ; K
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8CA3:	.BYTE $5F ; _		; DATA XREF: RAM:loc_7A7Br
					; sub_7AD4:loc_7B2Ar
		.BYTE $33 ; 3
		.BYTE	7
		.BYTE $DB ; €
		.BYTE $AF ; Ø
		.BYTE $83 ; É
		.BYTE $57 ; W
		.BYTE $2B ; +
		.BYTE $FF
		.BYTE $D3 ; ”
unk_8CAD:	.BYTE $96 ; ñ		; DATA XREF: RAM:7A81r	sub_7AD4+5Br
		.BYTE $96 ; ñ
		.BYTE $96 ; ñ
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $94 ; î
		.BYTE $94 ; î
unk_8CB7:	.BYTE	1		; DATA XREF: sub_7AD4+60r sub_7AD4+EFr ...
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
unk_8CC1:	.BYTE	0		; DATA XREF: sub_7AD4+C2r
					; sub_7AD4+14Dr
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8CCC:	.BYTE  $F		; DATA XREF: sub_7AD4+CCr
					; sub_7AD4+157r
		.BYTE $1C
		.BYTE $24 ; $
		.BYTE $33 ; 3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $33 ; 3
		.BYTE $24 ; $
		.BYTE $1C
		.BYTE  $F
unk_8CD7:	.BYTE $ED ; Ì		; DATA XREF: sub_7AD4+8Fr
					; sub_7AD4+11Er ...
		.BYTE $F8 ; ¯
		.BYTE	3
		.BYTE  $E
		.BYTE $19
		.BYTE $24 ; $
		.BYTE $19
		.BYTE  $E
		.BYTE	3
		.BYTE $F8 ; ¯
		.BYTE $ED ; Ì
unk_8CE2:	.BYTE $8C ; å		; DATA XREF: sub_7AD4+94r
					; sub_7AD4+123r ...
		.BYTE $8C ; å
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $8C ; å
		.BYTE $8C ; å
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $B
		.BYTE  $B
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $24 ; $
		.BYTE $12
		.BYTE	9
		.BYTE	6
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	0
unk_8D24:	.BYTE $24 ; $		; DATA XREF: sub_7DECr
		.BYTE $12
		.BYTE	6
		.BYTE	3
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	0
unk_8D2F:	.BYTE $3B ; ;		; DATA XREF: sub_7AD4+99r
					; sub_7AD4+21Ar ...
		.BYTE $46 ; F
		.BYTE $51 ; Q
		.BYTE $5C ; \
		.BYTE $67 ; g
		.BYTE $72 ; r
unk_8D35:	.BYTE $8D ; ç		; DATA XREF: sub_7AD4+9Er
					; sub_7AD4+21Fr ...
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE	3
		.BYTE  $E
		.BYTE $19
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $EE ; Ó
		.BYTE $F7 ; ˜
		.BYTE	0
		.BYTE	9
		.BYTE $12
		.BYTE $1B
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $E5 ; Â
		.BYTE $F3 ; Û
		.BYTE $FA ; ˙
		.BYTE	1
		.BYTE	8
		.BYTE  $F
		.BYTE $16
		.BYTE $1D
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE	1
		.BYTE	6
		.BYTE  $B
		.BYTE $10
		.BYTE $15
		.BYTE $1A
		.BYTE $1F
		.BYTE $CA ;  
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE	9
		.BYTE  $F
		.BYTE $12
		.BYTE $15
		.BYTE $18
		.BYTE $1B
		.BYTE $1E
		.BYTE $21 ; !
unk_8D72:	.BYTE	0		; DATA XREF: sub_7DEC+1Dr
		.BYTE $12
		.BYTE $18
		.BYTE $1B
		.BYTE $1D
		.BYTE $1E
unk_8D78:	.BYTE $1F		; DATA XREF: sub_7AD4+128r
					; sub_7AD4+2AFr ...
		.BYTE $20
		.BYTE $21 ; !
		.BYTE $22 ; "
		.BYTE $23 ; #
		.BYTE $89 ; â
unk_8D7E:	.BYTE $94 ; î		; DATA XREF: sub_7AD4+12Dr
					; sub_7AD4+2B4r ...
		.BYTE $9F ; ü
		.BYTE $AA ; ™
		.BYTE $B5 ; µ
		.BYTE $C0 ; ¿
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $48 ; H
		.BYTE $36 ; 6
		.BYTE $30 ; 0
		.BYTE $2D ; -
		.BYTE $2B ; +
		.BYTE $2A ; *
		.BYTE $29 ; )
		.BYTE $28 ; (
		.BYTE $27 ; '
		.BYTE $26 ; &
		.BYTE $25 ; %
		.BYTE $7E ; ~
		.BYTE $5A ; Z
		.BYTE $48 ; H
		.BYTE $3F ; ?
		.BYTE $39 ; 9
		.BYTE $36 ; 6
		.BYTE $33 ; 3
		.BYTE $30 ; 0
		.BYTE $2D ; -
		.BYTE $2A ; *
		.BYTE $27 ; '
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $51 ; Q
		.BYTE $47 ; G
		.BYTE $42 ; B
		.BYTE $3D ; =
		.BYTE $38 ; 8
		.BYTE $33 ; 3
		.BYTE $2E ; .
		.BYTE $29 ; )
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $4E ; N
		.BYTE $47 ; G
		.BYTE $40 ; @
		.BYTE $39 ; 9
		.BYTE $32 ; 2
		.BYTE $2B ; +
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $51 ; Q
		.BYTE $48 ; H
		.BYTE $3F ; ?
		.BYTE $36 ; 6
		.BYTE $2D ; -
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $49 ; I
		.BYTE $50 ; P
		.BYTE $45 ; E
		.BYTE $3A ; :
		.BYTE $2F ; /
unk_8DCB:	.BYTE  $F		; DATA XREF: sub_7AD4+12r
unk_8DCC:	.BYTE $F0 ; 		; DATA XREF: sub_7AD4+1Er sub_7AD4+2Ar
		.BYTE  $F
		.BYTE $F0 ; 
		.BYTE  $F
unk_8DD0:	.BYTE	1		; DATA XREF: sub_7AD4+24r
unk_8DD1:	.BYTE	0		; DATA XREF: sub_7AD4+18r
unk_8DD2:	.BYTE	0		; DATA XREF: sub_7AD4+30r
		.BYTE	1
		.BYTE	1
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
unk_8E00:	.BYTE	0		; DATA XREF: RAM:78B4r
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
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
		.BYTE $AA ; ™
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
		.BYTE $55 ; U
unk_8E41:	.BYTE	9		; DATA XREF: RAM:7992r
		.BYTE	4
		.BYTE	3
		.BYTE	2
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
		.BYTE	1
		.BYTE	1
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
		.BYTE $AA ; ™
unk_8E81:	.BYTE	0		; DATA XREF: RAM:798Dr
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $CD ; Õ
		.BYTE $80 ; Ä
		.BYTE $49 ; I
		.BYTE $20
		.BYTE	0
		.BYTE $CD ; Õ
		.BYTE $A3 ; £
		.BYTE $80 ; Ä
		.BYTE $62 ; b
		.BYTE $49 ; I
		.BYTE $33 ; 3
		.BYTE $20
		.BYTE  $F
		.BYTE	0
		.BYTE $E5 ; Â
		.BYTE $CD ; Õ
		.BYTE $B7 ; ∑
		.BYTE $A3 ; £
		.BYTE $91 ; ë
		.BYTE $80 ; Ä
		.BYTE $71 ; q
		.BYTE $62 ; b
		.BYTE $55 ; U
		.BYTE $49 ; I
		.BYTE $3E ; >
		.BYTE $33 ; 3
		.BYTE $29 ; )
		.BYTE $20
		.BYTE $17
		.BYTE  $F
		.BYTE	7
		.BYTE	0
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
unk_8EC1:	.BYTE	2		; DATA XREF: RAM:7997r
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8EE5:	.BYTE $48 ; H		; DATA XREF: RAM:78ECr
		.BYTE $24 ; $
		.BYTE $18
		.BYTE $12
		.BYTE  $E
		.BYTE  $C
		.BYTE  $A
		.BYTE	9
		.BYTE	8
		.BYTE	7
		.BYTE	6
		.BYTE	6
		.BYTE	5
		.BYTE	5
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
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
		.BYTE	2
		.BYTE	2
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
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
unk_8F2D:	.BYTE	0		; DATA XREF: RAM:78F1r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $66 ; f
		.BYTE	0
		.BYTE $49 ; I
		.BYTE	0
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE $8C ; å
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE $25 ; %
		.BYTE $CD ; Õ
		.BYTE $80 ; Ä
		.BYTE $3C ; <
		.BYTE	0
		.BYTE $CA ;  
		.BYTE $9A ; ö
		.BYTE $6E ; n
		.BYTE $46 ; F
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $E1 ; ·
		.BYTE $C5 ; ≈
		.BYTE $AB ; ´
		.BYTE $92 ; í
		.BYTE $7C ; |
		.BYTE $66 ; f
		.BYTE $53 ; S
		.BYTE $40 ; @
		.BYTE $2F ; /
		.BYTE $1E
		.BYTE  $F
		.BYTE	0
		.BYTE $F2 ; Ú
		.BYTE $E5 ; Â
		.BYTE $D9 ; Ÿ
		.BYTE $CD ; Õ
		.BYTE $C2 ; ¬
		.BYTE $B7 ; ∑
		.BYTE $AD ; ≠
		.BYTE $A3 ; £
		.BYTE $9A ; ö
		.BYTE $91 ; ë
		.BYTE $88 ; à
		.BYTE $80 ; Ä
		.BYTE $78 ; x
		.BYTE $71 ; q
		.BYTE $69 ; i
		.BYTE $62 ; b
		.BYTE $5C ; \
		.BYTE $55 ; U
		.BYTE $4F ; O
		.BYTE $49 ; I
		.BYTE $43 ; C
		.BYTE $3E ; >
		.BYTE $38 ; 8
		.BYTE $33 ; 3
		.BYTE $2E ; .
		.BYTE $29 ; )
		.BYTE $25 ; %
		.BYTE $20
		.BYTE $1C
		.BYTE $17
		.BYTE $13
		.BYTE  $F
		.BYTE  $B
		.BYTE	7
		.BYTE	4
		.BYTE	0
byte_8F75:	.BYTE 0			; DATA XREF: RAM:loc_7917r
					; sub_7AD4:loc_7B5Ew ...
byte_8F76:	.BYTE 0			; DATA XREF: RAM:799Aw	RAM:79CBr
byte_8F77:	.BYTE 0			; DATA XREF: RAM:loc_7858w RAM:7881r ...
		.BYTE	0
		.BYTE	0
byte_8F7A:	.BYTE 0			; DATA XREF: sub_7888:loc_788Cw
					; RAM:78FCr ...
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
unk_9052:	.BYTE $FF		; DATA XREF: sub_7888+7w
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
		.BYTE $6F ; o
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
unk_912A:	.BYTE $FF		; DATA XREF: sub_7888+Aw
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
		.BYTE $6F ; o
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
unk_9202:	.BYTE $FF		; DATA XREF: sub_7888+Dw
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
unk_92DA:	.BYTE $FF		; DATA XREF: sub_7888+10w
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
		.BYTE $6F ; o
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
		.BYTE $6F ; o
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
unk_93B2:	.BYTE $FF		; DATA XREF: sub_7888+13w
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
unk_948B:	.BYTE	0		; DATA XREF: RAM:loc_794Cr RAM:7956r ...
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
		.BYTE $6F ; o
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
		.BYTE $6F ; o
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
		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
;		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
;		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
;		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
;		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
;		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
;		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
;		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
;		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
		.BYTE	$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$00,$00,$00,$00
		.RES	96,$00
		.BYTE	$52,$5C,$F0,$20,$B9,$6D,$3E,$0F,$EA,$81,$BD,$26,$5E,$2A,$24,$7B
; end of 'RAM'


		.END
