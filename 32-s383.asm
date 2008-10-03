
;		.ORG	$7600
		.BYTE $11
; ---------------------------------------------------------------------------
		JMP	loc_7611
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_8479
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		JSR	$184E
		RTS
; ---------------------------------------------------------------------------

loc_7611:				; CODE XREF: RAM:7601j
		LDA	#$FF
		STA	$1937
		LDX	#4

loc_7618:				; CODE XREF: RAM:761Fj
		LDA	$6318,X
		STA	$750D,X
		DEX
		BPL	loc_7618
		LDA	#$49 ; 'I'
		STA	$1977
		LDA	#$76 ; 'v'
		STA	$1978
		LDA	#$50 ; 'P'
		STA	$16
		LDA	#$7D ; '}'
		STA	$17
		JSR	$184B
		LDA	$1933
		STA	$65
		LDA	#$F5 ; 'ı'
		STA	7
		LDA	#$85 ; 'Ö'
		STA	8
		LDA	#2
		JSR	$180F
		RTS
; ---------------------------------------------------------------------------

loc_7649:				; CODE XREF: RAM:767Fj	RAM:771Aj ...
		LDA	#$52 ; 'R'
		STA	$16
		LDA	#$7D ; '}'
		STA	$17
		LDX	$65
		JSR	$1851

loc_7656:				; CODE XREF: RAM:766Fj
		LDA	#$66 ; 'f'
		STA	$1977
		LDA	#$76 ; 'v'
		STA	$1978
		JMP	$1806
; ---------------------------------------------------------------------------
		JMP	loc_76B6
; ---------------------------------------------------------------------------
		JSR	$1821
		AND	#2
		BNE	loc_7681
		LDA	$31
		BMI	loc_7656
		CMP	#'1'
		BEQ	loc_7692
		CMP	#'2'
		BEQ	loc_76A4
		CMP	#'3'
		BEQ	loc_76B6
		CMP	#'0'
		BNE	loc_7649

loc_7681:				; CODE XREF: RAM:766Bj
		LDX	#4

loc_7683:				; CODE XREF: RAM:768Aj
		LDA	$750D,X
		STA	$6313,X
		DEX
		BPL	loc_7683
		STX	$AC00
		JMP	$180C
; ---------------------------------------------------------------------------

loc_7692:				; CODE XREF: RAM:7673j
		LDA	#$D8 ; 'ÿ'
		STA	loc_773F+1
		LDA	#$78 ; 'x'
		STA	loc_773F+2
		LDX	#$7D ; '}'
		LDY	#$27 ; '''
		LDA	#8
		BNE	loc_76C6

loc_76A4:				; CODE XREF: RAM:7677j
		LDA	#$AD ; '≠'
		STA	loc_773F+1
		LDA	#$78 ; 'x'
		STA	loc_773F+2
		LDX	#$7D ; '}'
		LDY	#$20 ; ' '
		LDA	#4
		BNE	loc_76C6

loc_76B6:				; CODE XREF: RAM:7663j	RAM:767Bj
		LDA	#$BD ; 'Ω'
		STA	loc_773F+1
		LDA	#$77 ; 'w'
		STA	loc_773F+2
		LDA	#0
		LDX	#$7D ; '}'
		LDY	#$2F ; '/'

loc_76C6:				; CODE XREF: RAM:76A2j	RAM:76B4j
		STX	$6A
		STY	$69
		STA	$68
		LDA	#0
		STA	$66
		LDX	#$3F ; '?'

loc_76D2:				; CODE XREF: RAM:7745j
		STX	$67
		LDA	$644B,X
		BEQ	loc_7742
		STA	$63
		LDA	$640B,X
		STA	$62
		LDY	#0
		LDA	($62),Y
		AND	#$87 ; 'á'
		CMP	#$84 ; 'Ñ'
		BEQ	loc_76EE
		CMP	#$83 ; 'É'
		BNE	loc_7742

loc_76EE:				; CODE XREF: RAM:76E8j	RAM:76F4j
		LDA	($62),Y
		STA	$7BD2,Y
		INY
		BNE	loc_76EE
		INC	$66

loc_76F8:				; CODE XREF: RAM:7726j
		LDA	#$8B ; 'ã'
		STA	$16
		LDA	#$82 ; 'Ç'
		STA	$17
		LDX	$65
		JSR	$1851

loc_7705:				; CODE XREF: RAM:7714j
		LDA	#$12
		STA	$1977
		LDA	#$77 ; 'w'
		STA	$1978
		JMP	$1806
; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_7705
		CMP	#$1B
		BNE	loc_771D
		JMP	loc_7649
; ---------------------------------------------------------------------------

loc_771D:				; CODE XREF: RAM:7718j
		JSR	$183F
		CMP	#$4E ; 'N'
		BEQ	loc_7742
		CMP	#$59 ; 'Y'
		BNE	loc_76F8
		LDA	$68
		STA	2
		LDA	#0
		STA	3
		JSR	sub_7B60
		BCC	loc_773F
		LDX	#$81 ; 'Å'
		LDY	#$54 ; 'T'
		JSR	sub_7AC5
		JMP	loc_7649
; ---------------------------------------------------------------------------

loc_773F:				; CODE XREF: RAM:7733j
					; DATA XREF: RAM:7694w	...
		JSR	$FFFF

loc_7742:				; CODE XREF: RAM:76D7j	RAM:76ECj ...
		LDX	$67
		DEX
		BPL	loc_76D2
		LDA	$66
		BEQ	loc_774E
		JMP	loc_7649
; ---------------------------------------------------------------------------

loc_774E:				; CODE XREF: RAM:7749j
		LDX	#$82 ; 'Ç'
		LDY	#$55 ; 'U'
		JSR	sub_7AC5
		JMP	loc_7649

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7758:				; CODE XREF: sub_7758:loc_77BDp
					; sub_7758+180p
		LDA	#$D2 ; '“'
		STA	$62
		LDA	#0
		STA	$6F
		LDA	off_7BD8
		CMP	#$7F ; ''
		BNE	loc_776B
		LDA	#1
		STA	$6F

loc_776B:				; CODE XREF: sub_7758+Dj
		LDA	#$7B ; '{'
		STA	$63
		CLC
		LDA	byte_7BD7
		ADC	$62
		STA	$62
		BCC	loc_777B
		INC	$63

loc_777B:				; CODE XREF: sub_7758+1Fj sub_7758+5Cj ...
		LDY	#0
		LDA	($62),Y
		AND	#$87 ; 'á'
		BEQ	loc_77BA
		CMP	#$83 ; 'É'
		BNE	loc_7790
		LDA	$6F
		ORA	#4
		STA	$6F
		JMP	loc_77AD
; ---------------------------------------------------------------------------

loc_7790:				; CODE XREF: sub_7758+2Dj
		CMP	#$84 ; 'Ñ'
		BNE	loc_779A
		LDA	#2
		ORA	$6F
		STA	$6F

loc_779A:				; CODE XREF: sub_7758+3Aj
		LDY	#0
		LDA	($62),Y
		CMP	#$F0 ; ''
		BCC	loc_77AD
		CLC
		LDA	$62
		ADC	#$10
		STA	$62
		BCC	loc_77AD
		INC	$63

loc_77AD:				; CODE XREF: sub_7758+35j sub_7758+48j ...
		LDA	$62
		CLC
		ADC	#$10
		STA	$62
		BCC	loc_777B
		INC	$63
		BCC	loc_777B

loc_77BA:				; CODE XREF: sub_7758+29j
		JMP	loc_79A1
; ---------------------------------------------------------------------------

loc_77BD:				; CODE XREF: sub_7758+DCj
		JSR	sub_7758
		LSR	$6F
		BCC	loc_77CB
		LDX	#$7E ; '~'
		LDY	#$15
		JMP	sub_7AC5
; ---------------------------------------------------------------------------

loc_77CB:				; CODE XREF: sub_7758+6Aj sub_7758+CEj ...
		LDX	#$7E ; '~'
		LDY	#$31 ; '1'
		LDA	byte_7BD2
		AND	#7
		CMP	#3
		BEQ	loc_77DC
		LDX	#$7F ; ''
		LDY	#$1F

loc_77DC:				; CODE XREF: sub_7758+7Ej
		STX	$17
		STY	$16
		LDX	$65
		JSR	$1851

loc_77E5:				; CODE XREF: sub_7758+AEj
		LDX	$65
		STX	$1933
		JSR	$1848

loc_77ED:				; CODE XREF: sub_7758+A5j
		LDA	#$FB ; '˚'
		STA	$1977
		LDA	#$77 ; 'w'
		STA	$1978
		JMP	$1806
; ---------------------------------------------------------------------------

locret_77FA:				; CODE XREF: sub_7758+AAj
		RTS
; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_77ED
		SEC
		SBC	#$30 ; '0'
		BEQ	locret_77FA
		CMP	#6
		BCS	loc_77E5
		TAX
		STX	$6E
		LDA	$7BCA,X
		STA	$6D

loc_7810:				; CODE XREF: sub_7758+CAj
		LDA	#$EF ; 'Ô'
		STA	$16
		LDA	#$7F ; ''
		STA	$17
		LDX	$65
		JSR	$1851
		JSR	$18AE
		LDA	3
		BNE	loc_7810
		LDA	2
		BEQ	loc_77CB
		SEC
		SBC	$6D
		BCS	loc_7837
		LDX	#$80 ; 'Ä'
		LDY	#$4D ; 'M'
		JSR	sub_7AC5
		JMP	loc_77BD
; ---------------------------------------------------------------------------

loc_7837:				; CODE XREF: sub_7758+D3j
		STA	$6D
		LDA	$63BE
		SEC
		SBC	2
		BCS	loc_784B
		LDX	#$81 ; 'Å'
		LDY	#$B5 ; 'µ'
		JSR	sub_7AC5
		JMP	loc_77CB
; ---------------------------------------------------------------------------

loc_784B:				; CODE XREF: sub_7758+E7j
		STA	$63BE
		LDA	#0
		SEC
		SBC	$64E4
		STA	7
		LDA	#$75 ; 'u'
		SBC	$64E5
		BNE	loc_786A
		LDA	7
		CMP	#$10
		BCS	loc_786A
		LDX	#$7F ; ''
		LDY	#6
		JMP	sub_7AC5
; ---------------------------------------------------------------------------

loc_786A:				; CODE XREF: sub_7758+103j
					; sub_7758+109j
		JSR	loc_7972
		LDX	$6E
		LDA	$7CD6,X
		STA	loc_787B+2
		LDA	$7CD1,X
		STA	loc_787B+1

loc_787B:				; DATA XREF: sub_7758+120w
					; sub_7758+11Aw
		JSR	$FFFF
		LDA	$67
		JSR	$188A
		LDY	#0

loc_7885:				; CODE XREF: sub_7758+136j
		LDA	$7BD2,Y
		STA	$7BD0,Y
		INY
		CPY	#6
		BNE	loc_7885
		LDA	#$7F ; ''
		STA	byte_7BD6
		LDA	#$20 ; ' '
		STA	byte_7BD7
		INC	byte_7BD1
		INC	byte_7BD5
		INC	byte_7BD1
		INC	byte_7BD5
		LDX	#$7B ; '{'
		LDY	#$D0 ; '–'
		JMP	$1884
; ---------------------------------------------------------------------------
		JSR	loc_796B
		LDY	#$10
		LDA	byte_7BD2
		AND	#7
		CMP	#3
		BEQ	loc_78BD
		LDY	#$D

loc_78BD:				; CODE XREF: sub_7758+161j
		LDA	($43),Y
		DEY
		STA	($43),Y
		RTS
; ---------------------------------------------------------------------------

loc_78C3:				; CODE XREF: sub_7758+1B6j
		LDY	#$B
		JSR	loc_793C
		LDX	#$83 ; 'É'
		LDY	#$B

loc_78CC:				; CODE XREF: sub_7758+1E1j
		STX	$17
		STY	$16
		LDX	$65
		JSR	$1851
		JMP	$183C
; ---------------------------------------------------------------------------
		JSR	sub_7758
		LSR	$6F
		BCC	loc_78E6
		LDX	#$80 ; 'Ä'
		LDY	#$8F ; 'è'
		JSR	sub_7AC5

loc_78E6:				; CODE XREF: sub_7758+185j
		LSR	$6F
		BCC	loc_78F1
		LDX	#$80 ; 'Ä'
		LDY	#$AD ; '≠'
		JSR	sub_7AC5

loc_78F1:				; CODE XREF: sub_7758+190j
		LSR	$6F
		BCC	loc_78FC
		LDX	#$80 ; 'Ä'
		LDY	#$74 ; 't'
		JSR	sub_7AC5

loc_78FC:				; CODE XREF: sub_7758+19Bj
		LSR	$6F
		BCC	loc_7907
		LDX	#$80 ; 'Ä'
		LDY	#$DD ; '›'
		JSR	sub_7AC5

loc_7907:				; CODE XREF: sub_7758+1A6j
		LDA	byte_7BD2
		AND	#7
		CMP	#4
		BEQ	loc_78C3
		LDY	#$B
		LDA	$6359
		CMP	($62),Y
		BCS	loc_7920
		LDX	#$81 ; 'Å'
		LDY	#$7D ; '}'
		JSR	sub_7AC5

loc_7920:				; CODE XREF: sub_7758+1BFj
		LDY	#$C
		LDA	$6371
		CMP	($62),Y
		BCS	loc_7930
		LDX	#$81 ; 'Å'
		LDY	#$E6 ; 'Ê'
		JSR	sub_7AC5

loc_7930:				; CODE XREF: sub_7758+1CFj
		LDY	#$D
		JSR	loc_793C
		LDX	#$82 ; 'Ç'
		LDY	#$DA ; '⁄'
		JMP	loc_78CC
; ---------------------------------------------------------------------------

loc_793C:				; CODE XREF: sub_7758+16Dp
					; sub_7758+1DAp
		LDA	($62),Y
		CMP	#$FF
		BNE	loc_7949
		LDX	#$82 ; 'Ç'
		LDY	#$36 ; '6'
		JMP	loc_7968
; ---------------------------------------------------------------------------

loc_7949:				; CODE XREF: sub_7758+1E8j
		INY
		CMP	($62),Y
		BNE	loc_7955
		LDX	#$81 ; 'Å'
		LDY	#$17
		JMP	loc_7968
; ---------------------------------------------------------------------------

loc_7955:				; CODE XREF: sub_7758+1F4j
		STA	7
		LDA	#0
		STA	8
		STA	3
		LDA	#$64 ; 'd'
		STA	2
		JSR	$18A2
		LDX	#$81 ; 'Å'
		LDY	#$3D ; '='

loc_7968:				; CODE XREF: sub_7758+1EEj
					; sub_7758+1FAj
		JMP	sub_7AC5
; ---------------------------------------------------------------------------

loc_796B:				; CODE XREF: sub_7758+155p
		LDA	$67
		STA	$4B
		JMP	$1896
; ---------------------------------------------------------------------------

loc_7972:				; CODE XREF: sub_7758:loc_786Ap
		LDA	#$D2 ; '“'
		CLC
		ADC	byte_7BD7
		STA	$62
		LDA	#$7B ; '{'
		ADC	#0
		STA	$63
		LDY	#0

loc_7982:				; CODE XREF: sub_7758+243j
					; sub_7758+247j
		LDA	($62),Y
		BEQ	loc_79A1
		CMP	#$F0 ; ''
		BCC	loc_7995
		LDA	$62
		ADC	#$F
		STA	$62
		BCC	loc_7995
		INC	$63
		CLC

loc_7995:				; CODE XREF: sub_7758+230j
					; sub_7758+238j
		LDA	$62
		ADC	#$10
		STA	$62
		BCC	loc_7982
		INC	$63
		BNE	loc_7982

loc_79A1:				; CODE XREF: sub_7758:loc_77BAj
					; sub_7758+22Cj
		LDA	byte_7BD2
		AND	#7
		CMP	#3
		BEQ	loc_79B6
		LDA	#2

loc_79AC:				; CODE XREF: sub_7758+26Ej
		CLC
		ADC	$62
		STA	$62
		BCC	locret_79B5
		INC	$63

locret_79B5:				; CODE XREF: sub_7758+259j
					; sub_7758+281j
		RTS
; ---------------------------------------------------------------------------

loc_79B6:				; CODE XREF: sub_7758+250j
		LDY	#$12
		LDA	($62),Y
		AND	#$40 ; '@'
		BEQ	loc_79C4
		LDA	#8
		ORA	$6F
		STA	$6F

loc_79C4:				; CODE XREF: sub_7758+264j
		LDA	#3
		BNE	loc_79AC
		LDY	#$C
		LDA	byte_7BD2
		AND	#7
		CMP	#4
		BEQ	loc_79D5
		LDY	#$E

loc_79D5:				; CODE XREF: sub_7758+279j
		LDA	($62),Y
		CMP	#3
		BCC	locret_79B5
		LDX	#$14
		JSR	loc_7AA7
		ADC	#5
		ADC	($62),Y
		BCC	loc_79E8
		LDA	#$FF

loc_79E8:				; CODE XREF: sub_7758+28Cj
		STA	($62),Y
		DEY
		STA	($62),Y
		RTS
; End of function sub_7758

; ---------------------------------------------------------------------------
		LDA	$6D
		SEC
		SBC	#$A
		BCS	loc_7A1E
		LDX	#9
		JSR	loc_7AA7
		ADC	#3
		STA	$6F
		LDX	#8

loc_7A00:				; CODE XREF: RAM:7A1Bj
		LDY	#$A

loc_7A02:				; CODE XREF: RAM:7A18j
		LDA	($62),Y
		BEQ	loc_7A17
		AND	#$F
		CMP	#$F
		BEQ	loc_7A17
		CLC
		LDA	($62),Y
		ADC	#1
		STA	($62),Y
		DEC	$6F
		BEQ	locret_7A1D

loc_7A17:				; CODE XREF: RAM:7A04j	RAM:7A0Aj
		DEY
		BPL	loc_7A02
		DEX
		BNE	loc_7A00

locret_7A1D:				; CODE XREF: RAM:7A15j
		RTS
; ---------------------------------------------------------------------------

loc_7A1E:				; CODE XREF: RAM:79F3j
		STA	$6D
		LDX	#3
		JSR	loc_7AA7
		ADC	#1
		STA	$6F
		LDX	#8

loc_7A2B:				; CODE XREF: RAM:7A40j
		LDY	#$A

loc_7A2D:				; CODE XREF: RAM:7A3Dj
		LDA	($62),Y
		BEQ	loc_7A3C
		CLC
		ADC	#$10
		BCS	loc_7A3C
		STA	($62),Y
		DEC	$6F
		BEQ	locret_7A42

loc_7A3C:				; CODE XREF: RAM:7A2Fj	RAM:7A34j
		DEY
		BPL	loc_7A2D
		DEX
		BNE	loc_7A2B

locret_7A42:				; CODE XREF: RAM:7A3Aj	RAM:7A47j
		RTS
; ---------------------------------------------------------------------------
		LDA	byte_7BD6
		LSR	A
		BEQ	locret_7A42
		TAX
		JSR	loc_7AA7
		STA	$6F
		LDA	byte_7BD6
		SEC
		SBC	$6F
		STA	byte_7BD6
		RTS
; ---------------------------------------------------------------------------
		LDA	$D20A
		AND	#3
		TAX
		LDA	$7CD2,X
		STA	loc_7A7D+1
		LDA	$7CD7,X
		STA	loc_7A7D+2
		LDA	$D20A
		AND	#3
		TAX
		LDA	unk_7CD2,X
		STA	loc_7A80+1
		LDA	unk_7CD7,X
		STA	loc_7A80+2

loc_7A7D:				; DATA XREF: RAM:7A62w	RAM:7A68w
		JSR	$FFFF

loc_7A80:				; DATA XREF: RAM:7A74w	RAM:7A7Aw
		JMP	$FFFF
; ---------------------------------------------------------------------------
		LDX	#2
		JSR	loc_7AA7
		ADC	#1
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	$6F
		LDX	#7
		JSR	loc_7AA7
		ORA	$6F
		STA	$6F
		LDA	$D20A
		AND	#3
		CLC
		ADC	#2
		TAY
		LDA	$6F
		STA	($62),Y
		RTS
; ---------------------------------------------------------------------------

loc_7AA7:				; CODE XREF: sub_7758+285p RAM:79F7p ...
		LDA	#0
		STA	loc_7AC2+1
		LDA	$6D
		PHA

loc_7AAF:				; CODE XREF: RAM:7ABDj
		TXA
		JSR	$1899
		CMP	loc_7AC2+1
		BCC	loc_7ABB
		STA	loc_7AC2+1

loc_7ABB:				; CODE XREF: RAM:7AB6j
		DEC	$6D
		BPL	loc_7AAF
		PLA
		STA	$6D

loc_7AC2:				; DATA XREF: RAM:7AA9w	RAM:7AB3r ...
		LDA	#$FF
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7AC5:				; CODE XREF: RAM:7739p	RAM:7752p ...
		STX	$17
		STY	$16
		LDX	$65
		JSR	$1851
		LDA	#$A
		JMP	$185A
; End of function sub_7AC5

; ---------------------------------------------------------------------------

loc_7AD3:				; DATA XREF: RAM:8393o	RAM:839Eo
		LDY	byte_83A0
		BPL	loc_7AE6
		LDY	#$A
		STY	byte_83A0
		LDA	#$95 ; 'ï'
		STA	$16
		LDA	#$83 ; 'É'
		STA	$17
		RTS
; ---------------------------------------------------------------------------

loc_7AE6:				; CODE XREF: RAM:7AD6j
		LDA	$7CF8,Y
		STA	byte_8397
		LDA	$7D03,Y
		STA	byte_8398
		LDX	#4
		LDA	($62),Y
		BEQ	loc_7B25
		DEX
		CMP	#$FF
		BEQ	loc_7B25
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	byte_7BD2
		LSR	A
		PHP
		LDA	($62),Y
		AND	#$F
		CLC
		STA	7
		LDA	#0

loc_7B10:				; CODE XREF: RAM:7B13j
		ADC	7
		DEX
		BNE	loc_7B10
		LSR	A
		LDX	#0
		PLP
		BCS	loc_7B3C

loc_7B1B:				; CODE XREF: RAM:7B23j
		CMP	$7CF4,X
		BCC	loc_7B25
		BEQ	loc_7B25
		INX
		BNE	loc_7B1B

loc_7B25:				; CODE XREF: RAM:7AF6j	RAM:7AFBj ...
		LDA	$7CEA,X
		STA	$6B
		LDA	$7CEF,X
		STA	$6C

loc_7B2F:				; CODE XREF: RAM:7B50j
		DEY
		STY	byte_83A0
		LDA	#$96 ; 'ñ'
		STA	$16
		LDA	#$83 ; 'É'
		STA	$17
		RTS
; ---------------------------------------------------------------------------

loc_7B3C:				; CODE XREF: RAM:7B19j	RAM:7B44j
		CMP	$7CDC,X
		BCC	loc_7B46
		BEQ	loc_7B46
		INX
		BNE	loc_7B3C

loc_7B46:				; CODE XREF: RAM:7B3Fj	RAM:7B41j
		LDA	unk_7CE0,X
		STA	$6B
		LDA	unk_7CE5,X
		STA	$6C
		JMP	loc_7B2F
; ---------------------------------------------------------------------------

loc_7B53:				; DATA XREF: RAM:82A9o
		LDA	$68
		BNE	locret_7B5F
		LDA	#$CC ; 'Ã'
		STA	$16
		LDA	#$82 ; 'Ç'
		STA	$17

locret_7B5F:				; CODE XREF: RAM:7B55j
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7B60:				; CODE XREF: RAM:7730p
		LDY	#3

loc_7B62:				; CODE XREF: sub_7B60+9j
		LDA	$63B1,Y
		STA	$7BC7,Y
		DEY
		BPL	loc_7B62

loc_7B6B:				; CODE XREF: sub_7B60:loc_7B9Dj
		LDA	byte_7BCA
		CMP	2
		LDA	byte_7BC9
		SBC	3
		BCS	loc_7BA0
		LDA	byte_7BC8
		ORA	byte_7BC7
		BNE	loc_7B81
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_7B81:				; CODE XREF: sub_7B60+1Dj
		LDA	byte_7BC8
		SEC
		SBC	#1
		STA	byte_7BC8
		BCS	loc_7B8F
		DEC	byte_7BC7

loc_7B8F:				; CODE XREF: sub_7B60+2Aj
		LDA	#$A
		CLC
		ADC	byte_7BCA
		STA	byte_7BCA
		BCC	loc_7B9D
		INC	byte_7BC9

loc_7B9D:				; CODE XREF: sub_7B60+38j
		JMP	loc_7B6B
; ---------------------------------------------------------------------------

loc_7BA0:				; CODE XREF: sub_7B60+15j
		LDA	byte_7BCA
		SEC
		SBC	2
		STA	byte_7BCA
		LDA	byte_7BC9
		SBC	3
		STA	byte_7BC9
		LDY	#3

loc_7BB3:				; CODE XREF: sub_7B60+5Aj
		LDA	$7BC7,Y
		STA	$63B1,Y
		DEY
		BPL	loc_7BB3
		CLC
		RTS
; End of function sub_7B60

; ---------------------------------------------------------------------------

loc_7BBE:				; DATA XREF: RAM:800Co	RAM:82B9o
		LDA	#$FF
; ---------------------------------------------------------------------------
		.BYTE $2C
; ---------------------------------------------------------------------------

loc_7BC1:				; DATA XREF: RAM:802Bo	RAM:82C0o
		LDA	#0
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------
byte_7BC7:	.BYTE 0			; DATA XREF: sub_7B60+1Ar sub_7B60+2Cw
byte_7BC8:	.BYTE $FF		; DATA XREF: sub_7B60+17r
					; sub_7B60:loc_7B81r ...
byte_7BC9:	.BYTE 0			; DATA XREF: sub_7B60+10r sub_7B60+3Aw ...
byte_7BCA:	.BYTE $FF		; DATA XREF: sub_7B60:loc_7B6Br
					; sub_7B60+32r	...
		.BYTE	7
		.BYTE $14
		.BYTE  $F
		.BYTE	5
		.BYTE $23 ; #
		.BYTE $FF
byte_7BD1:	.BYTE 0			; DATA XREF: sub_7758+142w
					; sub_7758+148w
byte_7BD2:	.BYTE $FF		; DATA XREF: sub_7758+77r
					; sub_7758+15Ar ...
		.BYTE	0
		.BYTE $FF
byte_7BD5:	.BYTE 0			; DATA XREF: sub_7758+145w
					; sub_7758+14Bw
byte_7BD6:	.BYTE $FF		; DATA XREF: sub_7758+13Aw RAM:7A43r ...
byte_7BD7:	.BYTE 0			; DATA XREF: sub_7758+18r
					; sub_7758+13Fw ...
off_7BD8:	.WORD $FF		; DATA XREF: sub_7758+8r RAM:807Do ...
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
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
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
unk_7CD2:	.BYTE $C8 ; »		; DATA XREF: RAM:7A71r
		.BYTE $EE ; Ó
		.BYTE $83 ; É
		.BYTE $43 ; C
		.BYTE $59 ; Y
unk_7CD7:	.BYTE $79 ; y		; DATA XREF: RAM:7A77r
		.BYTE $79 ; y
		.BYTE $7A ; z
		.BYTE $7A ; z
		.BYTE $7A ; z
		.BYTE  $A
		.BYTE $14
		.BYTE $1E
		.BYTE $FF
unk_7CE0:	.BYTE  $E		; DATA XREF: RAM:loc_7B46r
		.BYTE $12
		.BYTE $16
		.BYTE $1B
		.BYTE $4B ; K
unk_7CE5:	.BYTE $7D ; }		; DATA XREF: RAM:7B4Br
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $37 ; 7
		.BYTE $3C ; <
		.BYTE $41 ; A
		.BYTE $46 ; F
		.BYTE $4B ; K
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE	2
		.BYTE	5
		.BYTE  $A
		.BYTE $FF
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE $14
		.BYTE $14
		.BYTE $14
		.BYTE $14
		.BYTE $21 ; !
		.BYTE $21 ; !
		.BYTE $21 ; !
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	3
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	3
		.BYTE	4
		.BYTE	5
aLow:		.BYTE 'low',0
aMed:		.BYTE 'med',0
aHigh:		.BYTE 'high',0
aVHi:		.BYTE 'v hi',0
aRepair:	.BYTE 'repair',0
aExamine:	.BYTE 'examine',0
aEnchant:	.BYTE 'enchant',0
aPoor:		.BYTE 'poor',0
aFair:		.BYTE 'fair',0
aGood:		.BYTE 'good',0
aXlnt:		.BYTE 'xlnt',0
aNone:		.BYTE 'none',0
		.BYTE $A8,$FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aWelcome:	.BYTE 'Welcome '
		.BYTE $B3
		.WORD $6321
		.BYTE $14
		.BYTE '!'
		.BYTE $D
		.BYTE $A5
aIAmTheEnchantr:.BYTE 'I am the Enchantress.'
		.BYTE $D
		.BYTE $A5
aWhatWouldTheeA:.BYTE 'What would thee ask of me?'
		.BYTE $D
		.BYTE $A6,  5,	3
		.BYTE '('
		.BYTE $A1
a1:		.BYTE '1'
		.BYTE $A0
aExamineThyWeap:.BYTE ') Examine thy weapons and armor'
		.BYTE $A6,  5,	4
		.BYTE '('
		.BYTE $A1
a2:		.BYTE '2'
		.BYTE $A0
aRepairAWeaponO:.BYTE ') Repair a weapon or armor'
		.BYTE $A6,  5,	5
		.BYTE '('
		.BYTE $A1
a3:		.BYTE '3'
		.BYTE $A0
aEnchantAWeapon:.BYTE ') Enchant a weapon or armor'
		.BYTE $A6,  5,	7
		.BYTE '('
		.BYTE $A1
a0:		.BYTE '0'
		.BYTE $A0
aSayGoodbye:	.BYTE ') Say Goodbye'
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aItSAlreadyEnha:.BYTE 'It',$27,'s already enhanced!'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aWhatShallIDo?:	.BYTE 'What shall I do?'
		.BYTE $D
		.BYTE $A6,  5,	2
		.BYTE '('
		.BYTE $A1
a1_0:		.BYTE '1'
		.BYTE $A0
aExtendTheLifeO:.BYTE ') Extend the life of this weapon.'
		.BYTE $A6,  5,	3
		.BYTE '('
		.BYTE $A1
a2_0:		.BYTE '2'
		.BYTE $A0
aIncreaseItsEff:.BYTE ') Increase its effectiveness.'
		.BYTE $A6,  5,	4
		.BYTE '('
		.BYTE $A1
a3_0:		.BYTE '3'
		.BYTE $A0
aAddExtraDamage:.BYTE ') Add extra damage ability.'
		.BYTE $A6,  5,	5
		.BYTE '('
		.BYTE $A1
a4:		.BYTE '4'
		.BYTE $A0
aDecreaseItsWei:.BYTE ') Decrease its weight.'
		.BYTE $A6,  5,	6
		.BYTE '('
		.BYTE $A1
a5:		.BYTE '5'
		.BYTE $A0
aLetMeDecideWha:.BYTE ') Let me decide what',$27,'s best.'
		.BYTE $A6,  5,	7
		.BYTE '('
		.BYTE $A1
a0_0:		.BYTE '0'
		.BYTE $A0
aNothing_:	.BYTE ') Nothing.'
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aICanTEnchantIt:.BYTE 'I can',$27,'t enchant it!'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aWhatShallIDo_0:.BYTE 'What shall I do?'
		.BYTE $D
		.BYTE $A6,  5,	2
		.BYTE '('
		.BYTE $A1
a1_1:		.BYTE '1'
		.BYTE $A0
aExtendTheLif_0:.BYTE ') Extend the life of thine armor.'
		.BYTE $A6,  5,	3
		.BYTE '('
		.BYTE $A1
a2_1:		.BYTE '2'
		.BYTE $A0
aIncreaseItsE_0:.BYTE ') Increase its effectiveness.'
		.BYTE $A6,  5,	4
		.BYTE '('
		.BYTE $A1
a3_1:		.BYTE '3'
		.BYTE $A0
aAddExtraProtec:.BYTE ') Add extra protection.'
		.BYTE $A6,  5,	5
		.BYTE '('
		.BYTE $A1
a4_0:		.BYTE '4'
		.BYTE $A0
aDecreaseItsW_0:.BYTE ') Decrease its weight.'
		.BYTE $A6,  5,	6
		.BYTE '('
		.BYTE $A1
a5_0:		.BYTE '5'
		.BYTE $A0
aLetMeDecideW_0:.BYTE ') Let me decide what',$27,'s best.'
		.BYTE $A6,  5,	7
		.BYTE '('
		.BYTE $A1
a0_1:		.BYTE '0'
		.BYTE $A0
aNothing:	.BYTE ') Nothing'
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aThatWillCostAt:.BYTE 'That will cost at least',$D
		.BYTE $A3
		.WORD loc_7BBE
		.BYTE $A5
		.BYTE $B2
		.WORD $6D
		.BYTE 2
aCrystalsToPerf:.BYTE ' crystals to perform.'
		.BYTE $D
		.BYTE $D
		.BYTE $A3
		.WORD loc_7BC1
		.BYTE $A5
aHowManyDostTho:.BYTE 'How many dost thou offer?'
		.BYTE $D
		.BYTE $A6,$10,	5
		.BYTE '>'
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aIMSorryButThat:.BYTE 'I',$27,'m sorry, but that',$27,'s not enough.'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aThy:		.BYTE 'Thy '
		.BYTE $B3
		.WORD off_7BD8
		.BYTE $1E
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIsCursed:	.BYTE 'is cursed!'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aThy_0:		.BYTE 'Thy '
		.BYTE $B3
		.WORD off_7BD8
		.BYTE $1E
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIsEnchanted:	.BYTE 'is enchanted!'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aThereIsASpecia:.BYTE 'There is a special aura'
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAroundThy:	.BYTE 'around thy '
		.BYTE $B3
		.WORD off_7BD8
		.BYTE $1E
a_:		.BYTE '.'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aItTakesTwoHand:.BYTE 'It takes two hands to'
		.BYTE  $D, $D,$A5
aEffectivelyUse:.BYTE 'effectively use this weapon.'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aThy_1:		.BYTE 'Thy '
		.BYTE $B3
		.WORD off_7BD8
		.BYTE $1E
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIsInMintCondit:.BYTE 'is in mint condition!'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aThy_2:		.BYTE 'Thy '
		.BYTE $B3
		.WORD off_7BD8
		.BYTE $1E
aIsWorn:	.BYTE ' is worn!'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aIMSorryThouHas:.BYTE 'I',$27,'m sorry, thou hast not the funds.'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aThouArtNotStro:.BYTE 'Thou art not strong enough'
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aToUseThy:	.BYTE 'to use thy '
		.BYTE $B3
		.WORD off_7BD8
		.BYTE $1E
aWell_:		.BYTE ' well.'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aIMSorryButThou:.BYTE 'I',$27,'m sorry but thou hast'
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTooFewCrystals:.BYTE 'too few crystals.'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aThouDostNotPos:.BYTE 'Thou dost not possess the skill'
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aNecessaryToEff:.BYTE 'necessary to effectively use'
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThy_4:		.BYTE 'thy '
		.BYTE $B3
		.WORD $7BD8
		.BYTE $1E
a__0:		.BYTE '.'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aThy_3:		.BYTE 'Thy '
		.BYTE $B3
		.WORD off_7BD8
		.BYTE $1E
		.BYTE $D
		.BYTE $A5
aIsUnbreakable:	.BYTE 'is unbreakable!'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aThouHastNoWeap:.BYTE 'Thou hast no weapons and armor'
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aForMeTo:	.BYTE 'for me to '
		.BYTE $B4
		.WORD $69
		.BYTE $1E
a__1:		.BYTE '.'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aShallI:	.BYTE 'Shall I '
		.BYTE $B4
		.WORD $69
		.BYTE $27
aThy_5:		.BYTE ' thy'
		.BYTE $D
		.BYTE $A5
		.BYTE $B3
		.WORD off_7BD8
		.BYTE $27
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		.BYTE $A3
		.WORD loc_7B53
aItWillCost:	.BYTE 'It will cost '
		.BYTE $A3
		.WORD loc_7BBE
		.BYTE $B2
		.WORD $68
		.BYTE 3
		.BYTE $A3
		.WORD loc_7BC1
aSilvers?:	.BYTE ' silvers? ('
		.BYTE $A1
aY:		.BYTE 'Y'
		.BYTE $A0
aOr:		.BYTE ' or '
		.BYTE $A1
aN:		.BYTE 'N'
		.BYTE $A0
		.BYTE ')'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aThy_6:		.BYTE 'Thy '
		.BYTE $B3
		.WORD off_7BD8
		.BYTE $1E
aDoesThe:	.BYTE ' does the'
		.BYTE $D
		.BYTE $A5
aTheFollowingDa:.BYTE 'the following damage:'
		.BYTE $D
		.BYTE $D
		.BYTE $AC
		.WORD aBlunt		; "Blunt:"
		.BYTE $A6,  0,	0
		.BYTE $A5
aThy_7:		.BYTE 'Thy '
		.BYTE $B3
		.WORD off_7BD8
		.BYTE $1E
aProvides:	.BYTE ' provides '
		.BYTE $D
		.BYTE $A5
aTheFollowingPr:.BYTE 'the following protection:'
		.BYTE $D
		.BYTE $D
aBlunt:		.BYTE 'Blunt:'          ; DATA XREF: RAM:8309o
		.BYTE $D
aSharp:		.BYTE 'Sharp:'
		.BYTE $D
aEarth:		.BYTE 'Earth:'
		.BYTE $D
aAir:		.BYTE 'Air:'
		.BYTE $A6, $D,	3
aFire:		.BYTE 'Fire:'
		.BYTE $A6, $D,	4
aWater:		.BYTE 'Water:'
		.BYTE $A6, $D,	5
aPower:		.BYTE 'Power:'
		.BYTE $A6, $D,	6
aMagic:		.BYTE 'Magic:'
		.BYTE $A6,$1A,	3
aGood_0:	.BYTE 'Good:'
		.BYTE $A6,$1A,	4
aEvil:		.BYTE 'Evil:'
		.BYTE $A6,$1A,	5
aCold:		.BYTE 'Cold:'
		.BYTE $A3
		.WORD loc_7AD3
		.BYTE $FF
		.BYTE $A6 ; ¶
byte_8397:	.BYTE $FF		; DATA XREF: RAM:7AE9w
byte_8398:	.BYTE $FF		; DATA XREF: RAM:7AEFw
		.BYTE $B4
		.WORD $6B
		.BYTE $1E
		.BYTE $A3
		.WORD loc_7AD3
byte_83A0:	.BYTE $A		; DATA XREF: RAM:loc_7AD3r RAM:7ADAw ...
byte_83A1:	.BYTE $70		; DATA XREF: RAM:83D1o
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
		.WORD byte_83A1
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

loc_8437:				; CODE XREF: RAM:845Cj
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
		BPL	loc_8437
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

loc_8479:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$A1 ; '°'
		STA	$254
		LDA	#$83 ; 'É'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_848C:				; CODE XREF: RAM:849Aj
		LDY	#$C

loc_848E:				; CODE XREF: RAM:8495j
		STA	$BB4C,X
		DEX
		BMI	loc_849C
		DEY
		BNE	loc_848E
		CLC
		ADC	#4
		BNE	loc_848C

loc_849C:				; CODE XREF: RAM:8492j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_8594
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_8594
		LDA	#0
		STA	loc_84C2+1
		LDA	#$BD ; 'Ω'
		STA	loc_84C2+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_84C2:				; CODE XREF: RAM:84C6j	RAM:84CCj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_84C2
		INC	loc_84C2+2
		DEY
		BNE	loc_84C2
		LDX	#7

loc_84D0:				; CODE XREF: RAM:84D4j
		STA	$D000,X
		DEX
		BPL	loc_84D0
		LDA	#3
		TAX

loc_84D9:				; CODE XREF: RAM:84DDj
		STA	$D008,X
		DEX
		BPL	loc_84D9
		LDA	#$FF
		STA	$D00C
		LDA	#3
		STA	$D01D
		LDA	#$BC ; 'º'
		STA	$D407
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

loc_8507:				; CODE XREF: RAM:852Dj
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_850F:				; CODE XREF: RAM:851Aj
		LSR	4
		BCC	loc_8519
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_8519:				; CODE XREF: RAM:8511j
		DEY
		BPL	loc_850F
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_8527
		INC	$A

loc_8527:				; CODE XREF: RAM:8523j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_8507
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_853F:				; CODE XREF: RAM:8550j
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
		BCC	loc_853F

loc_8552:				; CODE XREF: RAM:856Fj
		LDX	#0

loc_8554:				; CODE XREF: RAM:856Dj
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_855A:				; CODE XREF: RAM:855Fj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_855A
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_8571
		CPX	#$A
		BCC	loc_8554
		BCS	loc_8552

loc_8571:				; CODE XREF: RAM:8569j
		LDX	#3
		LDA	$BC5F

loc_8576:				; CODE XREF: RAM:857Aj
		STA	$D012,X
		DEX
		BPL	loc_8576
		LDA	#$D3 ; '”'
		STA	$24A
		LDA	#$83 ; 'É'
		STA	$24B
		LDA	#$C0 ; '¿'
		STA	$D40E
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_8594:				; CODE XREF: RAM:84A4p	RAM:84AFp ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_859E
		INC	8

loc_859E:				; CODE XREF: RAM:859Aj
		CMP	#$1B
		BEQ	loc_85AD
		STA	(9),Y
		INC	9
		BNE	loc_85AA
		INC	$A

loc_85AA:				; CODE XREF: RAM:85A6j
		JMP	loc_8594
; ---------------------------------------------------------------------------

loc_85AD:				; CODE XREF: RAM:85A0j
		LDA	(7),Y
		INC	7
		BNE	loc_85B5
		INC	8

loc_85B5:				; CODE XREF: RAM:85B1j
		CMP	#$FF
		BNE	loc_85BA
		RTS
; ---------------------------------------------------------------------------

loc_85BA:				; CODE XREF: RAM:85B7j
		STA	byte_85F4
		ADC	9
		STA	loc_85CD+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_85D2
		LDA	byte_85F4

loc_85CD:				; DATA XREF: RAM:85BFw
		SBC	#$FF
		STA	byte_85F4

loc_85D2:				; CODE XREF: RAM:85C8j
		LDA	(7),Y
		INC	7
		BNE	loc_85DA
		INC	8

loc_85DA:				; CODE XREF: RAM:85D6j
		LDY	byte_85F4

loc_85DD:				; CODE XREF: RAM:85E0j
		STA	(9),Y
		DEY
		BPL	loc_85DD
		INC	byte_85F4
		LDA	byte_85F4
		CLC
		ADC	9
		STA	9
		BCC	loc_85F1
		INC	$A

loc_85F1:				; CODE XREF: RAM:85EDj
		JMP	loc_8594
; ---------------------------------------------------------------------------
byte_85F4:	.BYTE 0			; DATA XREF: RAM:loc_85BAw RAM:85CAr ...
		.BYTE $1B
		.BYTE $27 ; '
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE	3
		.BYTE $1B
		.BYTE  $A
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE  $B
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	9
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $FB ; ˚
		.BYTE $EA ; Í
		.BYTE $FB ; ˚
		.BYTE $FF
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	8
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F3 ; Û
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $F6 ; ˆ
		.BYTE $FF
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FE ; ˛
		.BYTE $F6 ; ˆ
		.BYTE $DA ; ⁄
		.BYTE $F6 ; ˆ
		.BYTE $FE ; ˛
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $9F ; ü
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE  $C
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE  $E
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $20
		.BYTE $50 ; P
		.BYTE $A0 ; †
		.BYTE $98 ; ò
		.BYTE $1B
		.BYTE $37 ; 7
		.BYTE	0
		.BYTE	3
		.BYTE $1B
		.BYTE	6
		.BYTE  $C
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	5
		.BYTE	3
		.BYTE  $F
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $F6 ; ˆ
		.BYTE $DA ; ⁄
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $9F ; ü
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	9
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	8
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $FF
		.BYTE $FF
		.BYTE $F6 ; ˆ
		.BYTE $DA ; ⁄
		.BYTE $6A ; j
		.BYTE $DA ; ⁄
		.BYTE $F6 ; ˆ
		.BYTE $F6 ; ˆ
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $7F ; 
		.BYTE $9F ; ü
		.BYTE $A7 ; ß
		.BYTE $9F ; ü
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FB ; ˚
		.BYTE $FF
		.BYTE $F3 ; Û
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $F2 ; Ú
		.BYTE $CA ;  
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $1A
		.BYTE $15
		.BYTE $15
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $28 ; (
		.BYTE $A2 ; ¢
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $9A ; ö
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $28 ; (
		.BYTE $A2 ; ¢
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $8F ; è
		.BYTE $2F ; /
		.BYTE $AF ; Ø
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	7
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	6
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE	1
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $64 ; d
		.BYTE $99 ; ô
		.BYTE $9A ; ö
		.BYTE $6A ; j
		.BYTE $54 ; T
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $1B
		.BYTE $37 ; 7
		.BYTE	0
		.BYTE  $C
		.BYTE  $C
		.BYTE $1B
		.BYTE	5
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	4
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE  $C
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $F6 ; ˆ
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $EF ; Ô
		.BYTE $67 ; g
		.BYTE $EF ; Ô
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $F3 ; Û
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	8
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $FB ; ˚
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $BC ; º
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1F
		.BYTE $1D
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $15
		.BYTE $3D ; =
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $99 ; ô
		.BYTE $69 ; i
		.BYTE $1B
		.BYTE	2
		.BYTE $57 ; W
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $BC ; º
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	4
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	5
		.BYTE  $C
		.BYTE $1B
		.BYTE $10
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE $74 ; t
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE $1B
		.BYTE	4
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE  $C
		.BYTE $1B
		.BYTE	3
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE  $F
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	9
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE $11
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $F7 ; ˜
		.BYTE $D9 ; Ÿ
		.BYTE $F7 ; ˜
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	8
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE  $B
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	8
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $FF
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $C5 ; ≈
		.BYTE $F1 ; Ò
		.BYTE $F1 ; Ò
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $5E ; ^
		.BYTE $7A ; z
		.BYTE $3A ; :
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $BF ; ø
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	3
		.BYTE  $C
		.BYTE $1B
		.BYTE	7
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE	5
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE  $C
		.BYTE $30 ; 0
		.BYTE $70 ; p
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE  $C
		.BYTE  $C
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE  $F
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE  $C
		.BYTE $FF
		.BYTE	0
		.BYTE	0
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
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	8
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE $8F ; è
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $54 ; T
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $69 ; i
		.BYTE $AA ; ™
		.BYTE $5A ; Z
		.BYTE $4A ; J
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $BA ; ∫
		.BYTE $BA ; ∫
		.BYTE $BE ; æ
		.BYTE $BE ; æ
		.BYTE $AE ; Æ
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE  $C
		.BYTE $C0 ; ¿
		.BYTE $F1 ; Ò
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	3
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE $15
		.BYTE $54 ; T
		.BYTE  $A
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $42 ; B
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	5
		.BYTE $95 ; ï
		.BYTE $94 ; î
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $15
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	1
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE $11
		.BYTE	0
		.BYTE	8
		.BYTE	8
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE	8
		.BYTE $1B
		.BYTE $26 ; &
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $30 ; 0
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE  $A
		.BYTE  $A
		.BYTE	2
		.BYTE $22 ; "
		.BYTE $30 ; 0
		.BYTE	2
		.BYTE $20
		.BYTE  $C
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $80 ; Ä
		.BYTE	8
		.BYTE $FF
		.BYTE $FF
		.BYTE $30 ; 0
		.BYTE  $C
		.BYTE $C0 ; ¿
		.BYTE	3
		.BYTE $30 ; 0
		.BYTE $80 ; Ä
		.BYTE $FF
		.BYTE $FF
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $51 ; Q
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	9
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	5
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $15
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	3
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $59 ; Y
		.BYTE $4A ; J
		.BYTE $82 ; Ç
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	2
		.BYTE $90 ; ê
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE  $A
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE $17
		.BYTE	0
		.BYTE	5
		.BYTE $15
		.BYTE $15
		.BYTE $1B
		.BYTE	4
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $40 ; @
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE $63 ; c
		.BYTE	0
		.BYTE	8
		.BYTE  $C
		.BYTE  $C
		.BYTE $3C ; <
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE	1
		.BYTE $1B
		.BYTE $1E
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE	3
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE  $C
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE  $C
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE	3
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE	3
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE	8
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE  $C
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE  $F
		.BYTE  $F
		.BYTE $8F ; è
		.BYTE $1B
		.BYTE	4
		.BYTE  $F
		.BYTE $C0 ; ¿
		.BYTE $CC ; Ã
		.BYTE $C2 ; ¬
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $CC ; Ã
		.BYTE $C0 ; ¿
		.BYTE	8
		.BYTE	2
		.BYTE $20
		.BYTE	0
		.BYTE $CC ; Ã
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $7E ; ~
		.BYTE $7A ; z
		.BYTE $DA ; ⁄
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $59 ; Y
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE  $C
		.BYTE $3C ; <
		.BYTE $3F ; ?
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $52 ; R
		.BYTE $50 ; P
		.BYTE $82 ; Ç
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $A5 ; •
		.BYTE $29 ; )
		.BYTE $29 ; )
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $65 ; e
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $7D ; }
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE $17
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AF ; Ø
		.BYTE $BE ; æ
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $15
		.BYTE	0
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $A5 ; •
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE  $C
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE  $F
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $A5 ; •
		.BYTE $C0 ; ¿
		.BYTE $C3 ; √
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $3C ; <
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $75 ; u
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	6
		.BYTE $50 ; P
		.BYTE $F0 ; 
		.BYTE $2A ; *
		.BYTE	5
		.BYTE	1
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $9A ; ö
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $BC ; º
		.BYTE $BC ; º
		.BYTE $9F ; ü
		.BYTE $53 ; S
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $1B
		.BYTE $1E
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE $1D
		.BYTE	0
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $A9 ; ©
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE  $A
		.BYTE $56 ; V
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $96 ; ñ
		.BYTE $A5 ; •
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $6A ; j
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $6A ; j
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	5
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE $2F ; /
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	5
		.BYTE	1
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE $48 ; H
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $F6 ; ˆ
		.BYTE $F8 ; ¯
		.BYTE $FA ; ˙
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE  $E
		.BYTE $C2 ; ¬
		.BYTE $1B
		.BYTE  $E
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	5
		.BYTE $24 ; $
		.BYTE $1B
		.BYTE	5
		.BYTE $C8 ; »
		.BYTE $1B
		.BYTE $17
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	2
		.BYTE $C2 ; ¬
		.BYTE $AE ; Æ
		.BYTE  $E
		.BYTE $C8 ; »
		.BYTE $1B
		.BYTE	4
		.BYTE $3C ; <
		.BYTE $C2 ; ¬
		.BYTE $C2 ; ¬
		.BYTE $1B
		.BYTE	2
		.BYTE $3C ; <
		.BYTE $F0 ; 
		.BYTE $84 ; Ñ
		.BYTE $84 ; Ñ
		.BYTE $82 ; Ç
		.BYTE $82 ; Ç
		.BYTE $32 ; 2
		.BYTE $34 ; 4
		.BYTE $34 ; 4
		.BYTE $36 ; 6
		.BYTE $36 ; 6
		.BYTE $38 ; 8
		.BYTE $38 ; 8
		.BYTE $36 ; 6
		.BYTE $1B
		.BYTE	6
		.BYTE $26 ; &
		.BYTE $1B
		.BYTE	5
		.BYTE $C2 ; ¬
		.BYTE $F2 ; Ú
		.BYTE $F4 ; Ù
		.BYTE $F6 ; ˆ
		.BYTE $F8 ; ¯
		.BYTE $FA ; ˙
		.BYTE $FC ; ¸
		.BYTE $C8 ; »
		.BYTE $1B
		.BYTE	3
		.BYTE $3C ; <
		.BYTE $84 ; Ñ
		.BYTE $1B
		.BYTE	2
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	3
		.BYTE $90 ; ê
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	4
		.BYTE $82 ; Ç
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $A0 ; †
		.BYTE	5
		.BYTE $FF
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $A0 ; †
		.BYTE	6
		.BYTE $FF
		.BYTE $FF
		.BYTE $8F ; è
		.BYTE $60 ; `
		.BYTE  $F
		.BYTE $FF
		.BYTE $FF
		.BYTE $C7 ; «
		.BYTE $F0 ; 
		.BYTE	4
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $CE ; Œ
		.BYTE $10
		.BYTE	7
		.BYTE  $E
		.BYTE  $E
		.BYTE	4
		.BYTE $E0 ; ‡
		.BYTE	4
		.BYTE $87 ; á
		.BYTE $B0 ; ∞
		.BYTE $80 ; Ä
		.BYTE $2E ; .
		.BYTE	1
		.BYTE $CB ; À
		.BYTE $F8 ; ¯
		.BYTE $BE ; æ
		.BYTE  $E
		.BYTE $3E ; >
		.BYTE	0
		.BYTE $1F
		.BYTE $FF
		.BYTE $8E ; é
		.BYTE $FF
		.BYTE $92 ; í
		.BYTE $BF ; ø
		.BYTE $B1 ; ±
		.BYTE $FF
		.BYTE $FF
		.BYTE $E0 ; ‡
		.BYTE $5D ; ]
		.BYTE $B9 ; π
		.BYTE $FF
		.BYTE $FF
		.BYTE $D5 ; ’
		.BYTE $DB ; -
		.BYTE	7
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FB ; ˚
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $1C
		.BYTE $7B ; {
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	0
		.BYTE $1B
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE $1B
		.BYTE	0
		.BYTE $1B
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	0
		.BYTE $1B
		.BYTE $E8 ; Ë
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	0
		.BYTE $1B
		.BYTE $F0 ; 
		.BYTE $3C ; <
		.BYTE $DD ; ›
		.BYTE $26 ; &
		.BYTE $9C ; ú
		.BYTE $C8 ; »
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
; end of 'RAM'


		.END
