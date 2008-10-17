		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;		.ORG	$7600
		.BYTE	$1D
; ---------------------------------------------------------------------------
		JMP	loc_7615
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	$9CD8
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		LDA	#$FF
		STA	$96F0
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7615:				; CODE XREF: RAM:7601j
		LDA	#8
		STA	$8B
		LDA	#$FF
		STA	$1937
		LDX	#4

loc_7620:				; CODE XREF: RAM:7627j
		LDA	$6318,X
		STA	$750D,X
		DEX
		BPL	loc_7620
		dldi	off_1977, $76CD
		dldi	off_16, $8252
		JSR	$184B
		LDA	$1933
		STA	$64
		dldi	off_7, $89E2
		dldi	off_9, $9C00
		dldi	word_B, $0254
		JSR	$187E
		dldi	off_7, $8C36
		LDA	#2
		JSR	$180F
		dldi	SEGADDR, $9EF0
		LDA	#$3A		; tavern talk
		STA	SEGNO
		JSR	j_SEGLOAD

loc_767D:				; CODE XREF: RAM:7684j
		LDA	RANDOM
		AND	#3
		CMP	#3
		BEQ	loc_767D
		ADC	#$37 ; '7'
		STA	SEGNO
		dldi	SEGADDR, $8A00
		JSR	j_SEGLOAD
		dldi	SEGADDR, $96F0
		LDA	#$F
		STA	SEGNO
		JSR	j_SEGLOAD
		JSR	$96F5
		dldi	off_224, $7D71
		dmv	loc_7DF9+1, $96F3
		DEC	$22F
		ldxy	$8A00
		JMP	$96F0
; ---------------------------------------------------------------------------
		JSR	$1869
		LDX	$630A
		DEX
		STX	$82
		LDA	$7534
		CMP	$630F
		BNE	loc_76E6
		LDA	$6310
		CMP	$7535
		BEQ	loc_7702

loc_76E6:				; CODE XREF: RAM:76DCj
		STA	$7535
		LDA	$630F
		STA	$7535
		JSR	loc_7CFA
		LDA	#$44 ; 'D'
		STA	$16
		LDA	#$83 ; 'É'
		STA	$17
		LDA	#$80 ; 'Ä'
		STA	$753D
		JMP	loc_773C
; ---------------------------------------------------------------------------

loc_7702:				; CODE XREF: RAM:76E4j
		LDA	$753D
		BPL	loc_7725
		LDA	#$21 ; '!'
		STA	$65
		LDA	#$63 ; 'c'
		STA	$66
		LDA	$753D
		CMP	#$C0 ; '¿'
		BCC	loc_771E
		LDA	#$54 ; 'T'
		STA	$65
		LDA	#$82 ; 'Ç'
		STA	$66

loc_771E:				; CODE XREF: RAM:7714j
		LDX	#$82 ; 'Ç'
		LDY	#$77 ; 'w'
		JMP	loc_7734
; ---------------------------------------------------------------------------

loc_7725:				; CODE XREF: RAM:7705j
		CMP	#$40 ; '@'
		BCC	loc_7730
		LDX	#$82 ; 'Ç'
		LDY	#$71 ; 'q'
		JMP	loc_7734
; ---------------------------------------------------------------------------

loc_7730:				; CODE XREF: RAM:7727j
		LDX	#$82 ; 'Ç'
		LDY	#$6B ; 'k'

loc_7734:				; CODE XREF: RAM:7722j	RAM:772Dj
		LDA	#2
		JSR	$1899
		JSR	$185D

loc_773C:				; CODE XREF: RAM:76FFj
		LDA	$16
		STA	$67
		LDA	$17
		STA	$68
		JSR	$1869
		LDA	$630F
		STA	$7534
		LDA	$6310
		STA	$7535
		LDA	#$3F ; '?'
		STA	$7B

loc_7757:				; CODE XREF: RAM:77FDj
		STA	$4B
		JSR	$1887
		LDY	#0
		LDA	($41),Y
		CMP	#$87 ; 'á'
		BEQ	loc_7767
		JMP	loc_77F7
; ---------------------------------------------------------------------------

loc_7767:				; CODE XREF: RAM:7762j
		LDY	#6

loc_7769:				; CODE XREF: RAM:7771j
		LDA	($41),Y
		STA	$89BD,Y
		INY
		CPY	#$24 ; '$'
		BNE	loc_7769
		LDA	$4B
		JSR	$1896
		LDY	#1
		LDA	($43),Y
		BNE	loc_77F7
		INY
		LDA	#0
		STA	$71
		LDA	($43),Y
		CMP	#$27 ; '''
		BEQ	loc_7791
		CMP	#$48 ; 'H'
		BNE	loc_7800
		LDA	#$C8 ; '»'
		STA	$71

loc_7791:				; CODE XREF: RAM:7787j
		LDA	#$FE ; '˛'
		STA	$16
		LDA	#$86 ; 'Ü'
		STA	$17
		CLC
		LDA	$71
		ADC	#$32 ; '2'
		STA	$71
		LDX	$64
		JSR	$1851

loc_77A5:				; CODE XREF: RAM:77C7j
		LDX	$64
		STX	$1933
		JSR	$1848

loc_77AD:				; CODE XREF: RAM:77BCj
		dldi	off_1977, loc_77BA
		JMP	$1806
; ---------------------------------------------------------------------------

loc_77BA:
		LDA	$31
		BMI	loc_77AD
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_77F7
		CMP	#'Y'
		BNE	loc_77A5
		LDA	$71
		BPL	loc_77D2
		LDA	#$FF
		STA	$753D

loc_77D2:				; CODE XREF: RAM:77CBj
		LDA	$7B
		STA	$4B
		JSR	$1887
		LDY	#2
		LDA	#$10
		STA	($41),Y
		LDA	$63B2
		CLC
		ADC	$71
		STA	$63B2
		BCC	loc_77F7
		INC	$63B1
		BNE	loc_77F7
		LDA	#$FF
		STA	$63B2
		STA	$63B1

loc_77F7:				; CODE XREF: RAM:7764j	RAM:777Cj ...
		DEC	$7B
		LDA	$7B
		BMI	loc_7813
		JMP	loc_7757
; ---------------------------------------------------------------------------

loc_7800:				; CODE XREF: RAM:778Bj
		LDA	#$A8 ; '®'
		STA	$16
		LDA	#$83 ; 'É'
		STA	$17
		LDX	$64
		JSR	$1851
		JSR	sub_7CA1
		JMP	loc_7A9A
; ---------------------------------------------------------------------------

loc_7813:				; CODE XREF: RAM:77FBj	RAM:7852j
		LDX	$64
		LDA	#$CA ; ' '
		STA	$16
		LDA	#$83 ; 'É'
		STA	$17
		JSR	$1851

loc_7820:				; CODE XREF: RAM:7839j
		dldi	off_1977, $782D
		JMP	$1806
; ---------------------------------------------------------------------------

loc_782D:
		JSR	$1821
		AND	#2
		BEQ	loc_7837
		JMP	loc_7A9A
; ---------------------------------------------------------------------------

loc_7837:				; CODE XREF: RAM:7832j
		LDA	$31
		BMI	loc_7820
		LDA	$31
		CMP	#$31 ; '1'
		BNE	loc_784C
		LDA	#$5B ; '['
		STA	$67
		LDA	#$82 ; 'Ç'
		STA	$68
		JMP	loc_785F
; ---------------------------------------------------------------------------

loc_784C:				; CODE XREF: RAM:783Fj
		CMP	#$32 ; '2'
		BEQ	loc_7857
		CMP	#$30 ; '0'
		BNE	loc_7813
		JMP	loc_7A9A
; ---------------------------------------------------------------------------

loc_7857:				; CODE XREF: RAM:784Ej
		LDA	#$63 ; 'c'
		STA	$67
		LDA	#$82 ; 'Ç'
		STA	$68

loc_785F:				; CODE XREF: RAM:7849j	RAM:loc_78F4j ...
		LDA	#$4C ; 'L'
		STA	$16
		LDA	#$85 ; 'Ö'
		STA	$17
		LDX	$64
		JSR	$1851

loc_786C:				; CODE XREF: RAM:78A9j
		LDA	#0
		SEC
		SBC	$6399
		LSR	A
		LSR	A
		CLC
		ADC	#1
		STA	$86
		LDA	#0
		SEC
		SBC	$639A
		LSR	A
		LSR	A
		CLC
		ADC	#1
		STA	$88
		dldi	off_1977, loc_7899
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7893:				; CODE XREF: RAM:78ADj
		JMP	loc_7AB2
; ---------------------------------------------------------------------------

loc_7896:				; CODE XREF: RAM:789Ej
		JMP	loc_794D
; ---------------------------------------------------------------------------

loc_7899:
		JSR	$1821
		AND	#2
		BNE	loc_7896
		LDA	$8C
		BEQ	loc_78A7
		JMP	loc_7DFC
; ---------------------------------------------------------------------------

loc_78A7:				; CODE XREF: RAM:78A2j
		LDA	$31
		BMI	loc_786C
		CMP	#$32 ; '2'
		BNE	loc_7893
		JSR	sub_792C
		LDA	$83
		BEQ	loc_78F7
		ASL	A
		JSR	sub_7C50
		STA	$71

loc_78BC:				; CODE XREF: RAM:78E3j
		LDA	#$45 ; 'E'
		STA	$16
		LDA	#$86 ; 'Ü'
		STA	$17
		LDX	$64
		JSR	$1851

loc_78C9:				; CODE XREF: RAM:78D8j
		dldi	off_1977, loc_78D6
		JMP	$1806
; ---------------------------------------------------------------------------

loc_78D6:
		LDA	$31
		BMI	loc_78C9
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_78F4
		CMP	#'Y'
		BNE	loc_78BC
		LDA	$71
		STA	2
		LDA	#0
		STA	3
		JSR	sub_7BF0
		BCS	loc_790A
		INC	$8D

loc_78F4:				; CODE XREF: RAM:78DFj
		JMP	loc_785F
; ---------------------------------------------------------------------------

loc_78F7:				; CODE XREF: RAM:78B4j
		LDA	#$88 ; 'à'
		STA	$16
		LDA	#$83 ; 'É'
		STA	$17

loc_78FF:				; CODE XREF: RAM:7929j	RAM:7AD4j
		LDX	$64
		JSR	$1851
		JSR	sub_7CA1
		JMP	loc_785F
; ---------------------------------------------------------------------------

loc_790A:				; CODE XREF: RAM:78F0j	RAM:7B3Bj ...
		LDA	2
		ADC	#8
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		SEC
		STA	2
		LDA	$753D
		SBC	2
		BCS	loc_791E
		LDA	#0

loc_791E:				; CODE XREF: RAM:791Aj
		STA	$753D
		LDA	#$AD ; '≠'
		STA	$16
		LDA	#$86 ; 'Ü'
		STA	$17
		JMP	loc_78FF

; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_792C:				; CODE XREF: RAM:78AFp	RAM:loc_7DE1p
		JSR	$1869
		LDX	$630A
		CPX	$82
		BEQ	locret_794C
		STX	$82
		LDA	#0
		STA	$83
		LDY	$7C89,X

loc_793F:				; CODE XREF: sub_792C+1Ej
		LDA	$D20A
		AND	#1
		CLC
		ADC	$83
		STA	$83
		DEY
		BNE	loc_793F

locret_794C:				; CODE XREF: sub_792C+8j
		RTS
; End of function sub_792C

; ---------------------------------------------------------------------------

loc_794D:				; CODE XREF: RAM:loc_7896j
					; RAM:loc_7BE4j
		INC	$89
		LDA	$85
		AND	#$F
		LSR	A
		BEQ	loc_796E
		STA	$7B

loc_7958:				; CODE XREF: RAM:796Cj
		INC	$6398
		BMI	loc_798D
		LDA	$6399
		CLC
		ADC	#2
		BCC	loc_7967
		LDA	#$FF

loc_7967:				; CODE XREF: RAM:7963j
		STA	$6399
		DEC	$7B
		BNE	loc_7958

loc_796E:				; CODE XREF: RAM:7954j
		LDA	$87
		LSR	A
		BEQ	loc_7992
		STA	$7B

loc_7975:				; CODE XREF: RAM:7989j
		INC	$6398
		BMI	loc_798D
		LDA	$639A
		CLC
		ADC	#2
		BCC	loc_7984
		LDA	#$FF

loc_7984:				; CODE XREF: RAM:7980j
		STA	$639A
		DEC	$7B
		BNE	loc_7975
		BEQ	loc_7992

loc_798D:				; CODE XREF: RAM:795Bj	RAM:7978j
		LDA	#$80 ; 'Ä'
		STA	$6398

loc_7992:				; CODE XREF: RAM:7971j	RAM:798Bj
		LDA	$85
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		BEQ	loc_79BA
		LDX	$753D
		BPL	loc_79BA
		CLC
		ADC	$63BB
		BCC	loc_79A7
		LDA	#$FF

loc_79A7:				; CODE XREF: RAM:79A3j
		STA	$63BB
		LDA	#$EE ; 'Ó'
		STA	$16
		LDA	#$84 ; 'Ñ'
		STA	$17
		LDX	$64
		JSR	$1851
		JSR	sub_7CA1

loc_79BA:				; CODE XREF: RAM:7998j	RAM:799Dj
		LDA	$90
		LSR	$91
		ROR	A
		LSR	$91
		ROR	A
		LSR	$91
		ROR	A
		LDX	$91
		BEQ	loc_79CB
		LDA	#$FF

loc_79CB:				; CODE XREF: RAM:79C7j
		STA	$71
		LSR	A
		STA	$72

loc_79D0:				; CODE XREF: RAM:7A18j	RAM:7A1Aj ...
		LDA	#$FE ; '˛'
		STA	$16
		LDA	#$88 ; 'à'
		STA	$17
		LDX	$64
		JSR	$1851

loc_79DD:				; CODE XREF: RAM:79ECj
		dldi	off_1977, loc_79EA
		JMP	$1806
; ---------------------------------------------------------------------------

loc_79EA:
		LDA	$31
		BMI	loc_79DD
		LDX	#0
		STX	2
		CMP	#$31 ; '1'
		BNE	loc_7A04
		LDA	$753D
		ADC	#0
		BCC	loc_79FF
		LDA	#$FF

loc_79FF:				; CODE XREF: RAM:79FBj
		STA	$753D
		BNE	loc_7A4B

loc_7A04:				; CODE XREF: RAM:79F4j
		CMP	#$32 ; '2'
		BNE	loc_7A47

loc_7A08:				; CODE XREF: RAM:7A31j
		LDA	#$BA ; '∫'
		STA	$16
		LDA	#$84 ; 'Ñ'
		STA	$17
		LDX	$64
		JSR	$1851
		JSR	$18AE
		BCS	loc_79D0
		BMI	loc_79D0
		JSR	sub_7BF0
		BCC	loc_7A34
		LDA	#$6F ; 'o'
		STA	$16
		LDA	#$84 ; 'Ñ'
		STA	$17
		LDX	$64
		JSR	$1851
		JSR	sub_7CA1
		JMP	loc_7A08
; ---------------------------------------------------------------------------

loc_7A34:				; CODE XREF: RAM:7A1Fj
		LDA	3
		BEQ	loc_7A3C
		LDA	#$FF
		STA	2

loc_7A3C:				; CODE XREF: RAM:7A36j
		LDA	$71
		CMP	2
		BCS	loc_7A4B
		STA	2
		JMP	loc_7A4B
; ---------------------------------------------------------------------------

loc_7A47:				; CODE XREF: RAM:7A06j
		CMP	#$30 ; '0'
		BNE	loc_79D0

loc_7A4B:				; CODE XREF: RAM:7A02j	RAM:7A40j ...
		LDA	#$5B ; '['
		CMP	$67
		BNE	loc_7A59
		LDA	$72
		CMP	2
		BCC	loc_7A59
		STA	2

loc_7A59:				; CODE XREF: RAM:7A4Fj	RAM:7A55j
		LDA	2
		SEC
		SBC	$72
		BMI	loc_7A6B
		CLC
		ADC	$753D
		BCC	loc_7A7C
		LDA	#$FF
		JMP	loc_7A7C
; ---------------------------------------------------------------------------

loc_7A6B:				; CODE XREF: RAM:7A5Ej
		EOR	#$FF
		CLC
		ADC	#1
		SEC
		STA	$73
		LDA	$753D
		SBC	$73
		BCS	loc_7A7C
		LDA	#0

loc_7A7C:				; CODE XREF: RAM:7A64j	RAM:7A68j ...
		STA	$753D
		LDA	2
		BMI	loc_7A9A
		LDA	#$21 ; '!'
		STA	$16
		LDA	#$86 ; 'Ü'
		STA	$17
		LDX	$64
		JSR	$1851
		JSR	sub_7CA1
		LDX	#$86 ; 'Ü'
		LDA	#1
		JSR	$1878

loc_7A9A:				; CODE XREF: RAM:7810j	RAM:7834j ...
		LDX	#4

loc_7A9C:				; CODE XREF: RAM:7AA3j
		LDA	$750D,X
		STA	$6313,X
		DEX
		BPL	loc_7A9C
		STX	$AC00
		INX
		STX	$22F
		JMP	$180C
; ---------------------------------------------------------------------------

loc_7AAF:				; CODE XREF: RAM:7AB4j
		JMP	loc_7BDD
; ---------------------------------------------------------------------------

loc_7AB2:				; CODE XREF: RAM:loc_7893j
		CMP	#$31 ; '1'
		BNE	loc_7AAF
		LDX	#0
		STX	$7D

loc_7ABA:				; CODE XREF: RAM:7ACAj	RAM:7AFEj ...
		LDX	$7D
		LDA	$7C6F,X
		STA	$7B
		JSR	loc_7CA6
		LDA	$75
		BPL	loc_7AD7
		DEC	$7D
		BPL	loc_7ABA
		LDA	#$A
		STA	$16
		LDA	#$88 ; 'à'
		STA	$17
		JMP	loc_78FF
; ---------------------------------------------------------------------------

loc_7AD7:				; CODE XREF: RAM:7AC6j
		dldi	off_16, $8755
		LDX	$64
		JSR	$1851

loc_7AE4:				; CODE XREF: RAM:7AF3j
		dldi	off_1977, loc_7AF1
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7AF1:
		LDA	$31
		BMI	loc_7AE4
		JSR	j_UPPER
		CMP	#$46 ; 'F'
		BNE	loc_7B0C
		LDY	$78
		BMI	loc_7ABA
		INY
		LDX	$7D
		INX
		STX	$7D
		TYA
		STA	$7C6F,X
		BPL	loc_7ABA

loc_7B0C:				; CODE XREF: RAM:7AFAj
		CMP	#$42 ; 'B'
		BNE	loc_7B19
		LDX	$7D
		DEX
		BMI	loc_7ABA
		STX	$7D
		BPL	loc_7ABA

loc_7B19:				; CODE XREF: RAM:7B0Ej
		CMP	#$1B
		BNE	loc_7B20
		JMP	loc_785F
; ---------------------------------------------------------------------------

loc_7B20:				; CODE XREF: RAM:7B1Bj
		SEC
		SBC	#$31 ; '1'
		BCC	loc_7ABA
		CMP	#4
		BCS	loc_7ABA
		TAX
		LDA	$75,X
		BMI	loc_7ABA
		LDA	#0
		STA	3
		LDA	$71,X
		STA	2
		JSR	sub_7BF0
		BCC	loc_7B3E
		JMP	loc_790A
; ---------------------------------------------------------------------------

loc_7B3E:				; CODE XREF: RAM:7B39j
		LDA	$75,X
		PHA
		TXA
		ASL	A
		TAX
		PLA
		CMP	#$1E
		BCS	loc_7B51
		LDA	$69,X
		STA	$79
		LDA	$6A,X
		STA	$7A

loc_7B51:				; CODE XREF: RAM:7B47j
		LDA	$69,X
		SEC
		SBC	#4
		STA	$69
		LDA	$6A,X
		SBC	#0
		STA	$6A
		LDY	#1
		LDA	($69),Y
		CLC
		INC	$89
		ADC	$85
		BCC	loc_7B6B
		LDA	#$FF

loc_7B6B:				; CODE XREF: RAM:7B67j
		STA	$85
		INY
		LDA	($69),Y
		CLC
		ADC	$87
		BCC	loc_7B77
		LDA	#$FF

loc_7B77:				; CODE XREF: RAM:7B73j
		STA	$87
		DEC	$89
		INY
		LDA	($69),Y
		CLC
		ADC	$6396
		BCC	loc_7B86
		LDA	#$FF

loc_7B86:				; CODE XREF: RAM:7B82j
		STA	$6396
		LDA	$D20A
		CMP	#$20 ; ' '
		BCS	loc_7B9A
		LDA	$75,X
		CLC
		LDX	#$75 ; 'u'
		LDY	#$36 ; '6'
		JSR	$1860

loc_7B9A:				; CODE XREF: RAM:7B8Ej
		LDX	#$82 ; 'Ç'
		LDY	#$7D ; '}'
		LDA	#1
		JSR	$1899
		JSR	$185D
		LDA	$16
		STA	$92
		LDA	$17
		STA	$93

loc_7BAE:				; CODE XREF: RAM:7BD5j
		LDA	$92
		STA	$16
		LDA	$93
		STA	$17
		LDX	$64
		JSR	$1851

loc_7BBB:				; CODE XREF: RAM:7BCAj
		dldi	off_1977, loc_7BC8
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7BC8:
		LDA	$31
		BMI	loc_7BBB
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_7BDA
		CMP	#'Y'
		BNE	loc_7BAE
		JMP	loc_7ABA
; ---------------------------------------------------------------------------

loc_7BDA:				; CODE XREF: RAM:7BD1j
		JMP	loc_785F
; ---------------------------------------------------------------------------

loc_7BDD:				; CODE XREF: RAM:loc_7AAFj
		CMP	#$30 ; '0'
		BEQ	loc_7BE4
		JMP	loc_785F
; ---------------------------------------------------------------------------

loc_7BE4:				; CODE XREF: RAM:7BDFj
		JMP	loc_794D
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_7BF0

loc_7BE7:				; CODE XREF: sub_7BF0+1Aj
		LDA	$753D
		BEQ	locret_7BEF
		DEC	$753D

locret_7BEF:				; CODE XREF: sub_7BF0-6j
		RTS
; END OF FUNCTION CHUNK	FOR sub_7BF0

; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_7BF0:				; CODE XREF: RAM:78EDp	RAM:7A1Cp ...

; FUNCTION CHUNK AT 7BE7 SIZE 00000009 BYTES

		LDY	#3

loc_7BF2:				; CODE XREF: sub_7BF0+9j
		LDA	$63B1,Y
		STA	$7E,Y
		DEY
		BPL	loc_7BF2

loc_7BFB:				; CODE XREF: sub_7BF0:loc_7C21j
		LDA	$81
		CMP	2
		LDA	$80
		SBC	3
		BCS	loc_7C24
		SEC
		LDA	$7F
		ORA	$7E
		BEQ	loc_7BE7
		LDA	$7F
		SBC	#1
		STA	$7F
		BCS	loc_7C16
		DEC	$7E

loc_7C16:				; CODE XREF: sub_7BF0+22j
		LDA	#$A
		CLC
		ADC	$81
		STA	$81
		BCC	loc_7C21
		INC	$80

loc_7C21:				; CODE XREF: sub_7BF0+2Dj
		JMP	loc_7BFB
; ---------------------------------------------------------------------------

loc_7C24:				; CODE XREF: sub_7BF0+13j
		LDA	$81
		SBC	2
		STA	$81
		LDA	$80
		SBC	3
		STA	$80
		LDA	2
		CLC
		ADC	$90
		STA	$90
		LDA	3
		ADC	$91
		BCC	loc_7C41
		LDA	#$FF
		STA	$90

loc_7C41:				; CODE XREF: sub_7BF0+4Bj
		STA	$91
		LDY	#3

loc_7C45:				; CODE XREF: sub_7BF0+5Cj
		LDA	$7E,Y
		STA	$63B1,Y
		DEY
		BPL	loc_7C45
		CLC
		RTS
; End of function sub_7BF0


; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_7C50:				; CODE XREF: RAM:78B7p	RAM:7CE3p ...
		STA	2
		LDA	#0
		STA	3
		LDA	$753D
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	unk_7C79,X
		STA	off_7
		LDA	unk_7C81,X
		STA	off_7+1
		JSR	$18A2
		LDA	3
		RTS
; End of function sub_7C50

; ---------------------------------------------------------------------------
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_7C79:	.BYTE	0		; DATA XREF: sub_7C50+Fr
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $80 ; Ä
		.BYTE $40 ; @
		.BYTE	0
unk_7C81:	.BYTE	4		; DATA XREF: sub_7C50+14r
		.BYTE	3
		.BYTE	2
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	6
		.BYTE	5
		.BYTE	4
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	4
		.BYTE	6
		.BYTE	8
		.BYTE	8
		.BYTE	6
		.BYTE	8
		.BYTE  $C
		.BYTE	8
		.BYTE	6
		.BYTE	6
		.BYTE  $A
		.BYTE  $C
		.BYTE  $E
		.BYTE $10
		.BYTE  $A
		.BYTE  $C
		.BYTE	8
		.BYTE	6

; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_7CA1:				; CODE XREF: RAM:780Dp	RAM:7904p ...
		LDA	#$A
		JMP	$185A
; End of function sub_7CA1

; ---------------------------------------------------------------------------

loc_7CA6:				; CODE XREF: RAM:7AC1p	RAM:7E00p
		LDX	#3
		LDA	#$FF

loc_7CAA:				; CODE XREF: RAM:7CADj
		STA	$75,X
		DEX
		BPL	loc_7CAA
		INX
		STX	$7C
		LDA	$7B

loc_7CB4:				; CODE XREF: RAM:7CF7j
		LDY	#<$7536
		LDX	#>$7536
		JSR	j_TESTBIT
		BCC	loc_7CF1
		LDA	$7C
		ASL	A
		TAX
		LDA	$7B
		ASL	A
		TAY
		LDA	off_7F8D,Y
		STA	loc_7CE0+1
		ADC	#4
		STA	$69,X
		LDA	off_7F8D+1,Y
		STA	loc_7CE0+2
		ADC	#0
		STA	$6A,X
		TXA
		LSR	A
		TAX
		LDA	$7B
		STA	$75,X

loc_7CE0:				; DATA XREF: RAM:7CC8w	RAM:7CD2w
		LDA	$FFFF
		JSR	sub_7C50
		LDX	$7C
		STA	$71,X
		INX
		CPX	#4
		BEQ	locret_7CF9
		STX	$7C

loc_7CF1:				; CODE XREF: RAM:7CBBj
		INC	$7B
		LDA	$7B
		CMP	#$29 ; ')'
		BCC	loc_7CB4

locret_7CF9:				; CODE XREF: RAM:7CEDj
		RTS
; ---------------------------------------------------------------------------

loc_7CFA:				; CODE XREF: RAM:76EFp
		LDX	#3

loc_7CFC:				; CODE XREF: RAM:7D25j	RAM:7D28j
		LDA	unk_7F38,X
		LDY	unk_7F34,X
		JSR	loc_7D4D
		CMP	unk_7F3C,X
		BCS	loc_7D27
		LDA	unk_7F38,X
		SEC
		SBC	unk_7F34,X
		JSR	$1899
		CLC
		ADC	unk_7F34,X
		STX	loc_7D23+1
		LDX	#$75 ; 'u'
		LDY	#$36 ; '6'
		SEC
		JSR	$1860

loc_7D23:				; DATA XREF: RAM:7D18w
		LDX	#$FF
		BPL	loc_7CFC

loc_7D27:				; CODE XREF: RAM:7D08j
		DEX
		BPL	loc_7CFC
		LDY	#0
		LDA	#$28 ; '('
		JSR	loc_7D4D
		CMP	#$12
		BCS	locret_7D4C
		LDX	#3

loc_7D37:				; CODE XREF: RAM:7D4Aj
		LDA	#$28 ; '('
		JSR	$1899
		STX	loc_7D47+1
		LDX	#$75 ; 'u'
		LDY	#$36 ; '6'
		SEC
		JSR	$1860

loc_7D47:				; DATA XREF: RAM:7D3Cw
		LDX	#$FF
		DEX
		BPL	loc_7D37

locret_7D4C:				; CODE XREF: RAM:7D33j
		RTS
; ---------------------------------------------------------------------------

loc_7D4D:				; CODE XREF: RAM:7D02p	RAM:7D2Ep
		STA	$6B
		STX	loc_7D6C+1
		LDA	#0
		STA	$6D

loc_7D56:				; CODE XREF: RAM:7D6Aj
		STY	$69
		ldxy	$7536
		LDA	$69
		JSR	j_TESTBIT
		BCC	loc_7D65
		INC	$6D

loc_7D65:				; CODE XREF: RAM:7D61j
		LDY	$69
		INY
		CPY	$6B
		BCC	loc_7D56

loc_7D6C:				; DATA XREF: RAM:7D4Fw
		LDX	#$FF
		LDA	$6D
		RTS
; ---------------------------------------------------------------------------
		LDA	$89
		BEQ	loc_7D78

loc_7D75:				; CODE XREF: RAM:7D7Aj	RAM:7D7Ej
		JMP	loc_7DF9
; ---------------------------------------------------------------------------

loc_7D78:				; CODE XREF: RAM:7D73j
		DEC	$8A
		BNE	loc_7D75
		DEC	$8B
		BNE	loc_7D75
		LDA	#8
		STA	$8B
		LDA	$6398
		BMI	loc_7DF9
		LDA	$85
		SEC
		SBC	$86
		BCC	loc_7DA2
		STA	$85
		CLC
		LDA	$86
		ADC	$6399
		BCC	loc_7D9C
		LDA	#$FF

loc_7D9C:				; CODE XREF: RAM:7D98j
		STA	$6399
		JMP	loc_7DB2
; ---------------------------------------------------------------------------

loc_7DA2:				; CODE XREF: RAM:7D8Ej
		LDA	$85
		ADC	$6399
		BCC	loc_7DAB
		LDA	#$FF

loc_7DAB:				; CODE XREF: RAM:7DA7j
		STA	$6399
		LDA	#0
		STA	$85

loc_7DB2:				; CODE XREF: RAM:7D9Fj
		LDA	$85
		BNE	loc_7DB8
		STA	$7A

loc_7DB8:				; CODE XREF: RAM:7DB4j
		LDA	$87
		SEC
		SBC	$88
		BCC	loc_7DD1
		STA	$87
		CLC
		LDA	$88
		ADC	$639A
		BCC	loc_7DCB
		LDA	#$FF

loc_7DCB:				; CODE XREF: RAM:7DC7j
		STA	$639A
		JMP	loc_7DE1
; ---------------------------------------------------------------------------

loc_7DD1:				; CODE XREF: RAM:7DBDj
		LDA	$87
		ADC	$639A
		BCC	loc_7DDA
		LDA	#$FF

loc_7DDA:				; CODE XREF: RAM:7DD6j
		STA	$639A
		LDA	#0
		STA	$87

loc_7DE1:				; CODE XREF: RAM:7DCEj
		JSR	sub_792C
		LDA	$D20A
		AND	#$3F ; '?'
		LDX	$8D
		BEQ	loc_7DF1

loc_7DED:				; CODE XREF: RAM:7DEFj
		LSR	A
		DEX
		BNE	loc_7DED

loc_7DF1:				; CODE XREF: RAM:7DEBj
		CMP	$83
		BCS	loc_7DF9
		ADC	#1
		STA	$8C

loc_7DF9:				; CODE XREF: RAM:loc_7D75j RAM:7D87j ...
		JMP	$FFFF
; ---------------------------------------------------------------------------

loc_7DFC:				; CODE XREF: RAM:78A4j
		LDA	#0
		STA	$7B
		JSR	loc_7CA6
		LDA	$D20A
		AND	#3
		TAX
		CMP	#3
		BCS	loc_7E0E
		DEX

loc_7E0E:				; CODE XREF: RAM:7E0Bj
		LDA	$72,X
		BNE	loc_7E19
		LDA	#$A
		JSR	$1899
		ADC	#2

loc_7E19:				; CODE XREF: RAM:7E10j
		STA	$72
		LDA	#2
		JSR	sub_7C50
		STA	$73
		LDA	#$AF ; 'Ø'
		STA	$8E
		LDA	#$89 ; 'â'
		STA	$8F
		LDA	$D20A
		LDY	#0

loc_7E2F:				; CODE XREF: RAM:7E36j
		CMP	($8E),Y
		BCC	loc_7E38
		BEQ	loc_7E38
		INY
		BNE	loc_7E2F

loc_7E38:				; CODE XREF: RAM:7E31j	RAM:7E33j
		LDA	$89B9,Y
		STA	$8E
		LDA	$89BE,Y
		STA	$8F
		LDY	#1

loc_7E44:				; CODE XREF: RAM:7F25j
		LDA	($8E),Y
		JSR	$1899
		DEY
		CLC
		ADC	($8E),Y
		LDX	#$9E ; 'û'
		LDY	#$F0 ; ''
		JSR	$185D
		LDX	$64
		JSR	$1851
		JSR	sub_7CA1
		LDA	#0
		STA	$8C

loc_7E60:				; CODE XREF: RAM:7E8Dj	RAM:7ED0j
		LDX	$64
		dldi	off_16, $85B6
		JSR	$1851

loc_7E6D:				; CODE XREF: RAM:7E7Cj
		dldi	off_1977, loc_7E7A
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7E7A:
		LDA	$31
		BMI	loc_7E6D
		CMP	#'1'
		BEQ	loc_7E9D
		CMP	#'2'
		BEQ	loc_7E94
		CMP	#'3'
		BEQ	loc_7E97
		SEC
		SBC	#'0'
		BNE	loc_7E60
		STA	$8D
		JMP	loc_785F
; ---------------------------------------------------------------------------

loc_7E94:				; CODE XREF: RAM:7E84j
		JMP	loc_7F11
; ---------------------------------------------------------------------------

loc_7E97:				; CODE XREF: RAM:7E88j
		JMP	loc_7F23
; ---------------------------------------------------------------------------

loc_7E9A:				; CODE XREF: RAM:7EE1j
		JMP	loc_790A
; ---------------------------------------------------------------------------

loc_7E9D:				; CODE XREF: RAM:7E80j	RAM:7ED4j
		LDA	$73
		STA	$71
		LDA	#4
		STA	$75
		LDA	#$45 ; 'E'
		STA	$6B
		LDA	#$7F ; ''
		STA	$6C

loc_7EAD:				; CODE XREF: RAM:7F21j
		dldi	off_16, $7F4B
		LDX	$64
		JSR	$1851

loc_7EBA:				; CODE XREF: RAM:7EC9j
		dldi	off_1977,$7EC7
		JMP	$1806
; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_7EBA
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_7E60
		CMP	#'Y'
		BNE	loc_7E9D
		LDA	#0
		STA	3
		LDA	$71
		STA	2
		JSR	sub_7BF0
		BCS	loc_7E9A
		LDA	RANDOM
		LDY	$75

loc_7EE8:				; CODE XREF: RAM:7EEFj
		CMP	($8E),Y
		BCC	loc_7EF1
		BEQ	loc_7EF1
		INY
		BNE	loc_7EE8

loc_7EF1:				; CODE XREF: RAM:7EEAj	RAM:7EECj
		LDA	$7F24,Y
		JSR	$1899
		CLC
		ADC	$7F2A,Y
		ldxy	$9EF0
		JSR	$185D
		LDX	$64
		JSR	$1851
		JSR	sub_7CA1
		LDA	#0
		STA	$8D
		JMP	loc_785F
; ---------------------------------------------------------------------------

loc_7F11:				; CODE XREF: RAM:loc_7E94j
		LDA	$72
		STA	$71
		dldi	$6B,$7F40
		LDA	#7
		STA	$75
		BNE	loc_7EAD

loc_7F23:				; CODE XREF: RAM:loc_7E97j
		LDY	#3
		JMP	loc_7E44
; ---------------------------------------------------------------------------
		.BYTE $30 ; 0
		.BYTE $60 ; `
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE $60 ; `
		.BYTE $30 ; 0
		.BYTE $14
		.BYTE $14
		.BYTE $44 ; D
		.BYTE $14
		.BYTE $14
		.BYTE $44 ; D
unk_7F34:	.BYTE	0		; DATA XREF: RAM:7CFFr	RAM:7D0Er ...
		.BYTE $10
		.BYTE $1B
		.BYTE $1E
unk_7F38:	.BYTE  $F		; DATA XREF: RAM:loc_7CFCr RAM:7D0Ar
		.BYTE $1A
		.BYTE $1D
		.BYTE $28 ; (
unk_7F3C:	.BYTE	4		; DATA XREF: RAM:7D05r
		.BYTE	4
		.BYTE	2
		.BYTE	4
aMeal:		.BYTE "meal",0
aDrink:		.BYTE "drink",0
		MOVEXY	0,1
		.BYTE $A3
		.WORD loc_893D
		.BYTE $A5
aThe:		.BYTE "The "
		.BYTE $B4
		.WORD $6B
		.BYTE 5
aWillCostYou:	.BYTE " will cost you "
		.BYTE $B2
		.WORD $71
		.BYTE 3
aSilvers_:	.BYTE " silvers."
		.BYTE $D
		.BYTE $D
		.BYTE $A3
		.WORD loc_8940
		.BYTE $A5
aOk:		.BYTE "OK ("
		.BYTE $A1
aY:		.BYTE "Y"
		.BYTE $A0
aOr:		.BYTE " or "
		.BYTE $A1
aN:		.BYTE "N"
		.BYTE $A0
		.BYTE $29 ; )
		.BYTE $D
		.BYTE $FF
off_7F8D:	.WORD unk_7FE1		; DATA XREF: RAM:7CC5r	RAM:7CCFr
		.WORD unk_7FF2
		.WORD unk_8001
		.WORD unk_8010
		.WORD unk_8021
		.WORD unk_8030
		.WORD unk_8041
		.WORD unk_8053
		.WORD unk_8060
		.WORD unk_806E
		.WORD unk_807B
		.WORD unk_808E
		.WORD unk_80A1
		.WORD unk_80B6
		.WORD unk_80C6
		.WORD unk_80D3
		.WORD unk_80DF
		.WORD unk_80F3
		.WORD unk_8109
		.WORD unk_811D
		.WORD unk_8133
		.WORD unk_8147
		.WORD unk_8151
		.WORD unk_815D
		.WORD unk_816C
		.WORD unk_817C
		.WORD unk_8189
		.WORD unk_8193
		.WORD unk_81A3
		.WORD unk_81B5
		.WORD unk_81C0
		.WORD unk_81CC
		.WORD unk_81D5
		.WORD unk_81DE
		.WORD unk_81E6
		.WORD unk_81EF
		.WORD unk_81F8
		.WORD unk_8209
		.WORD unk_8212
		.WORD unk_8222
		.WORD unk_8234
		.WORD unk_8245
unk_7FE1:	.BYTE	5		; DATA XREF: RAM:off_7F8Do
		.BYTE $12
		.BYTE	2
		.BYTE	0
aRackOfLamb:	.BYTE "Rack of Lamb",0
unk_7FF2:	.BYTE	6		; DATA XREF: RAM:7F8Fo
		.BYTE $18
		.BYTE	4
		.BYTE	0
aRoastBeef:	.BYTE "Roast Beef",0
unk_8001:	.BYTE	4		; DATA XREF: RAM:7F91o
		.BYTE $11
		.BYTE	2
		.BYTE	0
aRoastFowl:	.BYTE "Roast Fowl",0
unk_8010:	.BYTE $1E		; DATA XREF: RAM:7F93o
		.BYTE $20
		.BYTE	4
		.BYTE	0
aRoastDragon:	.BYTE "Roast Dragon",0
unk_8021:	.BYTE	4		; DATA XREF: RAM:7F95o
		.BYTE  $D
		.BYTE	1
		.BYTE	0
aSpareRibs:	.BYTE "Spare Ribs",0
unk_8030:	.BYTE	7		; DATA XREF: RAM:7F97o
		.BYTE $14
		.BYTE	2
		.BYTE	0
aRoastMutton:	.BYTE "Roast Mutton",0
unk_8041:	.BYTE  $A		; DATA XREF: RAM:7F99o
		.BYTE $16
		.BYTE	3
		.BYTE	0
aLegOfDragon:	.BYTE "Leg of Dragon",0
unk_8053:	.BYTE $28 ; (		; DATA XREF: RAM:7F9Bo
		.BYTE $14
		.BYTE	4
		.BYTE	0
aABurger:	.BYTE "a Burger",0
unk_8060:	.BYTE	6		; DATA XREF: RAM:7F9Do
		.BYTE  $E
		.BYTE	2
		.BYTE	0
aRoastPig:	.BYTE "Roast Pig",0
unk_806E:	.BYTE	6		; DATA XREF: RAM:7F9Fo
		.BYTE $10
		.BYTE	2
		.BYTE	0
aSausages:	.BYTE "Sausages",0
unk_807B:	.BYTE  $A		; DATA XREF: RAM:7FA1o
		.BYTE $14
		.BYTE	2
		.BYTE	0
aFilletOfBeef:	.BYTE "Fillet of Beef",0
unk_808E:	.BYTE	7		; DATA XREF: RAM:7FA3o
		.BYTE $10
		.BYTE	4
		.BYTE	0
aRagoutOfBeef:	.BYTE "Ragout of Beef",0
unk_80A1:	.BYTE  $A		; DATA XREF: RAM:7FA5o
		.BYTE $18
		.BYTE	4
		.BYTE	0
aRagoutOfDragon:.BYTE "Ragout of Dragon",0
unk_80B6:	.BYTE	7		; DATA XREF: RAM:7FA7o
		.BYTE $10
		.BYTE	2
		.BYTE	0
aSmokedFish:	.BYTE "Smoked Fish",0
unk_80C6:	.BYTE	7		; DATA XREF: RAM:7FA9o
		.BYTE  $E
		.BYTE	2
		.BYTE	0
aCrayfish:	.BYTE "Crayfish",0
unk_80D3:	.BYTE	9		; DATA XREF: RAM:7FABo
		.BYTE $12
		.BYTE	2
		.BYTE	0
aLobster:	.BYTE "Lobster",0
unk_80DF:	.BYTE	3		; DATA XREF: RAM:7FADo
		.BYTE	8
		.BYTE	4
		.BYTE	0
aABowlOfFruit:	.BYTE "a Bowl of Fruit",0
unk_80F3:	.BYTE	3		; DATA XREF: RAM:7FAFo
		.BYTE	5
		.BYTE	3
		.BYTE	0
aAPlateOfGreens:.BYTE "a Plate of Greens",0
unk_8109:	.BYTE	2		; DATA XREF: RAM:7FB1o
		.BYTE	4
		.BYTE	0
		.BYTE	0
aALoafOfBread:	.BYTE "a Loaf of Bread",0
unk_811D:	.BYTE	3		; DATA XREF: RAM:7FB3o
		.BYTE	8
		.BYTE	0
		.BYTE	0
aABlockOfCheese:.BYTE "a Block of Cheese",0
unk_8133:	.BYTE	4		; DATA XREF: RAM:7FB5o
		.BYTE  $A
		.BYTE	4
		.BYTE	0
aABowlOfChili:	.BYTE "a Bowl of Chili",0
unk_8147:	.BYTE	3		; DATA XREF: RAM:7FB7o
		.BYTE	7
		.BYTE	4
		.BYTE	0
aPasta:		.BYTE "Pasta",0
unk_8151:	.BYTE	4		; DATA XREF: RAM:7FB9o
		.BYTE	9
		.BYTE	4
		.BYTE	0
aLasagna:	.BYTE "Lasagna",0
unk_815D:	.BYTE	3		; DATA XREF: RAM:7FBBo
		.BYTE	8
		.BYTE	0
		.BYTE	0
aASandwich:	.BYTE "a Sandwich",0
unk_816C:	.BYTE	3		; DATA XREF: RAM:7FBDo
		.BYTE	7
		.BYTE  $A
		.BYTE	0
aLentilSoup:	.BYTE "Lentil Soup",0
unk_817C:	.BYTE	4		; DATA XREF: RAM:7FBFo
		.BYTE  $C
		.BYTE	0
		.BYTE	0
aPemmican:	.BYTE "Pemmican",0
unk_8189:	.BYTE	3		; DATA XREF: RAM:7FC1o
		.BYTE  $A
		.BYTE	8
		.BYTE	0
aGruel:		.BYTE "Gruel",0
unk_8193:	.BYTE	2		; DATA XREF: RAM:7FC3o
		.BYTE	6
		.BYTE	0
		.BYTE	0
aSweetMeats:	.BYTE "Sweet Meats",0
unk_81A3:	.BYTE	2		; DATA XREF: RAM:7FC5o
		.BYTE	6
		.BYTE	2
		.BYTE	0
aBloodPudding:	.BYTE "Blood Pudding",0
unk_81B5:	.BYTE	2		; DATA XREF: RAM:7FC7o
		.BYTE	8
		.BYTE	0
		.BYTE	0
aHaggis:	.BYTE "Haggis",0
unk_81C0:	.BYTE	2		; DATA XREF: RAM:7FC9o
		.BYTE	2
		.BYTE  $A
		.BYTE	5
aSpirits:	.BYTE "Spirits",0
unk_81CC:	.BYTE	3		; DATA XREF: RAM:7FCBo
		.BYTE	3
		.BYTE  $C
		.BYTE	4
aMead:		.BYTE "Mead",0
unk_81D5:	.BYTE	2		; DATA XREF: RAM:7FCDo
		.BYTE	2
		.BYTE  $A
		.BYTE	3
aBeer:		.BYTE "Beer",0
unk_81DE:	.BYTE	2		; DATA XREF: RAM:7FCFo
		.BYTE	3
		.BYTE  $A
		.BYTE	4
aAle:		.BYTE "Ale",0
unk_81E6:	.BYTE	3		; DATA XREF: RAM:7FD1o
		.BYTE	3
		.BYTE  $A
		.BYTE	3
aWine:		.BYTE "Wine",0
unk_81EF:	.BYTE	2		; DATA XREF: RAM:7FD3o
		.BYTE	2
		.BYTE  $A
		.BYTE	4
aGrog:		.BYTE "Grog",0
unk_81F8:	.BYTE	2		; DATA XREF: RAM:7FD5o
		.BYTE	4
		.BYTE $10
		.BYTE	0
aSarsaparilla:	.BYTE "Sarsaparilla",0
unk_8209:	.BYTE	2		; DATA XREF: RAM:7FD7o
		.BYTE	4
		.BYTE $10
		.BYTE	0
aMilk:		.BYTE "Milk",0
unk_8212:	.BYTE	2		; DATA XREF: RAM:7FD9o
		.BYTE	6
		.BYTE  $C
		.BYTE	0
aGrapeJuice:	.BYTE "Grape Juice",0
unk_8222:	.BYTE	1		; DATA XREF: RAM:7FDBo
		.BYTE	2
		.BYTE $10
		.BYTE	0
aMineralWater:	.BYTE "Mineral Water",0
unk_8234:	.BYTE	2		; DATA XREF: RAM:7FDDo
		.BYTE	6
		.BYTE  $C
		.BYTE	0
aOrangeJuice:	.BYTE "Orange Juice",0
unk_8245:	.BYTE	1		; DATA XREF: RAM:7FDFo
		.BYTE	1
		.BYTE	1
		.BYTE	1
aError:		.BYTE "ERROR!!!",0
		.BYTE $A8 ; ®
		.BYTE $FF
aFriend:	.BYTE "Friend",0
aTheBar:	.BYTE "the bar",0
aATable:	.BYTE "a table",0
		.WORD aSlimyThingMust	; "Slimy thing,	must thee darken my door?"
		.WORD aThouFewmetWhyA	; "Thou	fewmet,	why art	thou here?"
		.WORD aWhatNowFilthyC	; "What	now, filthy Cheapskate?"
		.WORD aWhatDostThouHe	; "What	dost thou here,	insolent one!"
		.WORD aHastThouBrough	; "Hast	thou brought enough cash?"
		.WORD aThyWelcomeIsWe	; "Thy welcome is wearing thin."
		.WORD aHello		; "Hello, "
		.WORD aWellMet		; "Well	met, "
		.WORD byte_8372
		.WORD byte_8839
		.WORD byte_8868
aSlimyThingMust:.BYTE "Slimy thing, must thee darken my door?" ; DATA XREF: RAM:826Bo
		.BYTE $AE
aThouFewmetWhyA:.BYTE "Thou fewmet, why art thou here?" ; DATA XREF: RAM:826Do
		.BYTE $AE
aWhatNowFilthyC:.BYTE "What now, filthy Cheapskate?" ; DATA XREF: RAM:826Fo
		.BYTE $AE
aWhatDostThouHe:.BYTE "What dost thou here, insolent one!" ; DATA XREF: RAM:8271o
		.BYTE $AE
aHastThouBrough:.BYTE "Hast thou brought enough cash?" ; DATA XREF: RAM:8273o
		.BYTE $AE
aThyWelcomeIsWe:.BYTE "Thy welcome is wearing thin." ; DATA XREF: RAM:8275o
		.BYTE $AE
aHelloStranger:	.BYTE "Hello, Stranger!"
		.BYTE $AE
aHello:		.BYTE "Hello, "         ; DATA XREF: RAM:8277o
		.BYTE $B4
		.WORD $65
		.BYTE $20
		.BYTE "!"
		.BYTE $AE
aWellMet:	.BYTE "Well met, "      ; DATA XREF: RAM:8279o
		.BYTE $B4
		.WORD $65
		.BYTE $20
		.BYTE "!"
		.BYTE $AE
byte_8372:	.BYTE $B3		; DATA XREF: RAM:827Bo
		.WORD $6321
		.BYTE $20
aIsWelcomeHere:	.BYTE " is welcome here!"
		.BYTE $AE
		.BYTE $A6,  0,	2
		.BYTE $A5
aThereIsNobodyE:.BYTE "There is nobody else here."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aGetThat:	.BYTE "Get that "
		.BYTE $B3
		.WORD byte_89C3
		.BYTE $1E
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOutOfHere:	.BYTE "out of here!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
		.BYTE $AD
		.WORD $67
		.BYTE $D
		.BYTE $A6,  0,	2
		.BYTE $A5
aWhereDostThouW:.BYTE "Where dost thou wish to sit?"
		.BYTE $D
		.BYTE $A6, $C,	5
		MenuItem "1","At the bar"
		.BYTE $A6, $C,	6
		MenuItem "2","At a table"
		.BYTE $A6, $C,	7
		MenuItem "0","Leave"
		.BYTE $FF
byte_8428:	.BYTE $A3		; DATA XREF: RAM:8551o
		.WORD loc_8459
aThouArtSitting:.BYTE "Thou art sitting at "
		.BYTE $B4
		.WORD $67
		.BYTE $27
		.BYTE $AE
aThouArtEating:	.BYTE "Thou art eating "
		.BYTE $B4
		.WORD $79
		.BYTE $27
		.BYTE $AE
; ---------------------------------------------------------------------------

loc_8459:				; DATA XREF: RAM:8429o
		LDA	$7A
		BEQ	loc_8466
		LDA	#$44 ; 'D'
		STA	$16
		LDA	#$84 ; 'Ñ'
		STA	$17
		RTS
; ---------------------------------------------------------------------------

loc_8466:				; CODE XREF: RAM:845Bj
		LDA	#$2B ; '+'
		STA	$16
		LDA	#$84 ; 'Ñ'
		STA	$17
		RTS
; ---------------------------------------------------------------------------
		.BYTE $A6,  0,	1
		.BYTE $A5
aYourGenerosity:.BYTE "Your generosity is greatly appreciated."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aHoweverYourHum:.BYTE "However, your humor is not."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aHowManySilvers:.BYTE "How many silvers"
		.BYTE $D
		.BYTE $A5
aDostThouWishTo:.BYTE "dost thou wish to leave?"
		.BYTE $D
		.BYTE $A6,$10,	5
		.BYTE ">"
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aLeavingAlready:.BYTE "Leaving already?  You haven't"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aFinishedYourMe:.BYTE "finished your meal.  I'll wrap it"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aInAPacketForYo:.BYTE "in a packet for you."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A2
		.BYTE $AC
		.WORD byte_8428
a_:		.BYTE "."
		.BYTE $AB
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWhatDostThouWi:.BYTE "What dost thou wish?"
		.BYTE $D
		.BYTE $A6,  5,	4
		MenuItem "1","Order something"
		.BYTE $A6,  5,	5
		MenuItem "2","Buy a round for the house"
		.BYTE $A6,  5,	7
		MenuItem "0","Leave"
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aDostThouWish_0:.BYTE "Dost thou wish to:"
		.BYTE $D
		.BYTE $A6,  5,	2
		MenuItem "1","Buy him a drink"
		.BYTE $A6,  5,	3
		MenuItem "2","Buy him a meal"
		.BYTE $A6,  5,	4
		MenuItem "3","Transact"
		.BYTE $A6,  5,	6
		MenuItem "0","Ignore him"
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aThankYouPlease:.BYTE "Thank you!  Please come again."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aARoundForTheHo:.BYTE "A round for the house will cost"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		.BYTE $A3
		.WORD loc_893D
		.BYTE $B2
		.WORD $71
		.BYTE 3
aSilvers__0:	.BYTE " silvers."
		.BYTE $A3
		.WORD loc_8940
		.BYTE $D
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aDostThouStillW:.BYTE "Dost thou still wish to buy? ("
		.BYTE $A1
aY_0:		.BYTE 'Y'
		.BYTE $A0
aOr_0:		.BYTE " or "
		.BYTE $A1
aN_0:		.BYTE 'N'
		.BYTE $A0
		.BYTE ')'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aIMSorryYouHave:.BYTE "I'm sorry, you have not the funds."
		.BYTE $D
		.BYTE $A6,  0,	7
		.BYTE $A5
aNoteWeDoNotAcc:.BYTE "Note: We do not accept coppers here."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aDostThouWish_1:.BYTE "Dost thou wish to sell that fine"
		.BYTE $D
		.BYTE $D
		.BYTE $A3
		.WORD loc_893D
		.BYTE $A5
aDragonMeatFor:	.BYTE "dragon meat for "
		.BYTE $B2
		.WORD $71
		.BYTE 2
aGoldsq:	.BYTE " golds? ("
		.BYTE $A1
aY_1:		.BYTE "Y"
		.BYTE $A0
aOr_1:		.BYTE " or "
		.BYTE $A1
aN_1:		.BYTE "N"
		.BYTE $A0
		.BYTE ')'
		.BYTE $D
		.BYTE $A3
		.WORD $8940
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aWhatWouldThouL:.BYTE "What would thou like?"
		.BYTE $D
		.BYTE $A6,  0,	2
		MenuItem "1",""
		.BYTE $B4
		.WORD $69
		.BYTE $1E
		.BYTE $A6,$1B,	2
		.BYTE $B2
		.WORD $71
		.BYTE 4
aSilvers:	.BYTE "silvers"
		.BYTE $A3
		.WORD loc_8946
		.BYTE $D
		MenuItem "2",""
		.BYTE $B4
		.WORD $6B
		.BYTE $1E
		.BYTE $A6,$1B,	3
		.BYTE $B2
		.WORD $72
		.BYTE 4
aSilvers_0:	.BYTE "silvers"
		.BYTE $A3
		.WORD loc_8949
		.BYTE $D
		MenuItem "3",""
		.BYTE $B4
		.WORD $6D
		.BYTE $1E
		.BYTE $A6,$1B,	4
		.BYTE $B2
		.WORD $73
		.BYTE 4
aSilvers_1:	.BYTE "silvers"
		.BYTE $A3
		.WORD loc_894C
		.BYTE $D
		MenuItem "4",""
		.BYTE $B4
		.WORD $6F
		.BYTE $1E
		.BYTE $A6,$1B,	5
		.BYTE $B2
		.WORD $74
		.BYTE 4
aSilvers_2:	.BYTE "silvers"
		.BYTE $A6,  0,	7
		.BYTE $A5
		.BYTE $A1
aF:		.BYTE "F"
		.BYTE $A0
aOrward:	.BYTE "orward, "
		.BYTE $A1
aB:		.BYTE "B"
		.BYTE $A0
aAckwardOr:	.BYTE "ackward or "
		.BYTE $A1
aEsc:		.BYTE "ESC"
		.BYTE $A0
aToExit:	.BYTE " to exit"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aWeAreOutOfEver:.BYTE "We are out of everything"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAtTheMoment_:	.BYTE "at the moment."
		.BYTE $D
		.BYTE $FF
byte_8839:	.BYTE $A6,  0,	2	; DATA XREF: RAM:827Do
		.BYTE $A5
aRightAway:	.BYTE "Right away!"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAnythingElseq:	.BYTE "Anything else? ("
		.BYTE $A1
aY_2:		.BYTE "Y"
		.BYTE $A0
aOr_2:		.BYTE " or "
		.BYTE $A1
aN_2:		.BYTE "N"
		.BYTE $A0
		.BYTE ")"
		.BYTE $D
		.BYTE $FF
byte_8868:	.BYTE $A6,  0,	1	; DATA XREF: RAM:827Fo
		.BYTE $A5
aComingRightUp:	.BYTE "Coming right up!"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIsThereAnythin:.BYTE "Is there anything else"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aICanGetForYouq:.BYTE "I can get for you? ("
		.BYTE $A1
aY_3:		.BYTE "Y"
		.BYTE $A0
aOr_3:		.BYTE " or "
		.BYTE $A1
aN_3:		.BYTE "N"
		.BYTE $A0
		.BYTE ")"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aYouHaveNotFini:.BYTE "You have not finished your meal."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIWillWrapThatU:.BYTE "I will wrap that up for you."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6, $A,	2
		MenuItem "1","Say goodbye"
		.BYTE $A6, $A,	4
		MenuItem "2","Leave a tip"
		.BYTE $A6, $A,	7
		MenuItem "0","Leave quietly"
		.BYTE $FF
; ---------------------------------------------------------------------------

loc_893D:				; DATA XREF: RAM:7F4Fo	RAM:866Co ...
		LDA	#$FF
; ---------------------------------------------------------------------------
		.BYTE $2C ; ,
; ---------------------------------------------------------------------------

loc_8940:				; DATA XREF: RAM:7F79o	RAM:867Co
		LDA	#0
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------

loc_8946:				; DATA XREF: RAM:878Bo
		LDX	#1
; ---------------------------------------------------------------------------
		.BYTE $2C ; ,
; ---------------------------------------------------------------------------

loc_8949:				; DATA XREF: RAM:87A7o
		LDX	#2
; ---------------------------------------------------------------------------
		.BYTE $2C ; ,
; ---------------------------------------------------------------------------

loc_894C:				; DATA XREF: RAM:87C3o
		LDX	#3
		LDA	$75,X
		BPL	locret_896D
		LDA	#$DE ; 'ﬁ'
		STA	$16
		LDA	#$87 ; 'á'
		STA	$17
		RTS
; ---------------------------------------------------------------------------

loc_895B:				; CODE XREF: RAM:8968j
		LDX	#$64 ; 'd'

loc_895D:				; CODE XREF: RAM:896Bj
		LDA	$252

loc_8960:				; CODE XREF: RAM:8963j
		CMP	$252
		BEQ	loc_8960
		JSR	$181E
		BPL	loc_895B
		DEX
		BNE	loc_895D

locret_896D:				; CODE XREF: RAM:8950j
		RTS
; ---------------------------------------------------------------------------
		.BYTE	0
		.BYTE	1
		.BYTE  $A
		.BYTE	1
		.BYTE	1
		.BYTE  $F
		.BYTE $FF
		.BYTE	1
		.BYTE  $F
		.BYTE $FF
		.BYTE	0
		.BYTE	5
		.BYTE $FF
		.BYTE	2
		.BYTE	1
		.BYTE  $C
		.BYTE	1
		.BYTE  $F
		.BYTE $B4 ; ¥
		.BYTE $FF
		.BYTE	5
		.BYTE $AF ; Ø
		.BYTE $FF
		.BYTE	2
		.BYTE $AF ; Ø
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE  $E
		.BYTE	1
		.BYTE $20
		.BYTE $BE ; æ
		.BYTE $FF
		.BYTE $2D ; -
		.BYTE $DC ; ‹
		.BYTE $FF
		.BYTE	5
		.BYTE $DC ; ‹
		.BYTE $FF
		.BYTE	6
		.BYTE	1
		.BYTE $10
		.BYTE	1
		.BYTE $32 ; 2
		.BYTE $DC ; ‹
		.BYTE $FF
		.BYTE $64 ; d
		.BYTE $F0 ; 
		.BYTE $FF
		.BYTE $20
		.BYTE $DC ; ‹
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE $12
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $E6 ; Ê
		.BYTE $FF
		.BYTE $64 ; d
		.BYTE $F0 ; 
		.BYTE $FF
		.BYTE $28 ; (
		.BYTE $E6 ; Ê
		.BYTE $FF
		.BYTE $59 ; Y
		.BYTE $CC ; Ã
		.BYTE $E5 ; Â
		.BYTE $F2 ; Ú
		.BYTE $FF
		.BYTE $33 ; 3
		.BYTE $4C ; L
		.BYTE $66 ; f
		.BYTE $B2 ; ≤
		.BYTE $FF
		.BYTE $6E ; n
		.BYTE $7B ; {
		.BYTE $88 ; à
		.BYTE $95 ; ï
		.BYTE $A2 ; ¢
		.BYTE $89 ; â
		.BYTE $89 ; â
		.BYTE $89 ; â
		.BYTE $89 ; â
		.BYTE $89 ; â
byte_89C3:	.BYTE $A6,  0, $C	; DATA XREF: RAM:83B6o
aPressTToTran:	.BYTE "Press T to tran",0
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42
		.WORD $400
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42
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
		.BYTE $44
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
		.BYTE $42
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
		.BYTE $41
		.WORD $9C00
; ---------------------------------------------------------------------------
		PHA
		TXA
		PHA
		TYA
		PHA
		STA	$D40A
		LDA	#$36 ; '6'
		STA	$D019
		STA	$D40A
		LDA	#$50 ; 'P'
		LDX	#$70 ; 'p'
		LDY	#$90 ; 'ê'
		STA	$D40A
		STA	$D000
		STX	$D001
		STY	$D002
		STA	$D40A
		LDA	#$B0 ; '∞'
		LDX	#$48 ; 'H'
		LDY	#$40 ; '@'
		STA	$D40A
		STA	$D003
		STX	$D004
		STY	$D005
		STA	$D40A
		LDA	#$38 ; '8'
		LDX	#$30 ; '0'
		STA	$D40A
		STA	$D006
		STX	$D007
		STA	$D40A
		LDX	$BC5B
		LDY	$BC5D
		LDA	$BC5A
		STA	$D40A
		STA	$D01A
		STX	$D016
		STY	$D018
		LDX	#$23 ; '#'
		LDY	$BBDC,X

loc_8A78:				; CODE XREF: RAM:8A9Dj
		LDA	$BB94,X
		STA	$D40A
		STA	$D017
		STY	$D019
		LDA	$BB4C,X
		STA	$D409
		LDA	$BB70,X
		STA	$D40A
		STA	$D016
		LDA	$BBB8,X
		STA	$D018
		LDY	$BBDB,X
		DEX
		BPL	loc_8A78
		LDA	#0
		STA	$D40A
		STA	$D018
		STA	$D01A
		LDA	#$E
		STA	$D017
		LDA	#$14
		STA	$D409
		PLA
		TAY
		PLA
		TAX
		PLA
		RTI
; ---------------------------------------------------------------------------
		LDA	#$7F ; ''
		STA	$253
		LDA	#0
		STA	$254
		LDA	#$9C ; 'ú'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_8ACD:				; CODE XREF: RAM:8ADBj
		LDY	#$C

loc_8ACF:				; CODE XREF: RAM:8AD6j
		STA	$BB4C,X
		DEX
		BMI	loc_8ADD
		DEY
		BNE	loc_8ACF
		CLC
		ADC	#4
		BNE	loc_8ACD

loc_8ADD:				; CODE XREF: RAM:8AD3j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	$9DF3
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	$9DF3
		LDA	#0
		STA	$9D22
		LDA	#$BD ; 'Ω'
		STA	$9D23
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_8B03:				; CODE XREF: RAM:8B07j	RAM:8B0Dj
		STA	$FFFF,X
		INX
		BNE	loc_8B03
		INC	$9D23
		DEY
		BNE	loc_8B03
		LDX	#7

loc_8B11:				; CODE XREF: RAM:8B15j
		STA	$D000,X
		DEX
		BPL	loc_8B11
		LDA	#3
		TAX

loc_8B1A:				; CODE XREF: RAM:8B1Ej
		STA	$D008,X
		DEX
		BPL	loc_8B1A
		LDA	#$FF
		STA	$D00C
		LDA	#3
		STA	$D01D
		LDA	#$BC ; 'º'
		STA	$D407
		LDA	#4
		STA	$D01B
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_8B48:				; CODE XREF: RAM:8B6Ej
		LDY	6
		LDA	(off_7),Y
		STA	4
		LDY	#7

loc_8B50:				; CODE XREF: RAM:8B5Bj
		LSR	4
		BCC	loc_8B5A
		LDA	(off_9),Y
		ORA	#$80 ; 'Ä'
		STA	(off_9),Y

loc_8B5A:				; CODE XREF: RAM:8B52j
		DEY
		BPL	loc_8B50
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_8B68
		INC	$A

loc_8B68:				; CODE XREF: RAM:8B64j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_8B48
		LDA	#$2D ; '-'
		STA	off_7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_8B80:				; CODE XREF: RAM:8B91j
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
		BCC	loc_8B80

loc_8B93:				; CODE XREF: RAM:8BB0j
		LDX	#0

loc_8B95:				; CODE XREF: RAM:8BAEj
		LDY	6
		LDA	(off_7),Y
		LDY	#4

loc_8B9B:				; CODE XREF: RAM:8BA0j
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_8B9B
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_8BB2
		CPX	#$A
		BCC	loc_8B95
		BCS	loc_8B93

loc_8BB2:				; CODE XREF: RAM:8BAAj
		LDX	#3
		LDA	$BC5F

loc_8BB7:				; CODE XREF: RAM:8BBBj
		STA	$D012,X
		DEX
		BPL	loc_8BB7
		LDA	#$32 ; '2'
		STA	$24A
		LDA	#$9C ; 'ú'
		STA	$24B
		LDA	#$C0 ; '¿'
		STA	$D40E
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_8BDF
		INC	8

loc_8BDF:				; CODE XREF: RAM:8BDBj
		CMP	#$1B
		BEQ	loc_8BEE
		STA	(9),Y
		INC	9
		BNE	loc_8BEB
		INC	$A

loc_8BEB:				; CODE XREF: RAM:8BE7j
		JMP	$9DF3
; ---------------------------------------------------------------------------

loc_8BEE:				; CODE XREF: RAM:8BE1j
		LDA	(7),Y
		INC	7
		BNE	loc_8BF6
		INC	8

loc_8BF6:				; CODE XREF: RAM:8BF2j
		CMP	#$FF
		BNE	loc_8BFB
		RTS
; ---------------------------------------------------------------------------

loc_8BFB:				; CODE XREF: RAM:8BF8j
		STA	$9E53
		ADC	9
		STA	$9E2D
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_8C13
		LDA	$9E53
		SBC	#$FF
		STA	$9E53

loc_8C13:				; CODE XREF: RAM:8C09j
		LDA	(7),Y
		INC	7
		BNE	loc_8C1B
		INC	8

loc_8C1B:				; CODE XREF: RAM:8C17j
		LDY	$9E53

loc_8C1E:				; CODE XREF: RAM:8C21j
		STA	(9),Y
		DEY
		BPL	loc_8C1E
		INC	$9E53
		LDA	$9E53
		CLC
		ADC	9
		STA	9
		BCC	loc_8C32
		INC	$A

loc_8C32:				; CODE XREF: RAM:8C2Ej
		JMP	$9DF3
; ---------------------------------------------------------------------------
		.BYTE	0
		.BYTE $1B
		.BYTE $17
		.BYTE	0
		.BYTE $1B
		.BYTE $1A
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE $1F
		.BYTE $A8 ; ®
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE $29 ; )
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $EA ; Í
		.BYTE $E9 ; È
		.BYTE $E9 ; È
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $59 ; Y
		.BYTE $55 ; U
		.BYTE $A5 ; •
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $65 ; e
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AB ; ´
		.BYTE $6B ; k
		.BYTE $6B ; k
		.BYTE $1B
		.BYTE $1F
		.BYTE $FF
		.BYTE $1B
		.BYTE $17
		.BYTE	0
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE  $F
		.BYTE	3
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $3C ; <
		.BYTE  $C
		.BYTE  $F
		.BYTE	3
		.BYTE  $C
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE $10
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE $1E
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	6
		.BYTE $A8 ; ®
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $A8 ; ®
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $A8 ; ®
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $A8 ; ®
		.BYTE $55 ; U
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $F4 ; Ù
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE	5
		.BYTE	5
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $14
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE	0
		.BYTE  $C
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1F
		.BYTE $E9 ; È
		.BYTE $1B
		.BYTE	6
		.BYTE $EA ; Í
		.BYTE $65 ; e
		.BYTE $54 ; T
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	3
		.BYTE $A7 ; ß
		.BYTE $55 ; U
		.BYTE $14
		.BYTE $14
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $41 ; A
		.BYTE $41 ; A
		.BYTE $59 ; Y
		.BYTE $15
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	3
		.BYTE $DA ; ⁄
		.BYTE $6B ; k
		.BYTE $1B
		.BYTE	6
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE $1F
		.BYTE $FF
		.BYTE $1B
		.BYTE $17
		.BYTE	0
		.BYTE $1B
		.BYTE  $D
		.BYTE $FF
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $13
		.BYTE $13
		.BYTE $1C
		.BYTE  $C
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	4
		.BYTE	4
		.BYTE $30 ; 0
		.BYTE  $C
		.BYTE  $C
		.BYTE	3
		.BYTE $43 ; C
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	4
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE $1F
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $96 ; ñ
		.BYTE $96 ; ñ
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $F4 ; Ù
		.BYTE $F4 ; Ù
		.BYTE $1B
		.BYTE	2
		.BYTE $F5 ; ı
		.BYTE $FD ; ˝
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $3F ; ?
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE $17
		.BYTE $15
		.BYTE $35 ; 5
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $14
		.BYTE $1B
		.BYTE	4
		.BYTE $D7 ; ◊
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE $FC ; ¸
		.BYTE  $C
		.BYTE  $C
		.BYTE $D4 ; ‘
		.BYTE $54 ; T
		.BYTE $5C ; \
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE $1F
		.BYTE $1F
		.BYTE $1B
		.BYTE	2
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE $EA ; Í
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE  $D
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE	0
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
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $2C ; ,
		.BYTE $1B
		.BYTE	3
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $FE ; ˛
		.BYTE $F3 ; Û
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE $1B
		.BYTE	4
		.BYTE $A3 ; £
		.BYTE $33 ; 3
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $33 ; 3
		.BYTE $3C ; <
		.BYTE  $F
		.BYTE  $F
		.BYTE	3
		.BYTE $1F
		.BYTE $17
		.BYTE	5
		.BYTE $45 ; E
		.BYTE $41 ; A
		.BYTE $51 ; Q
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $D7 ; ◊
		.BYTE $5F ; _
		.BYTE $77 ; w
		.BYTE $77 ; w
		.BYTE $75 ; u
		.BYTE $5D ; ]
		.BYTE $D7 ; ◊
		.BYTE $D7 ; ◊
		.BYTE $77 ; w
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $D0 ; –
		.BYTE $50 ; P
		.BYTE $70 ; p
		.BYTE $41 ; A
		.BYTE $45 ; E
		.BYTE $D4 ; ‘
		.BYTE $45 ; E
		.BYTE $C4 ; -
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $40 ; @
		.BYTE $CC ; Ã
		.BYTE $30 ; 0
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE $1F
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE $1F
		.BYTE $A8 ; ®
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $69 ; i
		.BYTE $14
		.BYTE $14
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE  $F
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE $32 ; 2
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $FF
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $8A ; ä
		.BYTE $FF
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $AB ; ´
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	1
		.BYTE $14
		.BYTE $53 ; S
		.BYTE $5C ; \
		.BYTE $73 ; s
		.BYTE $4C ; L
		.BYTE $73 ; s
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $3F ; ?
		.BYTE $AA ; ™
		.BYTE $FA ; ˙
		.BYTE $CE ; Œ
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $F3 ; Û
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $17
		.BYTE	7
		.BYTE	3
		.BYTE	3
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $FD ; ˝
		.BYTE	3
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE	7
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE $10
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A1 ; °
		.BYTE	9
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $BF ; ø
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $DF ; ﬂ
		.BYTE $77 ; w
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $F7 ; ˜
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE $18
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $EF ; Ô
		.BYTE $EF ; Ô
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $FA ; ˙
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	4
		.BYTE $6A ; j
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE  $E
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	7
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CF ; œ
		.BYTE $33 ; 3
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $C0 ; ¿
		.BYTE $EA ; Í
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	5
		.BYTE $5A ; Z
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $A8 ; ®
		.BYTE $81 ; Å
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $A0 ; †
		.BYTE	5
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE $1E
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $B7 ; ∑
		.BYTE $BD ; Ω
		.BYTE $B7 ; ∑
		.BYTE $1B
		.BYTE	2
		.BYTE $AF ; Ø
		.BYTE $A9 ; ©
		.BYTE $AB ; ´
		.BYTE $D7 ; ◊
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $D7 ; ◊
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $D7 ; ◊
		.BYTE $7D ; }
		.BYTE $DE ; ﬁ
		.BYTE $7E ; ~
		.BYTE $DE ; ﬁ
		.BYTE $1B
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $6A ; j
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE $AF ; Ø
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	5
		.BYTE $3F ; ?
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $FF
		.BYTE $AA ; ™
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
		.BYTE	2
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE  $D
		.BYTE	7
		.BYTE  $D
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $CC ; Ã
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $68 ; h
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE $17
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	7
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	7
		.BYTE $25 ; %
		.BYTE $1B
		.BYTE	7
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE $17
		.BYTE	0
		.BYTE  $F
		.BYTE  $F
		.BYTE $1B
		.BYTE	5
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $CE ; Œ
		.BYTE $CE ; Œ
		.BYTE $1B
		.BYTE	2
		.BYTE  $A
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $7D ; }
		.BYTE $D7 ; ◊
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $D7 ; ◊
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $D7 ; ◊
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	3
		.BYTE $BF ; ø
		.BYTE $B3 ; ≥
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $F0 ; 
		.BYTE $FF
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $CA ;  
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	6
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	7
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $48 ; H
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $4A ; J
		.BYTE $42 ; B
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE	5
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $81 ; Å
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $43 ; C
		.BYTE $4D ; M
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE  $F
		.BYTE $35 ; 5
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $A1 ; °
		.BYTE	5
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $96 ; ñ
		.BYTE $96 ; ñ
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	1
		.BYTE	9
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $85 ; Ö
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	7
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $A9 ; ©
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $25 ; %
		.BYTE $20
		.BYTE $1B
		.BYTE  $D
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE	5
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $FC ; ¸
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $41 ; A
		.BYTE $90 ; ê
		.BYTE $1B
		.BYTE $17
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	2
		.BYTE $59 ; Y
		.BYTE $56 ; V
		.BYTE $16
		.BYTE $41 ; A
		.BYTE $DF ; ﬂ
		.BYTE $5F ; _
		.BYTE $AF ; Ø
		.BYTE $5F ; _
		.BYTE $AF ; Ø
		.BYTE $5F ; _
		.BYTE $AF ; Ø
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	7
		.BYTE $F3 ; Û
		.BYTE $1A
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	2
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $8A ; ä
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $85 ; Ö
		.BYTE $15
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE  $E
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	7
		.BYTE $94 ; î
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	9
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $15
		.BYTE $1B
		.BYTE $17
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $19
		.BYTE $15
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $90 ; ê
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $15
		.BYTE	5
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE	1
		.BYTE $45 ; E
		.BYTE $1B
		.BYTE $20
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $CF ; œ
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $53 ; S
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE	1
		.BYTE $1B
		.BYTE	9
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE $14
		.BYTE $38 ; 8
		.BYTE $1B
		.BYTE  $E
		.BYTE $3A ; :
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $35 ; 5
		.BYTE	4
		.BYTE	4
		.BYTE $E2 ; ‚
		.BYTE $E4 ; ‰
		.BYTE $E6 ; Ê
		.BYTE $E8 ; Ë
		.BYTE $EC ; Ï
		.BYTE $EE ; Ó
		.BYTE $EE ; Ó
		.BYTE  $F
		.BYTE  $F
		.BYTE $1B
		.BYTE	9
		.BYTE	4
		.BYTE $1B
		.BYTE	3
		.BYTE	6
		.BYTE $1B
		.BYTE	3
		.BYTE	8
		.BYTE $1B
		.BYTE	3
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE  $C
		.BYTE $1B
		.BYTE $13
		.BYTE $2C ; ,
		.BYTE $2D ; -
		.BYTE $2D ; -
		.BYTE $2C ; ,
		.BYTE $2C ; ,
		.BYTE $38 ; 8
		.BYTE $39 ; 9
		.BYTE $38 ; 8
		.BYTE $38 ; 8
		.BYTE $1B
		.BYTE	7
		.BYTE  $F
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $1C
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $42 ; B
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $1C
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $EB ; Î
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $E1 ; ·
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $E1 ; ·
		.BYTE $FF
		.BYTE $88 ; à
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $E0 ; ‡
		.BYTE	0
		.BYTE	8
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $E8 ; Ë
		.BYTE	0
		.BYTE	8
		.BYTE $40 ; @
		.BYTE $47 ; G
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	8
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $BF ; ø
		.BYTE $7E ; ~
		.BYTE	8
		.BYTE $77 ; w
		.BYTE	8
		.BYTE $78 ; x
		.BYTE	0
		.BYTE	0
		.BYTE $3E ; >
		.BYTE	7
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $3E ; >
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $38 ; 8
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE	0
		.BYTE $F8 ; ¯
		.BYTE	7
		.BYTE	0
		.BYTE $3A ; :
		.BYTE $35 ; 5
		.BYTE  $C
		.BYTE $9C ; ú
		.BYTE  $A
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
; end of 'RAM'


		.END
