		.include	"equates.inc"
		.include	"exp_kernel.inc"
		.include	"globals.inc"
		.include	"macros.inc"

off_63	= $63
off_65	= $65
off_67	= $67

;		.ORG	$7600

loc_7600:				; CODE XREF: sub_7AE7-477j
					; sub_7AE7-3FDj ...
		LDA	#<$829B
		STA	off_16
		LDA	#>$829B
		STA	off_16+1
		JSR	$1818

loc_760B:				; CODE XREF: sub_7AE7-4D9j
		JSR	$181E
		BMI	loc_760B
		CMP	#$1B
		BNE	loc_7619
		PLA
		PLA
		JMP	$18B4
; ---------------------------------------------------------------------------

loc_7619:				; CODE XREF: sub_7AE7-4D5j
		LDA	#3
		STA	$7C
		LDA	#$E8 ; 'Ë'
		STA	SEGADDR
		LDA	#$94 ; 'î'
		STA	SEGADDR+1
		LDA	#$13
		STA	word_1903
		LDA	#0
		STA	word_1903+1
		LDA	#$78 ; 'x'
		STA	$1907
		LDA	#0
		STA	$1908
		LDA	#$40 ; '@'
		STA	$1905
		LDA	#$C1 ; '¡'
		STA	$1906
		LDX	#$1F

loc_7647:				; CODE XREF: sub_7AE7-499j
		LDA	$8708,X
		STA	$197C,X
		DEX
		BPL	loc_7647
		JSR	$1827

loc_7653:				; CODE XREF: sub_7AE7-482j
		JSR	sub_8D72
		BCS	loc_766D
		INC	$190C
		INC	word_1903
		BNE	loc_7663
		INC	word_1903+1

loc_7663:				; CODE XREF: sub_7AE7-489j
		DEC	$7C
		BPL	loc_7653
		JSR	$1830
		JMP	loc_7673
; ---------------------------------------------------------------------------

loc_766D:				; CODE XREF: sub_7AE7-491j
		JSR	$1830
		JMP	loc_7600
; ---------------------------------------------------------------------------

loc_7673:				; CODE XREF: sub_7AE7-47Dj
		LDX	#$1F
		LDA	#0

loc_7677:				; CODE XREF: sub_7AE7-463j
		STA	unk_8688,X
		STA	unk_86A8,X
		STA	unk_86C8,X
		STA	unk_86E8,X
		DEX
		BPL	loc_7677
		LDA	#3
		STA	$7C
		LDA	#$94 ; 'î'
		STA	loc_76AC+2
		LDA	#$95 ; 'ï'
		STA	loc_76A5+2
		LDA	#$95 ; 'ï'
		STA	loc_76BB+2
		LDA	#$88 ; 'à'
		STA	$7F
		LDA	#$86 ; 'Ü'
		STA	$80

loc_76A1:				; CODE XREF: sub_7AE7-411j
		LDX	#0
		LDY	#0

loc_76A5:				; DATA XREF: sub_7AE7-456w
					; sub_7AE7-421w
		LDA	byte_9508
		CMP	#'L'
		BNE	loc_76C0

loc_76AC:				; CODE XREF: sub_7AE7-429j
					; DATA XREF: sub_7AE7-45Bw ...
		LDA	unk_94E9,X
		CMP	#$20 ; ' '
		BCC	loc_76BA
		CMP	#$7B ; '{'
		BCS	loc_76BA
		STA	($7F),Y
		INY

loc_76BA:				; CODE XREF: sub_7AE7-436j
					; sub_7AE7-432j
		INX

loc_76BB:				; DATA XREF: sub_7AE7-451w
					; sub_7AE7-424w
		CPX	byte_9517
		BCC	loc_76AC

loc_76C0:				; CODE XREF: sub_7AE7-43Dj
		INC	loc_76AC+2
		INC	loc_76BB+2
		INC	loc_76A5+2
		LDA	#$20 ; ' '
		CLC
		ADC	$7F
		STA	$7F
		BCC	loc_76D4
		INC	$80

loc_76D4:				; CODE XREF: sub_7AE7-417j
		DEC	$7C
		BPL	loc_76A1
		LDA	#$9F ; 'ü'
		STA	off_16
		LDA	#$83 ; 'É'
		STA	off_16+1
		JSR	$1818

loc_76E3:				; CODE XREF: sub_7AE7-3F5j
					; sub_7AE7-3D2j
		JSR	$181E
		CMP	#$1B
		BNE	loc_76ED
		JMP	loc_7600
; ---------------------------------------------------------------------------

loc_76ED:				; CODE XREF: sub_7AE7-3FFj
		SEC
		SBC	#$31 ; '1'
		CMP	#4
		BCS	loc_76E3
		PHA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	#$88 ; 'à'
		STA	loc_778C+1
		STA	loc_7793+1
		LDA	#$86 ; 'Ü'
		ADC	#0
		STA	loc_778C+2
		STA	loc_7793+2
		PLA
		TAX
		LDY	unk_7DBC,X
		LDA	unk_8688,Y
		BEQ	loc_76E3
		BNE	loc_7719

loc_7719:
		LDA	#$34 ; '4'
		STA	SEGADDR
		LDA	#$8E ; 'é'
		STA	SEGADDR+1
		LDA	byte_7DB4,X
		STA	word_1903
		LDA	byte_7DB8,X
		STA	word_1903+1
		LDA	#0
		STA	$1907
		LDA	#7
		STA	$1908
		LDX	#$1F

loc_773B:				; CODE XREF: sub_7AE7-3A5j
		LDA	aReadingCityCha,X ; "	Reading	City Character...    "
		STA	$197C,X
		DEX
		BPL	loc_773B
		JSR	$1827
		JSR	sub_8D72
		JSR	$1830
		BCC	loc_7762
		LDA	#$F4 ; 'Ù'
		STA	off_16
		LDA	#$84 ; 'Ñ'
		STA	off_16+1
		JSR	$1818

loc_775A:				; CODE XREF: sub_7AE7-38Aj
		JSR	$181E
		BMI	loc_775A
		JMP	loc_7600
; ---------------------------------------------------------------------------

loc_7762:				; CODE XREF: sub_7AE7-39Aj
		dldi	off_16, $8532
		JSR	$1818

loc_776D:				; CODE XREF: sub_7AE7-377j
					; sub_7AE7-36Aj
		JSR	$181E
		BMI	loc_776D
		JSR	j_UPPER
		LDX	#$80 ; 'Ä'
		CMP	#'F'
		BEQ	loc_7781
		CMP	#'M'
		BNE	loc_776D
		LDX	#0

loc_7781:				; CODE XREF: sub_7AE7-36Ej
		STX	$633B
		LDY	#$19

loc_7786:				; CODE XREF: sub_7AE7-356j
		LDA	#0
		STA	$6321,Y
		DEY

loc_778C:				; DATA XREF: sub_7AE7-3EAw
					; sub_7AE7-3E0w
		LDA	unk_8688,Y
		CMP	#$20 ; ' '
		BEQ	loc_7786

loc_7793:				; CODE XREF: sub_7AE7-34Dj
					; DATA XREF: sub_7AE7-3E7w ...
		LDA	unk_8688,Y
		STA	$6321,Y
		DEY
		BPL	loc_7793
		LDA	#<$7D08
		STA	off_63
		LDA	#>$7D08
		STA	off_63+1
		LDY	#0

loc_77A6:				; CODE XREF: sub_7AE7-31Bj
		LDA	(off_63),Y
		STA	$65
		INY
		LDA	(off_63),Y
		BEQ	loc_77CF
		STA	$66
		INY
		LDA	(off_63),Y
		STA	$67
		INY
		LDA	(off_63),Y
		STA	$68
		CLC
		LDA	#4
		ADC	off_63
		STA	off_63
		BCC	loc_77C6
		INC	off_63+1

loc_77C6:				; CODE XREF: sub_7AE7-325j
		LDY	#0
		LDA	(off_65),Y
		STA	(off_67),Y
		JMP	loc_77A6
; ---------------------------------------------------------------------------

loc_77CF:				; CODE XREF: sub_7AE7-33Aj
		LDA	#2
		CLC
		ADC	off_63
		STA	off_63
		BCC	loc_77DA
		INC	off_63+1

loc_77DA:				; CODE XREF: sub_7AE7-311j
					; sub_7AE7-2D4j ...
		LDY	#0
		LDA	(off_63),Y
		STA	$65
		INY
		LDA	(off_63),Y
		BEQ	loc_7820
		STA	$66
		INY
		LDA	(off_63),Y
		STA	$67
		INY
		LDA	(off_63),Y
		STA	$68
		TYA
		SEC
		ADC	off_63
		STA	off_63
		BCC	loc_77FB
		INC	off_63+1

loc_77FB:				; CODE XREF: sub_7AE7-2F0j
		LDY	#0
		LDA	(off_65),Y
		INY
		ORA	(off_65),Y
		BNE	loc_7816
		INY
		LDA	(off_65),Y
		LDY	#0
		STA	(off_67),Y
		LDY	#3
		LDA	(off_65),Y
		LDY	#1
		STA	(off_67),Y
		JMP	loc_77DA
; ---------------------------------------------------------------------------

loc_7816:				; CODE XREF: sub_7AE7-2E5j
		LDA	#$FF
		STA	(off_67),Y
		DEY
		STA	(off_67),Y
		JMP	loc_77DA
; ---------------------------------------------------------------------------

loc_7820:				; CODE XREF: sub_7AE7-304j
		JSR	sub_7B1C
		LDA	byte_8EB2
		ORA	byte_8F41
		BEQ	loc_782E
		JSR	sub_7AE7

loc_782E:				; CODE XREF: sub_7AE7-2BEj
		LDA	byte_94E2
		LDX	#$FF

loc_7833:				; CODE XREF: sub_7AE7-2B0j
		INX
		CMP	unk_7C71,X
		BCS	loc_7833
		LDA	unk_7C79,X
		STA	$639A
		LDA	byte_94E3
		LDX	#$FF

loc_7844:				; CODE XREF: sub_7AE7-29Fj
		INX
		CMP	unk_7C75,X
		BCS	loc_7844
		LDA	unk_7C79,X
		STA	$639B
		LDA	byte_94E1
		LDX	#$FF

loc_7855:				; CODE XREF: sub_7AE7-28Ej
		INX
		CMP	unk_7C6D,X
		BCS	loc_7855
		LDA	unk_7C79,X
		STA	$6399
		LDX	byte_8EA1
		LDA	unk_7C7E,X
		STA	$6385
		JSR	sub_7B91
		INC	$6346
		BNE	loc_7875
		INC	$6345

loc_7875:				; CODE XREF: sub_7AE7-277j
		INC	$6348
		BNE	loc_787D
		INC	$6347

loc_787D:				; CODE XREF: sub_7AE7-26Fj
		LDA	#3
		STA	$63BD
		LDA	byte_8E58
		CMP	#$31 ; '1'
		BNE	loc_78C0
		LDA	byte_8E59
		CMP	#3
		BNE	loc_789F
		STA	$6314
		STA	$6312
		LDA	#$11
		STA	$6313
		LDA	#1
		BNE	loc_78DC

loc_789F:				; CODE XREF: sub_7AE7-259j
					; sub_7AE7-225j ...
		LDA	#$24 ; '$'
		STA	off_16
		LDA	#$84 ; 'Ñ'
		STA	off_16+1
		JSR	$1818

loc_78AA:				; CODE XREF: sub_7AE7-23Aj
					; sub_7AE7-22Cj
		JSR	$181E
		BMI	loc_78AA
		JSR	j_UPPER
		CMP	#'Y'
		BNE	loc_78B9
		JMP	loc_797B
; ---------------------------------------------------------------------------

loc_78B9:				; CODE XREF: sub_7AE7-233j
		CMP	#'N'
		BNE	loc_78AA
		JMP	loc_7600
; ---------------------------------------------------------------------------

loc_78C0:				; CODE XREF: sub_7AE7-260j
		CMP	#$3B ; ';'
		BNE	loc_789F
		LDA	byte_8E59
		CMP	#$3F ; '?'
		BNE	loc_789F
		LDA	#$1B
		STA	$6313
		LDA	#$1D
		STA	$6314
		LDA	#0
		STA	$6312
		LDA	#3

loc_78DC:				; CODE XREF: sub_7AE7-24Aj
		STA	$6315
		LDA	#$1D
		STA	$63
		LDA	#$92 ; 'í'
		STA	$64
		JSR	sub_79AA
		STA	$63A2
		LDA	#$3D ; '='
		STA	$63
		LDA	#$92 ; 'í'
		STA	$64
		JSR	sub_79AA
		STA	$63A3
		LDA	#<$925D
		STA	off_63
		LDA	#>$925D
		STA	off_63+1
		JSR	sub_79AA
		STA	$63A4
		LDA	#<$927D
		STA	off_63
		LDA	#>$927D
		STA	off_63+1
		JSR	sub_79AA
		STA	$63A5
		LDX	#0
		STX	$6F

loc_791B:				; CODE XREF: sub_7AE7-1B5j
		LDX	$6F
		LDA	word_7C51,X
		STA	$65
		INX
		LDA	word_7C51,X
		STA	$66
		ORA	$65
		BEQ	loc_7935
		INX
		STX	$6F
		JSR	sub_7A36
		JMP	loc_791B
; ---------------------------------------------------------------------------

loc_7935:				; CODE XREF: sub_7AE7-1BDj
		LDA	byte_8EB1
		CMP	#$10
		BCC	loc_793E
		LDA	#$10

loc_793E:				; CODE XREF: sub_7AE7-1ADj
		STA	byte_8EB1
		LDA	byte_8EB1
		BEQ	loc_797B

loc_7946:				; CODE XREF: sub_7AE7-16Ej
		LDA	#$17
		JSR	$1899
		TAX
		LDA	$8748,X
		STA	$63
		LDA	$8760,X
		STA	$64
		LDA	RANDOM
		CLC
		ADC	byte_8E74
		BCS	loc_7969
		CMP	#$80 ; 'Ä'
		BCS	loc_7969
		LDA	#0
		LDY	#$C
		STA	($63),Y

loc_7969:				; CODE XREF: sub_7AE7-18Aj
					; sub_7AE7-186j
		LDX	$64
		LDY	$63
		JSR	$1884
		LDA	#$20 ; ' '
		LDY	#$C
		STA	($63),Y
		DEC	byte_8EB1
		BNE	loc_7946

loc_797B:				; CODE XREF: sub_7AE7-231j
					; sub_7AE7-1A3j
		LDA	$630E
		SEC
		SBC	#$A8 ; '®'
		STA	$630E
		LDA	$630D
		SBC	#7
		STA	$630D
		LDA	#$FF
		STA	$6320
		LDA	$633C
		CLC
		ADC	#$A
		STA	$6381
		LDA	#1
		STA	$6302
		DEC	$630C
		BPL	locret_79A9
		LDA	#$B
		STA	$630C

locret_79A9:				; CODE XREF: sub_7AE7-145j
		RTS
; END OF FUNCTION CHUNK	FOR sub_7AE7

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_79AA:				; CODE XREF: sub_7AE7-200p
					; sub_7AE7-1F2p ...
		LDY	#0
		LDA	#$88 ; 'à'
		STA	$67
		LDA	#$7C ; '|'
		STA	$68

loc_79B4:				; CODE XREF: sub_79AA+Fj
		LDA	($63),Y
		BMI	loc_79BB
		INY
		BNE	loc_79B4

loc_79BB:				; CODE XREF: sub_79AA+Cj
		AND	#$7F ; ''

loc_79BD:				; CODE XREF: sub_79AA+1Cj
		CMP	#$20 ; ' '
		BNE	loc_79C9
		DEY
		BMI	loc_7A02
		LDA	($63),Y
		JMP	loc_79BD
; ---------------------------------------------------------------------------

loc_79C9:				; CODE XREF: sub_79AA+15j
		STA	($67),Y
		STY	byte_8687
		DEY
		BMI	loc_7A02

loc_79D1:				; CODE XREF: sub_79AA+2Cj
		LDA	($63),Y
		STA	($67),Y
		DEY
		BPL	loc_79D1
		LDY	byte_8687
		INY
		LDA	#0
		STA	($67),Y
		INY
		STA	($67),Y
		TYA
		CLC
		ADC	#5
		STA	byte_7C87
		TYA
		CLC
		ADC	#8
		STA	byte_7C83
		INY
		LDA	#1
		STA	($67),Y
		INY
		LDA	#4
		STA	($67),Y
		LDX	#$7C ; '|'
		LDY	#$82 ; 'Ç'
		JMP	$1884
; ---------------------------------------------------------------------------

loc_7A02:				; CODE XREF: sub_79AA+18j sub_79AA+25j
		LDA	#$FF
		RTS
; End of function sub_79AA


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7A05:				; CODE XREF: sub_7A36+8p
		LDY	#8

loc_7A07:				; CODE XREF: sub_7A05+Aj
		LDA	($65),Y
		CMP	unk_828A,Y
		BNE	loc_7A1F
		DEY
		BPL	loc_7A07
		LDA	#9
		STA	$6D

loc_7A15:				; CODE XREF: sub_7A05+2Aj
		CLC
		ADC	$65
		STA	$65
		BCC	locret_7A1E
		INC	$66

locret_7A1E:				; CODE XREF: sub_7A05+15j
		RTS
; ---------------------------------------------------------------------------

loc_7A1F:				; CODE XREF: sub_7A05+7j
		LDY	#7

loc_7A21:				; CODE XREF: sub_7A05+24j
		LDA	($65),Y
		CMP	unk_8293,Y
		BNE	loc_7A31
		DEY
		BPL	loc_7A21
		STY	$6D
		LDA	#8
		BNE	loc_7A15

loc_7A31:				; CODE XREF: sub_7A05+21j
		LDA	#0
		STA	$6D
		RTS
; End of function sub_7A05


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7A36:				; CODE XREF: sub_7AE7-1B8p
		LDA	#$CC ; 'Ã'
		STA	$67
		LDA	#$7D ; '}'
		STA	$68
		JSR	sub_7A05

loc_7A41:				; CODE XREF: sub_7A36+39j sub_7A36+3Dj
		LDY	#1
		LDA	($67),Y
		STA	byte_8687
		LDA	$67
		CLC
		ADC	#6
		STA	$63
		LDA	#0
		ADC	$68
		STA	$64
		DEY

loc_7A56:				; CODE XREF: sub_7A36+2Bj
		LDA	($65),Y
		AND	#$7F ; ''
		CMP	($63),Y
		BNE	loc_7A65
		INY
		LDA	($63),Y
		BNE	loc_7A56
		BEQ	loc_7A76

loc_7A65:				; CODE XREF: sub_7A36+26j
		LDA	byte_8687
		BEQ	locret_7A75
		CLC
		ADC	$67
		STA	$67
		BCC	loc_7A41
		INC	$68
		BNE	loc_7A41

locret_7A75:				; CODE XREF: sub_7A36+32j
		RTS
; ---------------------------------------------------------------------------

loc_7A76:				; CODE XREF: sub_7A36+2Dj
		LDY	#$80 ; 'Ä'

loc_7A78:				; CODE XREF: sub_7A36+48j
		LDA	($67),Y
		STA	byte_7C87,Y
		DEY
		BPL	loc_7A78
		LDY	$6D
		BEQ	loc_7ACB
		BMI	loc_7AA1
		LDX	#$71 ; 'q'

loc_7A88:				; CODE XREF: sub_7A36+59j
		LDA	unk_7C8D,X
		STA	unk_7C96,X
		DEX
		BPL	loc_7A88
		LDX	#8

loc_7A93:				; CODE XREF: sub_7A36+66j
		LDA	unk_828A,X
		AND	#$7F ; ''
		STA	unk_7C8D,X
		DEX
		BPL	loc_7A93
		TYA
		BNE	loc_7ABB

loc_7AA1:				; CODE XREF: sub_7A36+4Ej
		LDX	#$72 ; 'r'

loc_7AA3:				; CODE XREF: sub_7A36+74j
		LDA	unk_7C95,X
		STA	unk_7C8F,X
		DEX
		BPL	loc_7AA3
		LDX	#7

loc_7AAE:				; CODE XREF: sub_7A36+81j
		LDA	unk_8293,X
		AND	#$7F ; ''
		STA	unk_7C8D,X
		DEX
		BPL	loc_7AAE
		LDA	#8

loc_7ABB:				; CODE XREF: sub_7A36+69j
		CLC
		PHA
		ADC	byte_7C8C
		STA	byte_7C8C
		PLA
		CLC
		ADC	byte_7C88
		STA	byte_7C88

loc_7ACB:				; CODE XREF: sub_7A36+4Cj
		LDX	#$7C ; '|'
		LDY	#$87 ; 'á'
		JMP	$1884
; End of function sub_7A36

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_7AE7

loc_7AD2:				; CODE XREF: sub_7AE7+32j
		LDA	#$3C ; '<'
		STA	off_16
		LDA	#$86 ; 'Ü'
		STA	off_16+1
		JSR	$1818

loc_7ADD:				; CODE XREF: sub_7AE7-7j
		JSR	$181E
		BMI	loc_7ADD

loc_7AE2:				; CODE XREF: sub_7AE7+13j
		PLA
		PLA
		JMP	loc_7600
; END OF FUNCTION CHUNK	FOR sub_7AE7

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7AE7:				; CODE XREF: sub_7AE7-2BCp

; FUNCTION CHUNK AT 7600 SIZE 000003AA BYTES
; FUNCTION CHUNK AT 7AD2 SIZE 00000015 BYTES

		dldi	off_16, $8565
		JSR	$1818

loc_7AF2:				; CODE XREF: sub_7AE7+17j
		JSR	$181E
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_7AE2
		CMP	#'Y'
		BNE	loc_7AF2
		LDA	$7B
		SEC
		SBC	#$10
		STA	$7B
		LDA	$7A
		SBC	#$27 ; '''
		STA	$7A
		LDA	$79
		SBC	#0
		STA	$79
		LDA	$78
		SBC	#0
		STA	$78
		BCC	loc_7AD2
		RTS
; End of function sub_7AE7


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7B1C:				; CODE XREF: sub_7AE7:loc_7820p
		LDX	#3

loc_7B1E:				; CODE XREF: sub_7B1C+8j
		LDA	unk_8FF2,X
		STA	$74,X
		DEX
		BPL	loc_7B1E
		JSR	sub_7B5F
		JSR	sub_7B5F
		LDX	#3

loc_7B2E:				; CODE XREF: sub_7B1C+18j
		LDA	unk_8FFA,X
		STA	$78,X
		DEX
		BPL	loc_7B2E
		JSR	sub_7B46
		LDX	#3

loc_7B3B:				; CODE XREF: sub_7B1C+25j
		LDA	unk_8FF6,X
		STA	$74,X
		DEX
		BPL	loc_7B3B
		JSR	sub_7B5F
; End of function sub_7B1C


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7B46:				; CODE XREF: sub_7B1C+1Ap
		CLC
		LDX	#3

loc_7B49:				; CODE XREF: sub_7B46+Aj
		LDA	$78,X
		ADC	$74,X
		STA	$78,X
		DEX
		BPL	loc_7B49
		BCC	locret_7B5E
		LDA	#$FF
		STA	$78
		STA	$79
		STA	$7A
		STA	$7B

locret_7B5E:				; CODE XREF: sub_7B46+Cj
		RTS
; End of function sub_7B46


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7B5F:				; CODE XREF: sub_7B1C+Ap sub_7B1C+Dp ...
		LDX	#3

loc_7B61:				; CODE XREF: sub_7B5F+7j
		LDA	$74,X
		STA	$70,X
		DEX
		BPL	loc_7B61
		JSR	sub_7B7C
		JSR	sub_7B7C
		CLC
		LDX	#3

loc_7B71:				; CODE XREF: sub_7B5F+19j
		LDA	$74,X
		ADC	$70,X
		STA	$74,X
		DEX
		BPL	loc_7B71
		BCS	loc_7B86
; End of function sub_7B5F


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7B7C:				; CODE XREF: sub_7B5F+9p sub_7B5F+Cp
		ASL	$77
		ROL	$76
		ROL	$75
		ROL	$74
		BCC	locret_7B90

loc_7B86:				; CODE XREF: sub_7B5F+1Bj
		LDA	#$FF
		STA	$74
		STA	$75
		STA	$76
		STA	$77

locret_7B90:				; CODE XREF: sub_7B7C+8j
		RTS
; End of function sub_7B7C


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7B91:				; CODE XREF: sub_7AE7-27Dp
		LDA	#0
		LDX	#5

loc_7B95:				; CODE XREF: sub_7B91+8j
		STA	$63B1,X
		DEX
		BPL	loc_7B95

loc_7B9B:				; CODE XREF: sub_7B91+12j sub_7B91+17j
		JSR	sub_7BFD
		BCC	loc_7BBE
		INC	$63B2
		BNE	loc_7B9B
		INC	$63B1
		BNE	loc_7B9B
		DEC	$63B1
		DEC	$63B2
		LDA	#$64 ; 'd'
		CLC
		LDX	#3

loc_7BB5:				; CODE XREF: sub_7B91+2Bj
		ADC	$78,X
		STA	$78,X
		LDA	#0
		DEX
		BPL	loc_7BB5

loc_7BBE:				; CODE XREF: sub_7B91+Dj sub_7B91+35j	...
		JSR	sub_7C27
		BCC	loc_7BE2
		INC	$63B4
		BNE	loc_7BBE
		INC	$63B3
		BNE	loc_7BBE
		DEC	$63B3
		DEC	$63B4
		LDA	#$A
		CLC
		ADC	$7B
		STA	$7B
		LDA	#0
		ADC	$7A
		STA	$7A
		BCS	loc_7BF2

loc_7BE2:				; CODE XREF: sub_7B91+30j
		LDA	$7B
		STA	$63B6
		LDA	$7A
		STA	$63B5
		LDA	$78
		ORA	$79
		BEQ	locret_7BFC

loc_7BF2:				; CODE XREF: sub_7B91+4Fj
		LDA	#$FF
		LDX	#5

loc_7BF6:				; CODE XREF: sub_7B91+69j
		STA	$63B1,X
		DEX
		BPL	loc_7BF6

locret_7BFC:				; CODE XREF: sub_7B91+5Fj
		RTS
; End of function sub_7B91


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7BFD:				; CODE XREF: sub_7B91:loc_7B9Bp
		LDA	$7B
		SEC
		SBC	#$64 ; 'd'
		STA	$7B
		LDA	$7A
		SBC	#0
		STA	$7A
		LDA	$79
		SBC	#0
		STA	$79
		LDA	$78
		SBC	#0
		STA	$78
		BCS	locret_7C26
		LDA	#$64 ; 'd'
		LDX	#3

loc_7C1C:				; CODE XREF: sub_7BFD+26j
		ADC	$78,X
		STA	$78,X
		LDA	#0
		DEX
		BPL	loc_7C1C
		CLC

locret_7C26:				; CODE XREF: sub_7BFD+19j sub_7C27+19j
		RTS
; End of function sub_7BFD


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7C27:				; CODE XREF: sub_7B91:loc_7BBEp
		LDA	$7B
		SEC
		SBC	#$A
		STA	$7B
		LDA	$7A
		SBC	#0
		STA	$7A
		LDA	$79
		SBC	#0
		STA	$79
		LDA	$78
		SBC	#0
		STA	$78
		BCS	locret_7C26
		LDA	#$A
		LDX	#3

loc_7C46:				; CODE XREF: sub_7C27+26j
		ADC	$78,X
		STA	$78,X
		LDA	#0
		DEX
		BPL	loc_7C46
		CLC
		RTS
; End of function sub_7C27

; ---------------------------------------------------------------------------
word_7C51:	.WORD $929D		; DATA XREF: sub_7AE7-1CAr
					; sub_7AE7-1C4r
		.WORD $92C8
		.WORD $92F3
		.WORD $931E
		.WORD $9013
		.WORD $93A1
		.WORD $93B7
		.WORD $93CD
		.WORD $93E3
		.WORD $93F9
		.WORD $940F
		.WORD $9425
		.WORD $943B
		.BYTE	0
		.BYTE	0
unk_7C6D:	.BYTE	6		; DATA XREF: sub_7AE7-291r
		.BYTE  $C
		.BYTE $18
		.BYTE $FF
unk_7C71:	.BYTE	3		; DATA XREF: sub_7AE7-2B3r
		.BYTE	8
		.BYTE  $D
		.BYTE $12
unk_7C75:	.BYTE $10		; DATA XREF: sub_7AE7-2A2r
		.BYTE $18
		.BYTE $30 ; 0
		.BYTE $3C ; <
unk_7C79:	.BYTE $FF		; DATA XREF: sub_7AE7-2AEr
					; sub_7AE7-29Dr ...
		.BYTE $BF ; ø
		.BYTE $7F ; 
		.BYTE $3F ; ?
		.BYTE	0
unk_7C7E:	.BYTE $E0 ; ‡		; DATA XREF: sub_7AE7-283r
		.BYTE $B0 ; ∞
		.BYTE $78 ; x
		.BYTE $3F ; ?
		.BYTE $85 ; Ö
byte_7C83:	.BYTE 0			; DATA XREF: sub_79AA+44w
		.BYTE	0
		.BYTE	0
		.BYTE	4
byte_7C87:	.BYTE 0			; DATA XREF: sub_79AA+3Dw sub_7A36+44w
byte_7C88:	.BYTE $E8		; DATA XREF: sub_7A36+8Fr sub_7A36+92w
		.BYTE $12
		.BYTE $85 ; Ö
		.BYTE	9
byte_7C8C:	.BYTE $BD		; DATA XREF: sub_7A36+87r sub_7A36+8Aw
unk_7C8D:	.BYTE $28 ; (		; DATA XREF: sub_7A36:loc_7A88r
					; sub_7A36+62w	...
		.BYTE $12
unk_7C8F:	.BYTE $85 ; Ö		; DATA XREF: sub_7A36+70w
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $1D
		.BYTE $AD ; ≠
		.BYTE	0
unk_7C95:	.BYTE $90 ; ê		; DATA XREF: sub_7A36:loc_7AA3r
unk_7C96:	.BYTE $91 ; ë		; DATA XREF: sub_7A36+55w
		.BYTE	9
		.BYTE $EE ; Ó
		.BYTE $95 ; ï
		.BYTE $56 ; V
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $EE ; Ó
		.BYTE $96 ; ñ
		.BYTE $56 ; V
		.BYTE $88 ; à
		.BYTE $C0 ; ¿
		.BYTE  $A
		.BYTE $D0 ; –
		.BYTE $EE ; Ó
		.BYTE $CA ;  
		.BYTE $D0 ; –
		.BYTE $DF ; ﬂ
; ---------------------------------------------------------------------------
		LDA	#$FF
		STA	$AC
		LDA	#0
		STA	$40B9
		LDA	#$60 ; '`'
		STA	$74D7
		LDA	#$FF
		STA	$B7
		LDA	$7C
		AND	#$80 ; 'Ä'
		BNE	loc_7CCF
		LDA	$F02D
		CMP	#5
		BCC	loc_7CCB
		CMP	#$13
		BCC	loc_7CCF

loc_7CCB:				; CODE XREF: RAM:7CC5j
		LDA	#$17
		STA	$B7

loc_7CCF:				; CODE XREF: RAM:7CBEj	RAM:7CC9j
		LDA	$7C
		AND	#$1F
		STA	$7C
		ASL	A
		ASL	A
		ASL	A
		SEC
		SBC	$7C
		TAY
		STA	$56FB
		LDA	$A000,Y
		CLC
		ADC	#0
		STA	$83
		LDA	$A001,Y
		ADC	#$A0 ; '†'
		STA	$84
		LDA	$A002,Y
		STA	$7B
		LDA	#$F0 ; ''
		STA	$82
		JMP	$56FE
; ---------------------------------------------------------------------------
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $AD ; ≠
		.BYTE $14
		.BYTE $F0 ; 
		.BYTE $85 ; Ö
		.BYTE $B0 ; ∞
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $AF ; Ø
		.BYTE $20
		.BYTE $8A ; ä
		.BYTE $4A ; J
		.BYTE $8E ; é
		.BYTE  $A
		.BYTE $63 ; c
		.BYTE $63 ; c
		.BYTE $8E ; é
		.BYTE $59 ; Y
		.BYTE $63 ; c
		.BYTE $64 ; d
		.BYTE $8E ; é
		.BYTE $5A ; Z
		.BYTE $63 ; c
		.BYTE $6C ; l
		.BYTE $8E ; é
		.BYTE $61 ; a
		.BYTE $63 ; c
		.BYTE $6D ; m
		.BYTE $8E ; é
		.BYTE $62 ; b
		.BYTE $63 ; c
		.BYTE $75 ; u
		.BYTE $8E ; é
		.BYTE $69 ; i
		.BYTE $63 ; c
		.BYTE $76 ; v
		.BYTE $8E ; é
		.BYTE $6A ; j
		.BYTE $63 ; c
		.BYTE $7E ; ~
		.BYTE $8E ; é
		.BYTE $71 ; q
		.BYTE $63 ; c
		.BYTE $7F ; 
		.BYTE $8E ; é
		.BYTE $72 ; r
		.BYTE $63 ; c
		.BYTE $87 ; á
		.BYTE $8E ; é
		.BYTE $49 ; I
		.BYTE $63 ; c
		.BYTE $88 ; à
		.BYTE $8E ; é
		.BYTE $4A ; J
		.BYTE $63 ; c
		.BYTE $90 ; ê
		.BYTE $8E ; é
		.BYTE $51 ; Q
		.BYTE $63 ; c
		.BYTE $91 ; ë
		.BYTE $8E ; é
		.BYTE $52 ; R
		.BYTE $63 ; c
		.BYTE $99 ; ô
		.BYTE $8E ; é
		.BYTE $79 ; y
		.BYTE $63 ; c
		.BYTE $9A ; ö
		.BYTE $8E ; é
		.BYTE $7A ; z
		.BYTE $63 ; c
		.BYTE $DA ; ⁄
		.BYTE $94 ; î
		.BYTE $8C ; å
		.BYTE $63 ; c
		.BYTE $E1 ; ·
		.BYTE $8F ; è
		.BYTE $3C ; <
		.BYTE $63 ; c
		.BYTE $DF ; ﬂ
		.BYTE $94 ; î
		.BYTE $BB ; ª
		.BYTE $63 ; c
		.BYTE $E0 ; ‡
		.BYTE $94 ; î
		.BYTE $BC ; º
		.BYTE $63 ; c
		.BYTE $DA ; ⁄
		.BYTE $8F ; è
		.BYTE $3D ; =
		.BYTE $63 ; c
		.BYTE $DB ; -
		.BYTE $8F ; è
		.BYTE $3E ; >
		.BYTE $63 ; c
		.BYTE $DC ; ‹
		.BYTE $8F ; è
		.BYTE $3F ; ?
		.BYTE $63 ; c
		.BYTE $DD ; ›
		.BYTE $8F ; è
		.BYTE $40 ; @
		.BYTE $63 ; c
		.BYTE $E2 ; ‚
		.BYTE $8F ; è
		.BYTE $41 ; A
		.BYTE $63 ; c
		.BYTE $E3 ; „
		.BYTE $8F ; è
		.BYTE $42 ; B
		.BYTE $63 ; c
		.BYTE $E4 ; ‰
		.BYTE $8F ; è
		.BYTE $43 ; C
		.BYTE $63 ; c
		.BYTE $E5 ; Â
		.BYTE $8F ; è
		.BYTE $44 ; D
		.BYTE $63 ; c
		.BYTE $A3 ; £
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $63 ; c
		.BYTE $E8 ; Ë
		.BYTE $94 ; î
		.BYTE $C0 ; ¿
		.BYTE $63 ; c
		.BYTE $DB ; -
		.BYTE $94 ; î
		.BYTE $BD ; Ω
		.BYTE $63 ; c
		.BYTE $4A ; J
		.BYTE $8E ; é
		.BYTE  $A
		.BYTE $63 ; c
		.BYTE $4B ; K
		.BYTE $8E ; é
		.BYTE  $B
		.BYTE $63 ; c
		.BYTE $4C ; L
		.BYTE $8E ; é
		.BYTE  $C
		.BYTE $63 ; c
		.BYTE $4D ; M
		.BYTE $8E ; é
		.BYTE  $E
		.BYTE $63 ; c
		.BYTE $4E ; N
		.BYTE $8E ; é
		.BYTE  $D
		.BYTE $63 ; c
		.BYTE	0
		.BYTE	0
		.BYTE $EA ; Í
		.BYTE $8F ; è
		.BYTE $45 ; E
		.BYTE $63 ; c
		.BYTE $EE ; Ó
		.BYTE $8F ; è
		.BYTE $47 ; G
		.BYTE $63 ; c
		.BYTE $F2 ; Ú
		.BYTE $8F ; è
		.BYTE $B1 ; ±
		.BYTE $63 ; c
		.BYTE $F6 ; ˆ
		.BYTE $8F ; è
		.BYTE $B3 ; ≥
		.BYTE $63 ; c
		.BYTE $FA ; ˙
		.BYTE $8F ; è
		.BYTE $B5 ; µ
		.BYTE $63 ; c
		.BYTE $FE ; ˛
		.BYTE $8F ; è
		.BYTE $B7 ; ∑
		.BYTE $63 ; c
		.BYTE	2
		.BYTE $90 ; ê
		.BYTE $B9 ; π
		.BYTE $63 ; c
		.BYTE	0
		.BYTE	0

byte_7DB4:
		.BYTE $37 ; 7
		.BYTE $CB ; À
		.BYTE $5F ; _
		.BYTE $F3 ; Û

byte_7DB8:
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	1
unk_7DBC:	.BYTE	0		; DATA XREF: sub_7AE7-3D8r
		.BYTE $20
		.BYTE $40 ; @
		.BYTE $60 ; `
		.BYTE $C1 ; ¡
		.BYTE $D2 ; “
		.BYTE $A0 ; †
		.BYTE $C3 ; √
		.BYTE $C8 ; »
		.BYTE $C1 ; ¡
		.BYTE $D2 ; “
		.BYTE $A0 ; †
		.BYTE $C4 ; -
		.BYTE $C9 ; …
		.BYTE $D3 ; ”
		.BYTE $CB ; À
		.BYTE $83 ; É
		.BYTE $27 ; '
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $13
aTowerShield:	.BYTE "Tower Shield",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $18
		.BYTE	1
		.BYTE $1E
		.BYTE $32 ; 2
		.BYTE	2
		.BYTE $60 ; `
		.BYTE $83 ; É
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $E
aWarNet:	.BYTE "War Net",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
		.BYTE	8
		.BYTE $23 ; #
		.BYTE $2D ; -
		.BYTE	2
		.BYTE $20
		.BYTE $83 ; É
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE $14
aSpikedShield:	.BYTE "Spiked Shield",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $14
		.BYTE $13
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
		.BYTE	1
		.BYTE $19
		.BYTE $2D ; -
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $83 ; É
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
aShield:	.BYTE "Shield",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $15
		.BYTE	0
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
		.BYTE	1
		.BYTE $19
		.BYTE $2D ; -
		.BYTE	2
		.BYTE $4E ; N
		.BYTE $83 ; É
		.BYTE $27 ; '
		.BYTE	0
		.BYTE	0
		.BYTE  $B
		.BYTE $13
aSmallShield:	.BYTE "Small Shield",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $14
		.BYTE	0
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
		.BYTE	1
		.BYTE $19
		.BYTE $2D ; -
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $83 ; É
		.BYTE $26 ; &
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $12
aFlamesword:	.BYTE "FLAMESWORD!",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE  $A
		.BYTE $14
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $20
		.BYTE $83 ; É
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $11
aBattleAxe:	.BYTE "Battle Axe",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $12
		.BYTE $27 ; '
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE $10
		.BYTE $1E
		.BYTE $37 ; 7
		.BYTE	0
		.BYTE $10
		.BYTE $83 ; É
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE $10
		.BYTE $14
aBattleHammer:	.BYTE "Battle Hammer",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE $10
		.BYTE $1E
		.BYTE $37 ; 7
		.BYTE	2
		.BYTE $10
		.BYTE $83 ; É
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE  $C
aFlail:		.BYTE "Flail",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $15
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE  $F
		.BYTE  $F
		.BYTE $1E
		.BYTE	2
		.BYTE	0
		.BYTE $83 ; É
		.BYTE $1F
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE  $B
aWhip:		.BYTE "Whip",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $12
		.BYTE $12
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	8
		.BYTE  $F
		.BYTE $16
		.BYTE $2C ; ,
		.BYTE	1
		.BYTE $83 ; É
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE $10
aLongsword:	.BYTE "Longsword",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $11
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $E
		.BYTE $10
		.BYTE $1E
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $10
		.BYTE $83 ; É
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $12
		.BYTE  $C
aSword:		.BYTE "Sword",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $11
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE  $E
		.BYTE $1E
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $10
		.BYTE $83 ; É
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $11
aShortsword:	.BYTE "Shortsword",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $23 ; #
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
		.BYTE  $A
		.BYTE $19
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $10
		.BYTE $83 ; É
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE  $F
aStiletto:	.BYTE "Stiletto",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	8
		.BYTE  $C
		.BYTE $15
		.BYTE $29 ; )
		.BYTE	1
		.BYTE $83 ; É
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE  $D
aDagger:	.BYTE "Dagger",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	6
		.BYTE  $C
		.BYTE $15
		.BYTE	1
		.BYTE	2
		.BYTE $84 ; Ñ
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE $14
aCrystalPlate:	.BYTE "Crystal Plate",0
		.BYTE	0
		.BYTE	1
		.BYTE $25 ; %
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE $13
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE $14
		.BYTE $28 ; (
		.BYTE $84 ; Ñ
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $12
aElfinChain:	.BYTE "Elfin Chain",0
		.BYTE	0
		.BYTE	1
		.BYTE $15
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $19
		.BYTE $28 ; (
		.BYTE $84 ; Ñ
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE $11
aPlateMail:	.BYTE "Plate Mail",0
		.BYTE	0
		.BYTE	1
		.BYTE $24 ; $
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE $28 ; (
		.BYTE $84 ; Ñ
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE $13
aBandedArmor:	.BYTE "Banded Armor",0
		.BYTE	0
		.BYTE	1
		.BYTE $16
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $19
		.BYTE $28 ; (
		.BYTE $84 ; Ñ
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $11
aChainMail:	.BYTE "Chain Mail",0
		.BYTE	0
		.BYTE	1
		.BYTE $16
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $19
		.BYTE $28 ; (
		.BYTE $84 ; Ñ
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $12
aSplintMail:	.BYTE "Splint Mail",0
		.BYTE	0
		.BYTE	1
		.BYTE $13
		.BYTE $12
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1E
		.BYTE $28 ; (
		.BYTE $84 ; Ñ
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $10
		.BYTE $11
aScaleMail:	.BYTE "Scale Mail",0
		.BYTE	0
		.BYTE	1
		.BYTE $23 ; #
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE $28 ; (
		.BYTE $84 ; Ñ
		.BYTE $1F
		.BYTE	0
		.BYTE	0
		.BYTE  $E
		.BYTE $10
aRingMail:	.BYTE "Ring Mail",0
		.BYTE	0
		.BYTE	1
		.BYTE $22 ; "
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE $28 ; (
		.BYTE $84 ; Ñ
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE $16
aStuddedLeather:.BYTE "Studded Leather",0
		.BYTE	0
		.BYTE	1
		.BYTE $15
		.BYTE $13
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1E
		.BYTE $23 ; #
		.BYTE $84 ; Ñ
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $14
aLeatherArmor:	.BYTE "Leather Armor",0
		.BYTE	0
		.BYTE	1
		.BYTE $12
		.BYTE $12
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1E
		.BYTE $22 ; "
		.BYTE $84 ; Ñ
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE $13
aPaddedArmor:	.BYTE "Padded Armor",0
		.BYTE	0
		.BYTE	1
		.BYTE $11
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1E
		.BYTE $21 ; !
		.BYTE $85 ; Ö
		.BYTE $1D
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $1C
aInvulnerabilit:.BYTE "Invulnerability Blunt",0
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $1D
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $1C
aInvulnerabil_0:.BYTE "Invulnerability Sharp",0
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $1D
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $1C
aInvulnerabil_1:.BYTE "Invulnerability Earth",0
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $1B
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $1A
aInvulnerabil_2:.BYTE "Invulnerability Air",0
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $1C
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $1B
aInvulnerabil_3:.BYTE "Invulnerability Fire",0
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $1D
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $1C
aInvulnerabil_4:.BYTE "Invulnerability Water",0
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $1D
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $1C
aInvulnerabil_5:.BYTE "Invulnerability Power",0
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $1E
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $1D
aInvulnerabil_6:.BYTE "Invulnerability Mental",0
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $1E
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $1D
aInvulnerabil_7:.BYTE "Invulnerability Cleric",0
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $18
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $17
aProtection1:	.BYTE "Protection+1 (*)",0
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $18
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $17
aProtection2:	.BYTE "Protection+2 (*)",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_828A:	.BYTE $CD ; Õ		; DATA XREF: sub_7A05+4r
					; sub_7A36:loc_7A93r
		.BYTE $C1 ; ¡
		.BYTE $C7 ; «
		.BYTE $C9 ; …
		.BYTE $C3 ; √
		.BYTE $C1 ; ¡
		.BYTE $CC ; Ã
		.BYTE $A1 ; °
		.BYTE $A0 ; †
unk_8293:	.BYTE $C3 ; √		; DATA XREF: sub_7A05+1Er
					; sub_7A36:loc_7AAEr
		.BYTE $D5 ; ’
		.BYTE $D2 ; “
		.BYTE $D3 ; ”
		.BYTE $C5 ; ≈
		.BYTE $C4 ; -
		.BYTE $A1 ; °
		.BYTE $A0 ; †
		.BYTE $A8
		MOVEXY	8,2
aTransferACityC:.BYTE "Transfer a City Character"
		.BYTE $D
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aNoteIfYouWishT:.BYTE "NOTE: If you wish to keep this character"
		.BYTE $D
		.BYTE $A5
aYouMustHaveADu:.BYTE "you must have a Dungeon character disk"
		.BYTE $D
		.BYTE $A5
aReadyWithFewer:.BYTE "ready with fewer than four characters"
		.BYTE $D
		.BYTE $A5
aOnIt_:		.BYTE "on it."
		.BYTE $D
		MOVEXY	0,16
		.BYTE $A5
aInsertYourCity:.BYTE "Insert your CITY Character Disk"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aInDrive1:	.BYTE "in Drive 1"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aPressSpaceBarT:.BYTE "Press SPACE BAR to continue"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOrEscToCancel:	.BYTE "or ESC to cancel"
		.BYTE $D
		.BYTE $FF
		.BYTE $A8
		MOVEXY	7,2
aTransferACit_0:.BYTE "Transfer a City Character"
		MOVEXY	5,8
a1:		.BYTE "(1) "
		.BYTE $B3
		.WORD unk_8688
		.BYTE $19
		MOVEXY	5,10
a2:		.BYTE "(2) "
		.BYTE $B3
		.WORD unk_86A8
		.BYTE $19
		MOVEXY	5,12
a3:		.BYTE "(3) "
		.BYTE $B3
		.WORD unk_86C8
		.BYTE $19
		MOVEXY	5,14
a4:		.BYTE "(4) "
		.BYTE $B3
		.WORD unk_86E8
		.BYTE $19
		MOVEXY	0,18
		.BYTE $A5
aSelectWhichCha:.BYTE "Select which character (1-4) ?"
		.BYTE $D
		MOVEXY	0,22
		.BYTE $A5
aPressEscToCanc:.BYTE "Press ESC to cancel"
		.BYTE $D
		.BYTE $FF
		.BYTE $A8
		MOVEXY	0,7
		.BYTE $A5
aThisCharacterI:.BYTE "This character is not by a Dungeon"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aEntrance_DoYou:.BYTE "entrance.  Do you wish to be joined"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aToTheDungeonAn:.BYTE "to the Dungeon anyway?"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aYOrN:		.BYTE "(Y or N)"
		.BYTE $D
		.BYTE $D
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aDoingSoWillCau:.BYTE "(Doing so will cause your character to"
		.BYTE $D
		.BYTE $A5
aLoseAllWeapons:.BYTE "lose all weapons, armor, clothing"
		.BYTE $D
		.BYTE $A5
aAndPotions:	.BYTE "and potions!)"
		.BYTE $D
		.BYTE $FF
		.BYTE $A8
		MOVEXY	12,12
aThereHasBeenA:	.BYTE "There has been a"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aDiskError:	.BYTE "DISK ERROR"
		MOVEXY	8,22
aPressAnyKeyToC:.BYTE "Press any key to continue"
		.BYTE $FF
		.BYTE $A8
		MOVEXY	0,8
		.BYTE $A5
aIsThisCharacte:.BYTE "Is this character male or female?"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aMOrF:		.BYTE "(M or F)"
		.BYTE $D
		.BYTE $FF
		.BYTE $A8
		MOVEXY	0,5
		.BYTE $A5
aIAmSorryButYou:.BYTE "I am sorry, but your character"
		.BYTE $D
		MOVEXY	0,7
		.BYTE $A5
aCannotEnterThe:.BYTE "cannot enter the Dungeon until"
		.BYTE $D
		MOVEXY	0,9
		.BYTE $A5
aHeIsFreeOfAllC:.BYTE "he is free of all City ailments"
		.BYTE $D
		MOVEXY	0,11
		.BYTE $A5
aAndPoisons_ICh:.BYTE "and poisons.  I charge a fee of"
		.BYTE $D
		MOVEXY	12,13
a10000CoppersTo:.BYTE "10,000 coppers to cure you now."
		MOVEXY	0,20
		.BYTE $A5
aDoYouWishToPro:.BYTE "Do you wish to proceed (Y or N)?"
		.BYTE $D
		.BYTE $FF
		.BYTE $A8
		MOVEXY	4,12
aIMSorryYouHave:.BYTE "I'm sorry, you have not the funds."
		MOVEXY	3,23
aPressAnyKeyT_0:.BYTE "<<< Press any key to continue >>>"
		.BYTE $FF
byte_8687:	.BYTE $47		; DATA XREF: sub_79AA+21w sub_79AA+2Er ...
unk_8688:	.BYTE	0		; DATA XREF: sub_7AE7:loc_7677w
					; sub_7AE7-3D5r ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_86A8:	.BYTE	0		; DATA XREF: sub_7AE7-46Dw RAM:83CFo
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_86C8:	.BYTE	0		; DATA XREF: sub_7AE7-46Aw RAM:83DAo
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_86E8:	.BYTE	0		; DATA XREF: sub_7AE7-467w RAM:83E5o
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
aCheckingCharac:.BYTE "   Checking Character Disk...   "
aReadingCityCha:.BYTE "   Reading City Character...    " ; DATA XREF: sub_7AE7:loc_773Br
		.BYTE $78
		.BYTE $C3 ; √
		.BYTE  $D
		.BYTE $5B ; [
		.BYTE $A5 ; •
		.BYTE $D0 ; –
		.BYTE $1C
		.BYTE $68 ; h
		.BYTE $B4 ; ¥
		.BYTE $FE ; ˛
		.BYTE $49 ; I
		.BYTE $95 ; ï
		.BYTE $D3 ; ”
		.BYTE $20
		.BYTE $6B ; k
		.BYTE $98 ; ò
		.BYTE $E6 ; Ê
		.BYTE $31 ; 1
		.BYTE $7F ; 
		.BYTE $9B ; õ
		.BYTE $B6 ; ∂
		.BYTE $E3 ; „
		.BYTE  $C
		.BYTE $45 ; E
		.BYTE $87 ; á
		.BYTE $87 ; á
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $89 ; â
		.BYTE $89 ; â
		.BYTE $89 ; â
		.BYTE $89 ; â
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8C ; å
		.BYTE $8C ; å
		.BYTE $8C ; å
		.BYTE $8C ; å
		.BYTE $8C ; å
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE	6
		.BYTE $4B ; K
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotionOfFleetn:.BYTE "Potion of Fleetness",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $7B ; {
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $7B ; {
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aFleetness:	.BYTE "Fleetness",0
		.BYTE $E4 ; ‰
		.BYTE $60 ; `
		.BYTE $F5 ; ı
		.BYTE	0
		.BYTE	6
		.BYTE $4A ; J
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $19
aPotionOfStreng:.BYTE "Potion of Strength",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $5B ; [
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $5B ; [
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aStrength:	.BYTE "Strength",0
		.BYTE $53 ; S
		.BYTE $74 ; t
		.BYTE $72 ; r
		.BYTE $65 ; e
		.BYTE	0
		.BYTE	6
		.BYTE $4E ; N
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1D
aPotionOfIntell:.BYTE "Potion of Intelligence",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $63 ; c
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $63 ; c
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aIntelligence:	.BYTE "Intelligence",0
		.BYTE	0
		.BYTE	6
		.BYTE $4A ; J
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $19
aPotionOfCharis:.BYTE "Potion of Charisma",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $53 ; S
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $53 ; S
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aCharisma:	.BYTE "Charisma",0
		.BYTE $64 ; d
		.BYTE $20
		.BYTE $41 ; A
		.BYTE $72 ; r
		.BYTE	0
		.BYTE	6
		.BYTE $2B ; +
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotionOfEndura:.BYTE "Potion of Endurance",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $9B ; õ
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE	6
		.BYTE $4C ; L
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1B
aPotionOfInv_Bl:.BYTE "Potion of Inv. Blunt",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Blunt:	.BYTE "Inv. Blunt",0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	6
		.BYTE $4C ; L
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1B
aPotionOfInv_Sh:.BYTE "Potion of Inv. Sharp",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $A7 ; ß
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $A7 ; ß
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Sharp:	.BYTE "Inv. Sharp",0
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE	6
		.BYTE $4C ; L
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1B
aPotionOfInv_Ea:.BYTE "Potion of Inv. Earth",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Earth:	.BYTE "Inv. Earth",0
		.BYTE $A7 ; ß
		.BYTE $63 ; c
		.BYTE	0
		.BYTE	6
		.BYTE $4A ; J
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $19
aPotionOfInv_Ai:.BYTE "Potion of Inv. Air",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Air:	.BYTE "Inv. Air",0
		.BYTE	0
		.BYTE	2
		.BYTE $FF
		.BYTE	1
		.BYTE	0
		.BYTE	6
		.BYTE $4B ; K
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotionOfInv_Fi:.BYTE "Potion of Inv. Fire",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Fire:	.BYTE "Inv. Fire",0
		.BYTE	3
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	6
		.BYTE $4C ; L
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1B
aPotionOfInv_Wa:.BYTE "Potion of Inv. Water",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $AB ; ´
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $AB ; ´
		.BYTE $C6 ; ∆
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Water:	.BYTE "Inv. Water",0
		.BYTE $34 ; 4
		.BYTE $B0 ; ∞
		.BYTE	0
		.BYTE	6
		.BYTE $3E ; >
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1D
aPotionOfRegene:.BYTE "Potion of Regeneration",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE $3C ; <
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aRegeneration:	.BYTE "Regeneration",0
		.BYTE	0
		.BYTE	6
		.BYTE $4D ; M
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aPotionOfInv_Me:.BYTE "Potion of Inv. Mental",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $AD ; ≠
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $AD ; ≠
		.BYTE $C6 ; ∆
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Mental:	.BYTE "Inv. Mental",0
		.BYTE $1F
		.BYTE	0
		.BYTE	6
		.BYTE $4B ; K
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotionOfInv_Co:.BYTE "Potion of Inv. Cold",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $B0 ; ∞
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $B0 ; ∞
		.BYTE $C6 ; ∆
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Cold:	.BYTE "Inv. Cold",0
		.BYTE  $D
		.BYTE $A5 ; •
		.BYTE $F6 ; ˆ
		.BYTE	0
		.BYTE	6
		.BYTE $2D ; -
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aPotionOfFruitJ:.BYTE "Potion of Fruit Juice",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $99 ; ô
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	6
		.BYTE $4E ; N
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1D
aPotionOfSuperV:.BYTE "Potion of Super Vision",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $78 ; x
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $8B ; ã
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $8B ; ã
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aSuperVision:	.BYTE "Super Vision",0
		.BYTE	0
		.BYTE	6
		.BYTE $4B ; K
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotionOfDexter:.BYTE "Potion of Dexterity",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $73 ; s
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $73 ; s
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aDexterity:	.BYTE "Dexterity",0
		.BYTE $63 ; c
		.BYTE $45 ; E
		.BYTE $29 ; )
		.BYTE	0
		.BYTE	6
		.BYTE $4E ; N
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1D
aPotionOfInfraV:.BYTE "Potion of Infra-Vision",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInfraVision:	.BYTE "Infra-Vision",0
		.BYTE	0
		.BYTE  $E
		.BYTE $1C
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotionOfCleans:.BYTE "Potion of Cleansing",0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE  $E
		.BYTE $1B
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $19
aPotionOfAntido:.BYTE "Potion of Antidote",0
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE	6
		.BYTE $2D ; -
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aPotionOfRestor:.BYTE "Potion of Restoration",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE	1
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE $29 ; )
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $18
aPotionOfHealin:.BYTE "Potion of Healing",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE	6
		.BYTE $39 ; 9
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $18
aPotionOfHemloc:.BYTE "Potion of Hemlock",0
		.BYTE $82 ; Ç
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	2
		.BYTE $92 ; í
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $3C ; <
		.BYTE	0
		.BYTE	0
		.BYTE $92 ; í
		.BYTE $47 ; G
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	6
		.BYTE $2D ; -
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aPotionOfInebri:.BYTE "Potion of Inebriation",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE	1
		.BYTE $97 ; ó
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8D72:				; CODE XREF: sub_7AE7:loc_7653p
					; sub_7AE7-3A0p
		JSR	sub_8E13

loc_8D75:				; CODE XREF: sub_8D72:loc_8DBEj
		LDA	#2
		STA	6

loc_8D79:				; CODE XREF: sub_8D72+Ej
		JSR	j_READSECTOR
		BPL	loc_8D82
		DEC	6
		BNE	loc_8D79

loc_8D82:				; CODE XREF: sub_8D72+Aj
		JSR	sub_8DD0
		BCS	loc_8DC8
		LDA	#0
		STA	$190E
		LDX	#8
		LDY	#0

loc_8D90:				; CODE XREF: sub_8D72+3Aj
		LDA	$100,X
		STA	(9),Y
		INC	9
		BNE	loc_8D9B
		INC	$A

loc_8D9B:				; CODE XREF: sub_8D72+25j
		SEC
		LDA	$B
		SBC	#1
		STA	$B
		BCS	loc_8DA6
		DEC	$C

loc_8DA6:				; CODE XREF: sub_8D72+30j
		ORA	$C
		BEQ	loc_8DC1
		SEC
		INX
		BPL	loc_8D90
		INC	word_232
		BNE	loc_8DB6
		INC	word_232+1

loc_8DB6:				; CODE XREF: sub_8D72+3Fj
		INC	word_1903
		BNE	loc_8DBE
		INC	word_1903+1

loc_8DBE:				; CODE XREF: sub_8D72+47j
		JMP	loc_8D75
; ---------------------------------------------------------------------------

loc_8DC1:				; CODE XREF: sub_8D72+36j
		LDA	#0
		STA	$190D
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_8DC8:				; CODE XREF: sub_8D72+13j
		SEC
		RTS
; End of function sub_8D72

; ---------------------------------------------------------------------------
		CLC
; ---------------------------------------------------------------------------
		.BYTE $24 ; $
; ---------------------------------------------------------------------------
		SEC
		JMP	$1830

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8DD0:				; CODE XREF: sub_8D72:loc_8D82p
		LDA	#0
		STA	$1901
		STA	$1902
		LDY	#4

loc_8DDA:				; CODE XREF: sub_8DD0+30j
		LDA	$100
		CLC
		ADC	$101
		STA	$100
		EOR	$101
		STA	$101
		EOR	$100,Y
		STA	$100,Y
		CLC
		ADC	$1901
		STA	$1901
		LDA	$1902
		ADC	#0
		STA	$1902
		INY
		BPL	loc_8DDA
		LDX	#5

loc_8E04:				; CODE XREF: sub_8DD0+3Dj
		LDA	$1901,X
		CMP	$102,X
		BNE	loc_8E11
		DEX
		BPL	loc_8E04
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_8E11:				; CODE XREF: sub_8DD0+3Aj
		SEC
		RTS
; End of function sub_8DD0


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8E13:				; CODE XREF: sub_8D72p
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
		RTS
; End of function sub_8E13

; ---------------------------------------------------------------------------
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $FF
		.BYTE $88 ; à
		.BYTE $13
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $7B ; {
		.BYTE	1
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE  $A
		.BYTE  $C
		.BYTE $1D
		.BYTE	4
		.BYTE $A9 ; ©
		.BYTE	7
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_8E58:	.BYTE $23		; DATA XREF: sub_7AE7-265r
byte_8E59:	.BYTE $24		; DATA XREF: sub_7AE7-25Er
					; sub_7AE7-223r
		.BYTE $23 ; #
		.BYTE $24 ; $
		.BYTE $12
		.BYTE $12
		.BYTE $36 ; 6
		.BYTE	0
		.BYTE	6
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_8E74:	.BYTE 9			; DATA XREF: sub_7AE7-18Dr
		.BYTE	9
		.BYTE	9
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $E
		.BYTE  $E
		.BYTE  $E
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE  $F
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE  $C
		.BYTE  $C
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_8EA1:	.BYTE 0			; DATA XREF: sub_7AE7-286r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_8EB1:	.BYTE 0			; DATA XREF: sub_7AE7:loc_7935r
					; sub_7AE7:loc_793Ew ...
byte_8EB2:	.BYTE 0			; DATA XREF: sub_7AE7-2C4r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_8F41:	.BYTE 0			; DATA XREF: sub_7AE7-2C1r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $F
unk_8FF2:	.BYTE	0		; DATA XREF: sub_7B1C:loc_7B1Er
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8FF6:	.BYTE	0		; DATA XREF: sub_7B1C:loc_7B3Br
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_8FFA:	.BYTE	0		; DATA XREF: sub_7B1C:loc_7B2Er
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
aSkin:		.BYTE "Skin                            ",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
aBareHands:	.BYTE "Bare Hands                      "
		.BYTE	1
		.BYTE	1
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
aCommonerLeisur:.BYTE "Commoner                                  Leisure        "
		.BYTE "    "
		.BYTE $A0
aLeisure:	.BYTE "Leisure            "
		.BYTE $A0
aLeisure_0:	.BYTE "Leisure            "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
aCheapGrayBreac:.BYTE "Cheap Gray Breachcloth         "
		.BYTE $A0
aSimpleGrayCloa:.BYTE "Simple Gray Cloak              "
		.BYTE $A0
		.BYTE "                               "
		.BYTE $A0
		.BYTE "                               "
		.BYTE $A0
		.BYTE "                                ",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE "                                ",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE "                                ",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE "                                ",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "                     "
		.BYTE $A0
		.BYTE "               "
		.BYTE $A0
		.BYTE "               "
		.BYTE $A0
		.BYTE "               "
		.BYTE $A0
		.BYTE "               "
		.BYTE $A0
		.BYTE "               "
		.BYTE $A0
		.BYTE "               "
		.BYTE $A0
		.BYTE "               "
		.BYTE $A0
		.BYTE "               "
		.BYTE $A0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	3
byte_94E1:	.BYTE 0			; DATA XREF: sub_7AE7-297r
byte_94E2:	.BYTE 0			; DATA XREF: sub_7AE7:loc_782Er
byte_94E3:	.BYTE 0			; DATA XREF: sub_7AE7-2A8r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_94E9:	.BYTE	0		; DATA XREF: sub_7AE7:loc_76ACr
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_9508:	.BYTE 0			; DATA XREF: sub_7AE7:loc_76A5r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_9517:	.BYTE 0			; DATA XREF: sub_7AE7:loc_76BBr
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
; end of 'RAM'


		.END
