		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;		.ORG	$7600
		.BYTE	0
; ---------------------------------------------------------------------------
		JMP	loc_7612
; ---------------------------------------------------------------------------
		JMP	loc_760C
; ---------------------------------------------------------------------------
		JMP	loc_760C
; ---------------------------------------------------------------------------
		.WORD	off_856F
; ---------------------------------------------------------------------------

loc_760C:				; CODE XREF: RAM:7604^j	RAM:7607^j
		ldi	$192A, $00
		RTS
; ---------------------------------------------------------------------------

loc_7612:				; CODE XREF: RAM:7601^j
		LDA	$18B9
		CMP	#1
		BEQ	loc_761E
		LDA	#1
		JSR	$180F

loc_761E:				; CODE XREF: RAM:7617^j
		dldi	off_1977, loc_7641
		LDX	#$48 ; 'H'

loc_762A:				; CODE XREF: RAM:7630vj
		LDA	loc_78A2,X
		STA	$90,X
		DEX
		BPL	loc_762A
		STX	$1975
		INX
		STX	$32
		STX	byte_F
		STX	$1937
		STX	byte_7855
		RTS
; ---------------------------------------------------------------------------

loc_7641:
		BIT	$1975
		BMI	loc_7649
		JMP	loc_76F7
; ---------------------------------------------------------------------------

loc_7649:				; CODE XREF: RAM:7644^j
		JSR	loc_7A37
		JSR	sub_7E4D
		LDA	I_LOC_Z
		CMP	#4
		BNE	loc_76A0
		LDA	$1912
		CMP	#1
		BNE	loc_766E
		LDA	RANDOM
		CMP	#$EC ; 'Ï'
		BCC	loc_766E
		ldxy	$77FD
		JSR	$1884
		JMP	loc_76A0
; ---------------------------------------------------------------------------

loc_766E:				; CODE XREF: RAM:765B^j	RAM:7662^j
		LDA	$1912
		CMP	#8
		BNE	loc_76A0
		LDA	$6388
		AND	#2
		BEQ	loc_76A0
		LDA	I_LOC_Z
		CMP	#4
		BNE	loc_76A0
		LDA	#0
		STA	I_LOC_X
		LDA	#1
		STA	I_LOC_Y
		STA	I_LOC_Z
		LDA	#0
		STA	$192A
		LDA	#$FF
		STA	$1975
		DEC	$1956
		JMP	$180C
; ---------------------------------------------------------------------------

loc_76A0:				; CODE XREF: RAM:7654^j	RAM:766B^j ...
		LDA	byte_7855
		BPL	loc_76CF
		LDA	RANDOM
		BPL	loc_76CF
		LDX	$6394
		INX
		BNE	loc_76CF
		LDA	#$3F ; '?'
		JSR	j_RND_A
		JSR	$1887
		BEQ	loc_76CF
		LDY	#0
		LDA	(off_41),Y
		BPL	loc_76CF
		AND	#7
		CMP	#1
		BEQ	loc_76CF
		LDA	#2
		LDY	#2
		STA	(off_41),Y
		JSR	$18A5

loc_76CF:				; CODE XREF: RAM:76A3^j	RAM:76A8^j ...
		LDA	$194B
		CMP	$96F0
		BEQ	loc_76F1
		PHA
		LDA	#0
		JSR	sub_77E5
		PLA
		CLC
		ADC	#7
		STA	SEGNO
		dldi	SEGADDR, $96F0
		JSR	j_SEGLOAD

loc_76F1:				; CODE XREF: RAM:76D5^j
		JSR	sub_7AD4
		JMP	loc_7736
; ---------------------------------------------------------------------------

loc_76F7:				; CODE XREF: RAM:7646^j
		BIT	$1954
		BPL	loc_7733
		LDA	#3
		STA	byte_77FA

loc_7701:				; CODE XREF: RAM:772Evj
		LDA	#$34 ; '4'
		JSR	sub_77E5
		LDA	$252

loc_7709:				; CODE XREF: RAM:770Cvj
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

loc_7720:				; CODE XREF: RAM:7716^j
		JSR	sub_77EE

loc_7723:				; CODE XREF: RAM:771D^j
		LDA	$252

loc_7726:				; CODE XREF: RAM:7729vj
		CMP	$252
		BEQ	loc_7726
		DEC	byte_77FA
		BPL	loc_7701
		JMP	loc_774E
; ---------------------------------------------------------------------------

loc_7733:				; CODE XREF: RAM:76FA^j	RAM:77C2vj
		JSR	sub_7AD4

loc_7736:				; CODE XREF: RAM:76F4^j
		LDA	$194D
		AND	#1
		ORA	$6390
		BNE	loc_7748
		LDA	#0
		JSR	sub_77E5
		JMP	loc_774B
; ---------------------------------------------------------------------------

loc_7748:				; CODE XREF: RAM:773E^j
		JSR	sub_77EE

loc_774B:				; CODE XREF: RAM:7745^j
		JSR	loc_7856

loc_774E:				; CODE XREF: RAM:7730^j
		dldi	$89, $80E5
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

loc_776F:				; CODE XREF: RAM:775C^j
		LDA	#$55 ; 'U'
		CMP	$196A
		BEQ	loc_777C
		STA	$196A
		JSR	sub_7EBC

loc_777C:				; CODE XREF: RAM:7764^j	RAM:776C^j ...
		dldi	off_1977, loc_7789
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7789:
		LDA	$31
		CMP	#$20 ; ' '
		BNE	loc_7797
		LDA	#0
		STA	$1933
		DEC	$195F

loc_7797:				; CODE XREF: RAM:778D^j
		LDA	$63C0
		CMP	byte_77FC
		BEQ	loc_77A5
		STA	byte_77FC
		DEC	$1956

loc_77A5:				; CODE XREF: RAM:779D^j
		LDA	$194D
		AND	#1
		ORA	$6390
		CMP	byte_77FB
		BEQ	loc_77B8
		STA	byte_77FB
		DEC	$1956

loc_77B8:				; CODE XREF: RAM:77B0^j
		LDA	$1956
		BEQ	loc_77C5
		LDA	#0
		STA	$1956
		JMP	loc_7733
; ---------------------------------------------------------------------------

loc_77C5:				; CODE XREF: RAM:77BB^j
		JSR	$1821
		AND	#$F
		BEQ	loc_777C
		JSR	loc_7EE4
		dldi	off_1977, loc_7641
		LDX	#0
		STX	$1954
		DEX
		STX	byte_7855
		JMP	$1809

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_77E5:				; CODE XREF: RAM:76DA^p	RAM:7703^p ...
		LDX	#4

loc_77E7:				; CODE XREF: sub_77E5+6vj
		STA	$18BA,X
		DEX
		BPL	loc_77E7
		RTS
; End of function sub_77E5


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_77EE:				; CODE XREF: RAM:loc_7720^p
					; RAM:loc_7748^p
		LDX	#4

loc_77F0:				; CODE XREF: sub_77EE+9vj
		LDA	$194E,X
		STA	$18BA,X
		DEX
		BPL	loc_77F0
		RTS
; End of function sub_77EE

; ---------------------------------------------------------------------------
byte_77FA:	.BYTE 0			; DATA XREF: RAM:76FE^w	RAM:772B^w
byte_77FB:	.BYTE $FF		; DATA XREF: RAM:77AD^r	RAM:77B2^w
byte_77FC:	.BYTE $FF		; DATA XREF: RAM:779A^r	RAM:779F^w
		.BYTE	7
		.BYTE $58 ; X
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE	0
		.BYTE	$88,$FF,$01,$01,$01,$00,$00,$00,$00,$01,$02,$80,$01,$00,$10,$00
		.BYTE	$C1,$FF,$C1,$FF,$40,$00,$40,$00,$0F,$92,$47,$00,$01,$00,$01,$00
		.BYTE	$81,$00,$41,$00,$40,$00,$40,$00,$00,$91,$72,$00,$02,$08,$01,$00
		.BYTE	$81,$00,$41,$00,$40,$00,$40,$00,$00,$81,$4A,$00,$02,$10,$01,$00
		.BYTE	$E1,$00,$41,"Crystal Doom",$00
		.BYTE	0
byte_7855:	.BYTE	0		; DATA XREF: RAM:763D^w	RAM:loc_76A0^r ...
; ---------------------------------------------------------------------------

loc_7856:				; CODE XREF: RAM:loc_774B^p
		LDX	#$47 ; 'G'

loc_7858:				; CODE XREF: RAM:7885vj
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

loc_7875:				; CODE XREF: RAM:787Fvj
					; DATA XREF: RAM:785E^w	...
		LDA	$FFFF,X
		LDY	unk_8AEB,X

loc_787B:				; DATA XREF: RAM:786A^w	RAM:7870^w
		STA	$FFFF,Y
		DEX
		BPL	loc_7875
		LDX	byte_8F77
		DEX
		BPL	loc_7858
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7888:				; CODE XREF: sub_7AD4vp
		LDX	#$D8 ; 'ÿ'
		LDA	#0

loc_788C:				; CODE XREF: sub_7888+17vj
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

loc_78A2:				; CODE XREF: RAM:78E5vj
		LDX	$64		; $0090
		LDA	unk_8AFD,X	; $0092
		STA	$B2		; $0095
		LDA	unk_8B45,X	; $0097
		STA	$B3		; $009A
		LDA	$FFFF		; $009C
		AND	#$FF		; $009F
		TAX			; $00A1
		LDA	unk_8E00,X	; $00A2
		AND	#$FF		; $00A5
		STA	$B0		; $00A7
		LDA	($B2),Y		; $00A9
		BIT	$7E		; $00AB
		BNE	loc_78C6	; $00AD
		ORA	#$FF		; $00AF
		STA	$FFFF,Y		; $00B1

loc_78C6:				; CODE XREF: RAM:78BF^j
		LDA	$6E		; $00B4
		ADC	$76		; $00B6
		STA	$6E		; $00B8
		LDA	$77		; $00BA
		ADC	$6F		; $00BC
		STA	$6F		; $00BE
		TAX			; $00C0
		LDA	$FFFF,X		; $00C1
		ADC	$72		; $00C4
		STA	$9D		; $00C6
		LDA	$FFFF,X		; $00C8
		ADC	$73		; $00CB
		STA	$9E		; $00CD
		INC	$64		; $00CF
		DEC	$62		; $00D1
		BNE	loc_78A2	; $00D3
		JMP	loc_79F5	; $00D5
; ---------------------------------------------------------------------------

loc_78EA:				; CODE XREF: sub_7AD4+E0vp
					; sub_7AD4+16Bvp ...
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

loc_7913:				; CODE XREF: RAM:790F^j
		LDA	#$47 ; 'G'
		STA	$6D

loc_7917:				; CODE XREF: RAM:78FF^j
		LDX	byte_8F75
		BIT	$1957
		BPL	loc_7929
		CPX	#5
		BCC	loc_7929
		CPX	#7
		BCS	loc_7929
		DEX
		DEX

loc_7929:				; CODE XREF: RAM:791D^j	RAM:7921^j ...
		LDA	$96F1,X
		STA	loc_7959+1
		CLC
		ADC	#$48 ; 'H'
		STA	$70
		LDA	$9701,X
		STA	loc_7959+2
		ADC	#0
		STA	$71

loc_793E:				; CODE XREF: RAM:7A1Bvj
		LDX	$63
		BPL	loc_7945
		JMP	locret_7A1E
; ---------------------------------------------------------------------------

loc_7945:				; CODE XREF: RAM:7940^j
		CPX	#$48 ; 'H'
		BCC	loc_794C
		JMP	locret_7A1E
; ---------------------------------------------------------------------------

loc_794C:				; CODE XREF: RAM:7947^j
		LDA	unk_948B,X
		BPL	loc_7954
		JMP	loc_79F5
; ---------------------------------------------------------------------------

loc_7954:				; CODE XREF: RAM:794F^j
		LDY	$6D
		LDA	unk_948B,X

loc_7959:				; DATA XREF: RAM:792C^w	RAM:7937^w
		ORA	$FFFF,Y
		STA	unk_948B,X
		BPL	loc_7963
		INC	$88

loc_7963:				; CODE XREF: RAM:795F^j
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

loc_79B5:				; CODE XREF: RAM:79B8vj
		LSR	$65
		DEY
		BNE	loc_79B5

loc_79BA:				; CODE XREF: RAM:79B3^j
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

loc_79DF:				; DATA XREF: RAM:79C8^w
		ADC	#$FF
		STA	$9D
		BCC	loc_79E7
		INC	$9E

loc_79E7:				; CODE XREF: RAM:79E3^j
		dmv	$72, $9D

loc_79EF:				; DATA XREF: RAM:7971^w
		LDY	#$FF
		CLC
		JMP	$90		; jump to the code relocated to page zero
; ---------------------------------------------------------------------------

loc_79F5:				; CODE XREF: RAM:78E7^j	RAM:7951^j
		CLC
		LDA	$66		; off_66 += off_6A
		ADC	$6A		; 
		STA	$66		;
		LDA	$67		;
		ADC	$6B		;
		STA	$67		;
		CLC
		LDA	$63		;
		ADC	byte_8F7A	; byte_63 += byte_8F7A
		STA	$63
		CLC
		LDA	$6C		; off_6C += off_68
		ADC	$68		;
		STA	$6C		;
		LDA	$6D		;
		ADC	$69		;
		STA	$6D		;
		CMP	#$48 ; 'H'
		BCS	locret_7A1E
		JMP	loc_793E
; ---------------------------------------------------------------------------

locret_7A1E:				; CODE XREF: RAM:7942^j	RAM:7949^j ...
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7A1F:				; CODE XREF: sub_7AD4+D7vp
					; sub_7AD4+162vp ...
		LDA	#0
		STA	$7A
		LDX	#8

loc_7A25:				; CODE XREF: sub_7A1F+15vj
		ASL	A
		ROL	$7A
		ASL	$79
		BCC	loc_7A33
		CLC
		ADC	$78
		BCC	loc_7A33
		INC	$7A

loc_7A33:				; CODE XREF: sub_7A1F+B^j sub_7A1F+10^j
		DEX
		BNE	loc_7A25
		RTS
; End of function sub_7A1F

; ---------------------------------------------------------------------------

loc_7A37:				; CODE XREF: RAM:loc_7649^p
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
		LDA	I_LOC_Y
		LSR	A
		STA	$7C
		ROR	$7B
		LDA	I_LOC_X
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

loc_7A7B:				; CODE XREF: RAM:7AB9vj
		LDA	unk_8CA3,X
		STA	loc_7A8D+1
		LDA	unk_8CAD,X
		STA	loc_7A8D+2
		LDX	#0

loc_7A89:				; CODE XREF: RAM:7AA5vj
		LDY	#0

loc_7A8B:				; CODE XREF: RAM:7A94vj
		LDA	($7B),Y

loc_7A8D:				; DATA XREF: RAM:7A7E^w	RAM:7A84^w
		STA	$FFFF,X
		INX
		INY
		CPY	#4
		BNE	loc_7A8B
		LDA	$7B
		CLC

loc_7A99:				; DATA XREF: RAM:7A3D^w
		ADC	#$FF
		STA	$7B
		LDA	$7C

loc_7A9F:				; DATA XREF: RAM:7A43^w
		ADC	#$FF
		STA	$7C
		CPX	#$2C ; ','
		BCC	loc_7A89
		LDA	$7B
		CLC

loc_7AAA:				; DATA XREF: RAM:7A49^w
		ADC	#$FF
		STA	$7B
		LDA	$7C

loc_7AB0:				; DATA XREF: RAM:7A4F^w
		ADC	#$FF
		STA	$7C
		LDX	$7D
		DEX
		STX	$7D
		BPL	loc_7A7B
		RTS
; ---------------------------------------------------------------------------
unk_7ABC:	.BYTE	4		; DATA XREF: RAM:7A3A^r
		.BYTE $80 ; Ä
		.BYTE $FC ; ¸
		.BYTE $80 ; Ä
unk_7AC0:	.BYTE	0		; DATA XREF: RAM:7A40^r
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
unk_7AC4:	.BYTE $54 ; T		; DATA XREF: RAM:7A46^r
		.BYTE $7C ; |
		.BYTE $AC ; ¨
		.BYTE $84 ; Ñ
unk_7AC8:	.BYTE	0		; DATA XREF: RAM:7A4C^r
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE	5
unk_7ACC:	.BYTE $6C ; l		; DATA XREF: RAM:7A66^r
		.BYTE $A4 ; §
		.BYTE $94 ; î
		.BYTE $5C ; \
unk_7AD0:	.BYTE $FB ; ˚		; DATA XREF: RAM:7A6D^r
		.BYTE $FD ; ˝
		.BYTE	4
		.BYTE	2

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7AD4:				; CODE XREF: RAM:loc_76F1^p
					; RAM:loc_7733^p
		JSR	sub_7888
		LDX	#$47 ; 'G'
		LDA	#0

loc_7ADB:				; CODE XREF: sub_7AD4+Bvj
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

loc_7B1B:				; CODE XREF: sub_7AD4+40^j
		STA	$7F
		LDX	#0

loc_7B1F:				; CODE XREF: sub_7AD4+306vj
		STX	$80
		LDA	$88
		CMP	#$48 ; 'H'
		BCC	loc_7B2A
		JMP	locret_7DDD
; ---------------------------------------------------------------------------

loc_7B2A:				; CODE XREF: sub_7AD4+51^j
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

loc_7B43:				; CODE XREF: sub_7AD4+EAvj
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

loc_7B55:				; CODE XREF: sub_7AD4+7C^j
		BIT	byte_7DDE
		BPL	loc_7B5E
		LSR	A
		LSR	A
		LSR	A
		LSR	A

loc_7B5E:				; CODE XREF: sub_7AD4+84^j
		STA	byte_8F75
		LDY	$7D
		LDA	byte_8CD7,Y
		STA	$81
		LDA	byte_8CE2,Y
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

loc_7BB2:				; CODE XREF: sub_7AD4+D1^j
		STA	$67
		JSR	loc_78EA

loc_7BB7:				; CODE XREF: sub_7AD4+7E^j sub_7AD4+AB^j
		DEC	$7D
		DEC	byte_8F77
		BMI	loc_7BC1
		JMP	loc_7B43
; ---------------------------------------------------------------------------

loc_7BC1:				; CODE XREF: sub_7AD4+E8^j
		LDX	$80
		LDA	unk_8CB7,X
		STA	byte_8F77
		LDA	#1
		STA	byte_8F7A
		LDA	#5
		STA	$7D

loc_7BD2:				; CODE XREF: sub_7AD4+175vj
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

loc_7BE4:				; CODE XREF: sub_7AD4+10B^j
		BIT	byte_7DDF
		BPL	loc_7BED
		LSR	A
		LSR	A
		LSR	A
		LSR	A

loc_7BED:				; CODE XREF: sub_7AD4+113^j
		STA	byte_8F75
		LDY	$7D
		LDA	byte_8CD7,Y
		STA	$81
		LDA	byte_8CE2,Y
		STA	$82
		LDA	byte_8D7D-5,Y
		STA	$83
		LDA	byte_8D83-5,Y
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

loc_7C3D:				; CODE XREF: sub_7AD4+15C^j
		STA	$67
		JSR	loc_78EA

loc_7C42:				; CODE XREF: sub_7AD4+10D^j
					; sub_7AD4+13A^j
		INC	$7D
		DEC	byte_8F77
		BMI	loc_7C4C
		JMP	loc_7BD2
; ---------------------------------------------------------------------------

loc_7C4C:				; CODE XREF: sub_7AD4+173^j
		LDA	#$14
		ORA	byte_7DE1
		TAY
		LDA	($7B),Y
		AND	byte_7DE0
		BNE	loc_7C5C
		JMP	loc_7CAB
; ---------------------------------------------------------------------------

loc_7C5C:				; CODE XREF: sub_7AD4+183^j
		BIT	byte_7DE0
		BPL	loc_7C65
		LSR	A
		LSR	A
		LSR	A
		LSR	A

loc_7C65:				; CODE XREF: sub_7AD4+18B^j
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

loc_7CAB:				; CODE XREF: sub_7AD4+185^j
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

loc_7CC3:				; CODE XREF: sub_7AD4+269vj
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

loc_7CD5:				; CODE XREF: sub_7AD4+1FC^j
		BIT	byte_7DE0
		BPL	loc_7CDE
		LSR	A
		LSR	A
		LSR	A
		LSR	A

loc_7CDE:				; CODE XREF: sub_7AD4+204^j
		STA	byte_8F75
		LDY	$7D
		INY
		LDA	byte_8CD7,Y
		STA	$81
		LDA	byte_8CE2,Y
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
		LDA	byte_8CD7,Y
		STA	$81
		LDA	byte_8CE2,Y
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

loc_7D36:				; CODE XREF: sub_7AD4+1FE^j
					; sub_7AD4+22C^j
		DEC	$7D
		DEC	byte_8F77
		BMI	loc_7D40
		JMP	loc_7CC3
; ---------------------------------------------------------------------------

loc_7D40:				; CODE XREF: sub_7AD4+267^j
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

loc_7D58:				; CODE XREF: sub_7AD4+2FCvj
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

loc_7D6A:				; CODE XREF: sub_7AD4+291^j
		BIT	byte_7DE0
		BPL	loc_7D73
		LSR	A
		LSR	A
		LSR	A
		LSR	A

loc_7D73:				; CODE XREF: sub_7AD4+299^j
		STA	byte_8F75
		LDY	$7D
		DEY
		LDA	byte_8CD7,Y
		STA	$81
		LDA	byte_8CE2,Y
		STA	$82
		LDA	byte_8D7D-5,Y
		STA	$83
		LDA	byte_8D83-5,Y
		STA	$84
		LDY	$80
		INY
		JSR	sub_7E2D
		CMP	#$48 ; 'H'
		BCS	loc_7DC9
		STA	$85
		STA	$63
		LDY	$7D
		LDA	byte_8CD7,Y
		STA	$81
		LDA	byte_8CE2,Y
		STA	$82
		LDA	byte_8D7D-5,Y
		STA	$83
		LDA	byte_8D83-5,Y
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

loc_7DC9:				; CODE XREF: sub_7AD4+293^j
					; sub_7AD4+2C1^j
		INC	$7D
		DEC	byte_8F77
		BMI	loc_7DD3
		JMP	loc_7D58
; ---------------------------------------------------------------------------

loc_7DD3:				; CODE XREF: sub_7AD4+2FA^j
		LDX	$80
		INX
		CPX	#$A
		BCS	locret_7DDD
		JMP	loc_7B1F
; ---------------------------------------------------------------------------

locret_7DDD:				; CODE XREF: sub_7AD4+53^j
					; sub_7AD4+304^j
		RTS
; End of function sub_7AD4

; ---------------------------------------------------------------------------
byte_7DDE:	.BYTE 0			; DATA XREF: sub_7AD4+21^w sub_7AD4+79^r ...
byte_7DDF:	.BYTE 0			; DATA XREF: sub_7AD4+2D^w
					; sub_7AD4+108^r ...
byte_7DE0:	.BYTE 0			; DATA XREF: sub_7AD4+15^w
					; sub_7AD4+180^r ...
byte_7DE1:	.BYTE 0			; DATA XREF: sub_7AD4+1B^w
					; sub_7AD4+17A^r ...
byte_7DE2:	.BYTE 0			; DATA XREF: sub_7AD4+33^w
					; sub_7AD4+102^r
byte_7DE3:	.BYTE 0			; DATA XREF: sub_7AD4+27^w sub_7AD4+73^r
unk_7DE4:	.BYTE	1		; DATA XREF: sub_7AD4+36^r
		.BYTE	0
		.BYTE	1
		.BYTE	0
unk_7DE8:	.BYTE $DD ; ›		; DATA XREF: sub_7AD4+3D^r
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7DEC:				; CODE XREF: sub_7AD4+1CF^p
					; sub_7AD4+25A^p ...
		LDA	byte_8D24,Y
		STA	$78
		LDA	$7F
		STA	$79
		JSR	sub_7A1F
		LDX	#0

loc_7DFA:				; CODE XREF: sub_7DEC+16vj
		SEC

loc_7DFB:				; CODE XREF: sub_7DEC+12vj
		INX
		SBC	#$24 ; '$'
		BCS	loc_7DFB
		DEC	$7A
		BPL	loc_7DFA
		DEX
		TXA
		ADC	#$23 ; '#'
		SEC
		SBC	byte_8D72,Y
		RTS
; End of function sub_7DEC


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7E0D:				; CODE XREF: sub_7AD4+A6^p sub_7AD4+B4^p ...
		LDA	($81),Y
		STA	$78
		LDA	$7F
		STA	$79
		JSR	sub_7A1F
		LDX	#0

loc_7E1A:				; CODE XREF: sub_7E0D+15vj
		SEC

loc_7E1B:				; CODE XREF: sub_7E0D+11vj
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


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7E2D:				; CODE XREF: sub_7AD4+135^p
					; sub_7AD4+141^p ...
		LDA	($81),Y
		STA	$78
		LDA	$7F
		STA	$79
		JSR	sub_7A1F
		LDX	#0

loc_7E3A:				; CODE XREF: sub_7E2D+15vj
		SEC

loc_7E3B:				; CODE XREF: sub_7E2D+11vj
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


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7E4D:				; CODE XREF: RAM:764C^p
		LDA	$AF00
		ASL	A
		ASL	A
		CLC
		ADC	$AF00
		TAX

loc_7E57:				; CODE XREF: sub_7E4D+69vj
		LDA	I_LOC_X
		CMP	$AF04,X
		BCC	loc_7EB1
		CMP	$AF02,X
		BCS	loc_7EB1
		LDA	I_LOC_Y
		CMP	$AF01,X
		BCC	loc_7EB1
		CMP	$AF03,X
		BCS	loc_7EB1
		LDA	$AF05,X

loc_7E74:				; CODE XREF: sub_7E4D+6Dvj
		CMP	$1912
		BEQ	locret_7EB0
		STA	$1912
		ASL	A
		ASL	A
		ASL	A
		TAX
		LDY	#0

loc_7E82:				; CODE XREF: sub_7E4D+3Fvj
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

locret_7EB0:				; CODE XREF: sub_7E4D+2A^j
		RTS
; ---------------------------------------------------------------------------

loc_7EB1:				; CODE XREF: sub_7E4D+10^j sub_7E4D+15^j ...
		TXA
		SEC
		SBC	#5
		TAX
		BCS	loc_7E57
		LDA	#0
		BCC	loc_7E74
; End of function sub_7E4D


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7EBC:				; CODE XREF: RAM:7779^p

; FUNCTION CHUNK AT 7F4B SIZE 00000018 BYTES

		dldi	$89, $83C6
		JMP	loc_7F4B
; End of function sub_7EBC


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7EC7:				; CODE XREF: RAM:7769^p
		dldi	$89, $83C6
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

loc_7EE4:				; CODE XREF: RAM:77CC^p
		TAY
		LDX	unk_83AE,Y
		BNE	loc_7EEA

loc_7EEA:
		LDA	off_83A6,X
		STA	$89
		LDA	off_83A6+1,X
		STA	$8A

loc_7EF4:				; CODE XREF: RAM:7756^p	sub_7EC7+8^p ...
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

loc_7F1B:				; CODE XREF: RAM:7F17^j	RAM:7F48vj
		LDX	$8F
		LDA	unk_7FB3,X
		CLC

loc_7F21:				; DATA XREF: RAM:7F02^w
		ADC	#$FF
		STA	loc_7F33+1
		LDA	unk_7FBC,X

loc_7F29:				; DATA XREF: RAM:7F08^w
		ADC	#$FF
		STA	loc_7F33+2
		LDY	$8D
		DEY

loc_7F31:				; CODE XREF: RAM:7F37vj
					; DATA XREF: sub_7EBC+91vw ...
		LDA	($89),Y

loc_7F33:				; DATA XREF: RAM:7F23^w	RAM:7F2B^w
		STA	$FFFF,Y
		DEY
		BPL	loc_7F31
		LDA	$89
		CLC
		ADC	$8D
		STA	$89
		BCC	loc_7F44
		INC	$8A

loc_7F44:				; CODE XREF: RAM:7F40^j
		INC	$8F
		DEC	$8E
		BNE	loc_7F1B
		RTS
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_7EBC

loc_7F4B:				; CODE XREF: sub_7EBC+8^j
		dldi	loc_7F31, $FFA9	; opcode for "LDA #$FF"
		JSR	loc_7EF4
		dldi	loc_7F31, $89B1	; opcode for "LDA ($89),Y"
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
unk_7FB3:	.BYTE	0		; DATA XREF: RAM:7F1D^r
		.BYTE $40 ; @
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $80 ; Ä
unk_7FBC:	.BYTE	8		; DATA XREF: RAM:7F26^r
		.BYTE	9
		.BYTE  $A
		.BYTE  $C
		.BYTE  $D
		.BYTE  $E
		.BYTE $10
		.BYTE $11
		.BYTE $12
unk_7FC5:	.BYTE $58 ; X		; DATA XREF: RAM:7867^r
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
		.BYTE $DB ; -
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
		.BYTE $DB ; -
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
		.BYTE $DB ; -
		.BYTE $DC ; ‹
		.BYTE $DD ; ›
		.BYTE $DE ; ﬁ
		.BYTE $DF ; ﬂ
unk_800D:	.BYTE	8		; DATA XREF: RAM:786D^r
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
unk_8272:	.BYTE $18		; DATA XREF: RAM:off_83A6vo
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
unk_82BF:	.BYTE $18		; DATA XREF: RAM:83ACvo
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
unk_830C:	.BYTE $18		; DATA XREF: RAM:83A8vo
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
unk_8359:	.BYTE $18		; DATA XREF: RAM:83AAvo
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
off_83A6:	.WORD unk_8272		; DATA XREF: RAM:loc_7EEA^r RAM:7EEF^r
		.WORD unk_830C
		.WORD unk_8359
		.WORD unk_82BF
unk_83AE:	.BYTE	0		; DATA XREF: RAM:7EE5^r
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
off_83BE:	.WORD unk_84BB		; DATA XREF: sub_7EC7+10^r sub_7EC7+15^r
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
unk_84BB:	.BYTE $10		; DATA XREF: RAM:off_83BE^o
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
unk_84F0:	.BYTE $20		; DATA XREF: RAM:83C0^o
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
unk_8515:	.BYTE $10		; DATA XREF: RAM:83C2^o
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
unk_854A:	.BYTE $20		; DATA XREF: RAM:83C4^o
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

off_856F:
		.WORD	byte_85A1
		.WORD	byte_85DA
		.WORD	byte_860C
		.WORD	byte_8640
		.WORD	byte_8686
		.WORD	byte_86B9
		.WORD	byte_86F2
		.WORD	byte_873B
		.WORD	byte_8776
		.WORD	byte_87AE
		.WORD	byte_87E9
		.WORD	byte_8815
		.WORD	byte_8840
		.WORD	byte_886A
		.WORD	byte_8896
		.WORD	byte_88C0
		.WORD	byte_88F9
		.WORD	byte_8939
		.WORD	byte_8961
		.WORD	byte_89AD
		.WORD	byte_89F3
		.WORD	byte_8A2C
		.WORD	byte_8A62
		.WORD	byte_8A98
		.WORD	byte_8AC2
byte_85A1:	MOVEXY	0,1
		.BYTE	$A5,"A sign on the door says:",$0D,$0D
		.BYTE	$A5,$22,"Damon & Pythias Shoppe",$22,$0D,$FF

byte_85DA:	MOVEXY	0,1
		.BYTE	$A5,"A sign above the door reads:",$0D,$0D
		.BYTE	$A5,$22,"THE RETREAT",$22,$0D,$FF

byte_860C:	MOVEXY	0,1
		.BYTE	$A5,"A sign reads:",$0D,$0D
		.BYTE	$A5,$22,"Der Rathskeller Bar & Grille",$22,$0D,$FF

byte_8640:	MOVEXY	0,1
		.BYTE	$A5,"Carved above the doorway are the words:",$0D,$0D
		.BYTE	$A5,$22,"Fine Weapons & Armor",$22,$0D,$FF

byte_8686:	MOVEXY	0,1
		.BYTE	$A5,"An arrow painted on the floor",$0D,$0D
		.BYTE	$A5,"points South.",$0D,$FF

byte_86B9:	MOVEXY	0,1
		.BYTE	$A5,"Writing on the wall says:",$0D,$0D
		.BYTE	$A5,$22,"BEWARE OF THE DRAGON!",$22,$0D,$FF

byte_86F2:	MOVEXY	0,1
		.BYTE	$A5,"Writing carved into the door reads:",$0D,$0D
		.BYTE	$A5,$22,"THE GAUNTLET",$0D
		.BYTE	$A5," DO NOT ENTER",$22,$0D,$FF

byte_873B:	MOVEXY	0,1
		.BYTE	$A5,"Glowing letters on the door proclaim:",$0D,$0D
		.BYTE	$A5,$22,"Enchantress",$22,$0D,$FF

byte_8776:	MOVEXY	0,1
		.BYTE	$A5,"Writing scrawled on the ground reads:",$0D,$0D
		.BYTE	$A5,$22,"GO BACK!",$22,$0D,$FF

byte_87AE:	MOVEXY	0,1
		.BYTE	$A5,"Scratchings on the wall read:",$0D,$0D
		.BYTE	$A5,$22,"THERE IS NO ESCAPE!",$22,$0D,$FF

byte_87E9:	MOVEXY	0,2
		.BYTE	$A5,"A red arrow on the ground points East.",$0D,$FF

byte_8815:	MOVEXY	0,1
		.BYTE	$A5,"A dirty sign reads:",$0D,$0D
		.BYTE	$A5,$22,"Goblins only!",$22,$0D,$FF

byte_8840:	MOVEXY	0,1
		.BYTE	$A5,"A crooked sign says:",$0D,$0D
		.BYTE	$A5,$22,"TROLLS ONLY",$22,$0D,$FF

byte_886A:	MOVEXY	0,1
		.BYTE	$A5,"A plaque reads:",$0D,$0D
		.BYTE	$A5,$22,"Shrine of Monsters",$22,$0D,$FF

byte_8896:	MOVEXY	0,2
		.BYTE	$A5,"You hear the sound of running water.",$0D,$FF

byte_88C0:	MOVEXY	0,1
		.BYTE	$A5,"Glowing letters float in midair:",$0D,$0D
		.BYTE	$A5,$22,"SEEK THE LIGHT",$22,$0D,$FF

byte_88F9:	MOVEXY	0,1
		.BYTE $A5,"A note posted on the door reads:",$0D,$0D
		.BYTE $A5,$22,"BEWARE!  THE CAVERNS!",$22,$0D,$FF

byte_8939:	MOVEXY	0,2
		.BYTE	$A5,"The stench is becoming unbearable.",$0D,$FF

byte_8961:	MOVEXY	0,1
		.BYTE	$A5,"A sign above the door says:",$0D,$0D
		.BYTE	$A5,$22,"Welcome to the Chapel. Please come in!",$22,$0D,$FF

byte_89AD:	MOVEXY	0,1
		.BYTE	$A5,"Black letters hovering slowly say:",$0D,$0D
		.BYTE	$A5,$22,"THE SHADOW WILL HIDE THEE",$22,$0D,$FF

byte_89F3:	MOVEXY	0,1
		.BYTE	$A5,"The rune of the all-knowing eye is upon",$0D,$0D
		.BYTE	$A5,"the door.",$0D,$FF

byte_8A2C:	MOVEXY	0,1
		.BYTE	$A5,"On the wall is a painting of",$0D,$0D
		.BYTE	$A5,"a purple pyramid.",$0D,$FF

byte_8A62:	MOVEXY	0,1
		.BYTE	$A5,"A skull hangs from the ceiling",$0D,$0D
		.BYTE	$A5,"above the door.",$0D,$FF

byte_8A98:	MOVEXY	0,2
		.BYTE	$A5,"You hear the crackle of electricity.",$0D,$FF

byte_8AC2:	MOVEXY	0,2
		.BYTE	$A5,"You stand before an elaborate door.",$0D,$FF

unk_8AEB:	.BYTE	0		; DATA XREF: RAM:7878^r
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

unk_8AFD:				; DATA XREF: RAM:785B^Xr        RAM:78A4^Xr
		.BYTE	<byte_8F7B
		.BYTE	<byte_8F8D
		.BYTE	<byte_8F9F
		.BYTE	<byte_8FB1
		.BYTE	<byte_8FC3
		.BYTE	<byte_8FD5
		.BYTE	<byte_8FE7
		.BYTE	<byte_8FF9
		.BYTE	<byte_900B
		.BYTE	<$901D
		.BYTE	<$902F
		.BYTE	<$9041
		.BYTE	<$9053
		.BYTE	<$9065
		.BYTE	<$9077
		.BYTE	<$9089
		.BYTE	<$909B
		.BYTE	<$90AD
		.BYTE	<$90BF
		.BYTE	<$90D1
		.BYTE	<$90E3
		.BYTE	<$90F5
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
		.BYTE $DB ; -
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
unk_8B45:					; DATA XREF: RAM:7861^r	RAM:78A9^r
		.BYTE	>byte_8F7B
		.BYTE	>byte_8F8D
		.BYTE	>byte_8F9F
		.BYTE	>byte_8FB1
		.BYTE	>byte_8FC3
		.BYTE	>byte_8FD5
		.BYTE	>byte_8FE7
		.BYTE	>byte_8FF9
		.BYTE	>byte_900B
		.BYTE	>$901D
		.BYTE	>$902F
		.BYTE	>$9041
		.BYTE	>$9053
		.BYTE	>$9065
		.BYTE	>$9077
		.BYTE	>$9089
		.BYTE	>$909B
		.BYTE	>$90AD
		.BYTE	>$90BF
		.BYTE	>$90D1
		.BYTE	>$90E3
		.BYTE	>$90F5

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
unk_8B8D:	.BYTE $C0 ; ¿		; DATA XREF: RAM:7967^r	RAM:79BF^r
		.BYTE $30 ; 0
		.BYTE  $C
		.BYTE	3
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $FF
unk_8B95:	.BYTE	0		; DATA XREF: RAM:79D1^r
		.BYTE $10
		.BYTE $54 ; T
unk_8B98:	.BYTE	0		; DATA XREF: RAM:79D8^r
		.BYTE	5
		.BYTE	6
unk_8B9B:	.BYTE	<$8BA7		; DATA XREF: RAM:799D^r
		.BYTE	<$8C37
		.BYTE	<$8C7F
unk_8B9E:	.BYTE	>$8BA7		; DATA XREF: RAM:79A2^r
		.BYTE	>$8C37
		.BYTE	>$8C7F
unk_8BA1:	.BYTE	<$8BEF		; DATA XREF: RAM:79A7^r
		.BYTE	<$8C5B
		.BYTE	<$8C91
unk_8BA4:	.BYTE	>$8BEF		; DATA XREF: RAM:79AC^r
		.BYTE	>$8C5B
		.BYTE	>$8C91
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
unk_8CA3:	.BYTE $5F ; _		; DATA XREF: RAM:loc_7A7B^r
					; sub_7AD4:loc_7B2A^r
		.BYTE $33 ; 3
		.BYTE	7
		.BYTE $DB ; -
		.BYTE $AF ; Ø
		.BYTE $83 ; É
		.BYTE $57 ; W
		.BYTE $2B ; +
		.BYTE $FF
		.BYTE $D3 ; ”
unk_8CAD:	.BYTE $96 ; ñ		; DATA XREF: RAM:7A81^r	sub_7AD4+5B^r
		.BYTE $96 ; ñ
		.BYTE $96 ; ñ
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $94 ; î
		.BYTE $94 ; î
unk_8CB7:	.BYTE	1		; DATA XREF: sub_7AD4+60^r sub_7AD4+EF^r ...
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
		.BYTE	5
unk_8CC1:	.BYTE	0		; DATA XREF: sub_7AD4+C2^r
					; sub_7AD4+14D^r
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
unk_8CCC:	.BYTE  $F		; DATA XREF: sub_7AD4+CC^r
					; sub_7AD4+157^r
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
byte_8CD7:	.BYTE	<byte_8CED	; DATA XREF: sub_7AD4+8F^r
					; sub_7AD4+11E^r ...
		.BYTE	<byte_8CF8
		.BYTE	<byte_8D03
		.BYTE	<byte_8D0E
		.BYTE	<byte_8D19
		.BYTE	<byte_8D24
		.BYTE	<byte_8D19
		.BYTE	<byte_8D0E
		.BYTE	<byte_8D03
		.BYTE	<byte_8CF8
		.BYTE	<byte_8CED
byte_8CE2:	.BYTE	>byte_8CED	; DATA XREF: sub_7AD4+94^r
					; sub_7AD4+123^r ...
		.BYTE	>byte_8CF8
		.BYTE	>byte_8D03
		.BYTE	>byte_8D0E
		.BYTE	>byte_8D19
		.BYTE	>byte_8D24
		.BYTE	>byte_8D19
		.BYTE	>byte_8D0E
		.BYTE	>byte_8D03
		.BYTE	>byte_8CF8
		.BYTE	>byte_8CED

byte_8CED:	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$0B,$0B,$00
byte_8CF8:	.BYTE	$00,$00,$00,$00,$00,$00,$09,$09,$09,$09,$00
byte_8D03:	.BYTE	$00,$00,$00,$00,$00,$00,$07,$07,$07,$07,$00
byte_8D0E:	.BYTE	$00,$00,$00,$00,$0A,$05,$05,$05,$05,$05,$00
byte_8D19:	.BYTE	$00,$24,$12,$09,$06,$03,$03,$03,$03,$03,$00
byte_8D24:	.BYTE	$24,$12,$06,$03,$02,$01,$01,$01,$01,$01,$00
unk_8D2F:	.BYTE 	<byte_8D3B	; DATA XREF: sub_7AD4+99^r
					; sub_7AD4+21A^r ...
		.BYTE	<byte_8D46
		.BYTE	<byte_8D51
		.BYTE	<byte_8D5C
		.BYTE	<byte_8D67
		.BYTE	<byte_8D72
unk_8D35:	.BYTE	>byte_8D3B	; DATA XREF: sub_7AD4+9E^r
					; sub_7AD4+21F^r ...
		.BYTE	>byte_8D46
		.BYTE	>byte_8D51
		.BYTE	>byte_8D5C
		.BYTE	>byte_8D67
		.BYTE	>byte_8D72

byte_8D3B:	.BYTE	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$03,$0E,$19
byte_8D46:	.BYTE	$FF,$FF,$FF,$FF,$FF,$EE,$F7,$00,$09,$12,$1B
byte_8D51:	.BYTE	$FF,$FF,$FF,$E5,$F3,$FA,$01,$08,$0F,$16,$1D
byte_8D5C:	.BYTE	$FF,$FF,$FF,$F7,$01,$06,$0B,$10,$15,$1A,$1F
byte_8D67:	.BYTE	$CA,$EE,$00,$09,$0F,$12,$15,$18,$1B,$1E,$21
byte_8D72:	.BYTE	$00,$12,$18,$1B,$1D,$1E,$1F,$20,$21,$22,$23
byte_8D7D:	.BYTE	<byte_8D89
		.BYTE	<byte_8D94 
		.BYTE	<byte_8D9F
		.BYTE	<byte_8DAA
		.BYTE	<$8DB5
		.BYTE	<$8DC0
byte_8D83:	.BYTE	>byte_8D89
		.BYTE	>byte_8D94
		.BYTE	>byte_8D9F
		.BYTE	>byte_8DAA
		.BYTE	>$8DB5
		.BYTE	>$8DC0

byte_8D89:	.BYTE	$48,$36,$30,$2D,$2B,$2A,$29,$28,$27,$26,$25
byte_8D94:	.BYTE	$7E,$5A,$48,$3F,$39,$36,$33,$30,$2D,$2A,$27
byte_8D9F:	.BYTE	$49,$49,$49,$51,$47,$42,$3D,$38,$33,$2E,$29
byte_8DAA:	.BYTE	$49,$49,$49,$49,$49,$4E,$47,$40,$39,$32,$2B
byte_8DB5:	.BYTE	$49,$49,$49,$49,$49,$49,$51,$48,$3F,$36,$2D
byte_8DC0:	.bYTe	$49,$49,$49,$49,$49,$49,$49,$50,$45,$3A,$2F
unk_8DCB:	.BYTE  $F		; DATA XREF: sub_7AD4+12^r
unk_8DCC:	.BYTE $F0 ; 		; DATA XREF: sub_7AD4+1E^r sub_7AD4+2A^r
		.BYTE  $F
		.BYTE $F0 ; 
		.BYTE  $F
unk_8DD0:	.BYTE	1		; DATA XREF: sub_7AD4+24^r
unk_8DD1:	.BYTE	0		; DATA XREF: sub_7AD4+18^r
unk_8DD2:	.BYTE	0		; DATA XREF: sub_7AD4+30^r
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
unk_8E00:	.BYTE	0		; DATA XREF: RAM:78B4^r
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
unk_8E41:	.BYTE	9		; DATA XREF: RAM:7992^r
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
unk_8E81:	.BYTE	0		; DATA XREF: RAM:798D^r
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
unk_8EC1:	.BYTE	2		; DATA XREF: RAM:7997^r
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
unk_8EE5:	.BYTE $48 ; H		; DATA XREF: RAM:78EC^r
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
unk_8F2D:	.BYTE	0		; DATA XREF: RAM:78F1^r
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
byte_8F75:	.BYTE 0			; DATA XREF: RAM:loc_7917^r
					; sub_7AD4:loc_7B5E^w ...
byte_8F76:	.BYTE 0			; DATA XREF: RAM:799A^w	RAM:79CB^r
byte_8F77:	.BYTE 0			; DATA XREF: RAM:loc_7858^w RAM:7881^r ...
		.BYTE	0
		.BYTE	0
byte_8F7A:	.BYTE 0			; DATA XREF: sub_7888:loc_788C^w
					; RAM:78FC^r ...
byte_8F7B:	.BYTE	$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
byte_8F8D:	.BYTE	$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
byte_8F9F:	.BYTE	$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
byte_8FB1:	.BYTE	$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
byte_8FC3:	.BYTE	$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
byte_8FD5:	.BYTE	$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
byte_8FE7:	.BYTE	$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
byte_8FF9:	.BYTE	$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
byte_900B:	.BYTE	$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
byte_901D:	.BYTE	$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
byte_902F:	.BYTE	$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
unk_9052:	.BYTE $FF		; DATA XREF: sub_7888+7^w
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
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
unk_912A:	.BYTE $FF		; DATA XREF: sub_7888+A^w
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
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
unk_9202:	.BYTE $FF		; DATA XREF: sub_7888+D^w
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
unk_92DA:	.BYTE $FF		; DATA XREF: sub_7888+10^w
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
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
unk_93B2:	.BYTE $FF		; DATA XREF: sub_7888+13^w
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
unk_948B:	.BYTE	0		; DATA XREF: RAM:loc_794C^r RAM:7956^r ...
		.REPEAT	57
			.BYTE	$FF,$00
		.ENDREPEAT
		.BYTE	$FF,$6F
		.REPEAT	31
			.BYTE	$FF,$00
		.ENDREPEAT
		.BYTE	$FF,$6F
		.REPEAT	166
			.BYTE	$FF,$00
		.ENDREPEAT
		.RES	100,$00

		.IFDEF	D3S1
		.BYTE	$52,$5C,$F0,$20,$B9,$6D,$3E,$0F,$EA,$81,$BD,$26,$5E,$2A,$24,$7B
		.ENDIF

		.IFDEF	D2S1
		.BYTE   $4A,$3C,$F0,$20,$B9,$6D,$44,$0D,$73,$54,$69,$3B,$D1,$C2,$9C,$78 ; |J<. .mD.sTi;...x|
		.ENDIF
; end of 'RAM'

		.END
