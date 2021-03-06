
		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;	.ORG	$100
	.SEGMENT "SEG_1D_KEY"

	.BYTE	$55,$06,$00,$20,$4b,$94,$86,$01,$bd,$9f,$8b,$be,$cc,$ff,$9b,$70
	.BYTE	$be,$2f,$f0,$f7,$84,$83,$7d,$8f,$b8,$2f,$ba,$05,$0c,$b8,$69,$6c
	.BYTE	$1c,$f8,$39,$42,$ac,$4a,$ee,$a5,$df,$89,$2f,$20,$65,$af,$56,$85
	.BYTE	$8b,$d9,$bd,$45,$e5,$ae,$4b,$8a,$37,$c0,$56,$5e,$a4,$c6,$c4,$15
	.BYTE	$ed,$90,$55,$39,$61,$d0,$b7,$a2,$f8,$e7,$a2,$81,$69,$aa,$4b,$44
	.BYTE	$1d,$ea,$a6,$56,$d9,$f8,$3a,$cc,$0d,$46,$a4,$93,$70,$9b,$3f,$b4
	.BYTE	$fe,$98,$e8,$bb,$34,$74,$fc,$f6,$4a,$b6,$39,$54,$b6,$ee,$8c,$82
	.BYTE	$eb,$ce,$17,$fd,$14,$47,$53,$eb,$e0,$3d,$4c,$1c,$84,$46,$4f,$2f

;
; note: this macro must have a ":" label afterwards
; if it is not followed by another Item
;

.macro Item Type,Unknown1,Unknown2,Weight,Name
:		.BYTE	Type
		.BYTE	:++-:-
		.BYTE	Unknown1
		.BYTE	Unknown2
		.BYTE	Weight
		.BYTE	:+-:-
		.BYTE	Name
		.BYTE	0
:
.endmacro

off_67 = $67
off_6A = $6A
off_85 = $85

;		.ORG	$7600
	.SEGMENT "SEG_1D"

		.BYTE	$0D
; ---------------------------------------------------------------------------
		JMP	loc_7617
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_9406
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604^j	RAM:7607^j
		JSR	$184E
		INC	$1937
		INC	$1971
		RTS
; ---------------------------------------------------------------------------

loc_7617:				; CODE XREF: RAM:7601^j
		dldi	off_1977, loc_77D6
		LDX	#4

loc_7623:				; CODE XREF: RAM:762Avj
		LDA	$6318,X
		STA	$750D,X
		DEX
		BPL	loc_7623
		LDA	$751F
		ORA	$7520
		BNE	loc_76B0
		JSR	j_sub_2E31
		dmv	$751F, $630F
		dldi	off_8F1C, aJeff
		dldi	off_8F1E, aOmar
		LDA	$630A
		CMP	#$C
		BCC	:+
		dldi	off_8F1C, aOmar
		dldi	off_8F1E, aJeff

:
		ldi	$751B, $FF
		ldi	$69, $1F

loc_767B:				; CODE XREF: RAM:768Dvj
		LDA	RANDOM
		CMP	#$30
		ldxy	$7512
		LDA	$69
		JSR	j_SETBIT
		DEC	$69
		LDA	$69
		BPL	loc_767B
		LDA	#2
		STA	$69

loc_7693:				; CODE XREF: RAM:76A4vj
		LDA	#$F
		JSR	j_RND_A
		CLC
		ADC	#5
		LDX	$69
		STA	$7516,X
		DEC	$69
		LDA	$69
		BPL	loc_7693
		LDA	#$1E
		STA	$751D
		LDA	#$14
		STA	$751E

loc_76B0:				; CODE XREF: RAM:7632^j
		dldi	off_16, $8040
		JSR	$184B
		LDA	$1933
		STA	$62
		DEC	$1937
		DEC	$1971
		dldi	SEGADDR, $96F0
		ldi	SEGNO, $33
		JSR	j_SEGLOAD
		dldi	off_7, $96F0
		LDA	#2
		JSR	$180F
		ldi	$751C, $03
		JSR	j_sub_2E31
		LDA	$630F
		SEC
		SBC	$751F
		STA	$83
		LDA	$6310
		SBC	$7520
		BEQ	loc_7702
		ldi	$83, $FF

loc_7702:				; CODE XREF: RAM:76FC^j
		LDA	$83
		BNE	:+
		JMP	loc_779B
:
		CMP	#$30 ; '0'
		BCC	loc_7711
		LDA	#$30 ; '0'
		STA	$83

loc_7711:				; CODE XREF: RAM:770B^j	RAM:7798vj
		ldi	$69, $1F

loc_7715:				; CODE XREF: RAM:7743vj
		ldxy	$7512
		JSR	j_TESTBIT
		BCS	loc_772F
		LDA	RANDOM
		CMP	#$20
		LDA	$69
		ldxy	$7512
		JSR	j_SETBIT
		JMP	loc_773D
; ---------------------------------------------------------------------------

loc_772F:				; CODE XREF: RAM:771C^j
		LDA	RANDOM
		CMP	#$20
		LDA	$69
		ldxy	$7512
		JSR	j_SETBIT

loc_773D:				; CODE XREF: RAM:772C^j
		DEC	$69
		LDA	$69
		CMP	#5
		BCS	loc_7715
		LDX	#4

loc_7747:				; CODE XREF: RAM:775Cvj
		LDA	$7516,X
		BNE	loc_775B
		LDA	RANDOM
		CMP	#$20 ; ' '
		BCC	loc_775B
		LDA	#$14
		JSR	j_RND_A
		STA	$7516,X

loc_775B:				; CODE XREF: RAM:774A^j	RAM:7751^j
		DEX
		BPL	loc_7747
		LDA	#2
		JSR	j_RND_A
		SEC
		SBC	#1
		CLC
		ADC	$751D
		CMP	#$14
		BCS	loc_7770
		LDA	#$14

loc_7770:				; CODE XREF: RAM:776C^j
		CMP	#$29 ; ')'
		BCC	loc_7776
		LDA	#$28 ; '('

loc_7776:				; CODE XREF: RAM:7772^j
		STA	$751D
		LDA	#2
		JSR	j_RND_A
		SEC
		SBC	#1
		CLC
		ADC	$751E
		CMP	#$A
		BCS	loc_778B
		LDA	#$14

loc_778B:				; CODE XREF: RAM:7787^j
		CMP	#$1F
		BCC	loc_7791
		LDA	#$28 ; '('

loc_7791:				; CODE XREF: RAM:778D^j
		STA	$751E
		DEC	$83
		BEQ	loc_779B
		JMP	loc_7711
; ---------------------------------------------------------------------------

loc_779B:				; CODE XREF: RAM:7706^j	RAM:7796^j
		JSR	j_sub_2E31
		LDA	$630F
		STA	$751F
		LDA	$6310
		STA	$7520
		LDA	$6351
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	$1976
		CMP	#8
		BCC	loc_77BB
		LDA	#7

loc_77BB:				; CODE XREF: RAM:77B7^j
		STA	$65
		TAX
		LDA	unk_8ECE,X
		STA	$66
		LDX	$751B
		BMI	loc_77D1
		LDA	unk_8ECA,X
		CLC
		ADC	$66
		STA	$66
		RTS
; ---------------------------------------------------------------------------

loc_77D1:				; CODE XREF: RAM:77C6^j
		LDA	#2
		STA	$66
		RTS
; ---------------------------------------------------------------------------

loc_77D6:
		LDA	$751B
		CMP	#$FF
		BNE	loc_77ED
		dldi	off_16, byte_80FB
		LDA	#1
		STA	$751B
		JMP	loc_77F4
; ---------------------------------------------------------------------------

loc_77ED:				; CODE XREF: RAM:77DB^j
		ldxy	off_8DF5
		JSR	j_sub_2C9B

loc_77F4:				; CODE XREF: RAM:77EA^j
		JSR	sub_8022
		JMP	loc_780C
; ---------------------------------------------------------------------------
		LDA	#1
		STA	$751B

loc_77FF:				; CODE XREF: RAM:7883vj	RAM:7AFEvj ...
		LDA	$751B
		ldxy	$8DFD
		JSR	j_sub_2C9B
		JSR	sub_8022

loc_780C:				; CODE XREF: RAM:77F7^j	RAM:7851vj
		LDA	$62
		STA	$1933
		JSR	j_sub_3C2D

loc_7814:				; CODE XREF: RAM:7821vj
		JSR	j_sub_262F
		AND	#2
		BEQ	loc_781E
		JMP	loc_7853
; ---------------------------------------------------------------------------

loc_781E:				; CODE XREF: RAM:7819^j
		JSR	sub_8027
		BMI	loc_7814
		CMP	#'1'
		BNE	loc_782A
		JMP	loc_7867
; ---------------------------------------------------------------------------

loc_782A:				; CODE XREF: RAM:7825^j
		CMP	#'2'
		BNE	loc_7839
		LDA	#0
		STA	$7F
		LDA	#$F
		STA	$80
		JMP	loc_79D2
; ---------------------------------------------------------------------------

loc_7839:				; CODE XREF: RAM:782C^j
		CMP	#'3'
		BNE	loc_7848
		LDA	#$F
		STA	$7F
		LDA	#$1B
		STA	$80
		JMP	loc_79D2
; ---------------------------------------------------------------------------

loc_7848:				; CODE XREF: RAM:783B^j
		CMP	#'4'
		BNE	loc_784F
		JMP	loc_7CF1
; ---------------------------------------------------------------------------

loc_784F:				; CODE XREF: RAM:784A^j
		CMP	#'0'
		BNE	loc_780C

loc_7853:				; CODE XREF: RAM:781B^j	RAM:loc_7C31vj
		LDX	#4

loc_7855:				; CODE XREF: RAM:785Cvj
		LDA	$750D,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_7855
		STX	$AC00
		STX	$194B
		JMP	$180C
; ---------------------------------------------------------------------------

loc_7867:				; CODE XREF: RAM:7827^j	RAM:78CBvj ...
		dldi	off_16, $82F3
		JSR	sub_8022

loc_7872:				; CODE XREF: RAM:788Bvj
		LDA	$62
		STA	$1933
		JSR	j_sub_3C2D

loc_787A:				; CODE XREF: RAM:787Dvj
		JSR	sub_8027
		BMI	loc_787A
		CMP	#$30 ; '0'
		BNE	loc_7886
		JMP	loc_77FF
; ---------------------------------------------------------------------------

loc_7886:				; CODE XREF: RAM:7881^j
		SEC
		SBC	#$31 ; '1'
		CMP	#5
		BCS	loc_7872
		TAX
		STX	$71
		LDA	unk_8ED6,X
		STA	$6A
		LDA	unk_8EDB,X
		STA	$6B
		LDA	unk_8F2A,X
		BIT	$66
		BPL	loc_78AD
		CLC
		ADC	$66
		BEQ	loc_78A8
		BCS	loc_78B4

loc_78A8:				; CODE XREF: RAM:78A4^j
		LDA	#1
		JMP	loc_78B4
; ---------------------------------------------------------------------------

loc_78AD:				; CODE XREF: RAM:789F^j
		CLC
		ADC	$66
		BCC	loc_78B4
		LDA	#$FF

loc_78B4:				; CODE XREF: RAM:78A6^j	RAM:78AA^j ...
		STA	$6C
		LDA	$7516,X
		STA	$6D
		BNE	loc_78CE
		dldi	off_16, $8408
		JSR	sub_8022
		JSR	sub_801D
		JMP	loc_7867
; ---------------------------------------------------------------------------

loc_78CE:				; CODE XREF: RAM:78BB^j	RAM:78F0vj ...
		dldi	off_16, $83C7
		JSR	sub_8022
		JSR	sub_7FA1
		BCS	loc_7867
		BEQ	loc_7867
		BPL	loc_78F3
		dldi	off_16, $86C5
		JSR	sub_8022
		JSR	sub_801D
		JMP	loc_78CE
; ---------------------------------------------------------------------------

loc_78F3:				; CODE XREF: RAM:78E0^j
		LDA	$8A
		BEQ	loc_7908

loc_78F7:				; CODE XREF: RAM:790Cvj
		dldi	off_16, $8478
		JSR	sub_8022
		JSR	sub_801D
		JMP	loc_78CE
; ---------------------------------------------------------------------------

loc_7908:				; CODE XREF: RAM:78F5^j
		LDA	$6D
		CMP	$89
		BCC	loc_78F7
		LDA	$89
		STA	$6E
		CMP	#1
		BNE	loc_791D
		LDA	$6C
		STA	$89
		JMP	loc_793E
; ---------------------------------------------------------------------------

loc_791D:				; CODE XREF: RAM:7914^j
		STA	off_7
		LDA	$6C
		STA	$89
		LDA	#0
		STA	off_7+1
		STA	$8A
		JSR	sub_7FAF
		LDA	#3
		SEC
		SBC	$751B
		JSR	j_RND_A
		CLC
		ADC	$89
		STA	$89
		BCC	loc_793E
		INC	$8A

loc_793E:				; CODE XREF: RAM:791A^j	RAM:793A^j
		mv	$70, $89
		mv	$6F, $8A

loc_7946:				; CODE XREF: RAM:79CCvj
		LDA	$6E
		CMP	#1
		BNE	loc_7957
		dldi	off_16, $851F
		JMP	loc_795F
; ---------------------------------------------------------------------------

loc_7957:				; CODE XREF: RAM:794A^j
		dldi	off_16, $849D

loc_795F:				; CODE XREF: RAM:7954^j
		JSR	sub_8022

loc_7962:				; CODE XREF: RAM:7965vj
		JSR	sub_8027
		BMI	loc_7962
		CMP	#$31 ; '1'
		BNE	loc_79C8
		mv	$8A, $6F
		mv	$89, $70
		JSR	sub_7FCF
		BCC	loc_7993
		JSR	sub_7F6D
		JSR	sub_7F6D
		LDA	#2
		JSR	j_RND_A
		ldxy	off_85F1
		JSR	j_sub_2C9B
		JSR	sub_8022
		JSR	sub_801D
		JMP	loc_7867
; ---------------------------------------------------------------------------

loc_7993:				; CODE XREF: RAM:7976^j
		LDY	$71
		LDA	$7516,Y
		SEC
		SBC	$6E
		STA	$7516,Y
		LDA	$6E
		LDX	$8F17,Y
		JSR	j_ADDSTAT1
		LDA	RANDOM
		AND	#1
		BIT	$633B
		BPL	loc_79B2
		ORA	#2

loc_79B2:				; CODE XREF: RAM:79AE^j
		ldxy	$8662
		JSR	j_sub_2C9B
		JSR	sub_8022
		JSR	sub_801D
		JSR	sub_7F82
		JSR	sub_7F82
		JMP	loc_7867
; ---------------------------------------------------------------------------

loc_79C8:				; CODE XREF: RAM:7969^j
		CMP	#$32 ; '2'
		BEQ	loc_79CF
		JMP	loc_7946
; ---------------------------------------------------------------------------

loc_79CF:				; CODE XREF: RAM:79CA^j
		JMP	loc_7867
; ---------------------------------------------------------------------------

loc_79D2:				; CODE XREF: RAM:7836^j	RAM:7845^j ...
		LDA	#$FF
		STA	$87
		STA	$88
		LDA	$7F
		STA	$71
		LDA	#0
		STA	$7C
		STA	$7B
		STA	$7D

loc_79E4:				; CODE XREF: RAM:7AA8vj
		LDA	$71
		ldxy	$7512
		JSR	j_TESTBIT
		BCS	loc_79F2
		JMP	loc_7A98
; ---------------------------------------------------------------------------

loc_79F2:				; CODE XREF: RAM:79ED^j
		LDA	#0
		STA	$88
		LDX	$71
		LDA	unk_8F2F,X
		CLC
		BIT	$66
		BPL	loc_7A09
		ADC	$66
		BCS	loc_7A0F
		LDA	#1
		JMP	loc_7A0F
; ---------------------------------------------------------------------------

loc_7A09:				; CODE XREF: RAM:79FE^j
		ADC	$66
		BCC	loc_7A0F
		LDA	#$FF

loc_7A0F:				; CODE XREF: RAM:7A02^j	RAM:7A06^j ...
		STA	$6C
		LSR	A
		BNE	loc_7A16
		LDA	#1

loc_7A16:				; CODE XREF: RAM:7A12^j
		STA	$7A
		TXA
		ASL	A
		TAY
		LDA	off_8F65,Y
		STA	$76
		STA	$6A
		LDA	off_8F65+1,Y
		STA	$77
		STA	$6B
		LDA	#6
		CLC
		ADC	$6A
		STA	$6A
		BCC	loc_7A34
		INC	$6B

loc_7A34:				; CODE XREF: RAM:7A30^j
		LDY	$8F4A,X
		LDA	byte_8987,Y
		STA	$85
		LDA	byte_8989,Y
		STA	$86

loc_7A41:				; CODE XREF: RAM:loc_7B87vj
					; RAM:loc_7C6Evj ...
		LDA	$7B
		BEQ	loc_7A50
		dldi	off_16, $8B5B
		JMP	loc_7A6F
; ---------------------------------------------------------------------------

loc_7A50:				; CODE XREF: RAM:7A43^j
		LDA	$7C
		BEQ	loc_7A63
		LDA	#1
		JSR	j_RND_A
		ldxy	off_8A66
		JSR	j_sub_2C9B
		JMP	loc_7A6F
; ---------------------------------------------------------------------------

loc_7A63:				; CODE XREF: RAM:7A52^j
		LDA	#2
		JSR	j_RND_A
		ldxy	$8995
		JSR	j_sub_2C9B

loc_7A6F:				; CODE XREF: RAM:7A4D^j	RAM:7A60^j
		JSR	sub_8022

loc_7A72:				; CODE XREF: RAM:7B10vj
		mv	$1933, $62
		JSR	j_sub_3C2D

loc_7A7A:				; CODE XREF: RAM:7A7Dvj
		JSR	sub_8027
		BMI	loc_7A7A
		CMP	#$31 ; '1'
		BNE	loc_7A8D
		LDA	#0
		STA	$8A
		JSR	sub_7F82
		JMP	loc_7B16
; ---------------------------------------------------------------------------

loc_7A8D:				; CODE XREF: RAM:7A81^j
		CMP	#$32 ; '2'
		BNE	loc_7A94
		JMP	loc_7B8A
; ---------------------------------------------------------------------------

loc_7A94:				; CODE XREF: RAM:7A8F^j
		CMP	#$33 ; '3'
		BNE	loc_7B0C

loc_7A98:				; CODE XREF: RAM:79EF^j	RAM:7B84vj
		INC	$71
		LDA	#0
		STA	$7B
		STA	$7C
		STA	$7D
		LDA	$71
		CMP	$80
		BCS	loc_7AAB
		JMP	loc_79E4
; ---------------------------------------------------------------------------

loc_7AAB:				; CODE XREF: RAM:7AA6^j
		LDA	$7F
		BEQ	loc_7AC9
		BIT	$88
		BPL	loc_7ABE
		dldi	off_16, $8B85
		JMP	loc_7B01
; ---------------------------------------------------------------------------

loc_7ABE:				; CODE XREF: RAM:7AB1^j
		dldi	off_16, $8C10
		JMP	loc_7AE0
; ---------------------------------------------------------------------------

loc_7AC9:				; CODE XREF: RAM:7AAD^j
		BIT	$88
		BPL	loc_7AD8
		dldi	off_16, $8BC1
		JMP	loc_7B01
; ---------------------------------------------------------------------------

loc_7AD8:				; CODE XREF: RAM:7ACB^j
		dldi	off_16, $8C3D

loc_7AE0:				; CODE XREF: RAM:7AC6^j
		JSR	sub_8022

loc_7AE3:				; CODE XREF: RAM:7AFCvj
		LDA	$62
		STA	$1933
		JSR	j_sub_3C2D

loc_7AEB:				; CODE XREF: RAM:7AEEvj
		JSR	sub_8027
		BMI	loc_7AEB
		JSR	j_UPPER
		CMP	#'Y'
		BNE	loc_7AFA
		JMP	loc_79D2
; ---------------------------------------------------------------------------

loc_7AFA:				; CODE XREF: RAM:7AF5^j
		CMP	#'N'
		BNE	loc_7AE3
		JMP	loc_77FF
; ---------------------------------------------------------------------------

loc_7B01:				; CODE XREF: RAM:7ABB^j	RAM:7AD5^j
		JSR	sub_8022
		LDA	#$C
		JSR	j_sub_2BFC
		JMP	loc_77FF
; ---------------------------------------------------------------------------

loc_7B0C:				; CODE XREF: RAM:7A96^j
		CMP	#$30 ; '0'
		BEQ	loc_7B13
		JMP	loc_7A72
; ---------------------------------------------------------------------------

loc_7B13:				; CODE XREF: RAM:7B0E^j
		JMP	loc_77FF
; ---------------------------------------------------------------------------

loc_7B16:				; CODE XREF: RAM:7A8A^j	RAM:7CEEvj
		LDA	$71
		ASL	A
		TAX
		LDY	off_8F65,X
		LDA	off_8F65+1,X
		TAX
		JSR	j_sub_4B4D
		BPL	loc_7B37
		dldi	off_16, $8D59
		JSR	sub_8022
		JSR	sub_801D
		JMP	loc_77FF
; ---------------------------------------------------------------------------

loc_7B37:				; CODE XREF: RAM:7B24^j
		mv	$89, $6C
		JSR	sub_7FCF
		BCC	loc_7B64
		LDY	#2
		LDA	#$10
		STA	(off_41),Y
		JSR	j_sub_408B
		JSR	sub_7F6D
		JSR	sub_7F6D
		LDA	#2
		JSR	j_RND_A
		ldxy	$85F1
		JSR	j_sub_2C9B
		JSR	sub_8022
		JSR	sub_801D
		JMP	loc_77FF
; ---------------------------------------------------------------------------

loc_7B64:				; CODE XREF: RAM:7B3E^j
		LDA	RANDOM
		CMP	#$C0
		ldxy	$7512
		LDA	$71
		JSR	j_SETBIT
		LDA	#2
		JSR	j_RND_A
		ldxy	$8CD7
		JSR	j_sub_2C9B
		JSR	sub_8022
		JSR	sub_801D
		JMP	loc_7A98
; ---------------------------------------------------------------------------

loc_7B87:				; CODE XREF: RAM:7BAEvj	RAM:7BB0vj
		JMP	loc_7A41
; ---------------------------------------------------------------------------

loc_7B8A:				; CODE XREF: RAM:7A91^j	RAM:7BC2vj ...
		INC	$7D
		LDA	$7D
		CMP	#6
		BCC	loc_7BA0
		JSR	sub_7F6D
		dldi	off_16, $85B3
		JMP	loc_7C3C
; ---------------------------------------------------------------------------

loc_7BA0:				; CODE XREF: RAM:7B90^j	RAM:7C81vj ...
		dldi	off_16, $8CAF
		JSR	sub_8022
		JSR	sub_7FA1
		BCS	loc_7B87
		BEQ	loc_7B87
		BPL	loc_7BC5
		dldi	off_16,  $86C5
		JSR	sub_8022
		JSR	sub_801D
		JMP	loc_7B8A
; ---------------------------------------------------------------------------

loc_7BC5:				; CODE XREF: RAM:7BB2^j
		LDA	#1
		STA	$7C
		LDA	$8A
		BEQ	loc_7BE1
		JSR	sub_7F6D
		dldi	off_16, $8174
		JSR	sub_8022
		JSR	sub_801D
		JMP	loc_7B8A
; ---------------------------------------------------------------------------

loc_7BE1:				; CODE XREF: RAM:7BCB^j
		LDA	$89
		STA	$82
		LDA	$82
		CMP	$6C
		BCC	loc_7BF5
		LDA	$82
		STA	$6C
		JSR	sub_7F82
		JMP	loc_7CDC
; ---------------------------------------------------------------------------

loc_7BF5:				; CODE XREF: RAM:7BE9^j
		LDA	$7B
		BNE	loc_7C18

loc_7BF9:				; CODE XREF: RAM:7C1Fvj
		LDA	$82
		CMP	$7A
		BCC	loc_7C02
		JMP	loc_7C97
; ---------------------------------------------------------------------------

loc_7C02:				; CODE XREF: RAM:7BFD^j
		LDA	$751B
		ASL	A
		TAX
		LDA	off_7C10+1,X
		PHA
		LDA	off_7C10,X
		PHA
		RTS
; ---------------------------------------------------------------------------
off_7C10:	.WORD	loc_7C34-1	; DATA XREF: RAM:7C0B^r	RAM:7C07^r
		.WORD	loc_7C51-1
		.WORD	loc_7C71-1
		.WORD	loc_7C84-1
; ---------------------------------------------------------------------------

loc_7C18:				; CODE XREF: RAM:7BF7^j
		LDA	$65
		JSR	j_RND_A
		CMP	#$14
		BCS	loc_7BF9
		dldi	off_16, $855D
		JSR	sub_8022
		LDA	#8
		JSR	j_sub_2BFC

loc_7C31:
		JMP	loc_7853
; ---------------------------------------------------------------------------

loc_7C34:				; DATA XREF: RAM:off_7C10^o
		dldi	off_16, $8DB6

loc_7C3C:				; CODE XREF: RAM:7B9D^j
		JSR	sub_8022
		LDA	#8
		JSR	j_sub_2BFC
		LDA	$71
		ldxy	$7512
		CLC
		JSR	j_SETBIT
		JMP	loc_77FF
; ---------------------------------------------------------------------------

loc_7C51:				; DATA XREF: RAM:7C12^o
		ldi	$7B, $01
		LDA	$6C
		LSR	A
		STA	loc_7C5D+1
		LSR	A
		CLC

loc_7C5D:				; DATA XREF: RAM:7C58^w
		ADC	#$FF
		STA	$6C
		CMP	$82
		BEQ	loc_7C6B
		BCS	loc_7C6E
		mv	$6C, $82

loc_7C6B:				; CODE XREF: RAM:7C63^j
		JMP	loc_7CDC
; ---------------------------------------------------------------------------

loc_7C6E:				; CODE XREF: RAM:7C65^j
		JMP	loc_7A41
; ---------------------------------------------------------------------------

loc_7C71:				; DATA XREF: RAM:7C14^o
		dldi	off_16, $8B3B
		JSR	sub_8022
		LDA	#8
		JSR	j_sub_2BFC
		JMP	loc_7BA0
; ---------------------------------------------------------------------------

loc_7C84:				; DATA XREF: RAM:7C16^o
		dldi	off_16, $8AF7
		JSR	sub_8022
		LDA	#8
		JSR	j_sub_2BFC
		JMP	loc_7BA0
; ---------------------------------------------------------------------------

loc_7C97:				; CODE XREF: RAM:7BFF^j
		LDA	$6C
		STA	$87
		SEC
		SBC	$82
		LSR	A
		CLC
		BIT	$66
		BPL	loc_7CAD
		ADC	$66
		BCS	loc_7CB3
		LDA	#1
		JMP	loc_7CB3
; ---------------------------------------------------------------------------

loc_7CAD:				; CODE XREF: RAM:7CA2^j
		ADC	$66
		BCC	loc_7CB3
		LDA	#1

loc_7CB3:				; CODE XREF: RAM:7CA6^j	RAM:7CAA^j ...
		PHA
		LSR	A
		CLC
		ADC	$82
		STA	$7A
		PLA
		CLC
		ADC	$82
		STA	$6C
		CMP	$82
		BEQ	loc_7CDC
		BCS	loc_7CCD
		LDA	$82
		STA	$6C
		JMP	loc_7CDC
; ---------------------------------------------------------------------------

loc_7CCD:				; CODE XREF: RAM:7CC4^j
		LDA	$87
		CMP	$6C
		BCC	loc_7CD8
		BEQ	loc_7CD8
		JMP	loc_7A41
; ---------------------------------------------------------------------------

loc_7CD8:				; CODE XREF: RAM:7CD1^j	RAM:7CD3^j
		LDA	$82
		STA	$6C

loc_7CDC:				; CODE XREF: RAM:7BF2^j	RAM:loc_7C6B^j ...
		LDA	#2
		JSR	j_RND_A
		ldxy	$8AAF
		JSR	j_sub_2C9B
		JSR	sub_8022
		JSR	sub_801D
		JMP	loc_7B16
; ---------------------------------------------------------------------------

loc_7CF1:				; CODE XREF: RAM:784C^j	RAM:loc_7D6Evj ...
		dldi	off_16, str_8703
		JSR	sub_8022

loc_7CFC:				; CODE XREF: RAM:7D67vj
		mv	$1933, $62
		JSR	j_sub_3C2D

loc_7D04:				; CODE XREF: RAM:7D07vj
		JSR	sub_8027
		BMI	loc_7D04
		CMP	#$31 ; '1'
		BNE	loc_7D30
		LDA	$751E
		CLC
		ADC	$66
		STA	$6C
		dmv	$76, $63B7
		dldi	off_7D6C, $8835
		ldi	$81, $00
		JMP	loc_7D71
; ---------------------------------------------------------------------------

loc_7D30:				; CODE XREF: RAM:7D0B^j
		CMP	#$32 ; '2'
		BNE	loc_7D57
		LDA	$751D
		CLC
		ADC	$66
		STA	$6C
		dldi	off_7D6C, $87B8
		LDA	$63B9
		STA	$76
		LDA	$63BA
		STA	$77
		LDA	#2
		STA	$81
		JMP	loc_7D71
; ---------------------------------------------------------------------------

loc_7D57:				; CODE XREF: RAM:7D32^j
		CMP	#$33 ; '3'
		BNE	loc_7D65
		LDA	#$A
		CLC
		ADC	$66
		STA	$6C
		JMP	loc_7EB5
; ---------------------------------------------------------------------------

loc_7D65:				; CODE XREF: RAM:7D59^j
		CMP	#$30 ; '0'
		BNE	loc_7CFC
		JMP	loc_77FF
; ---------------------------------------------------------------------------
off_7D6C:	.WORD	$F64C		; DATA XREF: RAM:7D21^w	RAM:7D3E^w ...
; ---------------------------------------------------------------------------

loc_7D6E:				; CODE XREF: RAM:7D8Bvj	RAM:7D8Dvj
		JMP	loc_7CF1
; ---------------------------------------------------------------------------

loc_7D71:				; CODE XREF: RAM:7D2D^j	RAM:7D54^j ...
		dmv	off_16, off_7D6C
		JSR	sub_8022
		LDA	#0
		STA	$72
		STA	$73
		STA	$74
		STA	$75
		JSR	sub_7FA1
		BCS	loc_7D6E
		BEQ	loc_7D6E
		BPL	loc_7DA2
		dldi	off_16, $86C5
		JSR	sub_8022
		JSR	sub_801D
		JMP	loc_7D71
; ---------------------------------------------------------------------------

loc_7DA2:				; CODE XREF: RAM:7D8F^j
		LDA	$8A
		BEQ	loc_7DB7
		dldi	off_16, $822F
		JSR	sub_8022
		JSR	sub_801D
		JMP	loc_7D71
; ---------------------------------------------------------------------------

loc_7DB7:				; CODE XREF: RAM:7DA4^j
		LDA	$77
		CMP	$89
		LDA	$76
		SBC	$8A
		BCS	loc_7DD5
		dldi	off_16, $86E4
		JSR	sub_8022
		JSR	sub_801D
		JSR	sub_7F6D
		JMP	loc_7CF1
; ---------------------------------------------------------------------------

loc_7DD5:				; CODE XREF: RAM:7DBF^j
		LDX	$81
		LDA	$63B8,X
		SEC
		SBC	$89
		STA	$63B8,X
		LDA	$63B7,X
		SBC	$8A
		STA	$63B7,X
		LDA	$89
		STA	off_67
		LDA	$8A
		STA	off_67+1
		LDX	#$A
		LDY	#0
		LDA	$6C
		JSR	sub_7FC3
		LDA	$8A
		STA	$7A
		LDA	#0
		STA	$8A
		dmv	off_7, off_67
		JSR	sub_7FAF
		LDA	4
		ORA	5
		BEQ	loc_7E1B

loc_7E12:				; CODE XREF: RAM:7E28vj	RAM:7E51vj
		LDA	#$FF
		STA	$72
		STA	$73
		JMP	loc_7E2A
; ---------------------------------------------------------------------------

loc_7E1B:				; CODE XREF: RAM:7E10^j
		LDA	$89
		CLC
		ADC	$73
		STA	$73
		LDA	$8A
		ADC	$72
		STA	$72
		BCS	loc_7E12

loc_7E2A:				; CODE XREF: RAM:7E18^j
		LDA	$7A
		STA	$89
		LDA	#0
		STA	$8A
		dmv	off_7, off_67
		JSR	sub_7FAF
		LDX	#$A
		LDY	$8A
		LDA	$89
		JSR	sub_7FC3
		LDA	$89
		CLC
		ADC	$73
		STA	$73
		BCC	loc_7E53
		INC	$72
		BEQ	loc_7E12

loc_7E53:				; CODE XREF: RAM:7E4D^j
		LDA	$8A
		CLC
		ADC	$75
		STA	$75
		BCC	loc_7E66
		INC	$74
		BNE	loc_7E66
		LDA	#$FF
		STA	$74
		STA	$75

loc_7E66:				; CODE XREF: RAM:7E5A^j	RAM:7E5E^j
		LDA	$73
		CLC
		ADC	$63B2
		STA	$63B2
		LDA	$72
		ADC	$63B1
		STA	$63B1
		BCC	loc_7E81
		LDA	#$FF
		STA	$63B1
		STA	$63B2

loc_7E81:				; CODE XREF: RAM:7E77^j
		LDA	$75
		CLC
		ADC	$63B4
		STA	$63B4
		LDA	$74
		ADC	$63B3
		STA	$63B3
		BCC	loc_7E9C
		LDA	#$FF
		STA	$63B3
		STA	$63B4

loc_7E9C:				; CODE XREF: RAM:7E92^j
		dldi	off_16, $8784
		JSR	sub_8022
		LDA	#8
		JSR	j_sub_2BFC
		JSR	sub_7F82
		JSR	sub_7F82
		JMP	loc_7CF1
; ---------------------------------------------------------------------------

loc_7EB5:				; CODE XREF: RAM:7D62^j
		dldi	off_16, str_88A6
		JSR	sub_8022

loc_7EC0:				; CODE XREF: RAM:7ED9vj
		LDA	$62
		STA	$1933
		JSR	j_sub_3C2D

loc_7EC8:				; CODE XREF: RAM:7ECBvj
		JSR	sub_8027
		BMI	loc_7EC8
		JSR	j_UPPER
		CMP	#'N'
		BNE	loc_7ED7
		JMP	loc_7CF1
; ---------------------------------------------------------------------------

loc_7ED7:				; CODE XREF: RAM:7ED2^j
		CMP	#'Y'
		BNE	loc_7EC0
		LDA	$6C
		STA	$89
		LDA	#0
		STA	$8A
		JSR	sub_7FCF
		BCC	loc_7EFF
		dldi	off_16, $8954
		JSR	sub_8022
		JSR	sub_801D
		JSR	sub_7F6D
		JSR	sub_7F6D
		JMP	loc_77FF
; ---------------------------------------------------------------------------

loc_7EFF:				; CODE XREF: RAM:7EE6^j
		LDX	#$A
		LDY	$63B5
		LDA	$63B6
		JSR	sub_7FC3
		LDA	$89
		CLC
		ADC	$63B4
		STA	$63B4
		BCC	loc_7F22
		INC	$63B3
		BNE	loc_7F22
		LDA	#$FF
		STA	$63B3
		STA	$63B4

loc_7F22:				; CODE XREF: RAM:7F13^j	RAM:7F18^j
		LDA	$8A
		STA	$63B6
		LDA	#0
		STA	$63B5
		LDX	#$A
		LDY	$63B3
		LDA	$63B4
		JSR	sub_7FC3
		LDA	$89
		CLC
		ADC	$63B2
		STA	$63B2
		BCC	loc_7F4F
		INC	$63B1
		BNE	loc_7F4F
		LDA	#$FF
		STA	$63B1
		STA	$63B2

loc_7F4F:				; CODE XREF: RAM:7F40^j	RAM:7F45^j
		LDA	#0
		STA	$63B3
		LDA	$8A
		STA	$63B4
		dldi	off_16, $8944
		JSR	sub_8022
		JSR	sub_801D
		JSR	sub_7F82
		JMP	loc_7CF1

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7F6D:				; CODE XREF: RAM:7978^p	RAM:797B^p ...
		DEC	$751C
		BPL	locret_7F81
		DEC	$751B
		BPL	locret_7F81
		LDA	#0
		STA	$751B
		LDA	#7
		STA	$751C

locret_7F81:				; CODE XREF: sub_7F6D+3^j sub_7F6D+8^j
		RTS
; End of function sub_7F6D


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7F82:				; CODE XREF: RAM:79BF^p	RAM:79C2^p ...
		INC	$751C
		LDA	$751C
		CMP	#8
		BCC	locret_7FA0
		INC	$751B
		LDA	#0
		STA	$751C
		LDA	$751B
		CMP	#4
		BCC	locret_7FA0
		LDA	#3
		STA	$751B

locret_7FA0:				; CODE XREF: sub_7F82+8^j sub_7F82+17^j
		RTS
; End of function sub_7F82


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7FA1:				; CODE XREF: RAM:78D9^p	RAM:7BAB^p ...
		JSR	j_sub_2AA0
		PHP
		dmv	$89, $02
		PLP
		RTS
; End of function sub_7FA1


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7FAF:				; CODE XREF: RAM:7929^p	RAM:7E09^p ...
		dmv	$02, $89
		JSR	$18A2
		dmv	$89, $02
		RTS
; End of function sub_7FAF


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7FC3:				; CODE XREF: RAM:7DF6^p	RAM:7E43^p ...
		JSR	$18B1
		LDA	2
		STA	$89
		LDA	3
		STA	$8A
		RTS
; End of function sub_7FC3


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7FCF:				; CODE XREF: RAM:7973^p	RAM:7B3B^p ...
		LDY	#3

loc_7FD1:				; CODE XREF: sub_7FCF+9vj
		LDA	$63B1,Y
		STA	$72,Y
		DEY
		BPL	loc_7FD1

loc_7FDA:				; CODE XREF: sub_7FCF:loc_8001vj
		LDA	$75
		CMP	$89
		LDA	$74
		SBC	$8A
		BCS	loc_8004
		LDA	$73
		ORA	$72
		SEC
		BNE	loc_7FEC
		RTS
; ---------------------------------------------------------------------------

loc_7FEC:				; CODE XREF: sub_7FCF+1A^j
		LDA	$73
		SBC	#1
		STA	$73
		BCS	loc_7FF6
		DEC	$72

loc_7FF6:				; CODE XREF: sub_7FCF+23^j
		LDA	#$A
		CLC
		ADC	$75
		STA	$75
		BCC	loc_8001
		INC	$74

loc_8001:				; CODE XREF: sub_7FCF+2E^j
		JMP	loc_7FDA
; ---------------------------------------------------------------------------

loc_8004:				; CODE XREF: sub_7FCF+13^j
		LDA	$75
		SBC	$89
		STA	$75
		LDA	$74
		SBC	$8A
		STA	$74
		LDY	#3

loc_8012:				; CODE XREF: sub_7FCF+4Avj
		LDA	$72,Y
		STA	$63B1,Y
		DEY
		BPL	loc_8012
		CLC
		RTS
; End of function sub_7FCF


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_801D:				; CODE XREF: RAM:78C8^p	RAM:78ED^p ...
		LDA	#4
		JMP	j_sub_2BFC
; End of function sub_801D


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8022:				; CODE XREF: RAM:loc_77F4^p RAM:7809^p ...
		LDX	$62
		JMP	j_sub_3C5C
; End of function sub_8022


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8027:				; CODE XREF: RAM:loc_781E^p
					; RAM:loc_787A^p ...
		dldi	off_1977, loc_8034
		JMP	$1806
; End of function sub_8027

; ---------------------------------------------------------------------------

loc_8034:
		LDA	$31
		RTS
; ---------------------------------------------------------------------------

loc_8037:				; DATA XREF: RAM:8405vo	RAM:849Avo ...
		LDA	#0
; ---------------------------------------------------------------------------
		.BYTE	$2C
; ---------------------------------------------------------------------------

loc_803A:				; DATA XREF: RAM:83CBvo	RAM:847Cvo ...
		LDA	#$FF
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------
		.BYTE	$A8,$FF
		.BYTE	$A8
		MOVEXY	0,2
aWhichItem531q:	.BYTE	"Which item (5-31) ?",$FF
byte_805A:	MOVEXY	0,0		; DATA XREF: RAM:8DFBvo
aWelcome:	.BYTE	$A5,"Welcome "
		.BYTE	$B3
		.WORD	$6321
		.BYTE	$1C
		.BYTE	'!',$0D
aWhatCan:	.BYTE	$A5,"What can "
		PRINTSTRP off_8F1C, 4
aHelpYouWithTod:.BYTE	" help you with today?",$0D
		.BYTE	$AC
		.WORD	byte_81A6
byte_8093:	MOVEXY	0,0		; DATA XREF: RAM:8DF9vo
aGreetingsAdven:.BYTE	$A5,"Greetings adventurer, what may I",$0D
aHelpYouWithT_0:.BYTE	$A5,"help you with today?",$0D
		.BYTE	$AC
		.WORD	byte_81A6
byte_80D1:	MOVEXY	0,0		; DATA XREF: RAM:8DF7vo
aWelcomeWhatCan:.BYTE	$A5,"Welcome, what can I help you with?",$0D
		.BYTE	$AC
		.WORD	byte_81A6

byte_80FB:
		MOVEXY	0,0
		.BYTE	$A5,"Welcome to our shoppe. I am "
		PRINTSTRP off_8F1C, 4
		.BYTE	", "
		PRINTSTRP off_8F1E, 4
aS:		.BYTE	"'s",$0D
aTwinBrother_Ho:.BYTE	$A5,"twin brother.  How can I help you?",$0D
		.BYTE	$AC
		.WORD	byte_81A6
byte_814F:	MOVEXY	0,0		; DATA XREF: RAM:8DF5vo
aWhatAreYouHere:.BYTE	$A5,"What are you here for, churl?",$0D
		.BYTE	$AC
		.WORD	byte_81A6
		MOVEXY	0,1
aQuitThyJesting:.BYTE	$A5,"Quit thy jesting and make a",$D,$D
aSeriousOffer:	.BYTE	$A5,"serious offer!",$D,$FF
byte_81A6:	MOVEXY	5,3		; DATA XREF: RAM:8091^o	RAM:80CF^o ...
		MenuItem "1","Stocking up on provisions"
		MOVEXY	5,4
		MenuItem "2","Selecting battle gear"
		MOVEXY	5,5
		MenuItem "3","Choosing some apparel"
		MOVEXY	5,6
		MenuItem "4","Exchanging currency"
		MOVEXY	5,7
		MenuItem "0","Leave"
		.BYTE	$FF
		MOVEXY	0,1
aWhatDoYouThink:.BYTE	$A5,"What do you think this is?  Gram's Gold",$D,$D
aExchangeqICanT:.BYTE	$A5,"exchange?!  I can't spend all day",$D,$D
aCountingCoins:	.BYTE	$A5,"counting coins!",$D,$FF

byte_8292:	MOVEXY	9,3		; DATA XREF: RAM:8E58vo	RAM:8E8Cvo
		MenuItem "1","Provisions"
		MOVEXY	9,4
		MenuItem "2","Battle gear"
		MOVEXY	9,5
		MenuItem "3","Clothing"
		MOVEXY	9,6
		MenuItem "4","Currency exchange"
		MOVEXY	9,7
		MenuItem "0","Leave"
		.BYTE	$FF

		MOVEXY	0,0
aWhatProvisions:.BYTE	$A5,"What provisions are you interested in?",$D
		MOVEXY	6,2
		MenuItem "1","Nourishing food packets"
		MOVEXY	6,3
		MenuItem "2","Delicious water flasks"
		MOVEXY	6,4
		MenuItem "3","Bright torches"
		MOVEXY	6,5
		MenuItem "4","Reliable compasses"
		MOVEXY	6,6
		MenuItem "5","Accurate timepieces"
		MOVEXY	6,7
		MenuItem "0","Buy something else"
		.BYTE	$FF

		MOVEXY	0,0
		STRJSR	loc_803A
aHowMany:	.BYTE	$A5,"How many "
		PRINTSTRP off_6A, 19
aDoYouWant:	.BYTE	" do you want",$0D,$0D
aAt_0:		.BYTE	$A5,"at "
		.BYTE	$B2
		.WORD	$6C
		.BYTE	2
aSilversEachq:	.BYTE	" silvers each?",$0D
		MOVEXY	16,4
		.BYTE	">"
		STRJSR	loc_8037
		.BYTE	$FF
		MOVEXY	0,1
aIMSorryButISee:.BYTE	$A5,"I'm sorry, but I seem to be out of",$0D,$0D
aStockInThatPar:.BYTE	$A5,"stock in that particular item.  I",$0D,$0D
aExpectMyNextSh:.BYTE	$A5,"expect my next shipment tommorow.",$0D,$FF
		MOVEXY	0,2
		STRJSR	loc_803A
aIOnlyHave:	.BYTE	$A5,"I only have "
		.BYTE	$B2
		.WORD	$6D
		.BYTE	3
aOnHand_:	.BYTE	" on hand.",$0D
		STRJSR	loc_8037
		.BYTE	$FF
		STRJSR	loc_803A
		MOVEXY	0,1
aLetSSee___:	.BYTE	$A5,"Let's see..."
		.BYTE	$B2
		.WORD	$6E
		.BYTE	3
		.BYTE	' '
		PRINTSTRP off_6A, 19
aAt:		.BYTE	" at",$0D
		.BYTE	$A5
		.BYTE	$B2
		.WORD	$6C
		.BYTE	3
aSilversEachCom:.BYTE	" silvers each comes to a total",$0D
aOf:		.BYTE	$A5,"of "
		.BYTE	$B1
		.WORD	$6F
		.BYTE	6
aSilvers_:	.BYTE	" silvers.",$0D
byte_84F3:	.BYTE	$A6, $B,	6	; DATA XREF: RAM:855Bvo
		MenuItem "1","Agree to sale"
		.BYTE	$A6, $B,	7
		MenuItem "2","Forget it"
		.BYTE	$A3
		.WORD	loc_8037
		.BYTE	$FF
		.BYTE	$A3
		.WORD	loc_803A
		.BYTE	$A6,  0,	1
		.BYTE	$A5
aThatWillBe:	.BYTE	"That will be "
		.BYTE	$B2
		.WORD	$6C
		.BYTE	3
aSilversForOneO:.BYTE	" silvers for one of",$0D
aMyFine:	.BYTE	$A5,"my fine "
		PRINTSTRP off_6A, 20
a_:		.BYTE	'.',$0D
		.BYTE	$AC
		.WORD	byte_84F3
		MOVEXY	0,1
		.BYTE	$A5,"Leave my shoppe and don't return",$0D,$0D
		.BYTE	$A5,"until you are ready to make a decent",$0D,$0D
		.BYTE	$A5,"offer!",$0D,$FF
		MOVEXY	0,1
		.BYTE	$A5
aITireOfBargain:.BYTE	"I tire of bargaining, this item is"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aNoLongerForSal:.BYTE	"no longer for sale."
		.BYTE	$D
		.BYTE	$FF

off_85F1:
		.WORD	byte_85F7
		.WORD	byte_8622
		.WORD	byte_8622
byte_85F7:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:85F1^o
		.BYTE	$A5
aThineEyesAreBi:.BYTE	"Thine eyes are bigger than thy purse!"
		.BYTE	$D
		.BYTE	$FF
byte_8622:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:85F3^o	RAM:85F5^o
		.BYTE	$A5
aThouWouldBeWis:.BYTE	"Thou would be wise to check thy funds"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aBeforePurchasi:.BYTE	"BEFORE purchasing!"
		.BYTE	$D
		.BYTE	$FF
		.WORD	byte_866A
		.WORD	byte_8683
		.WORD	byte_869E
		.WORD	byte_86B5
byte_866A:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:8662^o
		.BYTE	$A5
aThankYouKindSi:.BYTE	"Thank you kind sir!"
		.BYTE	$D
		.BYTE	$FF
byte_8683:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:8664^o
		.BYTE	$A5
aAThousandBless:.BYTE	"A thousand blessings."
		.BYTE	$D
		.BYTE	$FF
byte_869E:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:8666^o
		.BYTE	$A5
aThankYouMadam_:.BYTE	"Thank you, madam."
		.BYTE	$D
		.BYTE	$FF
byte_86B5:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:8668^o
		.BYTE	$A5
aBlessYou:	.BYTE	"Bless you!"
		.BYTE	$D
		.BYTE	$FF
		.BYTE	$A6,  0,	2
		.BYTE	$A5
aInvalidEntryTr:.BYTE	"Invalid entry, try again."
		.BYTE	$D
		.BYTE	$FF

		.BYTE	$A6,  0,	2
		STRJSR	loc_803A
		.BYTE	$A5
aYouOnlyHave:	.BYTE	"You only have "
		.BYTE	$B1
		.WORD	$76
		.BYTE	6
		.BYTE	"!"
		.BYTE	$D
		STRJSR	loc_8037
		.BYTE	$FF

str_8703:
		MOVEXY	0,0
aWhatWouldYouLi:.BYTE	$A5,"What would you like to exchange?",$0D
		MOVEXY	8,3
		MenuItem "1","Gems for coins"
		MOVEXY	8,4
		MenuItem "2","Jewels for coins"
		MOVEXY	8,5
		MenuItem "3","Silver & copper coins"
		MOVEXY	8,7
		MenuItem "0","Done"
		.BYTE	$FF
		MOVEXY	0,2
		STRJSR	loc_803A
aHereIs:	.BYTE	$A5,"Here is "
		.BYTE	$B1
		.WORD	$72
		.BYTE	6
aGoldAnd:	.BYTE	" gold and "
		.BYTE	$B1
		.WORD	$74
		.BYTE	6
aSilverCoins_:	.BYTE	" silver coins."
		.BYTE	$D
		STRJSR	loc_8037
		.BYTE	$FF
		MOVEXY	0,0
		.BYTE	$A3
		.WORD	$803A
aICanTTellOneJe:.BYTE	$A5,"I can't tell one jewel from another",$0D,$0D
aSoIPayAFlatRat:.BYTE	$A5,"so I pay a flat rate of "
		.BYTE	$B2
		.WORD	$6C
		.BYTE	3
aPerJewel_:	.BYTE	" per jewel.",$0D,$0D
aHowManyDoYouWi:.BYTE	$A5,"How many do you wish to sell?",$0D
		MOVEXY	16,6
		.BYTE	'>'
		STRJSR	loc_8037
		.BYTE	$FF

		MOVEXY	0,0
		STRJSR	loc_803A
aIWillGiveYou:	.BYTE	$A5,"I will give you "
		.BYTE	$B2
		.WORD	$6C
		.BYTE	3
aSilvers:	.BYTE	" silvers",$0D,$0D
aForEachGemBigO:.BYTE	$A5,"for each gem, big or small.",$0D,$0D
aHowManyWouldYo:.BYTE	$A5,"How many would you like to exchange?",$0D
		MOVEXY	16,6
		.BYTE	'>'
		.BYTE	$A3
		.WORD	loc_8037
		.BYTE	$FF

str_88A6:
		.BYTE	$A6,  0,	0
		.BYTE	$A3
		.WORD	loc_803A
		.BYTE	$A5
aFor:		.BYTE	"For "
		.BYTE	$B2
		.WORD	$6C
		.BYTE	3
aSilversIWillEx:.BYTE	" silvers I will exchange all"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aOfYourSilverCo:.BYTE	"of your silver & copper coins for gold."
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aThisWillLessen:.BYTE	"This will lessen your load."
		.BYTE	$D
		.BYTE	$A6,  0,	6
		.BYTE	$A5
aWouldYouLikeTh:.BYTE	"Would you like this? ("
		.BYTE	$A1
aY:		.BYTE	"Y"
		.BYTE	$A0
aOr:		.BYTE	" or "
		.BYTE	$A1
aN:		.BYTE	"N"
		.BYTE	$A0
		.BYTE	")"
		.BYTE	$D
		.BYTE	$A3
		.WORD	loc_8037
		.BYTE	$FF
		.BYTE	$A6,  0,	2
		.BYTE	$A5
aItSDone_:	.BYTE	"It's done."
		.BYTE	$D

		.BYTE	$FF
		.BYTE	$A6,  0,	2
		.BYTE	$A5
aHaYouHavenTEve:.BYTE	"HA!  You haven't even the silver"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5,"to pay me!",$0D,$FF

byte_8987:
		.BYTE	$8B
		.BYTE	$8C

byte_8989:
		.BYTE	$89
		.BYTE	$89
		.BYTE	0
aPairOf:	.BYTE	"pair of ",0
		.WORD	byte_899B
		.WORD	byte_89CE
		.WORD	byte_89CE

byte_899B:	MOVEXY	0,0
		STRJSR	loc_803A
aHowAboutA:	.BYTE	$A5,"How about a "
		PRINTSTRP off_85, 8
		PRINTSTRP off_6A, 25
		.BYTE	$0D,$0D
aFor_0:		.BYTE	$A5,"for "
		.BYTE	$B2
		.WORD	$6C
		.BYTE	3
aSilversq:	.BYTE	" silvers?"
		.BYTE	$D
		.BYTE	$AC
		.WORD	byte_89FC
byte_89CE:	.BYTE	$A6,  0,	0	; DATA XREF: RAM:8997^o	RAM:8999^o
		STRJSR loc_803A
aHereSA:	.BYTE	$A5,"Here's a "
		PRINTSTRP off_85, 8
		PRINTSTRP off_6A, 25
		.BYTE	$0D,$0D
aFor_1:		.BYTE	$A5,"for "
		.BYTE	$B2
		.WORD	$6C
		.BYTE	3
aSilversq_0:	.BYTE	" silvers?",$0D,$0D
byte_89FC:	MOVEXY	8,4
		MenuItem "1","Agree to price"
		MOVEXY	8,5
		MenuItem "2","Make an offer"
		MOVEXY	8,6
		MenuItem "3","Look at the next item"
		MOVEXY	8,7
		MenuItem "0","Buy something else"
		STRJSR	loc_8037
		.BYTE	$FF

off_8A66:
		.WORD	byte_8A6A
		.WORD	byte_8A8D
byte_8A6A:	.BYTE	$A6,  0,	1	; DATA XREF: RAM:8A66^o
		.BYTE	$A3
		.WORD	loc_803A
		.BYTE	$A5
aWouldYouConsid:.BYTE	"Would you consider "
		.BYTE	$B2
		.WORD	$6C
		.BYTE	3
aq:		.BYTE	'?'
		.BYTE	$D
		.BYTE	$AC
		.WORD	byte_89FC
byte_8A8D:	.BYTE	$A6,  0,	1	; DATA XREF: RAM:8A68^o
		.BYTE	$A3
		.WORD	loc_803A
		.BYTE	$A5
aHowAbout:	.BYTE	"How about "
		.BYTE	$B2
		.WORD	$6C
		.BYTE	3
aSilversq_1:	.BYTE	" silvers?",$D
		.BYTE	$AC
		.WORD	byte_89FC
		.WORD	byte_8AB5
		.WORD	byte_8AC2
		.WORD	byte_8AD5
byte_8AB5:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:8AAF^o
		.BYTE	$A5
aAgreed:	.BYTE	"Agreed!"
		.BYTE	$D
		.BYTE	$FF
byte_8AC2:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:8AB1^o
		.BYTE	$A5
aILlTakeIt:	.BYTE	"I'll take it!"
		.BYTE	$D
		.BYTE	$FF
byte_8AD5:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:8AB3^o
		.BYTE	$A3
		.WORD	loc_803A
		.BYTE	$A5
aSoldFor:	.BYTE	"Sold for "
		.BYTE	$B2
		.WORD	$6C
		.BYTE	3
aSilvers_0:	.BYTE	" silvers!"
		.BYTE	$D
		.BYTE	$A3
		.WORD	$8037
		.BYTE	$FF
		.BYTE	$A6,  0,	1
		.BYTE	$A5
aSurelyYouJestY:.BYTE	"Surely you jest! You take the food"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aFromMyChildren:.BYTE	"from my childrens mouths!"
		.BYTE	$D
		.BYTE	$FF
		.BYTE	$A6,  0,	2
		.BYTE	$A5
aIPaidMoreForIt:.BYTE	"I paid more for it myself!"
		.BYTE	$D
		.BYTE	$FF
		.BYTE	$A6,  0,	1
		.BYTE	$A3
		.WORD	loc_803A
		.BYTE	$A5
aIDemandAtLeast:.BYTE	"I demand at least "
		.BYTE	$B2
		.WORD	$6C
		.BYTE	3
aSilvers_1:	.BYTE	" silvers!",$D
		.BYTE	$AC
		.WORD	$89FC

		MOVEXY	0,1
		.BYTE	$A5,"I have no apparel at the moment, try",$0D,$0D
		.BYTE	$A5,"again tommorow.",$0D,$FF

		MOVEXY	0,1
		.BYTE	$A5,"Sorry but I'm all sold out of battle",$0D,$0D
		.BYTE	$A5,"gear.  I should get some tommorow.",$0D,$FF

		MOVEXY	0,0
		.BYTE	$A5,"You've seen all the apparel I have on",$0D
		.BYTE	$AC
		.WORD	str_8C63

		MOVEXY	0,0
aThatSAllTheBat:.BYTE	$A5,"That's all the battle gear I have",$0D
str_8C63:	.BYTE	$D		; DATA XREF: RAM:8C3B^o
		.BYTE	$A5,"on hand today.  Would you care to look",$0D,$0D
		.BYTE	$A5,"it over again?",$0D

		MOVEXY	0,7
		.BYTE	$A5,'('
		.BYTE	$A1
aY_0:		.BYTE	'Y'
		.BYTE	$A0
aOr_0:		.BYTE	" or "
		.BYTE	$A1
aN_0:		.BYTE	'N'
		.BYTE	$A0
		.BYTE	')'
		.BYTE	$D
		.BYTE	$FF
		.BYTE	$A6,  0,	2
		.BYTE	$A5
aHowManySilvers:.BYTE	"How many silvers do you offer?"
		.BYTE	$D
		.BYTE	$A6,$10,	4
		.BYTE	'>'
		.BYTE	$FF
		.WORD	byte_8CDD
		.WORD	byte_8D09
		.WORD	byte_8D40
byte_8CDD:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:8CD7^o
aAFinePurchaseI:.BYTE	"A fine purchase if I must say so myself!"
		.BYTE	$FF

byte_8D09:	MOVEXY	0,0
aAWiseChoice:	.BYTE	$A5,"A wise choice!",$0D,$0D
aThe:		.BYTE	$A5,"The "
		PRINTSTRP off_6A, 25
		.BYTE	$0D,$0D
aShallServeYouW:.BYTE	$A5,"shall serve you well.",$0D,$FF
byte_8D40:	MOVEXY	0,2
aExcellentDecis:.BYTE	$A5,"Excellent decision!",$0D,$FF
		MOVEXY	0,0
aYouAreUnableTo:.BYTE	$A5,"You are unable to carry this",$0D,$0D
		.BYTE	$A5
		.BYTE	$B4
		.WORD	$6A
		.BYTE	$19
a_ComeBack:	.BYTE	".  Come back"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aWhenYouHaveDis:.BYTE	"when you have disposed of some items."
		.BYTE	$D
		.BYTE	$FF
		MOVEXY	0,2
aIfThatsYourAtt:.BYTE	$A5,"If thats your attitude that item is",$0D,$0D
aNoLongerForS_0:.BYTE	$A5,"no longer for sale!",$0D,$FF

off_8DF5:	.WORD	byte_814F
		.WORD	byte_80D1
		.WORD	byte_8093
		.WORD	byte_805A
		.WORD	byte_8E05
		.WORD	byte_8E5A
		.WORD	byte_8E5A
		.WORD	byte_8E8E

byte_8E05:	.BYTE	$A6,  0,	0	; DATA XREF: RAM:8DFD^o
		.BYTE	$A5
aAreYouJustGoin:.BYTE	"Are you just going to stand there or"
		.BYTE	$D
		.BYTE	$A5
aAreYouGoingToT:.BYTE	"are you going to tell me what you want?"
		.BYTE	$D
		.BYTE	$AC
		.WORD	byte_8292
byte_8E5A:	.BYTE	$A6,  0,	0	; DATA XREF: RAM:8DFF^o	RAM:8E01^o
		.BYTE	$A5
aIsThereAnythin:.BYTE	"Is there anything else I can help"
		.BYTE	$D
		.BYTE	$A5
aYouWithq:	.BYTE	"you with?"
		.BYTE	$D
		.BYTE	$AC
		.WORD	byte_8292
byte_8E8E:	.BYTE	$A6,  0,	0	; DATA XREF: RAM:8E03^o
		.BYTE	$A5
aIsThereAnyth_0:.BYTE	"Is there anything more I can do for"
		.BYTE	$D
		.BYTE	$A5
aYouMyFriendq:	.BYTE	"you, my friend?"
		.BYTE	$D
		.BYTE	$AC
		.WORD	byte_81A6
unk_8ECA:	.BYTE	3		; DATA XREF: RAM:77C8^r
		.BYTE	1
		.BYTE	0
		.BYTE	$FE ; þ
unk_8ECE:	.BYTE	0		; DATA XREF: RAM:77BE^r
		.BYTE	0
		.BYTE	$FF
		.BYTE	$FE ; þ
		.BYTE	$FE ; þ
		.BYTE	$FD ; ý
		.BYTE	$FC ; ü
		.BYTE	$FB ; û
unk_8ED6:	.BYTE	$E0 ; à		; DATA XREF: RAM:7890^r
		.BYTE	$ED ; í
		.BYTE	$FA ; ú
		.BYTE	2
		.BYTE	 $C
unk_8EDB:	.BYTE	$8E ; 		; DATA XREF: RAM:7895^r
		.BYTE	$8E ; 
		.BYTE	$8E ; 
		.BYTE	$8F ; 
		.BYTE	$8F ; 
aFoodPackets:	.BYTE	"food packets",0
aWaterFlasks:	.BYTE	"water flasks",0
aTorches:	.BYTE	"torches",0
aCompasses:	.BYTE	"compasses",0
aTimepieces:	.BYTE	"timepieces",0
		.BYTE	$BB ; »
		.BYTE	$BC ; ¼
		.BYTE	$BD ; ½
		.BYTE	$C0 ; À
		.BYTE	$C1 ; Á
off_8F1C:	.WORD	aOmar		; DATA XREF: RAM:7645^w	RAM:7660^w ...
off_8F1E:	.WORD	aJeff		; DATA XREF: RAM:764F^w	RAM:766A^w ...
aOmar:		.BYTE	"Omar",0
aJeff:		.BYTE	"Jeff",0
unk_8F2A:	.BYTE	4		; DATA XREF: RAM:789A^r
		.BYTE	2
		.BYTE	2
		.BYTE	 $A
		.BYTE	$14
unk_8F2F:	.BYTE	$7D ; }		; DATA XREF: RAM:79F8^r
		.BYTE	$32 ; 2
		.BYTE	$32 ; 2
		.BYTE	$19
		.BYTE	$14
		.BYTE	$19
		.BYTE	$28 ; (
		.BYTE	$2D ; -
		.BYTE	$2D ; -
		.BYTE	$32 ; 2
		.BYTE	$4B ; K
		.BYTE	$64 ; d
		.BYTE	$7D ; }
		.BYTE	$50 ; P
		.BYTE	$64 ; d
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	 $A
		.BYTE	$32 ; 2
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	$14
		.BYTE	$14
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$50 ; P
		.BYTE	0
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
off_8F65:	.WORD	unk_8F9B		; DATA XREF: RAM:7A1B^r	RAM:7B1A^r ...
		.WORD	unk_8FC4
		.WORD	unk_8FEB
		.WORD	unk_9011
		.WORD	unk_9033
		.WORD	unk_9056
		.WORD	iNastyKnife
		.WORD	iWhip
		.WORD	iStaff
		.WORD	iWoodenClub
		.WORD	iBattleAxe
		.WORD	unk_9127
		.WORD	unk_914D
		.WORD	unk_9172
		.WORD	unk_9199
		.WORD	unk_91C0
		.WORD	unk_91E0
		.WORD	unk_91FC
		.WORD	unk_9215
		.WORD	iSnowshoes
		.WORD	unk_9264
		.WORD	unk_927F
		.WORD	unk_929B
		.WORD	unk_92BA
		.WORD	unk_92D6
		.WORD	unk_92F3
		.WORD	unk_9310

unk_8F9B:
		Item	$04,$01,$00,$08,"Leather Breastplate"
		.BYTE	$00,$01,$23,$22,$00,$00,$11,$00,$00,$00,$00,$00,$00,$23,$28

unk_8FC4:
		Item	$04,$01,$00,$01,"Leather Gauntlets"
		.BYTE	$00,$02,$23,$22,$00,$00,$11,$00,$00,$00,$00,$00,$00,$23,$28

unk_8FEB:
		Item	$04,$01,$00,$04,"Leather Leggings"
		.BYTE	$00,$03,$23,$22,$00,$00,$11,$00,$00,$00,$00,$00,$00,$23,$28

unk_9011:
		Item	$04,$01,$00,$02,"Leather Helm"
		.BYTE	$00,$00,$23,$22,$00,$00,$11,$00,$00,$00,$00,$00,$00,$23,$28

unk_9033:
		Item	$03,$01,$00,$01,"Stiletto"
		.BYTE	$00,$FF,$00,$00,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$08,$10,$15,$49,$01

unk_9056:
		Item	$03,$01,$00,$01,"Dagger"
		.BYTE	$00,$FF,$00,$00,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$06,$10,$14,$01,$02

iNastyKnife:
		Item	$03,$01,$00,$01,"Nasty Knife"
		.BYTE	$00,$FF,$00,$00,$16,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$07,$12,$16,$01,$05

iWhip:
		Item	$03,$01,$00,$04,"Whip"
		.BYTE	$00,$FF,$00,$12,$12,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$08,$12,$16,$4C,$01

iStaff:
		Item	$03,$01,$00,$03,"Staff"
		.BYTE	$00,$FF,$00,$16,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$12,$32,$37,$8F,$40

iWoodenClub:
		Item	$03,$01,$00,$0A,"Wooden Club"
		.BYTE	$00,$FF,$00,$17,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$02,$32,$37,$4A,$04

iBattleAxe:
		Item	$03,$01,$00,$0A,"Battle Axe"
		.BYTE	$00,$FF,$00,$12,$27,$00,$00,$00,$00,$00,$00,$00,$00,$00,$16,$10,$32,$37,$00,$10

unk_9127:
		Item	$03,$01,$00,$05,"Short Sword"
		.BYTE	$00,$FF,$00,$00,$23,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$0A,$1E,$23,$00,$10

unk_914D:
		Item	$03,$01,$00,$0D,"Long Sword"
		.BYTE	$00,$FF,$00,$11,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0E,$10,$23,$28,$00,$10

unk_9172:
		Item	$03,$01,$00,$08,"Small Shield"
		.BYTE	$00,$FF,$00,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$01,$28,$2D,$02,$40

unk_9199:
		Item	$03,$01,$00,$0A,"Large Shield"
		.BYTE	$00,$FF,$00,$16,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$01,$2D,$32,$02,$60

unk_91C0:
		Item	$05,$01,$00,$01,"Green Cap with Feather"
		.BYTE	$00,$02,$01

unk_91E0:
		Item	$05,$01,$00,$01,"Floppy Leather Hat"
		.BYTE	$00,$03,$02

unk_91FC:
		Item	$05,$01,$00,$01,"Leather Sandals"
		.BYTE	$00,$02,$01

unk_9215:
		Item	$05,$01,$00,$02,"High Leather Boots"
		.BYTE	$00,$04,$04

iSnowshoes:
		Item	$05,$01,$00,$02,"Snowshoes"
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$81,$7C,$00,$01,$01,$0A,$00
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$91,$7C,$00,$01,$01,$0A,$00
		.BYTE	$00,$00,$00

unk_9264:
		Item	$05,$01,$00,$01,"White Cotton Robe"
		.BYTE	$00,$01,$02

unk_927F:
		Item	$05,$01,$00,$01,"White Cotton Tunic"
		.BYTE	$00,$02,$02

unk_929B:
		Item	$05,$01,$00,$01,"Brown Cotton Breeches"
		.BYTE	$00,$02,$03

unk_92BA:
		Item	$05,$01,$00,$01,"Green Cotton Skirt"
		.BYTE	$00,$02,$03

unk_92D6:
		Item	$05,$01,$00,$01,"Flowing Purple Cape"
		.BYTE	$00,$0A,$03

unk_92F3:
		Item	$05,$01,$00,$01,"Blue Woolen Sweater"
		.BYTE	$00,$05,$0F

unk_9310:
		Item	$05,$01,$00,$01,"Heavy Leather Jacket"
		.BYTE	$00,$0F,$0F
:

unk_932E:	.BYTE	$70		; DATA XREF: RAM:935Evo
		.BYTE	$70
		.BYTE	$30
		.BYTE	$42
		.WORD	$400
		.BYTE	$80
		.BYTE	2
		.BYTE	$80
		.BYTE	2
		.BYTE	$80
		.BYTE	2
		.BYTE	$80
		.BYTE	2
		.BYTE	$80
		.BYTE	6
		.BYTE	0
		.BYTE	$44
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
		.BYTE	$42
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
		.BYTE	$41
		.WORD	unk_932E
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
		STA	$D000
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
		STX	$D016
		STY	COLPF2
		LDX	#$23
		LDY	$BBDC,X

loc_93C4:				; CODE XREF: RAM:93E9vj
		LDA	$BB94,X
		STA	WSYNC
		STA	COLPF1
		STY	COLPF3
		LDA	$BB4C,X
		STA	CHBASE
		LDA	$BB70,X
		STA	WSYNC
		STA	$D016
		LDA	$BBB8,X
		STA	COLPF2
		LDY	$BBDB,X
		DEX
		BPL	loc_93C4
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

loc_9406:				; CODE XREF: RAM:760A^j
		LDA	#$7F
		STA	$253
		LDA	#$2E
		STA	$254
		LDA	#$93
		STA	$255
		LDA	#8
		LDX	#$23

loc_9419:				; CODE XREF: RAM:9427vj
		LDY	#$C

loc_941B:				; CODE XREF: RAM:9422vj
		STA	$BB4C,X
		DEX
		BMI	loc_9429
		DEY
		BNE	loc_941B
		CLC
		ADC	#4
		BNE	loc_9419

loc_9429:				; CODE XREF: RAM:941F^j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	sub_9521
		LDA	#$70
		STA	9
		LDA	#$BB
		STA	$A
		JSR	sub_9521
		LDA	#0
		STA	loc_944F+1
		LDA	#$BD
		STA	loc_944F+2
		LDY	#3
		LDA	#0
		LDX	#$80

loc_944F:				; CODE XREF: RAM:9453vj	RAM:9459vj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_944F
		INC	loc_944F+2
		DEY
		BNE	loc_944F
		LDX	#7

loc_945D:				; CODE XREF: RAM:9461vj
		STA	$D000,X
		DEX
		BPL	loc_945D
		LDA	#3
		TAX

loc_9466:				; CODE XREF: RAM:946Avj
		STA	$D008,X
		DEX
		BPL	loc_9466
		ldi	SIZEM, $FF
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_9494:				; CODE XREF: RAM:94BAvj
		LDY	6
		LDA	(off_7),Y
		STA	4
		LDY	#7

loc_949C:				; CODE XREF: RAM:94A7vj
		LSR	4
		BCC	loc_94A6
		LDA	(off_9),Y
		ORA	#$80
		STA	(off_9),Y

loc_94A6:				; CODE XREF: RAM:949E^j
		DEY
		BPL	loc_949C
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_94B4
		INC	$A

loc_94B4:				; CODE XREF: RAM:94B0^j
		INC	6
		LDA	6
		CMP	#$2D
		BCC	loc_9494
		LDA	#$2D
		STA	off_7
		LDX	#0
		STX	6
		dldi	$F0, $BDA9

loc_94CC:				; CODE XREF: RAM:94DDvj
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
		BCC	loc_94CC

loc_94DF:				; CODE XREF: RAM:94FCvj
		LDX	#0

loc_94E1:				; CODE XREF: RAM:94FAvj
		LDY	6
		LDA	(off_7),Y
		LDY	#4

loc_94E7:				; CODE XREF: RAM:94ECvj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_94E7
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D
		BCS	loc_94FE
		CPX	#$A
		BCC	loc_94E1
		BCS	loc_94DF

loc_94FE:				; CODE XREF: RAM:94F6^j
		LDX	#3
		LDA	$BC5F

loc_9503:				; CODE XREF: RAM:9507vj
		STA	COLPM0,X
		DEX
		BPL	loc_9503
		dldi	off_24A, $9360
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

sub_9521:				; CODE XREF: RAM:9431^p	RAM:943C^p ...
		LDY	#0
		LDA	(off_7),Y
		inc16	off_7
		CMP	#$1B
		BEQ	loc_953A
		STA	(off_9),Y
		inc16	off_9
		JMP	sub_9521
; ---------------------------------------------------------------------------

loc_953A:				; CODE XREF: RAM:952D^j
		LDA	(off_7),Y
		inc16	off_7
		CMP	#$FF
		BNE	loc_9547
		RTS
; ---------------------------------------------------------------------------

loc_9547:				; CODE XREF: RAM:9544^j
		STA	byte_9581
		ADC	off_9
		STA	loc_955A+1
		LDA	off_9+1
		ADC	#0
		CMP	#$14
		BNE	loc_955F
		LDA	byte_9581

loc_955A:				; DATA XREF: RAM:954C^w
		SBC	#$FF
		STA	byte_9581

loc_955F:				; CODE XREF: RAM:9555^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_9567
		INC	off_7+1

loc_9567:				; CODE XREF: RAM:9563^j
		LDY	byte_9581

loc_956A:				; CODE XREF: RAM:956Dvj
		STA	(off_9),Y
		DEY
		BPL	loc_956A
		INC	byte_9581
		LDA	byte_9581
		CLC
		ADC	off_9
		STA	off_9
		BCC	loc_957E
		INC	off_9+1

loc_957E:				; CODE XREF: RAM:957A^j
		JMP	sub_9521
; ---------------------------------------------------------------------------
byte_9581:	.RES	127,$00		; DATA XREF: RAM:loc_9547^w RAM:9557^r ...

; end of 'RAM'


		.END
