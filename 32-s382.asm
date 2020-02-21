
		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;	.ORG	$100
	.SEGMENT "SEG_21_KEY"

	.BYTE	$55,$7e,$00,$18,$f5,$43,$0f,$e6,$e4,$7f,$e0,$66,$07,$cb,$bc,$b2
	.BYTE	$7e,$d8,$b1,$5d,$3f,$45,$a7,$d3,$2e,$7c,$ff,$9c,$3a,$ce,$7d,$b3
	.BYTE	$36,$3a,$f1,$da,$25,$20,$af,$30,$b9,$e2,$b4,$88,$42,$87,$1e,$f0
	.BYTE	$9c,$33,$50,$c9,$4b,$85,$13,$db,$80,$dd,$67,$20,$8a,$df,$c0,$0e
	.BYTE	$fa,$ef,$05,$2a,$70,$48,$b4,$c9,$5b,$8d,$a4,$08,$81,$03,$99,$56
	.BYTE	$25,$20,$52,$98,$0e,$b0,$03,$d8,$27,$f1,$f2,$86,$11,$7c,$bf,$d4
	.BYTE	$24,$4c,$1e,$98,$50,$96,$89,$47,$a1,$88,$a5,$cd,$e1,$75,$36,$fc
	.BYTE	$d6,$60,$09,$89,$1b,$0d,$22,$6c,$39,$65,$97,$90,$a2,$3c,$c2,$15


;		.ORG	$7600
	.SEGMENT "SEG_21"

		.BYTE	$11
; ---------------------------------------------------------------------------
		JMP	loc_7611
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_8479
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604^j	RAM:7607^j
		JSR	$184E
		RTS
; ---------------------------------------------------------------------------

loc_7611:				; CODE XREF: RAM:7601^j
		ldi	$1937, $FF
		LDX	#4

loc_7618:				; CODE XREF: RAM:761Fvj
		LDA	$6318,X
		STA	$750D,X
		DEX
		BPL	loc_7618
		dldi	off_1977, loc_7649
		dldi	off_16, byte_7D50
		JSR	$184B
		mv	$65, $1933
		dldi	off_7, $85F5
		LDA	#2
		JSR	$180F
		RTS
; ---------------------------------------------------------------------------

loc_7649:				; CODE XREF: RAM:767Fvj	RAM:771Avj ...
		dldi	off_16, a_Welcome
		LDX	$65
		JSR	j_sub_3C5C

loc_7656:				; CODE XREF: RAM:766Fvj
		dldi	off_1977, loc_7666
		JMP	$1806
; ---------------------------------------------------------------------------
		JMP	loc_76B6
; ---------------------------------------------------------------------------

loc_7666:
		JSR	j_sub_262F
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

loc_7681:				; CODE XREF: RAM:766B^j
		LDX	#4

loc_7683:				; CODE XREF: RAM:768Avj
		LDA	$750D,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_7683
		STX	$AC00
		JMP	$180C
; ---------------------------------------------------------------------------

; examine weapons and armor

loc_7692:				; CODE XREF: RAM:7673^j
		dldi	loc_773F+1, loc_78D8
		ldxy	aExamine
		LDA	#8
		BNE	loc_76C6

loc_76A4:				; CODE XREF: RAM:7677^j
		dldi	loc_773F+1, loc_78AD
		ldxy	aRepair
		LDA	#4
		BNE	loc_76C6

loc_76B6:				; CODE XREF: RAM:7663^j	RAM:767B^j
		dldi	loc_773F+1, loc_77BD
		LDA	#0
		ldxy	aEnchant

loc_76C6:				; CODE XREF: RAM:76A2^j	RAM:76B4^j
		STX	off_69+1
		STY	off_69
		STA	$68
		LDA	#0
		STA	$66
		LDX	#$3F

loc_76D2:				; CODE XREF: RAM:7745vj
		STX	$67
		LDA	INVARRH,X
		BEQ	loc_7742
		STA	off_62+1
		LDA	INVARRL,X
		STA	off_62
		LDY	#0
		LDA	(off_62),Y
		AND	#$87
		CMP	#$84
		BEQ	loc_76EE
		CMP	#$83
		BNE	loc_7742

loc_76EE:				; CODE XREF: RAM:76E8^j	RAM:76F4vj
		LDA	(off_62),Y
		STA	byte_7BD2,Y
		INY
		BNE	loc_76EE
		INC	$66

loc_76F8:				; CODE XREF: RAM:7726vj
		dldi	off_16, $828B
		LDX	$65
		JSR	j_sub_3C5C

loc_7705:				; CODE XREF: RAM:7714vj
		dldi	off_1977, $7712
		JMP	$1806
; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_7705
		CMP	#$1B
		BNE	loc_771D
		JMP	loc_7649
; ---------------------------------------------------------------------------

loc_771D:				; CODE XREF: RAM:7718^j
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_7742
		CMP	#'Y'
		BNE	loc_76F8
		LDA	$68
		STA	2
		LDA	#0
		STA	3
		JSR	sub_7B60
		BCC	loc_773F
		ldxy	a_ImSorryThouHast
		JSR	sub_7AC5
		JMP	loc_7649
; ---------------------------------------------------------------------------

loc_773F:				; CODE XREF: RAM:7733^j
					; DATA XREF: RAM:7694^w	...
		JSR	$FFFF

loc_7742:				; CODE XREF: RAM:76D7^j	RAM:76EC^j ...
		LDX	$67
		DEX
		BPL	loc_76D2
		LDA	$66
		BEQ	loc_774E
		JMP	loc_7649
; ---------------------------------------------------------------------------

loc_774E:				; CODE XREF: RAM:7749^j
		ldxy	a_ThouHastNoWeap
		JSR	sub_7AC5
		JMP	loc_7649

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7758:				; CODE XREF: sub_7758:loc_77BDvp
					; sub_7758+180vp
		LDA	#<byte_7BD2
		STA	off_62
		LDA	#0
		STA	$6F
		LDA	off_7BD8
		CMP	#$7F
		BNE	loc_776B
		LDA	#1
		STA	$6F

loc_776B:				; CODE XREF: sub_7758+D^j
		LDA	#>byte_7BD2
		STA	off_62+1
		CLC
		LDA	byte_7BD7
		ADC	off_62
		STA	off_62
		BCC	loc_777B
		INC	off_62+1

loc_777B:				; CODE XREF: sub_7758+1F^j sub_7758+5Cvj ...
		LDY	#0
		LDA	(off_62),Y
		AND	#$87
		BEQ	loc_77BA
		CMP	#$83
		BNE	loc_7790
		LDA	$6F
		ORA	#4
		STA	$6F
		JMP	loc_77AD
; ---------------------------------------------------------------------------

loc_7790:				; CODE XREF: sub_7758+2D^j
		CMP	#$84
		BNE	loc_779A
		LDA	#2
		ORA	$6F
		STA	$6F

loc_779A:				; CODE XREF: sub_7758+3A^j
		LDY	#0
		LDA	(off_62),Y
		CMP	#$F0
		BCC	loc_77AD
		CLC
		LDA	off_62
		ADC	#$10
		STA	off_62
		BCC	loc_77AD
		INC	off_62+1

loc_77AD:				; CODE XREF: sub_7758+35^j sub_7758+48^j ...
		LDA	off_62
		CLC
		ADC	#$10
		STA	off_62
		BCC	loc_777B
		INC	off_62+1
		BCC	loc_777B

loc_77BA:				; CODE XREF: sub_7758+29^j
		JMP	loc_79A1
; ---------------------------------------------------------------------------

loc_77BD:				; CODE XREF: sub_7758+DCvj
		JSR	sub_7758
		LSR	$6F
		BCC	loc_77CB
		ldxy	a_ItsAlreadyEnhanced
		JMP	sub_7AC5
; ---------------------------------------------------------------------------

loc_77CB:				; CODE XREF: sub_7758+6A^j sub_7758+CEvj ...
		ldxy	a_WhatShallIDo
		LDA	byte_7BD2
		AND	#7
		CMP	#3
		BEQ	loc_77DC
		ldxy	a_WhatShallIDo_0

loc_77DC:				; CODE XREF: sub_7758+7E^j
		STX	off_16+1
		STY	off_16
		LDX	$65
		JSR	j_sub_3C5C

loc_77E5:				; CODE XREF: sub_7758+AEvj
		LDX	$65
		STX	$1933
		JSR	j_sub_3C2D

loc_77ED:				; CODE XREF: sub_7758+A5vj
		dldi	off_1977, loc_77FB
		JMP	$1806
; ---------------------------------------------------------------------------

locret_77FA:				; CODE XREF: sub_7758+AAvj
		RTS
; ---------------------------------------------------------------------------

loc_77FB:
		LDA	$31
		BMI	loc_77ED
		SEC
		SBC	#$30 ; '0'
		BEQ	locret_77FA
		CMP	#6
		BCS	loc_77E5
		TAX
		STX	$6E
		LDA	byte_7BCA,X
		STA	$6D

loc_7810:				; CODE XREF: sub_7758+CAvj
		dldi	off_16, a_ThatWillCostAt
		LDX	$65
		JSR	j_sub_3C5C
		JSR	j_sub_2AA0
		LDA	3
		BNE	loc_7810
		LDA	2
		BEQ	loc_77CB
		SEC
		SBC	$6D
		BCS	loc_7837
		ldxy	str_804D
		JSR	sub_7AC5
		JMP	loc_77BD
; ---------------------------------------------------------------------------

loc_7837:				; CODE XREF: sub_7758+D3^j
		STA	$6D
		LDA	$63BE
		SEC
		SBC	2
		BCS	loc_784B
		ldxy	$81B5
		JSR	sub_7AC5
		JMP	loc_77CB
; ---------------------------------------------------------------------------

loc_784B:				; CODE XREF: sub_7758+E7^j
		STA	$63BE
		LDA	#0
		SEC
		SBC	$64E4
		STA	off_7
		LDA	#$75
		SBC	$64E5
		BNE	loc_786A
		LDA	off_7
		CMP	#$10
		BCS	loc_786A
		ldxy	str_7F06
		JMP	sub_7AC5
; ---------------------------------------------------------------------------

loc_786A:				; CODE XREF: sub_7758+103^j
					; sub_7758+109^j
		JSR	loc_7972
		LDX	$6E
		LDA	$7CD6,X
		STA	loc_787B+2
		LDA	$7CD1,X
		STA	loc_787B+1

loc_787B:				; DATA XREF: sub_7758+120^w
					; sub_7758+11A^w
		JSR	$FFFF
		LDA	$67
		JSR	$188A
		LDY	#0

loc_7885:				; CODE XREF: sub_7758+136vj
		LDA	byte_7BD2,Y
		STA	byte_7BD0,Y
		INY
		CPY	#6
		BNE	loc_7885
		LDA	#$7F
		STA	byte_7BD6
		LDA	#$20
		STA	byte_7BD7
		INC	byte_7BD1
		INC	byte_7BD5
		INC	byte_7BD1
		INC	byte_7BD5
		ldxy	byte_7BD0
		JMP	j_sub_4B4D
; ---------------------------------------------------------------------------

loc_78AD:
		JSR	loc_796B
		LDY	#$10
		LDA	byte_7BD2
		AND	#7
		CMP	#3
		BEQ	loc_78BD
		LDY	#$D

loc_78BD:				; CODE XREF: sub_7758+161^j
		LDA	(off_43),Y
		DEY
		STA	(off_43),Y
		RTS
; ---------------------------------------------------------------------------

loc_78C3:				; CODE XREF: sub_7758+1B6vj
		LDY	#$B
		JSR	loc_793C
		ldxy	$830B

loc_78CC:				; CODE XREF: sub_7758+1E1vj
		STX	off_16+1
		STY	off_16
		LDX	$65
		JSR	j_sub_3C5C
		JMP	$183C
; ---------------------------------------------------------------------------

loc_78D8:
		JSR	sub_7758
		LSR	$6F
		BCC	loc_78E6
		ldxy	a_Thy_IsEnchanted
		JSR	sub_7AC5

loc_78E6:				; CODE XREF: sub_7758+185^j
		LSR	$6F
		BCC	loc_78F1
		ldxy	a_ThereIsASpecial
		JSR	sub_7AC5

loc_78F1:				; CODE XREF: sub_7758+190^j
		LSR	$6F
		BCC	loc_78FC
		ldxy	a_Thy_IsCursed
		JSR	sub_7AC5

loc_78FC:				; CODE XREF: sub_7758+19B^j
		LSR	$6F
		BCC	loc_7907
		ldxy	a_ItTakesTwoHands
		JSR	sub_7AC5

loc_7907:				; CODE XREF: sub_7758+1A6^j
		LDA	byte_7BD2
		AND	#7
		CMP	#4
		BEQ	loc_78C3
		LDY	#$B
		LDA	I_CURSTR
		CMP	(off_62),Y
		BCS	loc_7920
		ldxy	$817D
		JSR	sub_7AC5

loc_7920:				; CODE XREF: sub_7758+1BF^j
		LDY	#$C
		LDA	I_CURSKL
		CMP	(off_62),Y
		BCS	loc_7930
		ldxy	$81E6
		JSR	sub_7AC5

loc_7930:				; CODE XREF: sub_7758+1CF^j
		LDY	#$D
		JSR	loc_793C
		ldxy	$82DA
		JMP	loc_78CC
; ---------------------------------------------------------------------------

loc_793C:				; CODE XREF: sub_7758+16D^p
					; sub_7758+1DA^p
		LDA	(off_62),Y
		CMP	#$FF
		BNE	loc_7949
		ldxy	$8236
		JMP	loc_7968
; ---------------------------------------------------------------------------

loc_7949:				; CODE XREF: sub_7758+1E8^j
		INY
		CMP	(off_62),Y
		BNE	loc_7955
		ldxy	$8117
		JMP	loc_7968
; ---------------------------------------------------------------------------

loc_7955:				; CODE XREF: sub_7758+1F4^j
		STA	off_7
		LDA	#0
		STA	off_7+1
		STA	3
		LDA	#$64
		STA	2
		JSR	$18A2
		ldxy	$813D

loc_7968:				; CODE XREF: sub_7758+1EE^j
					; sub_7758+1FA^j
		JMP	sub_7AC5
; ---------------------------------------------------------------------------

loc_796B:				; CODE XREF: sub_7758+155^p
		LDA	$67
		STA	$4B
		JMP	$1896
; ---------------------------------------------------------------------------

loc_7972:				; CODE XREF: sub_7758:loc_786A^p
		LDA	#$D2
		CLC
		ADC	byte_7BD7
		STA	off_62
		LDA	#$7B
		ADC	#0
		STA	off_62+1
		LDY	#0

loc_7982:				; CODE XREF: sub_7758+243vj
					; sub_7758+247vj
		LDA	(off_62),Y
		BEQ	loc_79A1
		CMP	#$F0
		BCC	loc_7995
		LDA	off_62
		ADC	#$F
		STA	off_62
		BCC	loc_7995
		INC	off_62+1
		CLC

loc_7995:				; CODE XREF: sub_7758+230^j
					; sub_7758+238^j
		LDA	off_62
		ADC	#$10
		STA	off_62
		BCC	loc_7982
		INC	off_62+1
		BNE	loc_7982

loc_79A1:				; CODE XREF: sub_7758:loc_77BA^j
					; sub_7758+22C^j
		LDA	byte_7BD2
		AND	#7
		CMP	#3
		BEQ	loc_79B6
		LDA	#2

loc_79AC:				; CODE XREF: sub_7758+26Evj
		CLC
		ADC	off_62
		STA	off_62
		BCC	locret_79B5
		INC	off_62+1

locret_79B5:				; CODE XREF: sub_7758+259^j
					; sub_7758+281vj
		RTS
; ---------------------------------------------------------------------------

loc_79B6:				; CODE XREF: sub_7758+250^j
		LDY	#$12
		LDA	(off_62),Y
		AND	#$40
		BEQ	loc_79C4
		LDA	#8
		ORA	$6F
		STA	$6F

loc_79C4:				; CODE XREF: sub_7758+264^j
		LDA	#3
		BNE	loc_79AC	; always jumps
; ---------------------------------------------------------------------------

loc_79C8:
		LDY	#$C
		LDA	byte_7BD2
		AND	#7
		CMP	#4
		BEQ	loc_79D5
		LDY	#$E

loc_79D5:				; CODE XREF: sub_7758+279^j
		LDA	(off_62),Y
		CMP	#3
		BCC	locret_79B5
		LDX	#$14
		JSR	sub_7AA7
		ADC	#5
		ADC	(off_62),Y
		BCC	loc_79E8
		LDA	#$FF

loc_79E8:				; CODE XREF: sub_7758+28C^j
		STA	(off_62),Y
		DEY
		STA	(off_62),Y
		RTS
; End of function sub_7758

; ---------------------------------------------------------------------------

loc_79EE:
		LDA	$6D
		SEC
		SBC	#$A
		BCS	loc_7A1E
		LDX	#9
		JSR	sub_7AA7
		ADC	#3
		STA	$6F
		LDX	#8

loc_7A00:				; CODE XREF: RAM:7A1Bvj
		LDY	#$A

loc_7A02:				; CODE XREF: RAM:7A18vj
		LDA	(off_62),Y
		BEQ	loc_7A17
		AND	#$F
		CMP	#$F
		BEQ	loc_7A17
		CLC
		LDA	(off_62),Y
		ADC	#1
		STA	(off_62),Y
		DEC	$6F
		BEQ	locret_7A1D

loc_7A17:				; CODE XREF: RAM:7A04^j	RAM:7A0A^j
		DEY
		BPL	loc_7A02
		DEX
		BNE	loc_7A00

locret_7A1D:				; CODE XREF: RAM:7A15^j
		RTS
; ---------------------------------------------------------------------------

loc_7A1E:				; CODE XREF: RAM:79F3^j
		STA	$6D
		LDX	#3
		JSR	sub_7AA7
		ADC	#1
		STA	$6F
		LDX	#8

loc_7A2B:				; CODE XREF: RAM:7A40vj
		LDY	#$A

loc_7A2D:				; CODE XREF: RAM:7A3Dvj
		LDA	(off_62),Y
		BEQ	loc_7A3C
		CLC
		ADC	#$10
		BCS	loc_7A3C
		STA	(off_62),Y
		DEC	$6F
		BEQ	locret_7A42

loc_7A3C:				; CODE XREF: RAM:7A2F^j	RAM:7A34^j
		DEY
		BPL	loc_7A2D
		DEX
		BNE	loc_7A2B

locret_7A42:				; CODE XREF: RAM:7A3A^j	RAM:7A47vj
		RTS
; ---------------------------------------------------------------------------

loc_7A43:
		LDA	byte_7BD6
		LSR	A
		BEQ	locret_7A42
		TAX
		JSR	sub_7AA7
		STA	$6F
		LDA	byte_7BD6
		SEC
		SBC	$6F
		STA	byte_7BD6
		RTS
; ---------------------------------------------------------------------------

loc_7A59:
		LDA	RANDOM
		AND	#3
		TAX
		LDA	byte_7CD2,X
		STA	loc_7A7D+1
		LDA	byte_7CD7,X
		STA	loc_7A7D+2
		LDA	RANDOM
		AND	#3
		TAX
		LDA	byte_7CD2,X
		STA	loc_7A80+1
		LDA	byte_7CD7,X
		STA	loc_7A80+2

loc_7A7D:				; DATA XREF: RAM:7A62^w	RAM:7A68^w
		JSR	$FFFF

loc_7A80:				; DATA XREF: RAM:7A74^w	RAM:7A7A^w
		JMP	$FFFF
; ---------------------------------------------------------------------------

loc_7A83:
		LDX	#2
		JSR	sub_7AA7
		ADC	#1
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	$6F
		LDX	#7
		JSR	sub_7AA7
		ORA	$6F
		STA	$6F
		LDA	RANDOM
		AND	#3
		CLC
		ADC	#2
		TAY
		LDA	$6F
		STA	(off_62),Y
		RTS
; ---------------------------------------------------------------------------

sub_7AA7:				; CODE XREF: sub_7758+285^p RAM:79F7^p ...
		ldi	loc_7AC2+1, $00
		LDA	$6D
		PHA

loc_7AAF:				; CODE XREF: RAM:7ABDvj
		TXA
		JSR	j_RND_A
		CMP	loc_7AC2+1
		BCC	:+
		STA	loc_7AC2+1

:
		DEC	$6D
		BPL	loc_7AAF
		PLA
		STA	$6D

loc_7AC2:				; DATA XREF: RAM:7AA9^w	RAM:7AB3^r ...
		LDA	#$FF
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7AC5:				; CODE XREF: RAM:7739^p	RAM:7752^p ...
		STX	off_16+1
		STY	off_16
		LDX	$65
		JSR	j_sub_3C5C
		LDA	#$A
		JMP	j_sub_2BFC
; End of function sub_7AC5

; ---------------------------------------------------------------------------

loc_7AD3:				; DATA XREF: RAM:8393vo	RAM:839Evo
		LDY	byte_83A0
		BPL	loc_7AE6
		LDY	#$A
		STY	byte_83A0
		dldi	off_16, str_8395
		RTS
; ---------------------------------------------------------------------------

loc_7AE6:				; CODE XREF: RAM:7AD6^j
		LDA	byte_7CF8,Y
		STA	byte_8396+1
		LDA	byte_7D03,Y
		STA	byte_8396+2
		LDX	#4
		LDA	(off_62),Y
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
		LDA	(off_62),Y
		AND	#$F
		CLC
		STA	off_7
		LDA	#0

loc_7B10:				; CODE XREF: RAM:7B13vj
		ADC	off_7
		DEX
		BNE	loc_7B10
		LSR	A
		LDX	#0
		PLP
		BCS	loc_7B3C

loc_7B1B:				; CODE XREF: RAM:7B23vj
		CMP	byte_7CF4,X
		BCC	loc_7B25
		BEQ	loc_7B25
		INX
		BNE	loc_7B1B

loc_7B25:				; CODE XREF: RAM:7AF6^j	RAM:7AFB^j ...
		LDA	byte_7CEA,X
		STA	$6B
		LDA	byte_7CEF,X
		STA	$6C

loc_7B2F:				; CODE XREF: RAM:7B50vj
		DEY
		STY	byte_83A0
		dldi	off_16, $8396
		RTS
; ---------------------------------------------------------------------------

loc_7B3C:				; CODE XREF: RAM:7B19^j	RAM:7B44vj
		CMP	byte_7CDC,X
		BCC	loc_7B46
		BEQ	loc_7B46
		INX
		BNE	loc_7B3C

loc_7B46:				; CODE XREF: RAM:7B3F^j	RAM:7B41^j
		LDA	unk_7CE0,X
		STA	$6B
		LDA	unk_7CE5,X
		STA	$6C
		JMP	loc_7B2F
; ---------------------------------------------------------------------------

loc_7B53:				; DATA XREF: RAM:82A9vo
		LDA	$68
		BNE	locret_7B5F
		dldi	off_16, $82CC

locret_7B5F:				; CODE XREF: RAM:7B55^j
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7B60:				; CODE XREF: RAM:7730^p
		LDY	#3

loc_7B62:				; CODE XREF: sub_7B60+9vj
		LDA	$63B1,Y
		STA	byte_7BC7,Y
		DEY
		BPL	loc_7B62

loc_7B6B:				; CODE XREF: sub_7B60:loc_7B9Dvj
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

loc_7B81:				; CODE XREF: sub_7B60+1D^j
		LDA	byte_7BC8
		SEC
		SBC	#1
		STA	byte_7BC8
		BCS	loc_7B8F
		DEC	byte_7BC7

loc_7B8F:				; CODE XREF: sub_7B60+2A^j
		LDA	#$A
		CLC
		ADC	byte_7BCA
		STA	byte_7BCA
		BCC	loc_7B9D
		INC	byte_7BC9

loc_7B9D:				; CODE XREF: sub_7B60+38^j
		JMP	loc_7B6B
; ---------------------------------------------------------------------------

loc_7BA0:				; CODE XREF: sub_7B60+15^j
		LDA	byte_7BCA
		SEC
		SBC	2
		STA	byte_7BCA
		LDA	byte_7BC9
		SBC	3
		STA	byte_7BC9
		LDY	#3

loc_7BB3:				; CODE XREF: sub_7B60+5Avj
		LDA	byte_7BC7,Y
		STA	$63B1,Y
		DEY
		BPL	loc_7BB3
		CLC
		RTS
; End of function sub_7B60

; ---------------------------------------------------------------------------

loc_7BBE:				; DATA XREF: RAM:800Cvo	RAM:82B9vo
		LDA	#$FF
; ---------------------------------------------------------------------------
		.BYTE	$2C
; ---------------------------------------------------------------------------

loc_7BC1:				; DATA XREF: RAM:802Bvo	RAM:82C0vo
		LDA	#0
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------
byte_7BC7:	.BYTE	0			; DATA XREF: sub_7B60+1A^r sub_7B60+2C^w
byte_7BC8:	.BYTE	$FF		; DATA XREF: sub_7B60+17^r
					; sub_7B60:loc_7B81^r ...
byte_7BC9:	.BYTE	0			; DATA XREF: sub_7B60+10^r sub_7B60+3A^w ...
byte_7BCA:	.BYTE	$FF		; DATA XREF: sub_7B60:loc_7B6B^r
					; sub_7B60+32^r	...
		.BYTE	7
		.BYTE	20
		.BYTE	15
		.BYTE	5
		.BYTE	35
byte_7BD0:	.BYTE	$FF
byte_7BD1:	.BYTE	0			; DATA XREF: sub_7758+142^w
					; sub_7758+148^w
byte_7BD2:	.BYTE	$FF		; DATA XREF: sub_7758+77^r
					; sub_7758+15A^r ...
		.BYTE	0
		.BYTE	$FF
byte_7BD5:	.BYTE	0			; DATA XREF: sub_7758+145^w
					; sub_7758+14B^w
byte_7BD6:	.BYTE	$FF		; DATA XREF: sub_7758+13A^w RAM:7A43^r ...
byte_7BD7:	.BYTE	0			; DATA XREF: sub_7758+18^r
					; sub_7758+13F^w ...
off_7BD8:	.WORD	$FF		; DATA XREF: sub_7758+8^r RAM:807Dvo ...
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	$6F ; o
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	$6F ; o
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
byte_7CD2:	.BYTE	<loc_79C8	; DATA XREF: RAM:7A71^r
		.BYTE	<loc_79EE
		.BYTE	<loc_7A83
		.BYTE	<loc_7A43
		.BYTE	<loc_7A59
byte_7CD7:	.BYTE	>loc_79C8	; DATA XREF: RAM:7A77^r
		.BYTE	>loc_79EE
		.BYTE	>loc_7A83
		.BYTE	>loc_7A43
		.BYTE	>loc_7A59

byte_7CDC:
		.BYTE	$A
		.BYTE	$14
		.BYTE	$1E
		.BYTE	$FF
unk_7CE0:	.BYTE	<aLow		; DATA XREF: RAM:loc_7B46^r
		.BYTE	<aMed
		.BYTE	<aHigh
		.BYTE	<aVHi
		.BYTE	<aNone
unk_7CE5:	.BYTE	>aLow		; DATA XREF: RAM:7B4B^r
		.BYTE	>aMed
		.BYTE	>aHigh
		.BYTE	>aVHi
		.BYTE	>aNone

byte_7CEA:
		.BYTE	<aPoor
		.BYTE	<aFair
		.BYTE	<aGood
		.BYTE	<aXlnt
		.BYTE	<aNone

byte_7CEF:
		.BYTE	>aPoor
		.BYTE	>aFair
		.BYTE	>aGood
		.BYTE	>aXlnt
		.BYTE	>aNone

byte_7CF4:
		.BYTE	2
		.BYTE	5
		.BYTE	 $A
		.BYTE	$FF

byte_7CF8:
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	$14
		.BYTE	$14
		.BYTE	$14
		.BYTE	$14
		.BYTE	$21 ; !
		.BYTE	$21 ; !
		.BYTE	$21 ; !

byte_7D03:
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
aLow:		.BYTE	"low",0
aMed:		.BYTE	"med",0
aHigh:		.BYTE	"high",0
aVHi:		.BYTE	"v hi",0
aRepair:	.BYTE	"repair",0
aExamine:	.BYTE	"examine",0
aEnchant:	.BYTE	"enchant",0
aPoor:		.BYTE	"poor",0
aFair:		.BYTE	"fair",0
aGood:		.BYTE	"good",0
aXlnt:		.BYTE	"xlnt",0
aNone:		.BYTE	"none",0

byte_7D50:
		.BYTE	$A8,$FF

a_Welcome:
		MOVEXY	0,0
		.BYTE	$A5,"Welcome "
		PRINTSTR $6321,20
		.BYTE	"!",$D
		.BYTE	$A5,"I am the Enchantress.",$D
		.BYTE	$A5,"What would thee ask of me?",$D
		MOVEXY	5,3
		MenuItem "1","Examine thy weapons and armor"
		MOVEXY	5,4
		MenuItem "2","Repair a weapon or armor"
		MOVEXY	5,5
		MenuItem "3","Enchant a weapon or armor"
		MOVEXY	5,7
		MenuItem "0","Say Goodbye"
		.BYTE	$FF

a_ItsAlreadyEnhanced:
		MOVEXY	0,2
		.BYTE	$A5,"It's already enhanced!",$D,$FF

a_WhatShallIDo:
		MOVEXY	0,0
		.BYTE	$A5,"What shall I do?",$D
		MOVEXY	5,2
		MenuItem "1","Extend the life of this weapon."
		MOVEXY	5,3
		MenuItem "2","Increase its effectiveness."
		MOVEXY	5,4
		MenuItem "3","Add extra damage ability."
		MOVEXY	5,5
		MenuItem "4","Decrease its weight."
		MOVEXY	5,6
		MenuItem "5","Let me decide what's best."
		MOVEXY	5,7
		MenuItem "0","Nothing."
		.BYTE	$FF

str_7F06:
		MOVEXY	0,2
		.BYTE	$A5,"I can't enchant it!",$D,$FF

a_WhatShallIDo_0:
		MOVEXY	0,0
		.BYTE	$A5,"What shall I do?",$D
		MOVEXY	5,2
		MenuItem "1","Extend the life of thine armor."
		MOVEXY	5,3
		MenuItem "2","Increase its effectiveness."
		MOVEXY	5,4
		MenuItem "3","Add extra protection."
		MOVEXY	5,5
		MenuItem "4","Decrease its weight."
		MOVEXY	5,6
		MenuItem "5","Let me decide what's best."
		MOVEXY	5,7
		MenuItem "0","Nothing"
		.BYTE	$FF

a_ThatWillCostAt:
		MOVEXY	0,1
		.BYTE	$A5,"That will cost at least",$D
		STRJSR	loc_7BBE
		.BYTE	$A5
		PRINTBYTE $6D,2
		.BYTE	" crystals to perform.",$D,$D
		STRJSR	loc_7BC1
		.BYTE	$A5,"How many dost thou offer?",$D
		MOVEXY	16,5
		.BYTE	">",$FF

str_804D:
		MOVEXY	0,2
		.BYTE	$A5,"I'm sorry, but that's not enough.",$D,$FF

a_Thy_IsCursed:
		MOVEXY	0,1
aThy:		.BYTE	$A5,"Thy "
		.BYTE	$B3
		.WORD	off_7BD8
		.BYTE	$1E
		.BYTE	$0D,$0D
		.BYTE	$A5,"is cursed!",$0D,$FF

a_Thy_IsEnchanted:
		MOVEXY	0,1
		.BYTE	$A5,"Thy "
		.BYTE	$B3
		.WORD	off_7BD8
		.BYTE	$1E
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aIsEnchanted:	.BYTE	"is enchanted!"
		.BYTE	$D
		.BYTE	$FF

a_ThereIsASpecial:
		MOVEXY	0,1
		.BYTE	$A5,"There is a special aura",$0D,$0D
		.BYTE	$A5,"around thy "
		.BYTE	$B3
		.WORD	off_7BD8
		.BYTE	$1E
		.BYTE	'.',$0D,$FF

a_ItTakesTwoHands:
		MOVEXY	0,1
		.BYTE	$A5,"It takes two hands to",$0D,$0D
		.BYTE	$A5,"effectively use this weapon.",$0D,$FF

		MOVEXY	0,1
		.BYTE	$A5,"Thy "
		.BYTE	$B3
		.WORD	off_7BD8
		.BYTE	$1E
		.BYTE	$0D,$0D
		.BYTE	$A5,"is in mint condition!",$0D,$FF

		MOVEXY	0,2
		.BYTE	$A5,"Thy "
		.BYTE	$B3
		.WORD	off_7BD8
		.BYTE	$1E
		.BYTE	" is worn!",$0D,$FF

a_ImSorryThouHast:
		MOVEXY	0,2
		.BYTE	$A5,"I'm sorry, thou hast not the funds.",$0D,$FF

		MOVEXY	0,1
		.BYTE	$A5,"Thou art not strong enough",$0D,$0D
		.BYTE	$A5,"to use thy "
		.BYTE	$B3
		.WORD	off_7BD8
		.BYTE	$1E
aWell_:		.BYTE	" well.",$0D,$FF

		MOVEXY	0,1
		.BYTE	$A5,"I'm sorry but thou hast",$0D,$0D
		.BYTE	$A5,"too few crystals.",$0D,$FF

		MOVEXY	0,1
		.BYTE	$A5,"Thou dost not possess the skill",$0D,$0D
		.BYTE	$A5,"necessary to effectively use",$0D,$0D
		.BYTE	$A5,"thy "
		.BYTE	$B3
		.WORD	off_7BD8
		.BYTE	$1E
		.BYTE	'.',$0D,$FF

		MOVEXY	0,2
		.BYTE	$A5
aThy_3:		.BYTE	"Thy "
		.BYTE	$B3
		.WORD	off_7BD8
		.BYTE	$1E
		.BYTE	$D
		.BYTE	$A5,"is unbreakable!",$0D,$FF

a_ThouHastNoWeap:
		MOVEXY	0,2
		.BYTE	$A5,"Thou hast no weapons and armor",$0D,$0D
		.BYTE	$A5,"for me to "
		.BYTE	$B4
		.WORD	off_69
		.BYTE	$1E
		.BYTE	".",$0D,$FF

		MOVEXY	0,1
		.BYTE	$A5,"Shall I "
		.BYTE	$B4
		.WORD	off_69
		.BYTE	$27
		.BYTE	" thy",$0D
		.BYTE	$A5
		.BYTE	$B3
		.WORD	off_7BD8
		.BYTE	$27
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
		.BYTE	$A3
		.WORD	loc_7B53
aItWillCost:	.BYTE	"It will cost "
		.BYTE	$A3
		.WORD	loc_7BBE
		.BYTE	$B2
		.WORD	$68
		.BYTE	3
		.BYTE	$A3
		.WORD	loc_7BC1
aSilversq:	.BYTE	" silvers? ("
aY:		BLINK	"Y"
aOr:		.BYTE	" or "
aN:		BLINK	"N"
		.BYTE	")",$D,$FF

		MOVEXY	0,0
aThy_6:		.BYTE	$A5,"Thy "
		.BYTE	$B3
		.WORD	off_7BD8
		.BYTE	$1E
aDoesThe:	.BYTE	" does the",$D
aTheFollowingDa:.BYTE	$A5,"the following damage:",$D,$D
		.BYTE	$AC
		.WORD	aBlunt		; "Blunt:"
		.BYTE	$A6,  0,	0
		.BYTE	$A5
aThy_7:		.BYTE	"Thy "
		.BYTE	$B3
		.WORD	off_7BD8
		.BYTE	$1E
aProvides:	.BYTE	" provides ",$D
aTheFollowingPr:.BYTE	$A5,"the following protection:",$D,$D
aBlunt:		.BYTE	"Blunt:",$D	; DATA XREF: RAM:8309^o
aSharp:		.BYTE	"Sharp:",$D
aEarth:		.BYTE	"Earth:",$D
		.BYTE	"Air:"
		MOVEXY	13,3
		.BYTE	"Fire:"
		MOVEXY	13,4
		.BYTE	"Water:"
		MOVEXY	13,5
		.BYTE	"Power:"
		MOVEXY	13,6
		.BYTE	"Magic:"
		MOVEXY	26,3
		.BYTE	"Good:"
		MOVEXY	26,4
		.BYTE	"Evil:"
		MOVEXY	26,5
		.BYTE	"Cold:"
		.BYTE	$A3
		.WORD	loc_7AD3

str_8395:
		.BYTE	$FF

byte_8396:
		MOVEXY	$FF, $FF
		.BYTE	$B4
		.WORD	$6B
		.BYTE	$1E
		.BYTE	$A3
		.WORD	loc_7AD3
byte_83A0:	.BYTE	$A		; DATA XREF: RAM:loc_7AD3^r RAM:7ADA^w ...
byte_83A1:	.BYTE	$70		; DATA XREF: RAM:83D1vo
		.BYTE	$70 ; p
		.BYTE	$30 ; 0
		.BYTE	$42 ; B
		.WORD	$400
		.BYTE	$80 ; 
		.BYTE	2
		.BYTE	$80 ; 
		.BYTE	2
		.BYTE	$80 ; 
		.BYTE	2
		.BYTE	$80 ; 
		.BYTE	2
		.BYTE	$80 ; 
		.BYTE	6
		.BYTE	0
		.BYTE	$44 ; D
		.WORD	$4F0
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
		.BYTE	$42 ; B
		.WORD	$658
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
		.BYTE	$41 ; A
		.WORD	byte_83A1
; ---------------------------------------------------------------------------
		PHA
		TXA
		PHA
		TYA
		PHA
		STA	WSYNC
		LDA	#$36
		STA	COLPF3
		STA	WSYNC
		LDA	#$50
		LDX	#$70
		LDY	#$90
		STA	WSYNC
		STA	HPOSP0
		STX	$D001
		STY	$D002
		STA	WSYNC
		LDA	#$B0
		LDX	#$48
		LDY	#$40
		STA	WSYNC
		STA	$D003
		STX	$D004
		STY	$D005
		STA	WSYNC
		LDA	#$38
		LDX	#$30
		STA	WSYNC
		STA	$D006
		STX	$D007
		STA	WSYNC
		LDX	$BC5B
		LDY	$BC5D
		LDA	$BC5A
		STA	WSYNC
		STA	COLBK
		STX	COLPF0
		STY	COLPF2
		LDX	#$23
		LDY	$BBDC,X

loc_8437:				; CODE XREF: RAM:845Cvj
		LDA	$BB94,X
		STA	WSYNC
		STA	COLPF1
		STY	COLPF3
		LDA	$BB4C,X
		STA	CHBASE
		LDA	$BB70,X
		STA	WSYNC
		STA	COLPF0
		LDA	$BBB8,X
		STA	COLPF2
		LDY	$BBDB,X
		DEX
		BPL	loc_8437
		LDA	#0
		STA	WSYNC
		STA	COLPF2
		STA	COLBK
		ldi	COLPF1, $0E
		ldi	CHBASE, $14
		PLA
		TAY
		PLA
		TAX
		PLA
		RTI
; ---------------------------------------------------------------------------

loc_8479:				; CODE XREF: RAM:760A^j
		LDA	#$7F
		STA	$253
		LDA	#$A1
		STA	$254
		LDA	#$83
		STA	$255
		LDA	#8
		LDX	#$23

loc_848C:				; CODE XREF: RAM:849Avj
		LDY	#$C

loc_848E:				; CODE XREF: RAM:8495vj
		STA	$BB4C,X
		DEX
		BMI	loc_849C
		DEY
		BNE	loc_848E
		CLC
		ADC	#4
		BNE	loc_848C

loc_849C:				; CODE XREF: RAM:8492^j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_8594
		LDA	#$70
		STA	9
		LDA	#$BB
		STA	$A
		JSR	loc_8594
		LDA	#0
		STA	loc_84C2+1
		LDA	#$BD
		STA	loc_84C2+2
		LDY	#3
		LDA	#0
		LDX	#$80

loc_84C2:				; CODE XREF: RAM:84C6vj	RAM:84CCvj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_84C2
		INC	loc_84C2+2
		DEY
		BNE	loc_84C2
		LDX	#7

loc_84D0:				; CODE XREF: RAM:84D4vj
		STA	HPOSP0,X
		DEX
		BPL	loc_84D0
		LDA	#3
		TAX

loc_84D9:				; CODE XREF: RAM:84DDvj
		STA	$D008,X
		DEX
		BPL	loc_84D9
		ldi	SIZEM, $FF
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00	
		dldi	off_9, $04F0
		ldi	6, $00

loc_8507:				; CODE XREF: RAM:852Dvj
		LDY	6
		LDA	(off_7),Y
		STA	4
		LDY	#7

loc_850F:				; CODE XREF: RAM:851Avj
		LSR	4
		BCC	loc_8519
		LDA	(off_9),Y
		ORA	#$80
		STA	(off_9),Y

loc_8519:				; CODE XREF: RAM:8511^j
		DEY
		BPL	loc_850F
		add16	off_9, 8
		INC	6
		LDA	6
		CMP	#$2D
		BCC	loc_8507
		LDA	#$2D
		STA	off_7
		LDX	#0
		STX	6
		dldi	$F0, $BDA9

loc_853F:				; CODE XREF: RAM:8550vj
		CLC
		LDA	$F0,X
		ADC	#$80
		STA	$F2,X
		LDA	$F1,X
		ADC	#0
		STA	$F3,X
		INX
		INX
		CPX	#8
		BCC	loc_853F

loc_8552:				; CODE XREF: RAM:856Fvj
		LDX	#0

loc_8554:				; CODE XREF: RAM:856Dvj
		LDY	6
		LDA	(off_7),Y
		LDY	#4

loc_855A:				; CODE XREF: RAM:855Fvj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_855A
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D
		BCS	loc_8571
		CPX	#$A
		BCC	loc_8554
		BCS	loc_8552

loc_8571:				; CODE XREF: RAM:8569^j
		LDX	#3
		LDA	$BC5F

loc_8576:				; CODE XREF: RAM:857Avj
		STA	COLPM0,X
		DEX
		BPL	loc_8576
		dldi	off_24A, $83D3
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_8594:				; CODE XREF: RAM:84A4^p	RAM:84AF^p ...
		LDY	#0
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_859E
		INC	off_7+1

loc_859E:				; CODE XREF: RAM:859A^j
		CMP	#$1B
		BEQ	loc_85AD
		STA	(off_9),Y
		INC	off_9
		BNE	loc_85AA
		INC	off_9+1

loc_85AA:				; CODE XREF: RAM:85A6^j
		JMP	loc_8594
; ---------------------------------------------------------------------------

loc_85AD:				; CODE XREF: RAM:85A0^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_85B5
		INC	off_7+1

loc_85B5:				; CODE XREF: RAM:85B1^j
		CMP	#$FF
		BNE	loc_85BA
		RTS
; ---------------------------------------------------------------------------

loc_85BA:				; CODE XREF: RAM:85B7^j
		STA	byte_85F4
		ADC	off_9
		STA	loc_85CD+1
		LDA	off_9+1
		ADC	#0
		CMP	#$14
		BNE	loc_85D2
		LDA	byte_85F4

loc_85CD:				; DATA XREF: RAM:85BF^w
		SBC	#$FF
		STA	byte_85F4

loc_85D2:				; CODE XREF: RAM:85C8^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_85DA
		INC	off_7+1

loc_85DA:				; CODE XREF: RAM:85D6^j
		LDY	byte_85F4

loc_85DD:				; CODE XREF: RAM:85E0vj
		STA	(off_9),Y
		DEY
		BPL	loc_85DD
		INC	byte_85F4
		LDA	byte_85F4
		CLC
		ADC	off_9
		STA	off_9
		BCC	loc_85F1
		INC	off_9+1

loc_85F1:				; CODE XREF: RAM:85ED^j
		JMP	loc_8594
; ---------------------------------------------------------------------------
byte_85F4:					; DATA XREF: RAM:loc_85BA^w RAM:85CA^r ...
L85F4:  .byte   $00,$1B,$27,$00,$1B,$07,$03,$1B
        .byte   $07,$00,$1B,$07,$30,$1B,$06,$00
        .byte   $03,$1B,$0A,$FF,$BF,$1B,$04,$FF
        .byte   $DF,$1B,$07,$FF,$EF,$1B,$0B,$FF
        .byte   $FE,$FF,$CF,$1B,$09,$FF,$FB,$FB
        .byte   $EA,$FB,$FF,$FF,$CF,$1B,$08,$FF
        .byte   $EF,$1B,$04,$FF,$F3,$1B,$03,$FF
        .byte   $FB,$1B,$04,$FF,$FD,$FD,$F6,$FF
        .byte   $FF,$EF,$1B,$03,$FF,$7F,$1B,$02
        .byte   $FF,$CF,$FF,$7F,$1B,$05,$FF,$7F
        .byte   $1B,$02,$FF,$FC,$1B,$02,$FF,$3F
        .byte   $1B,$07,$FF,$CF,$1B,$04,$FF,$FE
        .byte   $1B,$02,$FF,$FC,$FF,$FF,$CF,$1B
        .byte   $03,$FF,$00,$1B,$04,$FF,$FC,$FF
        .byte   $3F,$FF,$FB,$1B,$06,$FF,$FD,$FE
        .byte   $F6,$DA,$F6,$FE,$FD,$1B,$02,$FF
        .byte   $7F,$9F,$7F,$FF,$FF,$1B,$06,$00
        .byte   $C0,$1B,$07,$0C,$1B,$07,$00,$1B
        .byte   $07,$C0,$1B,$0E,$00,$02,$1B,$03
        .byte   $00,$20,$50,$A0,$98,$1B,$37,$00
        .byte   $03,$1B,$06,$0C,$1B,$07,$00,$1B
        .byte   $07,$C0,$1B,$05,$03,$0F,$0F,$1B
        .byte   $03,$FF,$FD,$FD,$F6,$DA,$FD,$1B
        .byte   $04,$FF,$7F,$9F,$1B,$03,$FF,$EF
        .byte   $1B,$04,$FF,$EF,$1B,$09,$FF,$EF
        .byte   $1B,$07,$FF,$FB,$FF,$FB,$1B,$06
        .byte   $FF,$FB,$1B,$08,$FF,$FE,$FF,$FF
        .byte   $3F,$1B,$06,$FF,$FB,$FF,$FF,$F6
        .byte   $DA,$6A,$DA,$F6,$F6,$FD,$FD,$7F
        .byte   $9F,$A7,$9F,$7F,$7F,$FF,$FE,$EF
        .byte   $1B,$03,$FF,$FE,$1B,$04,$FF,$FE
        .byte   $1B,$02,$FF,$EF,$FF,$FC,$1B,$03
        .byte   $FF,$F7,$FB,$FF,$F3,$1B,$03,$FF
        .byte   $FE,$FF,$F2,$CA,$1B,$02,$2A,$1A
        .byte   $15,$15,$00,$80,$28,$A2,$6A,$1B
        .byte   $02,$9A,$1B,$02,$00,$80,$28,$A2
        .byte   $AA,$AA,$FF,$FF,$3F,$3F,$0F,$8F
        .byte   $2F,$AF,$FF,$BF,$1B,$06,$FF,$EF
        .byte   $1B,$05,$FF,$1B,$05,$C0,$F0,$F0
        .byte   $1B,$07,$03,$1B,$07,$00,$C0,$1B
        .byte   $06,$30,$1B,$07,$00,$02,$02,$01
        .byte   $1B,$04,$00,$64,$99,$9A,$6A,$54
        .byte   $28,$28,$20,$1B,$37,$00,$0C,$0C
        .byte   $1B,$05,$30,$1B,$04,$03,$1B,$02
        .byte   $0C,$1B,$07,$00,$1B,$02,$0F,$1B
        .byte   $03,$3F,$FF,$F6,$FD,$FD,$1B,$04
        .byte   $FF,$7F,$1B,$02,$FF,$FE,$1B,$05
        .byte   $FF,$F7,$1B,$03,$FF,$FE,$1B,$04
        .byte   $FF,$EF,$1B,$02,$FF,$DF,$EF,$67
        .byte   $EF,$DF,$1B,$02,$FF,$BF,$1B,$07
        .byte   $FF,$CF,$1B,$03,$FF,$BF,$1B,$05
        .byte   $FF,$F7,$FF,$FE,$FF,$FF,$3F,$1B
        .byte   $07,$FF,$EF,$1B,$04,$FF,$3F,$FF
        .byte   $FF,$FE,$FF,$FF,$BF,$FF,$FF,$F3
        .byte   $1B,$04,$FF,$FE,$1B,$08,$FF,$FE
        .byte   $1B,$02,$FF,$EA,$FB,$F7,$1B,$06
        .byte   $FF,$FC,$BC,$1B,$03,$FF,$1F,$1D
        .byte   $55,$55,$1B,$02,$15,$3D,$56,$56
        .byte   $5A,$99,$69,$1B,$02,$57,$AA,$1B
        .byte   $03,$6A,$1B,$02,$AA,$1B,$07,$AB
        .byte   $FF,$3F,$FF,$FF,$FE,$1B,$03,$FF
        .byte   $FB,$FF,$FF,$FE,$FE,$FA,$FE,$1B
        .byte   $02,$F0,$1B,$02,$FC,$BC,$FF,$1B
        .byte   $07,$00,$1B,$04,$C0,$1B,$04,$30
        .byte   $1B,$05,$0C,$1B,$10,$00,$1B,$06
        .byte   $FF,$1B,$74,$00,$1B,$02,$03,$1B
        .byte   $04,$C0,$1B,$02,$00,$0C,$1B,$03
        .byte   $30,$1B,$02,$C0,$00,$00,$1B,$02
        .byte   $03,$0F,$0F,$3F,$1B,$06,$FF,$FE
        .byte   $FF,$FE,$1B,$09,$FF,$FE,$1B,$11
        .byte   $FF,$FB,$FF,$BF,$1B,$02,$FF,$FE
        .byte   $1B,$02,$FF,$F7,$1B,$05,$FF,$FB
        .byte   $1B,$05,$FF,$FE,$F7,$D9,$F7,$F7
        .byte   $FF,$FD,$1B,$04,$FF,$FB,$1B,$08
        .byte   $FF,$FD,$1B,$0B,$FF,$FD,$1B,$03
        .byte   $FF,$BF,$1B,$08,$FF,$BF,$1B,$02
        .byte   $FF,$EF,$FF,$FF,$FB,$1B,$05,$FF
        .byte   $FB,$1B,$03,$FF,$FD,$1B,$02,$FF
        .byte   $C5,$F1,$F1,$1B,$04,$FF,$5F,$5E
        .byte   $7A,$3A,$1B,$03,$2A,$1B,$0F,$AA
        .byte   $FB,$1B,$03,$FF,$1B,$02,$BF,$FE
        .byte   $1B,$03,$FF,$EF,$1B,$03,$FF,$EF
        .byte   $1B,$04,$FF,$00,$00,$1B,$02,$C0
        .byte   $F0,$F0,$FC,$30,$1B,$03,$0C,$1B
        .byte   $07,$03,$1B,$07,$00,$1B,$02,$C0
        .byte   $1B,$06,$00,$0A,$1B,$06,$FF,$AA
        .byte   $1B,$06,$00,$A0,$1B,$08,$00,$54
        .byte   $55,$05,$1B,$05,$00,$50,$55,$15
        .byte   $1B,$05,$00,$40,$55,$55,$01,$1B
        .byte   $05,$00,$54,$55,$05,$03,$1B,$03
        .byte   $0C,$30,$70,$55,$1B,$02,$03,$0C
        .byte   $0C,$30,$1B,$04,$00,$03,$03,$0F
        .byte   $0F,$3F,$3F,$1B,$0C,$FF,$00,$00
        .byte   $1B,$05,$FF,$00,$00,$1B,$05,$FF
        .byte   $00,$00,$1B,$05,$FF,$00,$00,$1B
        .byte   $05,$FF,$00,$00,$1B,$05,$FF,$00
        .byte   $00,$1B,$05,$FF,$00,$00,$1B,$05
        .byte   $FF,$00,$00,$1B,$05,$FF,$00,$00
        .byte   $FF,$BF,$1B,$03,$FF,$00,$00,$1B
        .byte   $05,$FF,$00,$00,$1B,$05,$FF,$08
        .byte   $80,$1B,$04,$FF,$EE,$00,$8F,$FB
        .byte   $1B,$04,$FF,$3F,$1B,$05,$FF,$7F
        .byte   $54,$5D,$1B,$05,$FF,$00,$40,$1B
        .byte   $05,$FF,$00,$02,$1B,$03,$FF,$FE
        .byte   $FA,$1B,$07,$AA,$6A,$69,$AA,$5A
        .byte   $4A,$1B,$03,$2A,$0A,$AA,$BA,$BA
        .byte   $BE,$BE,$AE,$A0,$A8,$BF,$BF,$AF
        .byte   $AF,$AB,$AB,$AA,$2A,$1B,$05,$FF
        .byte   $00,$00,$EF,$1B,$05,$FF,$00,$1B
        .byte   $07,$FF,$00,$00,$C0,$C0,$F0,$FC
        .byte   $FF,$FF,$1B,$02,$C0,$30,$30,$0C
        .byte   $C0,$F1,$C0,$1B,$03,$30,$0D,$15
        .byte   $54,$0A,$00,$02,$02,$15,$55,$42
        .byte   $0A,$AA,$00,$AA,$AA,$00,$00,$AA
        .byte   $AA,$A0,$05,$95,$94,$00,$00,$80
        .byte   $A0,$15,$55,$50,$1B,$24,$00,$15
        .byte   $01,$1B,$02,$00,$1B,$02,$01,$50
        .byte   $54,$54,$1B,$03,$40,$1B,$11,$00
        .byte   $08,$08,$0A,$2A,$28,$08,$1B,$26
        .byte   $00,$02,$1B,$05,$00,$02,$1B,$05
        .byte   $00,$02,$00,$00,$20,$00,$08,$00
        .byte   $00,$0C,$00,$20,$00,$02,$00,$30
        .byte   $00,$80,$02,$00,$80,$30,$02,$80
        .byte   $02,$0A,$0A,$02,$22,$30,$02,$20
        .byte   $0C,$00,$82,$80,$08,$FF,$FF,$30
        .byte   $0C,$C0,$03,$30,$80,$FF,$FF,$0F
        .byte   $3F,$FC,$F0,$00,$C0,$55,$55,$50
        .byte   $50,$54,$55,$51,$55,$40,$1B,$04
        .byte   $00,$40,$1B,$09,$00,$01,$01,$05
        .byte   $05,$1B,$02,$15,$6A,$5A,$1B,$03
        .byte   $56,$5A,$59,$4A,$82,$82,$1B,$02
        .byte   $90,$56,$56,$80,$80,$A0,$A8,$28
        .byte   $28,$A0,$00,$2A,$2A,$1B,$04,$0A
        .byte   $02,$1B,$05,$00,$80,$A0,$1B,$17
        .byte   $00,$05,$15,$15,$1B,$04,$01,$40
        .byte   $1B,$02,$00,$1B,$03,$40,$02,$00
        .byte   $00,$1B,$02,$02,$00,$00,$AA,$00
        .byte   $00,$1B,$02,$AA,$00,$00,$80,$00
        .byte   $00,$1B,$02,$80,$1B,$63,$00,$08
        .byte   $0C,$0C,$3C,$FF,$3F,$01,$1B,$1E
        .byte   $00,$1B,$07,$3F,$1B,$05,$00,$03
        .byte   $1B,$04,$00,$0C,$00,$00,$02,$1B
        .byte   $02,$00,$08,$00,$80,$00,$0C,$00
        .byte   $20,$00,$03,$C0,$00,$00,$20,$30
        .byte   $00,$00,$0C,$1B,$02,$00,$80,$20
        .byte   $00,$00,$08,$00,$80,$00,$02,$00
        .byte   $00,$20,$00,$00,$80,$00,$00,$08
        .byte   $00,$C0,$03,$00,$C0,$00,$08,$00
        .byte   $08,$1B,$02,$00,$0C,$C0,$00,$0F
        .byte   $0F,$8F,$1B,$04,$0F,$C0,$CC,$C2
        .byte   $1B,$02,$C0,$CC,$C0,$08,$02,$20
        .byte   $00,$CC,$00,$00,$30,$1B,$07,$00
        .byte   $7E,$7A,$DA,$56,$55,$59,$54,$50
        .byte   $1B,$02,$AA,$A8,$A0,$0C,$3C,$3F
        .byte   $AA,$A8,$80,$1B,$04,$00,$05,$1B
        .byte   $02,$01,$1B,$03,$00,$1B,$0F,$55
        .byte   $1B,$02,$AA,$6A,$6A,$5A,$52,$50
        .byte   $82,$80,$1B,$03,$A8,$A0,$AA,$A5
        .byte   $29,$29,$05,$55,$65,$55,$56,$00
        .byte   $50,$95,$55,$7D,$1B,$02,$FF,$1B
        .byte   $05,$00,$C0,$F0,$1B,$0F,$00,$40
        .byte   $1B,$06,$00,$03,$0F,$03,$00,$00
        .byte   $1B,$02,$03,$1B,$02,$FF,$00,$00
        .byte   $1B,$02,$FF,$C0,$F0,$C0,$00,$00
        .byte   $1B,$02,$C0,$1B,$17,$00,$02,$1B
        .byte   $06,$00,$AF,$BE,$30,$30,$00,$1B
        .byte   $02,$55,$1B,$15,$00,$02,$2A,$1B
        .byte   $03,$00,$02,$2A,$AA,$A5,$3F,$3F
        .byte   $FF,$3F,$AA,$AA,$55,$55,$00,$00
        .byte   $C0,$00,$AA,$AA,$55,$55,$00,$C0
        .byte   $00,$00,$AA,$AA,$55,$55,$00,$00
        .byte   $03,$00,$AA,$AA,$55,$55,$1B,$03
        .byte   $00,$AA,$AA,$55,$55,$00,$03,$00
        .byte   $30,$AA,$AA,$55,$55,$1B,$03,$00
        .byte   $AA,$AA,$55,$55,$1B,$03,$00,$AA
        .byte   $AA,$55,$55,$00,$00,$02,$00,$AA
        .byte   $AA,$55,$55,$0C,$1B,$02,$00,$AA
        .byte   $AA,$55,$56,$0F,$0F,$3F,$0F,$AA
        .byte   $AA,$55,$A5,$C0,$C3,$F0,$C0,$A8
        .byte   $AA,$56,$55,$1B,$04,$00,$80,$A8
        .byte   $6A,$1B,$06,$00,$80,$1B,$07,$00
        .byte   $FF,$FC,$3C,$30,$00,$1B,$02,$55
        .byte   $1B,$0F,$00,$1B,$03,$55,$7F,$FF
        .byte   $FF,$75,$1B,$04,$55,$F5,$55,$57
        .byte   $1B,$06,$50,$F0,$2A,$05,$01,$01
        .byte   $1B,$03,$00,$56,$5A,$9A,$5A,$55
        .byte   $FF,$FC,$F0,$BC,$BC,$9F,$53,$40
        .byte   $1B,$02,$00,$FC,$3F,$0F,$1B,$1E
        .byte   $00,$03,$03,$1B,$02,$00,$01,$00
        .byte   $00,$FF,$FF,$1B,$02,$00,$55,$00
        .byte   $00,$C0,$C0,$1B,$02,$00,$40,$1B
        .byte   $1D,$00,$02,$2A,$1B,$07,$55,$00
        .byte   $00,$02,$2A,$1B,$03,$AA,$02,$2A
        .byte   $A9,$95,$55,$95,$A5,$AA,$AA,$95
        .byte   $1B,$04,$55,$AA,$55,$5F,$50,$54
        .byte   $1B,$02,$55,$AA,$1B,$02,$FF,$00
        .byte   $1B,$02,$55,$AA,$1B,$02,$FF,$00
        .byte   $1B,$02,$55,$AA,$1B,$02,$FF,$00
        .byte   $1B,$02,$55,$AA,$1B,$02,$FF,$00
        .byte   $1B,$02,$55,$AA,$1B,$02,$FF,$00
        .byte   $1B,$02,$55,$AA,$1B,$02,$FF,$00
        .byte   $1B,$02,$55,$AA,$1B,$02,$FF,$00
        .byte   $1B,$02,$55,$AA,$1B,$02,$FF,$00
        .byte   $1B,$02,$55,$AA,$1B,$02,$FF,$00
        .byte   $1B,$02,$55,$AA,$1B,$02,$FF,$00
        .byte   $1B,$02,$55,$AA,$AA,$EA,$FA,$0A
        .byte   $56,$54,$55,$1B,$02,$AA,$00,$95
        .byte   $95,$15,$55,$AA,$96,$A5,$05,$1B
        .byte   $03,$55,$AA,$A8,$6A,$56,$1B,$03
        .byte   $55,$AA,$00,$80,$A8,$6A,$56,$5A
        .byte   $AA,$AA,$1B,$07,$55,$1B,$04,$00
        .byte   $80,$A8,$AA,$00,$00,$1B,$05,$01
        .byte   $55,$57,$5F,$1B,$05,$7F,$1B,$06
        .byte   $FF,$FC,$FC,$1B,$05,$FF,$1B,$04
        .byte   $00,$1B,$02,$C0,$1B,$2F,$00,$01
        .byte   $01,$00,$00,$01,$05,$01,$00,$55
        .byte   $55,$00,$00,$1B,$02,$55,$00,$40
        .byte   $40,$00,$00,$40,$50,$40,$1B,$48
        .byte   $00,$1B,$FF,$1B,$02,$F6,$F8,$FA
        .byte   $FC,$1B,$0E,$C2,$1B,$0E,$3C,$1B
        .byte   $05,$24,$1B,$05,$C8,$1B,$17,$FE
        .byte   $1B,$02,$C2,$AE,$0E,$C8,$1B,$04
        .byte   $3C,$C2,$C2,$1B,$02,$3C,$F0,$84
        .byte   $84,$82,$82,$32,$34,$34,$36,$36
        .byte   $38,$38,$36,$1B,$06,$26,$1B,$05
        .byte   $C2,$F2,$F4,$F6,$F8,$FA,$FC,$C8
        .byte   $1B,$03,$3C,$84,$1B,$02,$82,$1B
        .byte   $02,$80,$1B,$03,$90,$1B,$02,$80
        .byte   $1B,$04,$82,$05,$1B,$02,$FF,$A0
        .byte   $05,$FF,$FF,$CF,$A0,$06,$FF,$FF
        .byte   $8F,$60,$0F,$FF,$FF,$C7,$F0,$04
        .byte   $7F,$FF,$CE,$10,$07,$0E,$0E,$04
        .byte   $E0,$04,$87,$B0,$80,$2E,$01,$CB
        .byte   $F8,$BE,$0E,$3E,$00,$1F,$FF,$8E
        .byte   $FF,$92,$BF,$B1,$FF,$FF,$E0,$5D
        .byte   $B9,$FF,$FF,$D5,$DB,$07,$FF,$FF
        .byte   $1B,$02,$00,$FB,$FF,$00,$00,$1C
        .byte   $7B,$F8,$00,$03,$FC,$1B,$00,$1B
        .byte   $F8,$00,$00,$16,$1B,$00,$1B,$F8
        .byte   $00,$00,$30,$1B,$00,$1B,$E8,$00
        .byte   $00,$30,$1B,$00,$1B,$F0,$3C,$DD
        .byte   $26,$9C,$C8,$1B,$FF
	.res	127,0

	.END
