		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;		.ORG	$7600
		.BYTE	$15
; ---------------------------------------------------------------------------
		JMP	loc_7613
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_8886
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		INC	$1937
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7613:				; CODE XREF: RAM:7601j
		DEC	$1937
		LDX	#4

loc_7618:				; CODE XREF: RAM:761Fj
		LDA	$6318,X
		STA	$750D,X
		DEX
		BPL	loc_7618
		dldi	off_1977, loc_766B
		dldi	off_16, $7D31
		JSR	$184B
		LDA	$1933
		STA	$66
		dldi	off_7, $8A02
		LDA	#2
		JSR	$180F
		JSR	$1869
		LDA	$630F
		CMP	$7557
		BNE	loc_765B
		LDA	$6310
		CMP	$7558
		BEQ	locret_766A

loc_765B:				; CODE XREF: RAM:7651j
		LDA	$630F
		STA	$7557
		LDA	$6310
		STA	$7558
		JSR	sub_7B50

locret_766A:				; CODE XREF: RAM:7659j
		RTS
; ---------------------------------------------------------------------------

loc_766B:
		LDA	$755E
		BEQ	loc_76BE
		LDA	$755F
		SEC
		SBC	$7557
		STA	byte_84C0
		LDA	$7560
		SBC	$7558
		BCS	loc_7687
		LDA	#0
		STA	byte_84C0

loc_7687:				; CODE XREF: RAM:7680j
		LDA	byte_84C0
		BEQ	loc_76A1
		dldi	off_16, $7D33
		LDX	$66
		JSR	$1851
		LDA	#$A
		JSR	$185A
		JMP	loc_7776
; ---------------------------------------------------------------------------

loc_76A1:				; CODE XREF: RAM:768Aj
		LDA	$755D
		STA	$4B
		JSR	$1887
		LDY	#2
		LDA	#1
		STA	($41),Y
		JSR	$18A5
		LDA	#0
		STA	$755E
		ldxy	$83E8
		JSR	sub_7879

loc_76BE:				; CODE XREF: RAM:766Ej
		LDA	#0
		STA	$73
		LDA	#$40 ; '@'
		STA	$6B

loc_76C6:				; CODE XREF: RAM:76F9j
		LDA	$6B
		STA	$4B
		JSR	$1887
		BEQ	loc_76F7
		LDY	#0
		LDA	($41),Y
		CMP	#$87 ; 'á'
		BNE	loc_76F7
		JSR	$1896
		LDY	#0
		LDA	($43),Y
		CMP	#2
		BNE	loc_76F7
		INY
		LDA	($43),Y
		CMP	#3
		BNE	loc_76ED
		LDA	#1
		BNE	loc_76F3

loc_76ED:				; CODE XREF: RAM:76E7j
		CMP	#4
		BNE	loc_76F7
		LDA	#2

loc_76F3:				; CODE XREF: RAM:76EBj
		ORA	$73
		STA	$73

loc_76F7:				; CODE XREF: RAM:76CDj	RAM:76D5j ...
		DEC	$6B
		BPL	loc_76C6
		LDA	#3
		CMP	$73
		BNE	loc_7735
		dldi	off_16, $7F57
		LDX	$66
		JSR	$1851

loc_770E:				; CODE XREF: RAM:7730j
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7716:				; CODE XREF: RAM:7725j
		dldi	off_1977, loc_7723
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7723:
		LDA	$31
		BMI	loc_7716
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_7735
		CMP	#'Y'
		BNE	loc_770E
		JSR	sub_7B63

loc_7735:				; CODE XREF: RAM:76FFj	RAM:772Cj ...
		LDA	byte_7D1E
		BEQ	loc_774F
		LDA	#1
		JSR	j_RND_A
		CLC
		ADC	#1
		TAX
		LDA	unk_7E15,X
		STA	byte_7E13
		LDA	unk_7E18,X
		STA	byte_7E14

loc_774F:				; CODE XREF: RAM:7738j
		LDA	#$FF
		STA	byte_7D1E
		dldi	off_16, $7DA1
		LDX	$66
		JSR	$1851

loc_7761:				; CODE XREF: RAM:77A3j
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7769:				; CODE XREF: RAM:7790j
		dldi	off_1977, loc_7787
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7776:				; CODE XREF: RAM:769Ej	RAM:778Cj ...
		LDX	#4

loc_7778:				; CODE XREF: RAM:777Fj
		LDA	$750D,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_7778
		STX	$AC00
		JMP	$180C
; ---------------------------------------------------------------------------

loc_7787:
		JSR	$1821
		AND	#2
		BNE	loc_7776
		LDA	$31
		BMI	loc_7769
		CMP	#'0'
		BEQ	loc_7776
		CMP	#'2'
		BEQ	loc_77A8
		CMP	#'3'
		BNE	loc_77A1
		JMP	loc_7BBB
; ---------------------------------------------------------------------------

loc_77A1:				; CODE XREF: RAM:779Cj
		CMP	#'1'
		BNE	loc_7761
		JMP	loc_79B9
; ---------------------------------------------------------------------------

loc_77A8:				; CODE XREF: RAM:7798j	RAM:7CECj
		dldi	off_16, $7E6D
		LDX	$66
		JSR	$1851
		LDA	#2
		JSR	$185A
		dldi	off_16, $7D31
		LDX	$66
		JSR	$1851
		JSR	$189F
		JSR	$18A5
		LDX	#$F

loc_77CF:				; CODE XREF: RAM:77EFj
		LDA	$64A4,X
		CMP	I_LOC_X
		BNE	loc_77EE
		LDA	$64B4,X
		CMP	I_LOC_Y
		BNE	loc_77EE
		LDA	$64C4,X
		CMP	I_LOC_Z
		BNE	loc_77EE
		LDA	$6494,X
		CMP	#2
		BEQ	loc_77F4

loc_77EE:				; CODE XREF: RAM:77D5j	RAM:77DDj ...
		DEX
		BPL	loc_77CF
		JMP	loc_7735
; ---------------------------------------------------------------------------

loc_77F4:				; CODE XREF: RAM:77ECj
		LDA	$64D4,X
		STA	$73
		STA	$4B
		TAX
		JSR	$1887
		LDY	#6
		LDX	#$28 ; '('

loc_7803:				; CODE XREF: RAM:780Aj
		LDA	($41),Y
		STA	unk_8009,Y
		INY
		DEX
		BNE	loc_7803
		LDY	#0
		LDA	($41),Y
		AND	#7
		CMP	#3
		BEQ	loc_7887
		CMP	#4
		BEQ	loc_7887
		LDY	#0
		LDA	($41),Y
		BNE	loc_785E
		LDY	#$15

loc_7822:				; CODE XREF: RAM:782Bj
		LDA	($41),Y
		BEQ	loc_782D
		TYA
		CLC
		ADC	#$10
		TAY
		BNE	loc_7822

loc_782D:				; CODE XREF: RAM:7824j
		INY
		LDA	($41),Y
		TAX
		INY
		LDA	($41),Y
		STA	2
		INY
		LDA	($41),Y
		CPX	#7
		BCS	loc_7841
		STA	2
		LDA	#0

loc_7841:				; CODE XREF: RAM:783Bj
		STA	3
		LDY	unk_7D25,X
		LDA	$6300,Y
		CLC
		ADC	2
		STA	$6300,Y
		LDA	$6301,Y
		ADC	3
		STA	$6301,Y
		LDY	#2
		LDA	#$10
		JMP	loc_7862
; ---------------------------------------------------------------------------

loc_785E:				; CODE XREF: RAM:781Ej	RAM:78A0j
		LDY	#2
		LDA	#1

loc_7862:				; CODE XREF: RAM:785Bj
		STA	($41),Y
		LDX	#$7E ; '~'
		LDY	#$AD ; '≠'

loc_7868:				; CODE XREF: RAM:79D3j	RAM:7A45j
		STX	$17
		STY	$16
		LDX	$66
		JSR	$1851
		LDA	#$A
		JSR	$185A
		JMP	loc_7735

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7879:				; CODE XREF: RAM:76BBp	RAM:loc_7C3Fp ...
		STX	$17
		STY	$16
		LDX	$66
		JSR	$1851
		LDA	#$A
		JMP	$185A
; End of function sub_7879

; ---------------------------------------------------------------------------

loc_7887:				; CODE XREF: RAM:7814j	RAM:7818j
		LDA	$41
		CLC
		ADC	#6
		STA	$62
		LDA	$42
		ADC	#0
		STA	$63
		LDY	#5

loc_7896:				; CODE XREF: RAM:789Ej
		LDA	($62),Y
		CMP	aStick,Y	; "stick"
		BNE	loc_78A2
		DEY
		BPL	loc_7896
		BMI	loc_785E

loc_78A2:				; CODE XREF: RAM:789Bj
		LDY	#5
		LDA	($41),Y
		CLC
		ADC	$41
		STA	$62
		LDA	$42
		ADC	#0
		STA	$63
		LDY	#0

loc_78B3:				; CODE XREF: RAM:78C5j	RAM:78C9j
		LDA	($62),Y
		BEQ	loc_78CB
		LDX	#$10
		CMP	#$F0 ; ''
		BCC	loc_78BF
		LDX	#$20 ; ' '

loc_78BF:				; CODE XREF: RAM:78BBj
		CLC
		TXA
		ADC	$62
		STA	$62
		BCC	loc_78B3
		INC	$62
		BNE	loc_78B3

loc_78CB:				; CODE XREF: RAM:78B5j
		LDY	#1
		LDA	($62),Y
		STA	$67
		LDY	#0
		LDA	($41),Y
		LSR	A
		PHP
		LDA	#2
		ADC	$62
		STA	$62
		BCC	loc_78E1
		INC	$63

loc_78E1:				; CODE XREF: RAM:78DDj
		LDY	#$A
		LDA	#0
		STA	$68
		STA	$69

loc_78E9:				; CODE XREF: RAM:78F6j
		JSR	sub_7997
		CLC
		ADC	$68
		STA	$68
		BCC	loc_78F5
		INC	$69

loc_78F5:				; CODE XREF: RAM:78F1j
		DEY
		BPL	loc_78E9
		LDY	#$A

loc_78FA:				; CODE XREF: RAM:7909j
		JSR	sub_7997
		CLC
		ADC	$68
		STA	$68
		BCC	loc_7906
		INC	$69

loc_7906:				; CODE XREF: RAM:7902j
		DEY
		CPY	#1
		BNE	loc_78FA
		LDY	#$C
		PLP
		PHP
		BCC	loc_7912
		INY

loc_7912:				; CODE XREF: RAM:790Fj
		LDA	($62),Y
		ASL	A
		BCC	loc_791A
		LDA	#$FF
		CLC

loc_791A:				; CODE XREF: RAM:7915j
		ADC	$68
		STA	$68
		BCC	loc_7922
		INC	$69

loc_7922:				; CODE XREF: RAM:791Ej
		LDX	#$7F ; ''
		LDY	#$C0 ; '¿'
		PLP
		BCS	loc_7931
		LDA	$67
		CMP	#1
		BNE	loc_7931
		ASL	$68

loc_7931:				; CODE XREF: RAM:7927j	RAM:792Dj
		dldi	off_16, $7FC0
		LDX	$66
		JSR	$1851

loc_793E:				; CODE XREF: RAM:7960j
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7946:				; CODE XREF: RAM:7955j
		dldi	off_1977, loc_7953
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7953:
		LDA	$31
		BMI	loc_7946
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_7986
		CMP	#'Y'
		BNE	loc_793E
		LDA	$68
		CLC
		ADC	$63B4
		STA	$63B4
		BCC	loc_797A
		INC	$63B3
		BNE	loc_797A
		LDA	#$FF
		STA	$63B3
		STA	$63B4

loc_797A:				; CODE XREF: RAM:796Bj	RAM:7970j
		LDA	$73
		TAX
		STA	$4B
		JSR	$1887
		LDA	#$10
		BNE	loc_7990

loc_7986:				; CODE XREF: RAM:795Cj
		LDA	$73
		TAX
		STA	$4B
		JSR	$1887
		LDA	#1

loc_7990:				; CODE XREF: RAM:7984j
		LDY	#2
		STA	($41),Y
		JMP	loc_7735

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7997:				; CODE XREF: RAM:loc_78E9p
					; RAM:loc_78FAp
		LDA	($62),Y
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	($62),Y
		AND	#$F
		CLC
		ADC	#1
		STA	7
		LDA	#0

loc_79A9:				; CODE XREF: sub_7997+15j
		ADC	7
		DEX
		BNE	loc_79A9
		LSR	A
		RTS
; End of function sub_7997

; ---------------------------------------------------------------------------

loc_79B0:				; DATA XREF: RAM:7FD5o
		LDA	#$FF
; ---------------------------------------------------------------------------
		.BYTE $2C ; ,
; ---------------------------------------------------------------------------

loc_79B3:				; DATA XREF: RAM:800Co
		LDA	#0
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------

loc_79B9:				; CODE XREF: RAM:77A5j
		LDX	#0
		STX	$6A

loc_79BD:				; CODE XREF: RAM:7A16j	RAM:7A23j ...
		LDX	$6A
		LDA	unk_825B,X
		STA	$7B
		JSR	sub_7AB6
		LDA	$73
		BPL	loc_79E3
		DEC	$6A
		BPL	loc_79D6
		LDX	#$7F ; ''
		LDY	#$25 ; '%'
		JMP	loc_7868
; ---------------------------------------------------------------------------

loc_79D6:				; CODE XREF: RAM:79CDj
		LDX	$6A
		LDA	unk_825B,X
		STA	$7B
		JSR	sub_7AB6
		JMP	loc_79F0
; ---------------------------------------------------------------------------

loc_79E3:				; CODE XREF: RAM:79C9j
		dldi	off_16, $8038
		LDX	$66
		JSR	$1851

loc_79F0:				; CODE XREF: RAM:79E0j	RAM:79FFj ...
		dldi	off_1977, loc_79FD
		JMP	$1806
; ---------------------------------------------------------------------------

loc_79FD:
		LDA	$31
		BMI	loc_79F0
		JSR	j_UPPER
		CMP	#$46 ; 'F'
		BNE	loc_7A18
		LDY	$76
		BMI	loc_79F0
		INY
		LDX	$6A
		INX
		STX	$6A
		TYA
		STA	$825B,X
		BPL	loc_79BD

loc_7A18:				; CODE XREF: RAM:7A06j
		CMP	#$42 ; 'B'
		BNE	loc_7A25
		LDX	$6A
		DEX
		BMI	loc_79F0
		STX	$6A
		BPL	loc_79BD

loc_7A25:				; CODE XREF: RAM:7A1Aj
		CMP	#$1B
		BNE	loc_7A2C
		JMP	loc_7735
; ---------------------------------------------------------------------------

loc_7A2C:				; CODE XREF: RAM:7A27j
		SEC
		SBC	#$31 ; '1'
		BCC	loc_79BD
		CMP	#4
		BCS	loc_79BD
		TAX
		LDA	$73,X
		BMI	loc_79BD
		LDA	$77,X
		JSR	sub_7B00
		BCC	loc_7A48
		ldxy	$7E8D
		JMP	loc_7868
; ---------------------------------------------------------------------------

loc_7A48:				; CODE XREF: RAM:7A3Fj
		LDA	$73,X
		TAX
		LDA	$878D,X
		TAY
		CLC
		ADC	#6
		STA	$7F
		LDA	$8798,X
		STX	$73
		TAX
		ADC	#0
		STA	$80
		JSR	$1884
		LDA	RANDOM
		CMP	#$33 ; '3'
		BCS	loc_7A83
		LDA	$73
		ldxy	$7559
		JSR	j_SETBIT
		dldi	off_16, $810C
		LDX	$66
		JSR	$1851
		LDA	#6
		JSR	$185A

loc_7A83:				; CODE XREF: RAM:7A66j
		LDA	#1
		JSR	j_RND_A
		ldxy	$84D5
		JSR	$185D
		LDX	$66
		JSR	$1851

loc_7A94:				; CODE XREF: RAM:7AA3j	RAM:7AAEj
		dldi	off_1977, loc_7AA1
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7AA1:
		LDA	$31
		BMI	loc_7A94
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_7AB3
		CMP	#'Y'
		BNE	loc_7A94
		JMP	loc_79BD
; ---------------------------------------------------------------------------

loc_7AB3:				; CODE XREF: RAM:7AAAj
		JMP	loc_7735

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7AB6:				; CODE XREF: RAM:79C4p	RAM:79DDp
		LDX	#3
		LDA	#$FF

loc_7ABA:				; CODE XREF: sub_7AB6+7j
		STA	$73,X
		DEX
		BPL	loc_7ABA
		INX
		STX	$7C
		LDA	$7B
		CMP	#$B
		BCS	locret_7AFF

loc_7AC8:				; CODE XREF: sub_7AB6+47j
		LDY	#<$7559
		LDX	#>$7559
		JSR	j_TESTBIT
		BCC	loc_7AF7
		LDX	$7C
		LDY	$7B
		STY	$73,X
		LDA	$87A3,Y
		STA	$77,X
		TXA
		ASL	A
		TAX
		LDA	$878D,Y
		CLC
		ADC	#6
		STA	$6B,X
		LDA	$8798,Y
		ADC	#0
		STA	$6C,X
		LDX	$7C
		INX
		CPX	#4
		BEQ	locret_7AFF
		STX	$7C

loc_7AF7:				; CODE XREF: sub_7AB6+19j
		INC	$7B
		LDA	$7B
		CMP	#$B
		BCC	loc_7AC8

locret_7AFF:				; CODE XREF: sub_7AB6+10j sub_7AB6+3Dj
		RTS
; End of function sub_7AB6


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7B00:				; CODE XREF: RAM:7A3Cp	sub_7B63+2p
		STA	2
		LDA	#0
		STA	3

loc_7B06:				; CODE XREF: RAM:7C36p
		LDY	#3

loc_7B08:				; CODE XREF: sub_7B00+Fj
		LDA	$63B7,Y
		STA	byte_81D7,Y
		DEY
		BPL	loc_7B08
		LDA	byte_81D8
		SEC
		SBC	2
		STA	byte_81D8
		LDA	byte_81D7
		SBC	3
		STA	byte_81D7
		BCS	loc_7B43
		LDA	byte_81DA
		CLC
		ADC	byte_81D8
		STA	byte_81DA
		LDA	byte_81D9
		ADC	byte_81D7
		STA	byte_81D9
		LDA	#0
		STA	byte_81D7
		STA	byte_81D8
		BCS	loc_7B43
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_7B43:				; CODE XREF: sub_7B00+22j sub_7B00+3Fj
		LDY	#3

loc_7B45:				; CODE XREF: sub_7B00+4Cj
		LDA	byte_81D7,Y
		STA	$63B7,Y
		DEY
		BPL	loc_7B45
		CLC
		RTS
; End of function sub_7B00


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7B50:				; CODE XREF: RAM:7667p
		LDX	#$A
		STX	$7C

loc_7B54:				; CODE XREF: sub_7B50+10j
		LDA	$7C
		ldxy	$7559
		SEC
		JSR	j_SETBIT
		DEC	$7C
		BPL	loc_7B54
		RTS
; End of function sub_7B50


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7B63:				; CODE XREF: RAM:7732p
		LDA	#1
		JSR	sub_7B00
		LDA	#0
		STA	$73
		LDA	#$40 ; '@'
		STA	$4B

loc_7B70:				; CODE XREF: sub_7B63+3Aj
		LDA	$4B
		JSR	$1887
		BEQ	loc_7B9B
		LDY	#0
		LDA	($41),Y
		CMP	#$87 ; 'á'
		BNE	loc_7B9B
		JSR	$1896
		LDY	#0
		LDA	($43),Y
		CMP	#2
		BNE	loc_7B9B
		INY
		LDA	($43),Y
		CMP	#3
		BEQ	loc_7B95
		CMP	#4
		BNE	loc_7B9B

loc_7B95:				; CODE XREF: sub_7B63+2Cj
		LDY	#2
		LDA	#$10
		STA	($41),Y

loc_7B9B:				; CODE XREF: sub_7B63+12j sub_7B63+1Aj ...
		DEC	$4B
		BPL	loc_7B70
		JSR	$18A5
		ldxy	$8555
		JSR	$1884
		JSR	$18A5
		SEC
		LDA	#$17
		ldxy	$7508
		JMP	j_SETBIT
; End of function sub_7B63

; ---------------------------------------------------------------------------
		LDA	#4
		JMP	$185A
; ---------------------------------------------------------------------------

loc_7BBB:				; CODE XREF: RAM:779Ej
		dldi	off_16, $826B
		LDX	$66
		JSR	$1851

loc_7BC8:				; CODE XREF: RAM:7BE6j
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7BD0:				; CODE XREF: RAM:7BDFj
		dldi	off_1977, loc_7BDD
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7BDD:
		LDA	$31
		BMI	loc_7BD0
		SEC
		SBC	#$30 ; '0'
		CMP	#5
		BCS	loc_7BC8
		CMP	#0
		BNE	loc_7BEF
		JMP	loc_7735
; ---------------------------------------------------------------------------

loc_7BEF:				; CODE XREF: RAM:7BEAj
		TAX
		DEX
		STX	byte_84A2
		LDA	unk_84A3,X
		STA	byte_84A7
		LDA	unk_849A,X
		STA	byte_84BE
		LDA	unk_849E,X
		STA	byte_84BF
		dldi	off_16, $82EA
		LDX	$66
		JSR	$1851
		JSR	$18AE
		BCS	loc_7C42
		BMI	loc_7C42
		BEQ	loc_7C42
		LDA	#$C8 ; '»'
		STA	$83
		LDA	3
		BNE	loc_7C2E
		LDA	2
		SEC
		SBC	byte_84A7
		STA	$83
		BCC	loc_7C45

loc_7C2E:				; CODE XREF: RAM:7C22j
		LDA	#2
		STA	$7D
		LDA	#0
		STA	$7E
		JSR	loc_7B06
		BCC	loc_7C4C
		ldxy	$7E8D

loc_7C3F:				; CODE XREF: RAM:7C49j
		JSR	sub_7879

loc_7C42:				; CODE XREF: RAM:7C16j	RAM:7C18j ...
		JMP	loc_7735
; ---------------------------------------------------------------------------

loc_7C45:				; CODE XREF: RAM:7C2Cj
		ldxy	$7EE0
		JMP	loc_7C3F
; ---------------------------------------------------------------------------

loc_7C4C:				; CODE XREF: RAM:7C39j
		dldi	off_16, $8361
		LDX	$66
		JSR	$1851
		LDA	#$12
		JSR	$1839
		BCS	loc_7C42
		CPX	#0
		BNE	loc_7C88
		LDX	byte_84A2
		LDA	unk_84D9,X
		STA	$81
		LDA	unk_84DD,X
		STA	$82
		LDY	#0

loc_7C73:				; CODE XREF: RAM:7C7Bj
		LDA	($81),Y
		STA	unk_8766,Y
		BEQ	loc_7C7E
		INY
		JMP	loc_7C73
; ---------------------------------------------------------------------------

loc_7C7E:				; CODE XREF: RAM:7C78j
		LDX	#$84 ; 'Ñ'
		LDY	#$E1 ; '·'
		JSR	sub_7879
		JMP	loc_7C99
; ---------------------------------------------------------------------------

loc_7C88:				; CODE XREF: RAM:7C62j
		TXA
		TAY
		LDA	#0
		STA	unk_8766,Y
		DEY

loc_7C90:				; CODE XREF: RAM:7C97j
		LDA	$18D5,Y
		STA	unk_8766,Y
		DEY
		BPL	loc_7C90

loc_7C99:				; CODE XREF: RAM:7C85j
		LDX	byte_84A2
		LDA	$83
		LSR	A
		LSR	A
		LSR	A
		CMP	#5
		BCC	loc_7CA7
		LDA	#5

loc_7CA7:				; CODE XREF: RAM:7CA3j
		STA	$84
		LDA	unk_84D1,X
		STA	byte_878C
		LDA	unk_84C1,X
		BEQ	loc_7CB7
		CLC
		ADC	$84

loc_7CB7:				; CODE XREF: RAM:7CB2j
		STA	byte_877C
		LDA	unk_84C5,X
		BEQ	loc_7CC2
		CLC
		ADC	$84

loc_7CC2:				; CODE XREF: RAM:7CBDj
		STA	byte_877D
		LDA	$83
		CMP	#$28 ; '('
		BCC	loc_7CD4
		LDA	unk_84CD,X
		STA	byte_878B
		JMP	loc_7CDA
; ---------------------------------------------------------------------------

loc_7CD4:				; CODE XREF: RAM:7CC9j
		LDA	unk_84C9,X
		STA	byte_878B

loc_7CDA:				; CODE XREF: RAM:7CD1j
		LDX	#$87 ; 'á'
		LDY	#$60 ; '`'
		JSR	$1884
		CMP	#$FF
		BNE	loc_7CEF
		LDX	#$84 ; 'Ñ'
		LDY	#$43 ; 'C'
		JSR	sub_7879
		JMP	loc_77A8
; ---------------------------------------------------------------------------

loc_7CEF:				; CODE XREF: RAM:7CE3j
		STA	$755D
		LDA	#$FF
		STA	$755E
		JSR	$1869
		LDA	$630F
		STA	$755F
		LDA	$6310
		STA	$7560
		LDA	$755F
		CLC
		ADC	#4
		STA	$755F
		BCC	loc_7D14
		INC	$7560

loc_7D14:				; CODE XREF: RAM:7D0Fj
		LDX	#$83 ; 'É'
		LDY	#$A3 ; '£'
		JSR	sub_7879
		JMP	loc_7776
; ---------------------------------------------------------------------------
byte_7D1E:	.BYTE 0			; DATA XREF: RAM:loc_7735r RAM:7751w
aStick:		.BYTE "stick",0         ; DATA XREF: RAM:7898r
unk_7D25:	.BYTE $BB ; ª		; DATA XREF: RAM:7843r
		.BYTE $BC ; º
		.BYTE $BD ; Ω
		.BYTE $C1 ; ¡
		.BYTE $C0 ; ¿
		.BYTE $BF ; ø
		.BYTE $BE ; æ
		.BYTE $B7 ; ∑
		.BYTE $B9 ; π
		.BYTE $B1 ; ±
		.BYTE $B3 ; ≥
		.BYTE $B5 ; µ
		.BYTE $A8,$FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aSorryButILlBeB:.BYTE "Sorry, but I'll be busy for "
		.BYTE $B2
		.WORD byte_84C0
		.BYTE 1
aDaysYet:	.BYTE " days yet,"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aForgingAndInsc:.BYTE "forging and inscribing your weapon."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIShallSeeYouTh:.BYTE "I shall see you then.",$D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $AD
		.WORD byte_7E13
		.BYTE $A6,  5,	3
		MenuItem "1","Examine my wares."
		.BYTE $A6,  5,	4
		MenuItem "2","Sell weapons or armor."
		.BYTE $A6,  5,	5
		MenuItem "3","Have a custom weapon made."
		.BYTE $A6,  5,	6
		MenuItem "0","Leave."
		.BYTE $FF
byte_7E13:	.BYTE $1B		; DATA XREF: RAM:7746w	RAM:7DA5o
byte_7E14:	.BYTE $7E		; DATA XREF: RAM:774Cw
unk_7E15:	.BYTE $1B		; DATA XREF: RAM:7743r
		.BYTE $38 ; 8
		.BYTE $54 ; T
unk_7E18:	.BYTE $7E ; ~		; DATA XREF: RAM:7749r
		.BYTE $7E ; ~
		.BYTE $7E ; ~
		.BYTE $A5
aWelcomeToMyFor:.BYTE "Welcome to my forge, "
		.BYTE $B3
		.WORD $6321
		.BYTE $12
		.BYTE "!"
		.BYTE $D
		.BYTE $AE
		.BYTE $A5
aWhatCanIHelpYo:.BYTE "What can I help you with?"
		.BYTE $D
		.BYTE $AE
		.BYTE $A5
aWhatShallItBe:	.BYTE "What shall it be "
		.BYTE $B3
		.WORD $6321
		.BYTE $14
aq:		.BYTE "?"
		.BYTE $D
		.BYTE $AE
		.BYTE $A6,  0,	3
		.BYTE $A5
aWhatDoYouOffer:.BYTE "What do you offer to sell?"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aThatSMoreThanY:.BYTE "That's more than you have."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aSorryButIMNotI:.BYTE "Sorry, but I'm not interested in your"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		.BYTE $B3
		.WORD unk_800F
		.BYTE $28
a_:		.BYTE ".",$D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aWhoDoYouThinkI:.BYTE "Who do you think I am?  Omar?!"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aYouLlDoNoHaggl:.BYTE "You'll do no haggling with me!",$D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aSorryButIAmOut:.BYTE "Sorry, but I am out of stock"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOnAllItems_:	.BYTE "on all items.",$D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aISeeYouHaveABr:.BYTE "I see you have a broken ring."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aICanMendItInMy:.BYTE "I can mend it in my forge"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aForAGemOrJewel:.BYTE "for a gem or jewel.  Okay? ("
		.BYTE $A1
aY:		.BYTE "Y"
		.BYTE $A0
aOr:		.BYTE " or "
		.BYTE $A1
aN:		.BYTE "N"
		.BYTE $A0
		.BYTE ")",$D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aIWillGiveYou:	.BYTE "I will give you "
		.BYTE $A3
		.WORD loc_79B0
		.BYTE $B2
		.WORD $68
		.BYTE 4
aSilversFor:	.BYTE " silvers for"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aYour:		.BYTE "your "
		.BYTE $B3
		.WORD $800F
		.BYTE $14
		.BYTE $2E ; .
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOkayq:		.BYTE "Okay ? ("
		.BYTE $A1
aY_0:		.BYTE "Y"
		.BYTE $A0
aOr_0:		.BYTE " or "
		.BYTE $A1
aN_0:		.BYTE "N"
		.BYTE $A0
unk_8009:	.BYTE $29 ; )		; DATA XREF: RAM:7805w
		.BYTE  $D
		.BYTE $A3
		.WORD loc_79B3
		.BYTE $FF
unk_800F:	.BYTE $C0 ; ¿		; DATA XREF: RAM:7EDAo
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $88 ; à
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE	8
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	1
		.BYTE	5
		.BYTE $50 ; P
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE  $A
		.BYTE $42 ; B
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $7F ; 
		.BYTE $4F ; O
		.BYTE	0
		.BYTE $A6,  0,	0
		.BYTE $A5
aWhatWouldstTho:.BYTE "What wouldst thou like?",$D
		.BYTE $A6,  0,	2
		MenuItem "1",""
		.BYTE $B4
		.WORD $6B
		.BYTE $1C
		.BYTE $A6,$1A,	2
		.BYTE $B2
		.WORD $77
		.BYTE 2
aGemsJewels:	.BYTE " gems/jewels"
		.BYTE $A3
		.WORD loc_81C2
		.BYTE $D
		.BYTE $A6,  0,	3
		MenuItem "2",""
		.BYTE $B4
		.WORD $6D
		.BYTE $1C
		.BYTE $A6,$1A,	3
		.BYTE $B2
		.WORD $78
		.BYTE 2
aGemsJewels_0:	.BYTE " gems/jewels"
		.BYTE $A3
		.WORD loc_81C5
		.BYTE $D
		.BYTE $A6,  0,	4
		MenuItem "3",""
		.BYTE $B4
		.WORD $6F
		.BYTE $1C
		.BYTE $A6,$1A,	4
		.BYTE $B2
		.WORD $79
		.BYTE 2
aGemsJewels_1:	.BYTE " gems/jewels"
		.BYTE $A3
		.WORD $81C8
		.BYTE $D
		.BYTE $A6,  0,	5
		MenuItem "4",""
		.BYTE $B4
		.WORD $71
		.BYTE $1C
		.BYTE $A6,$1A,	5
		.BYTE $B2
		.WORD $7A
		.BYTE 2
		.BYTE $20
aGemsJewels_2:	.BYTE "gems/jewels"
		.BYTE $A6,  0,	7
		.BYTE $A5
aF:		BLINK "F"
aOrward:	.BYTE "orward, "
aB:		BLINK "B"
aAckwardOr:	.BYTE "ackward or "
aEsc:		BLINK "ESC"
aToExit:	.BYTE " to exit",$D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aThatsMyLastOne:.BYTE "Thats my last one.  I'll have to forge"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aSomeMore_:	.BYTE "some more."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aIMSureThatThe:	.BYTE "I'm sure that the "
		.BYTE $B4
		.WORD $7F
		.BYTE $16
		.BYTE $D
		.BYTE	$A5,"will be to your liking.",$0D
		.BYTE	$AC
		.WORD	byte_8191
		MOVEXY	0,1
		.BYTE	$A5,"Here's the "
		.BYTE $B4
		.WORD $7F
		.BYTE $1D
a__0:		.BYTE	".",$0D
byte_8191:	MOVEXY	0,5
		.BYTE	$A5,"Will there be anything else?",$0D,$0D
		.BYTE	$A5,"("
aY_1:		BLINK	"Y"
aOr_1:		.BYTE	" or "
aN_1:		BLINK	"N"
		.BYTE	")",$0D,$FF
; ---------------------------------------------------------------------------

loc_81C2:				; DATA XREF: RAM:8075o
		LDX	#1
; ---------------------------------------------------------------------------
		.BYTE $2C
; ---------------------------------------------------------------------------

loc_81C5:				; DATA XREF: RAM:8099o
		LDX	#2
; ---------------------------------------------------------------------------
		.BYTE $2C
; ---------------------------------------------------------------------------
		LDX	#3
		LDA	$73,X
		BPL	locret_81D6
		dldi	off_16, $80E0

locret_81D6:				; CODE XREF: RAM:81CCj
		RTS
; ---------------------------------------------------------------------------
byte_81D7:	.BYTE $55		; DATA XREF: sub_7B00+1Ar sub_7B00+1Fw ...
byte_81D8:	.BYTE $55		; DATA XREF: sub_7B00+11r sub_7B00+17w ...
byte_81D9:	.BYTE $FF		; DATA XREF: sub_7B00+2Er sub_7B00+34w
byte_81DA:	.BYTE $FF		; DATA XREF: sub_7B00+24r sub_7B00+2Bw
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE  $F
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $C3 ; √
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $D9 ; Ÿ
		.BYTE $19
		.BYTE $19
		.BYTE $69 ; i
		.BYTE $1B
		.BYTE	3
		.BYTE $65 ; e
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $23 ; #
		.BYTE $1B
		.BYTE	4
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $15
		.BYTE $15
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $80 ; Ä
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $65 ; e
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $44 ; D
		.BYTE $45 ; E
		.BYTE $54 ; T
		.BYTE $50 ; P
unk_825B:	.BYTE	0		; DATA XREF: RAM:79BFr	RAM:79D8r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $A6,  0,	0
		.BYTE $A5
aWhatTypeOfWeap:.BYTE "What type of weapon are you"
		.BYTE $D
		.BYTE $A5
aInterestedInq:	.BYTE "interested in?"
		.BYTE $D
		.BYTE $D
		.BYTE $A6, $C,	3
		MenuItem "1","Sword"
		.BYTE $A6, $C,	4
		MenuItem "2","Axe"
		.BYTE $A6, $C,	5
		MenuItem "3","Mace"
		.BYTE $A6, $C,	6
		MenuItem "4","Hammer"
		.BYTE $A6, $C,	7
		MenuItem "0","Not interested"
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aIAskAtLeast:	.BYTE "I ask at least "
		.BYTE $B2
		.WORD byte_84A7
		.BYTE 3
aGemsOrJewelsFo:.BYTE " gems or jewels for a"
		.BYTE $D
		.BYTE $A5
aHighQualityCus:.BYTE "high-quality custom made "
		.BYTE $B4
		.WORD $84BE
		.BYTE 6
a__1:		.BYTE "."
		.BYTE $D
		.BYTE $A5
aHowMuchAreYouP:.BYTE "How much are you prepared to offer?"
		.BYTE $D
		.BYTE $A6,$10,	6
		.BYTE ">"
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aByWhatNameDoYo:.BYTE "By what name do you wish your mighty"
		.BYTE $D
		.BYTE $A5
		.BYTE $B4
		.WORD $84BE
		.BYTE 6
aToBeCalledq:	.BYTE " to be called?"
		.BYTE $D
		.BYTE $A6, $A,	4
		.BYTE ">"
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aReturnInFourDa:.BYTE "Return in four days for your "
		.BYTE $B4
		.WORD $84BE
		.BYTE 6
		.BYTE $2E ; .
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aItWillBeForged:.BYTE "It will be forged by then.",$D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aWelcome:	.BYTE "Welcome "
		.BYTE $B3
		.WORD $6321
		.BYTE $19
		.BYTE "!",$0D,$0D
aIHaveYourCusto:.BYTE $A5,"I have your custom weapon right here!",$0D,$0D
aItIsIndeedAMig:.BYTE $A5,"It is indeed a mighty weapon!",$0D,$FF
		MOVEXY	0,1
aINeedMoreMetal:.BYTE $A5,"I need more metal for my forge, sell",$0D,$0D
aMeSomeOfYoursA:.BYTE $A5,"me some of yours and then I",$0D,$0D
aYourWeapon_:	.BYTE $A5,"your weapon.",$0D,$FF
unk_849A:	.BYTE $A8 ; ®		; DATA XREF: RAM:7BFAr
		.BYTE $AE ; Æ
		.BYTE $B2 ; ≤
		.BYTE $B7 ; ∑
unk_849E:	.BYTE $84 ; Ñ		; DATA XREF: RAM:7C00r
		.BYTE $84 ; Ñ
		.BYTE $84 ; Ñ
		.BYTE $84 ; Ñ
byte_84A2:	.BYTE $FF		; DATA XREF: RAM:7BF1w	RAM:7C64r ...
unk_84A3:	.BYTE $B4 ; ¥		; DATA XREF: RAM:7BF4r
		.BYTE $96 ; ñ
		.BYTE $6E ; n
		.BYTE $5A ; Z
byte_84A7:	.BYTE $FF		; DATA XREF: RAM:7BF7w	RAM:7C27r ...
aSword_0:	.BYTE "sword",0
aAxe_0:		.BYTE "axe",0
aMace_0:	.BYTE "mace",0
aHammer_0:	.BYTE "hammer",0
byte_84BE:	.BYTE $FF		; DATA XREF: RAM:7BFDw
byte_84BF:	.BYTE $FF		; DATA XREF: RAM:7C03w
byte_84C0:	.BYTE $FF		; DATA XREF: RAM:7677w	RAM:7684w ...
unk_84C1:	.BYTE $11		; DATA XREF: RAM:7CAFr
		.BYTE $12
		.BYTE $46 ; F
		.BYTE $37 ; 7
unk_84C5:	.BYTE $47 ; G		; DATA XREF: RAM:7CBAr
		.BYTE $46 ; F
		.BYTE $11
		.BYTE	0
unk_84C9:	.BYTE $90 ; ê		; DATA XREF: RAM:loc_7CD4r
		.BYTE $88 ; à
		.BYTE $92 ; í
		.BYTE $8A ; ä
unk_84CD:	.BYTE $98 ; ò		; DATA XREF: RAM:7CCBr
		.BYTE $90 ; ê
		.BYTE $9A ; ö
		.BYTE $92 ; í
unk_84D1:	.BYTE $60 ; `		; DATA XREF: RAM:7CA9r
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $45 ; E
		.BYTE $81 ; Å
		.BYTE $7C ; |
		.BYTE $81 ; Å
unk_84D9:	.BYTE $19		; DATA XREF: RAM:7C67r
		.BYTE $27
		.BYTE $39 ; 9
		.BYTE $46 ; F
unk_84DD:	.BYTE $85 ; Ö		; DATA XREF: RAM:7C6Cr
		.BYTE $85 ; Ö
		.BYTE $85 ; Ö
		.BYTE $85 ; Ö
		.BYTE $A6,  0,	1
aVeryWellThenIS:.BYTE $A5,"Very well then, I shall simply call",$0D,$0D
aItThe:		.BYTE $A5,"it the "
		.BYTE $B4
		.WORD $81
		.BYTE $12
		.BYTE ".",$0D,$FF
aDwarvenSword:	.BYTE "Dwarven Sword",0
aDwarvenBattleA:.BYTE "Dwarven Battle-Ax",0
aDwarvenMace:	.BYTE "Dwarven Mace",0
aDwarvenHammer:	.BYTE "Dwarven Hammer",0
		.BYTE	7
		.BYTE $47 ; G
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $14
aReforgedRing:	.BYTE "Reforged Ring",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	1
		.BYTE	0
		.BYTE $EE ; Ó
		.BYTE	2
		.BYTE $EE ; Ó
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE $99 ; ô
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $88 ; à
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	2
		.BYTE $DC ; ‹
		.BYTE	5
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $85 ; Ö
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	1
		.BYTE	1
		.BYTE $EE ; Ó
		.BYTE	2
		.BYTE $EE ; Ó
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE $4D ; M
		.BYTE	0
		.BYTE	7
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE	4
		.BYTE $25 ; %
		.BYTE	1
		.BYTE	0
		.BYTE $13
		.BYTE $16
aTruesilverCoat:.BYTE "Truesilver Coat",0
		.BYTE	0
		.BYTE	1
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $21 ; !
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE	4
		.BYTE $2A ; *
		.BYTE	1
		.BYTE	0
		.BYTE	4
		.BYTE $1B
aTruesilverGaun:.BYTE "Truesilver Gauntlets",0
		.BYTE	0
		.BYTE	2
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $21 ; !
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE	4
		.BYTE $29 ; )
		.BYTE	1
		.BYTE	0
		.BYTE  $A
		.BYTE $1A
aTruesilverLegg:.BYTE "Truesilver Leggings",0
		.BYTE	0
		.BYTE	3
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $21 ; !
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE	4
		.BYTE $27 ; "
		.BYTE	1
		.BYTE	0
		.BYTE	4
		.BYTE $18
aTruesilverMori:.BYTE "Truesilver Morion",0
		.BYTE	0
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $21 ; !
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE	3
		.BYTE $2B ; +
		.BYTE	1
		.BYTE	0
		.BYTE	4
		.BYTE $17
aTruesilverSwor:.BYTE "Truesilver Sword",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $11
		.BYTE $39 ; 9
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE $20
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $88 ; à
		.BYTE $30 ; 0
		.BYTE	3
		.BYTE $2C ; ,
		.BYTE	1
		.BYTE	0
		.BYTE	4
		.BYTE $18
aTruesilverHamm:.BYTE "Truesilver Hammer",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE $20
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $8A ; ä
		.BYTE $30 ; 0
		.BYTE	3
		.BYTE $29 ; )
		.BYTE	1
		.BYTE	0
		.BYTE	4
		.BYTE $15
aTruesilverAxe:	.BYTE "Truesilver Axe",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE $20
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $88 ; à
		.BYTE $30 ; 0
		.BYTE	3
		.BYTE $29 ; )
		.BYTE	1
		.BYTE	0
		.BYTE $1C
		.BYTE $15
aThunderHammer:	.BYTE "Thunder Hammer",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
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
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $82 ; Ç
		.BYTE $10
		.BYTE	3
		.BYTE $2A ; *
		.BYTE	1
		.BYTE	0
		.BYTE $12
		.BYTE $16
aTruesilverMace:.BYTE "Truesilver Mace",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $37 ; 7
		.BYTE $13
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $82 ; Ç
		.BYTE $20
		.BYTE	2
		.BYTE $2A ; *
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aThunderQuarrel:.BYTE "Thunder Quarrels [10]",0
		.BYTE	0
		.BYTE	3
		.BYTE  $A
		.BYTE	0
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $18
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $28 ; (
		.BYTE	1
		.BYTE	0
		.BYTE	3
		.BYTE $14
aCrossbow10:	.BYTE "Crossbow [10]",0
		.BYTE	0
		.BYTE	3
		.BYTE  $A
		.BYTE	0
		.BYTE $2A ; *
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
		.BYTE $10
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $1F
		.BYTE	0
		.BYTE	3
		.BYTE $2D ; -
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE $19
unk_8766:	.BYTE $3F ; ?		; DATA XREF: RAM:7C75w	RAM:7C8Cw ...
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
byte_877C:	.BYTE 0			; DATA XREF: RAM:loc_7CB7w
byte_877D:	.BYTE 0			; DATA XREF: RAM:loc_7CC2w
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
byte_878B:	.BYTE $98		; DATA XREF: RAM:7CCEw	RAM:7CD7w
byte_878C:	.BYTE $60		; DATA XREF: RAM:7CACw
		.BYTE $14
		.BYTE $9C ; ú
		.BYTE $C1 ; ¡
		.BYTE $EB ; Î
		.BYTE $3B ; ;
		.BYTE $66 ; f
		.BYTE $BB ; ª
		.BYTE $E4 ; ‰
		.BYTE $92 ; í
		.BYTE $38 ; 8
		.BYTE  $E
		.BYTE $86 ; Ü
		.BYTE $85 ; Ö
		.BYTE $85 ; Ö
		.BYTE $85 ; Ö
		.BYTE $86 ; Ü
		.BYTE $86 ; Ü
		.BYTE $86 ; Ü
		.BYTE $86 ; Ü
		.BYTE $86 ; Ü
		.BYTE $87 ; á
		.BYTE $87 ; á
		.BYTE $28 ; (
		.BYTE $46 ; F
		.BYTE $32 ; 2
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE $1E
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE $14
		.BYTE	5
unk_87AE:	.BYTE $70 ; p		; DATA XREF: RAM:87DEo
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42 ; B
		.WORD $400
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	6
		.BYTE	0
		.BYTE $44 ; D
		.WORD $4F0
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $42 ; B
		.WORD $658
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE $41 ; A
		.WORD unk_87AE
; ---------------------------------------------------------------------------
		PHA
		TXA
		PHA
		TYA
		PHA
		STA	WSYNC
		LDA	#$36 ; '6'
		STA	$D019
		STA	WSYNC
		LDA	#$50 ; 'P'
		LDX	#$70 ; 'p'
		LDY	#$90 ; 'ê'
		STA	WSYNC
		STA	$D000
		STX	$D001
		STY	$D002
		STA	WSYNC
		LDA	#$B0 ; '∞'
		LDX	#$48 ; 'H'
		LDY	#$40 ; '@'
		STA	WSYNC
		STA	$D003
		STX	$D004
		STY	$D005
		STA	WSYNC
		LDA	#$38 ; '8'
		LDX	#$30 ; '0'
		STA	WSYNC
		STA	$D006
		STX	$D007
		STA	WSYNC
		LDX	$BC5B
		LDY	$BC5D
		LDA	$BC5A
		STA	WSYNC
		STA	COLBK
		STX	$D016
		STY	$D018
		LDX	#$23 ; '#'
		LDY	$BBDC,X

loc_8844:				; CODE XREF: RAM:8869j
		LDA	$BB94,X
		STA	WSYNC
		STA	$D017
		STY	$D019
		LDA	$BB4C,X
		STA	CHBASE
		LDA	$BB70,X
		STA	WSYNC
		STA	$D016
		LDA	$BBB8,X
		STA	$D018
		LDY	$BBDB,X
		DEX
		BPL	loc_8844
		LDA	#0
		STA	WSYNC
		STA	$D018
		STA	COLBK
		LDA	#$E
		STA	$D017
		LDA	#$14
		STA	CHBASE
		PLA
		TAY
		PLA
		TAX
		PLA
		RTI
; ---------------------------------------------------------------------------

loc_8886:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$AE ; 'Æ'
		STA	$254
		LDA	#$87 ; 'á'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_8899:				; CODE XREF: RAM:88A7j
		LDY	#$C

loc_889B:				; CODE XREF: RAM:88A2j
		STA	$BB4C,X
		DEX
		BMI	loc_88A9
		DEY
		BNE	loc_889B
		CLC
		ADC	#4
		BNE	loc_8899

loc_88A9:				; CODE XREF: RAM:889Fj
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_89A1
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_89A1
		LDA	#0
		STA	loc_88CF+1
		LDA	#$BD ; 'Ω'
		STA	loc_88CF+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_88CF:				; CODE XREF: RAM:88D3j	RAM:88D9j
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_88CF
		INC	loc_88CF+2
		DEY
		BNE	loc_88CF
		LDX	#7

loc_88DD:				; CODE XREF: RAM:88E1j
		STA	$D000,X
		DEX
		BPL	loc_88DD
		LDA	#3
		TAX

loc_88E6:				; CODE XREF: RAM:88EAj
		STA	$D008,X
		DEX
		BPL	loc_88E6
		LDA	#$FF
		STA	$D00C
		LDA	#3
		STA	$D01D
		ldi	PMBASE, $BC
		LDA	#4
		STA	$D01B
		LDA	#0
		STA	7
		LDA	#$BC ; 'º'
		STA	8
		LDA	#$F0 ; ''
		STA	9
		LDA	#4
		STA	$A
		LDA	#0
		STA	6

loc_8914:				; CODE XREF: RAM:893Aj
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_891C:				; CODE XREF: RAM:8927j
		LSR	4
		BCC	loc_8926
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_8926:				; CODE XREF: RAM:891Ej
		DEY
		BPL	loc_891C
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_8934
		INC	$A

loc_8934:				; CODE XREF: RAM:8930j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_8914
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_894C:				; CODE XREF: RAM:895Dj
		CLC
		LDA	$F0,X
		ADC	#$80 ; 'Ä'
		STA	$F2,X
		LDA	$F1,X
		ADC	#0
		STA	$F3,X
		INX
		INX
		CPX	#8
		BCC	loc_894C

loc_895F:				; CODE XREF: RAM:897Cj
		LDX	#0

loc_8961:				; CODE XREF: RAM:897Aj
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_8967:				; CODE XREF: RAM:896Cj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_8967
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_897E
		CPX	#$A
		BCC	loc_8961
		BCS	loc_895F

loc_897E:				; CODE XREF: RAM:8976j
		LDX	#3
		LDA	$BC5F

loc_8983:				; CODE XREF: RAM:8987j
		STA	$D012,X
		DEX
		BPL	loc_8983
		LDA	#$E0 ; '‡'
		STA	$24A
		LDA	#$87 ; 'á'
		STA	$24B
		LDA	#$C0
		STA	NMIEN
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_89A1:				; CODE XREF: RAM:88B1p	RAM:88BCp ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_89AB
		INC	8

loc_89AB:				; CODE XREF: RAM:89A7j
		CMP	#$1B
		BEQ	loc_89BA
		STA	(9),Y
		INC	9
		BNE	loc_89B7
		INC	$A

loc_89B7:				; CODE XREF: RAM:89B3j
		JMP	loc_89A1
; ---------------------------------------------------------------------------

loc_89BA:				; CODE XREF: RAM:89ADj
		LDA	(7),Y
		INC	7
		BNE	loc_89C2
		INC	8

loc_89C2:				; CODE XREF: RAM:89BEj
		CMP	#$FF
		BNE	loc_89C7
		RTS
; ---------------------------------------------------------------------------

loc_89C7:				; CODE XREF: RAM:89C4j
		STA	byte_8A01
		ADC	9
		STA	loc_89DA+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_89DF
		LDA	byte_8A01

loc_89DA:				; DATA XREF: RAM:89CCw
		SBC	#$FF
		STA	byte_8A01

loc_89DF:				; CODE XREF: RAM:89D5j
		LDA	(7),Y
		INC	7
		BNE	loc_89E7
		INC	8

loc_89E7:				; CODE XREF: RAM:89E3j
		LDY	byte_8A01

loc_89EA:				; CODE XREF: RAM:89EDj
		STA	(9),Y
		DEY
		BPL	loc_89EA
		INC	byte_8A01
		LDA	byte_8A01
		CLC
		ADC	9
		STA	9
		BCC	loc_89FE
		INC	$A

loc_89FE:				; CODE XREF: RAM:89FAj
		JMP	loc_89A1
; ---------------------------------------------------------------------------
byte_8A01:	.BYTE 0			; DATA XREF: RAM:loc_89C7w RAM:89D7r ...
		.BYTE $1B
		.BYTE  $D
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A5 ; •
		.BYTE $9F ; ü
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $56 ; V
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	3
		.BYTE $A6 ; ¶
		.BYTE $56 ; V
		.BYTE $D6 ; ÷
		.BYTE $D6 ; ÷
		.BYTE $F6 ; ˆ
		.BYTE $1B
		.BYTE	6
		.BYTE $AF ; Ø
		.BYTE $A5 ; •
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $57 ; W
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $57 ; W
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE $52 ; R
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE $48 ; H
		.BYTE $1B
		.BYTE	2
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	2
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	2
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE $D4 ; ‘
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $A8 ; ®
		.BYTE $40 ; @
		.BYTE $A8 ; ®
		.BYTE $40 ; @
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $D4 ; ‘
		.BYTE $D5 ; ’
		.BYTE $DA ; ⁄
		.BYTE $D6 ; ÷
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE  $D
		.BYTE $9D ; ù
		.BYTE $AD ; ≠
		.BYTE $5E ; ^
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $40 ; @
		.BYTE $59 ; Y
		.BYTE $6A ; j
		.BYTE $99 ; ô
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $D7 ; ◊
		.BYTE $1B
		.BYTE	4
		.BYTE $DE ; ﬁ
		.BYTE $2A ; *
		.BYTE $AB ; ´
		.BYTE $AD ; ≠
		.BYTE $BD ; Ω
		.BYTE $B5 ; µ
		.BYTE $35 ; 5
		.BYTE $B5 ; µ
		.BYTE $B5 ; µ
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $5E ; ^
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $EB ; Î
		.BYTE $CB ; À
		.BYTE $EB ; Î
		.BYTE $EB ; Î
		.BYTE $C3 ; √
		.BYTE $1B
		.BYTE $1F
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE $17
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $BF ; ø
		.BYTE $BC ; º
		.BYTE $B0 ; ∞
		.BYTE $B0 ; ∞
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $E0 ; ‡
		.BYTE $E0 ; ‡
		.BYTE $1B
		.BYTE	3
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $D4 ; ‘
		.BYTE $F4 ; Ù
		.BYTE $F5 ; ı
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $FE ; ˛
		.BYTE $F6 ; ˆ
		.BYTE $D6 ; ÷
		.BYTE $1B
		.BYTE	4
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	6
		.BYTE $AF ; Ø
		.BYTE $A5 ; •
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $57 ; W
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $57 ; W
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	7
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE  $A
		.BYTE $88 ; à
		.BYTE $89 ; â
		.BYTE $89 ; â
		.BYTE $85 ; Ö
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $88 ; à
		.BYTE $48 ; H
		.BYTE $58 ; X
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE $D4 ; ‘
		.BYTE $1B
		.BYTE	2
		.BYTE $D5 ; ’
		.BYTE $FF
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $5A ; Z
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $95 ; ï
		.BYTE $A9 ; ©
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $D4 ; ‘
		.BYTE $D6 ; ÷
		.BYTE $DA ; ⁄
		.BYTE $D9 ; Ÿ
		.BYTE $FF
		.BYTE  $D
		.BYTE  $D
		.BYTE $2D ; -
		.BYTE $AD ; ≠
		.BYTE $5D ; ]
		.BYTE $9D ; ù
		.BYTE $9D ; ù
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $48 ; H
		.BYTE $69 ; i
		.BYTE $A5 ; •
		.BYTE $97 ; ó
		.BYTE $FF
		.BYTE $DE ; ﬁ
		.BYTE $DE ; ﬁ
		.BYTE $DC ; ‹
		.BYTE $DC ; ‹
		.BYTE $1B
		.BYTE	2
		.BYTE $DE ; ﬁ
		.BYTE $DC ; ‹
		.BYTE $B5 ; µ
		.BYTE $B5 ; µ
		.BYTE $35 ; 5
		.BYTE $1B
		.BYTE	4
		.BYTE $B5 ; µ
		.BYTE $1B
		.BYTE	5
		.BYTE $77 ; w
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $75 ; u
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $E3 ; „
		.BYTE $EB ; Î
		.BYTE $EB ; Î
		.BYTE $CB ; À
		.BYTE $E3 ; „
		.BYTE $1B
		.BYTE	2
		.BYTE $EB ; Î
		.BYTE $1B
		.BYTE $15
		.BYTE	0
		.BYTE	4
		.BYTE	4
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $30 ; 0
		.BYTE $70 ; p
		.BYTE $71 ; q
		.BYTE $1B
		.BYTE $1F
		.BYTE	0
		.BYTE $20
		.BYTE $1B
		.BYTE	3
		.BYTE $23 ; #
		.BYTE $1B
		.BYTE	2
		.BYTE $20
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $ED ; Ì
		.BYTE $BD ; Ω
		.BYTE $FC ; ¸
		.BYTE $F8 ; ¯
		.BYTE $EC ; Ï
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $7D ; }
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $56 ; V
		.BYTE $16
		.BYTE $86 ; Ü
		.BYTE $22 ; "
		.BYTE $1B
		.BYTE	6
		.BYTE $AF ; Ø
		.BYTE $A5 ; •
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $57 ; W
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $57 ; W
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $AB ; ´
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $88 ; à
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $52 ; R
		.BYTE $48 ; H
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $21 ; !
		.BYTE $81 ; Å
		.BYTE $23 ; #
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $51 ; Q
		.BYTE $40 ; @
		.BYTE $54 ; T
		.BYTE $D5 ; ’
		.BYTE $35 ; 5
		.BYTE $8D ; ç
		.BYTE $23 ; #
		.BYTE $88 ; à
		.BYTE $15
		.BYTE	5
		.BYTE $57 ; W
		.BYTE $5C ; \
		.BYTE $73 ; s
		.BYTE $CC ; Ã
		.BYTE $32 ; 2
		.BYTE $C8 ; »
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $32 ; 2
		.BYTE $C8 ; »
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $2F ; /
		.BYTE $8B ; ã
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $2F ; /
		.BYTE $8B ; ã
		.BYTE $1B
		.BYTE	7
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $FD ; ˝
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $40 ; @
		.BYTE $65 ; e
		.BYTE $AA ; ™
		.BYTE $59 ; Y
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $DE ; ﬁ
		.BYTE $DC ; ‹
		.BYTE $DE ; ﬁ
		.BYTE $B5 ; µ
		.BYTE $35 ; 5
		.BYTE $1B
		.BYTE	4
		.BYTE $B5 ; µ
		.BYTE $35 ; 5
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $C3 ; √
		.BYTE $E3 ; „
		.BYTE $1B
		.BYTE	3
		.BYTE $EB ; Î
		.BYTE $CB ; À
		.BYTE $E3 ; „
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FF
		.BYTE $AC ; ¨
		.BYTE $AB ; ´
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $AF ; Ø
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $BA ; ∫
		.BYTE $11
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $D1 ; —
		.BYTE $F1 ; Ò
		.BYTE $FD ; ˝
		.BYTE $AF ; Ø
		.BYTE	0
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $54 ; T
		.BYTE	5
		.BYTE $FF
		.BYTE $74 ; t
		.BYTE $45 ; E
		.BYTE $51 ; Q
		.BYTE $10
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $10
		.BYTE $41 ; A
		.BYTE $54 ; T
		.BYTE	5
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	6
		.BYTE	6
		.BYTE $12
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $E8 ; Ë
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $20
		.BYTE $1B
		.BYTE	3
		.BYTE $23 ; #
		.BYTE $2A ; *
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	3
		.BYTE $DF ; ﬂ
		.BYTE $F7 ; ˜
		.BYTE $FD ; ˝
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	5
		.BYTE $F4 ; Ù
		.BYTE $50 ; P
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $52 ; R
		.BYTE $3D ; =
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $7E ; ~
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $A8 ; ®
		.BYTE $59 ; Y
		.BYTE $58 ; X
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $99 ; ô
		.BYTE $4A ; J
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $D9 ; Ÿ
		.BYTE $EA ; Í
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $E0 ; ‡
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FC ; ¸
		.BYTE  $D
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $EB ; Î
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $A8 ; ®
		.BYTE $59 ; Y
		.BYTE $59 ; Y
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $65 ; e
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	6
		.BYTE $7F ; 
		.BYTE $7D ; }
		.BYTE $1B
		.BYTE	6
		.BYTE $7F ; 
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE  $F
		.BYTE $FF
		.BYTE $86 ; Ü
		.BYTE $22 ; "
		.BYTE $86 ; Ü
		.BYTE $26 ; &
		.BYTE $1B
		.BYTE	3
		.BYTE $16
		.BYTE $1B
		.BYTE	7
		.BYTE $AF ; Ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $57 ; W
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE  $C
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $57 ; W
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $A2 ; ¢
		.BYTE $88 ; à
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $AB ; ´
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $C8 ; »
		.BYTE $F2 ; Ú
		.BYTE $FC ; ¸
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $23 ; #
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $8B ; ã
		.BYTE $2F ; /
		.BYTE $BF ; ø
		.BYTE $23 ; #
		.BYTE $8B ; ã
		.BYTE $2F ; /
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $DE ; ﬁ
		.BYTE $1B
		.BYTE	4
		.BYTE $DA ; ⁄
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $AA ; ™
		.BYTE $84 ; Ñ
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $A9 ; ©
		.BYTE  $A
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $12
		.BYTE	2
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	4
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	3
		.BYTE $40 ; @
		.BYTE $59 ; Y
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $DE ; ﬁ
		.BYTE $DF ; ﬂ
		.BYTE $AB ; ´
		.BYTE $A7 ; ß
		.BYTE $AD ; ≠
		.BYTE $1B
		.BYTE	3
		.BYTE $B5 ; µ
		.BYTE $FF
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $E3 ; „
		.BYTE $1B
		.BYTE	2
		.BYTE $EB ; Î
		.BYTE $FF
		.BYTE $7A ; z
		.BYTE $5E ; ^
		.BYTE $57 ; W
		.BYTE $88 ; à
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $8A ; ä
		.BYTE $E8 ; Ë
		.BYTE $BA ; ∫
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $AB ; ´
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $E8 ; Ë
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A2 ; ¢
		.BYTE $82 ; Ç
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $A5 ; •
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $FF
		.BYTE $A8 ; ®
		.BYTE $20
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $8B ; ã
		.BYTE $CD ; Õ
		.BYTE $7F ; 
		.BYTE $DF ; ﬂ
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $DF ; ﬂ
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	5
		.BYTE $DA ; ⁄
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	3
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $75 ; u
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $1F
		.BYTE $1B
		.BYTE	2
		.BYTE $10
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE $3F ; ?
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE  $F
		.BYTE $F0 ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	2
		.BYTE $15
		.BYTE $2A ; *
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $22 ; "
		.BYTE $C8 ; »
		.BYTE $32 ; 2
		.BYTE $C8 ; »
		.BYTE $32 ; 2
		.BYTE $C8 ; »
		.BYTE $32 ; 2
		.BYTE $C8 ; »
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $7D ; }
		.BYTE $D5 ; ’
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $5D ; ]
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AB ; ´
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $95 ; ï
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5D ; ]
		.BYTE $75 ; u
		.BYTE $D5 ; ’
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $5D ; ]
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $EB ; Î
		.BYTE $7A ; z
		.BYTE $5E ; ^
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $E8 ; Ë
		.BYTE $B2 ; ≤
		.BYTE $AE ; Æ
		.BYTE $EB ; Î
		.BYTE $7A ; z
		.BYTE $5E ; ^
		.BYTE $AA ; ™
		.BYTE $E8 ; Ë
		.BYTE $E8 ; Ë
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; Í
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $8B ; ã
		.BYTE $FF
		.BYTE  $F
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE  $F
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FD ; ˝
		.BYTE $88 ; à
		.BYTE $56 ; V
		.BYTE $52 ; R
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $1B
		.BYTE	4
		.BYTE	7
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $5F ; _
		.BYTE $FD ; ˝
		.BYTE $F7 ; ˜
		.BYTE $D7 ; ◊
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $77 ; w
		.BYTE $F7 ; ˜
		.BYTE $F7 ; ˜
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE $2F ; /
		.BYTE $55 ; U
		.BYTE $32 ; 2
		.BYTE $C8 ; »
		.BYTE $32 ; 2
		.BYTE $C8 ; »
		.BYTE $32 ; 2
		.BYTE $C8 ; »
		.BYTE $22 ; "
		.BYTE $C8 ; »
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $8A ; ä
		.BYTE $22 ; "
		.BYTE $8A ; ä
		.BYTE $22 ; "
		.BYTE $8A ; ä
		.BYTE $22 ; "
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE  $F
		.BYTE	3
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $3C ; <
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE  $B
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE $1F
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $75 ; u
		.BYTE $5D ; ]
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $75 ; u
		.BYTE $5D ; ]
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $33 ; 3
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $11
		.BYTE $33 ; 3
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $11
		.BYTE $1B
		.BYTE	2
		.BYTE $47 ; G
		.BYTE $1B
		.BYTE	3
		.BYTE $46 ; F
		.BYTE $47 ; G
		.BYTE $FC ; ¸
		.BYTE $FE ; ˛
		.BYTE $FC ; ¸
		.BYTE $FE ; ˛
		.BYTE $FC ; ¸
		.BYTE $BF ; ø
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $A8 ; ®
		.BYTE $8A ; ä
		.BYTE $A8 ; ®
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $88 ; à
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $88 ; à
		.BYTE $11
		.BYTE $1F
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $2F ; /
		.BYTE $FA ; ˙
		.BYTE $AF ; Ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $BF ; ø
		.BYTE $FB ; ˚
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $AA ; ™
		.BYTE $FA ; ˙
		.BYTE $AE ; Æ
		.BYTE $AA ; ™
		.BYTE $5A ; Z
		.BYTE $F5 ; ı
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1A
		.BYTE $F6 ; ˆ
		.BYTE $AA ; ™
		.BYTE $B9 ; π
		.BYTE $55 ; U
		.BYTE $4D ; M
		.BYTE $11
		.BYTE $17
		.BYTE $FC ; ¸
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $6F ; o
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	4
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $F7 ; ˜
		.BYTE $55 ; U
		.BYTE $44 ; D
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	4
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $45 ; E
		.BYTE $15
		.BYTE $1B
		.BYTE	4
		.BYTE $F0 ; 
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $3D ; =
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $8A ; ä
		.BYTE $22 ; "
		.BYTE $8A ; ä
		.BYTE $22 ; "
		.BYTE $8A ; ä
		.BYTE $22 ; "
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	1
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	5
		.BYTE $15
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $41 ; A
		.BYTE	5
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $5D ; ]
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $D5 ; ’
		.BYTE $75 ; u
		.BYTE $5D ; ]
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $75 ; u
		.BYTE $5D ; ]
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $11
		.BYTE $33 ; 3
		.BYTE $1B
		.BYTE	6
		.BYTE $11
		.BYTE $33 ; 3
		.BYTE $1B
		.BYTE	6
		.BYTE $47 ; G
		.BYTE $CF ; œ
		.BYTE $EE ; Ó
		.BYTE $1B
		.BYTE	5
		.BYTE $EF ; Ô
		.BYTE $FF
		.BYTE $1B
		.BYTE  $F
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F2 ; Ú
		.BYTE $C8 ; »
		.BYTE $F2 ; Ú
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $95 ; ï
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $57 ; W
		.BYTE $58 ; X
		.BYTE $F2 ; Ú
		.BYTE $C8 ; »
		.BYTE $F3 ; Û
		.BYTE $FF
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $FF
		.BYTE $8C ; å
		.BYTE $3F ; ?
		.BYTE $8C ; å
		.BYTE $3F ; ?
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $3F ; ?
		.BYTE $CC ; Ã
		.BYTE	3
		.BYTE $88 ; à
		.BYTE $23 ; #
		.BYTE $88 ; à
		.BYTE $33 ; 3
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F3 ; Û
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $AF ; Ø
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $77 ; w
		.BYTE $77 ; w
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $D5 ; ’
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $EB ; Î
		.BYTE $EB ; Î
		.BYTE $AF ; Ø
		.BYTE $A7 ; ß
		.BYTE $57 ; W
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $EB ; Î
		.BYTE $EB ; Î
		.BYTE $EF ; Ô
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE  $B
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	2
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	8
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $75 ; u
		.BYTE $5D ; ]
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE $26 ; &
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $FB ; ˚
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE  $D
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE $1B
		.BYTE $4D ; M
		.BYTE $FF
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7C ; |
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE $47 ; G
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $26 ; &
		.BYTE $28 ; (
		.BYTE $2C ; ,
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $26 ; &
		.BYTE $24 ; $
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $24 ; $
		.BYTE $26 ; &
		.BYTE $28 ; (
		.BYTE $26 ; &
		.BYTE $24 ; $
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $22 ; "
		.BYTE $24 ; $
		.BYTE $26 ; &
		.BYTE $22 ; "
		.BYTE $24 ; $
		.BYTE $26 ; &
		.BYTE $1B
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	7
		.BYTE $9E ; û
		.BYTE $1B
		.BYTE	8
		.BYTE	4
		.BYTE $1B
		.BYTE	8
		.BYTE	5
		.BYTE	4
		.BYTE $1B
		.BYTE	8
		.BYTE	5
		.BYTE $1B
		.BYTE	7
		.BYTE $42 ; B
		.BYTE	4
		.BYTE	6
		.BYTE	8
		.BYTE  $A
		.BYTE  $C
		.BYTE  $E
		.BYTE  $E
		.BYTE  $C
		.BYTE  $A
		.BYTE	8
		.BYTE	6
		.BYTE	4
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	4
		.BYTE	6
		.BYTE	8
		.BYTE  $A
		.BYTE  $C
		.BYTE  $E
		.BYTE  $F
		.BYTE  $C
		.BYTE  $A
		.BYTE	8
		.BYTE	6
		.BYTE	4
		.BYTE	2
		.BYTE $1B
		.BYTE	9
		.BYTE $F6 ; ˆ
		.BYTE $1B
		.BYTE	9
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE  $F
		.BYTE $F6 ; ˆ
		.BYTE	7
		.BYTE $C2 ; ¬
		.BYTE $1C
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE $C3 ; √
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE $C1 ; ¡
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $E1 ; ·
		.BYTE $F8 ; ¯
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $78 ; x
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE $80 ; Ä
		.BYTE $78 ; x
		.BYTE	0
		.BYTE	0
		.BYTE $C7 ; «
		.BYTE $E9 ; È
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $80 ; Ä
		.BYTE $70 ; p
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $80 ; Ä
		.BYTE $35 ; 5
		.BYTE $C3 ; √
		.BYTE $FC ; ¸
		.BYTE	1
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $E7 ; Á
		.BYTE $C0 ; ¿
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $FB ; ˚
		.BYTE $C7 ; «
		.BYTE $FF
		.BYTE $83 ; É
		.BYTE $7F ; 
		.BYTE $FD ; ˝
		.BYTE $87 ; á
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $3F ; ?
		.BYTE $F0 ; 
		.BYTE $C7 ; «
		.BYTE $9E ; û
		.BYTE $30 ; 0
		.BYTE  $F
		.BYTE $F0 ; 
		.BYTE $C7 ; «
		.BYTE $9E ; û
		.BYTE  $C
		.BYTE	0
		.BYTE $37 ; 7
		.BYTE $C7 ; «
		.BYTE $9E ; û
		.BYTE	0
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE	3
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE $2F ; /
		.BYTE	1
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE $20
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE  $E
		.BYTE	0
		.BYTE $9C ; ú
		.BYTE	8
		.BYTE $1B
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
