		.include	"equates.inc"
		.include	"exp_kernel.inc"
		.include	"globals.inc"

;		.ORG	$8000

sub_8000:				; CODE XREF: RAM:807Ep
		LDA	#$40 ; '@'
		STA	$236
		LDA	#0
		STA	$D20E
		STA	$D40E
		STA	$22F
		STA	$256
		TAX

loc_8014:				; CODE XREF: sub_8000+17j
		STA	0,X
		INX
		BNE	loc_8014
		LDA	#7
		STA	$237
		LDA	#$97 ; '—'
		STA	$20E
		LDA	#$22 ; '"'
		STA	$20F
		LDA	#$4F ; 'O'
		STA	$20C
		LDA	#$22 ; '"'
		STA	$20D
		LDA	#$E7 ; 'з'
		STA	$20A
		LDA	#$21 ; '!'
		STA	$20B
		LDA	#$AC ; '¬'
		STA	$216
		LDA	#$22 ; '"'
		STA	$217
		LDA	#$53 ; 'S'
		STA	$208
		LDA	#$26 ; '&'
		STA	$209
		LDA	#$9D ; 'ќ'
		STA	$254
		LDA	#$19
		STA	$255
		LDA	#$47 ; 'G'
		STA	$222
		LDA	#$23 ; '#'
		STA	$223
		JSR	sub_819E
		LDA	$258
		ASL	A
		ROL	A
		ROL	A
		AND	#3
		JSR	sub_8158
		LDA	#$40 ; '@'
		STA	$D40E
		LDA	$236
		STA	$D20E
		RTS
; End of function sub_8000

; ---------------------------------------------------------------------------
		JSR	sub_8000
		LDA	#$14
		STA	$D409
		JSR	sub_80BC
		JSR	sub_809F
		LDA	#0
		JSR	$1A0D
		LDA	#$40 ; '@'
		STA	$236
		STA	$D20E
		JSR	sub_80D2
		JMP	$2EC6

; ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ S U B	R O U T	I N E ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ


sub_809F:				; CODE XREF: RAM:8089p
		LDX	#2
		LDA	#0

loc_80A3:				; CODE XREF: sub_809F+Ej
		STA	$18C1,X
		STA	$18C4,X
		STA	$18C7,X
		DEX
		BPL	loc_80A3
		STA	$1F
		STA	$20
		STA	$21
		STA	$25
		STA	$24
		STA	$26
		RTS
; End of function sub_809F


; ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ S U B	R O U T	I N E ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ


sub_80BC:				; CODE XREF: RAM:8086p
		LDA	#7
		STA	$1900
		LDA	#0
		STA	$265
		STA	$2E
		STA	$18FF
		STA	$2F
		LDA	#$FF
		STA	$30
		RTS
; End of function sub_80BC


; ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ S U B	R O U T	I N E ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ


sub_80D2:				; CODE XREF: RAM:8099p
		LDX	#$1F

loc_80D4:				; CODE XREF: sub_80D2+9j
		LDA	aSystemInitiali,X ; "	  System Initialization	     "
		STA	$197C,X
		DEX
		BPL	loc_80D4
		JSR	$245D

loc_80E0:				; CODE XREF: sub_80D2+39j
		LDX	#3
		STX	6

loc_80E4:				; CODE XREF: sub_80D2+34j
		LDX	6
		LDA	#$FF
		STA	$24E,X
		INX
		TXA
		AND	#$F
		ORA	#$30 ; '0'
		STA	$230
		JSR	$24A3
		BMI	loc_8104
		LDX	6
		LDA	byte_818A,X
		STA	$1998,X
		INC	$24E,X

loc_8104:				; CODE XREF: sub_80D2+25j
		DEC	6
		BPL	loc_80E4
		LDA	$24E,X
		BMI	loc_80E0
		LDA	#$31 ; '1'
		STA	$230
		LDA	#4
		STA	6
		LDA	#$80 ; 'Ђ'
		STA	9
		LDA	#2
		STA	$A
		LDA	#2
		STA	$2501
		LDA	#0
		STA	$2502

loc_8128:				; CODE XREF: sub_80D2+81j
		LDA	$2501
		STA	$232
		LDA	$2502
		STA	$233

loc_8134:				; CODE XREF: sub_80D2+65j
		JSR	$248E
		BMI	loc_8134
		LDY	#0

loc_813B:				; CODE XREF: sub_80D2+6Fj
		LDA	$100,Y
		STA	(9),Y
		INY
		BPL	loc_813B
		LDA	9
		CLC
		ADC	#$80 ; 'Ђ'
		STA	9
		BCC	loc_814E
		INC	$A

loc_814E:				; CODE XREF: sub_80D2+78j
		INC	$2501
		DEC	6
		BNE	loc_8128
		JMP	$27D8
; End of function sub_80D2


; ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ S U B	R O U T	I N E ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ


sub_8158:				; CODE XREF: sub_8000+6Fp
		ASL	A
		ASL	A
		TAX
		LDY	#0

loc_815D:				; CODE XREF: sub_8158+Fj
		LDA	a48k,X		; " 48K"
		STA	aSystemInitiali,Y ; "	  System Initialization	     "
		INX
		INY
		CPY	#4
		BCC	loc_815D
		RTS
; End of function sub_8158

; ---------------------------------------------------------------------------
aSystemInitiali:.BYTE "     System Initialization      " ; DATA XREF: sub_80D2:loc_80D4r
					; sub_8158+8w
byte_818A:	.BYTE '1','2','3','4'   ; DATA XREF: sub_80D2+29r
a48k:		.BYTE " 48K"            ; DATA XREF: sub_8158:loc_815Dr
aqqk:		.BYTE " ??K"
a64k:		.BYTE " 64K"
a128k:		.BYTE "128K"

; ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ S U B	R O U T	I N E ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ


sub_819E:				; CODE XREF: sub_8000+64p
		SEI
		LDA	#0
		STA	$258
		LDA	$D01F
		CMP	#5
		BEQ	loc_8221
		LDA	#$FE ; 'ю'
		STA	PORTB
		LDA	$D800
		TAX
		INX
		STX	$D800
		CPX	$D800
		BNE	loc_821C
		DEX
		CMP	$D800
		BEQ	loc_821C
		LDA	#$23 ; '#'
		STA	7
		LDA	#$82 ; '‚'
		STA	8
		LDA	#0
		STA	9
		LDA	#$F9 ; 'щ'
		STA	$A
		LDX	#7
		LDY	#0
		JSR	$2E0D
		LDA	#$80 ; 'Ђ'
		STA	$258
		LDA	$D01F
		CMP	#3
		BEQ	loc_821C
		LDX	$4000
		STX	4
		LDA	#$E2 ; 'в'
		STA	PORTB
		INX
		STX	$4000
		LDA	#$FE ; 'ю'
		STA	PORTB
		CPX	$4000
		BNE	loc_8205
		DEX
		STX	$4000
		JMP	loc_821C
; ---------------------------------------------------------------------------

loc_8205:				; CODE XREF: sub_819E+5Ej
		LDA	#$E2 ; 'в'
		STA	PORTB
		DEC	$4000
		LDX	$4000
		CPX	4
		BNE	loc_821C
		LDA	#$C0 ; 'А'
		STA	$258
		JSR	$F9CF

loc_821C:				; CODE XREF: sub_819E+1Dj sub_819E+23j ...
		LDA	#$FE ; 'ю'
		STA	PORTB

loc_8221:				; CODE XREF: sub_819E+Bj
		CLI
		RTS
; End of function sub_819E

; ---------------------------------------------------------------------------
		LDA	SEGNO
		CMP	#8
		BCS	loc_825A
		STA	$F9CE
		LDA	#0
		STA	7
		LDA	#$AC ; '¬'
		STA	8
		LDA	#0
		STA	9
		LDA	#$C0 ; 'А'
		STA	$A
		LDX	#$10
		LDY	#0
		JSR	$2E0D
		LDA	#0
		STA	7
		LDA	#$BC ; 'ј'
		STA	8
		LDA	#0
		STA	9
		LDA	#$D8 ; 'Ш'
		STA	$A
		LDX	#4
		LDY	#0
		BEQ	loc_8271

loc_825A:				; CODE XREF: RAM:8228j
		STA	$F9CD
		LDA	#$F0 ; 'р'
		STA	7
		LDA	#$96 ; '–'
		STA	8
		LDA	#0
		STA	9
		LDA	#$DC ; 'Ь'
		STA	$A
		LDX	#$15
		LDY	#$10

loc_8271:				; CODE XREF: RAM:8258j
		JSR	$2E0D
		CLC
		RTS
; ---------------------------------------------------------------------------
		LDA	SEGNO
		CMP	#8
		BCS	loc_82AF
		CMP	$F9CE
		BNE	loc_82CD
		LDA	#0
		STA	7
		LDA	#$C0 ; 'А'
		STA	8
		LDA	#0
		STA	9
		LDA	#$AC ; '¬'
		STA	$A
		LDX	#$10
		LDY	#0
		JSR	$2E0D
		LDA	#0
		STA	7
		LDA	#$D8 ; 'Ш'
		STA	8
		LDA	#0
		STA	9
		LDA	#$BC ; 'ј'
		STA	$A
		LDX	#4
		LDY	#0
		BEQ	loc_82C8

loc_82AF:				; CODE XREF: RAM:827Bj
		CMP	$F9CD
		BNE	loc_82CD
		LDA	#0
		STA	7
		LDA	#$DC ; 'Ь'
		STA	8
		LDA	#$F0 ; 'р'
		STA	9
		LDA	#$96 ; '–'
		STA	$A
		LDX	#$15
		LDY	#$10

loc_82C8:				; CODE XREF: RAM:82ADj
		JSR	$2E0D
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_82CD:				; CODE XREF: RAM:8280j	RAM:82B2j
		SEC
		RTS
; ---------------------------------------------------------------------------
		BIT	$D40F
		BPL	loc_82D7
		JMP	($200)
; ---------------------------------------------------------------------------

loc_82D7:				; CODE XREF: RAM:82D2j
		PHA
		LDA	$D40F
		AND	#$20 ; ' '
		BEQ	loc_82E2
		JMP	$D800
; ---------------------------------------------------------------------------

loc_82E2:				; CODE XREF: RAM:82DDj
		TXA
		PHA
		TYA
		PHA
		STA	$D40F
		JMP	($222)
; ---------------------------------------------------------------------------
		CLD
		JMP	($216)
; ---------------------------------------------------------------------------
		.BYTE $FF
		.BYTE $FF
; ---------------------------------------------------------------------------
		LDX	#$FF

loc_82F4:				; CODE XREF: RAM:82F9j
		TXA
		DEX
		STA	$FBA5,X
		BNE	loc_82F4
		STX	$FCA4
		LDX	#0

loc_8300:				; CODE XREF: RAM:8307j
		TXA
		INX
		STA	$FCA5,X
		CPX	#$FF
		BNE	loc_8300
		LDA	#$FF
		LDX	#$FE ; 'ю'

loc_830D:				; CODE XREF: RAM:8314j
		STA	$FDA5,X
		STA	$FEA5,X
		DEX
		BNE	loc_830D
		RTS
; ---------------------------------------------------------------------------
		LDA	#$80 ; 'Ђ'
		STA	$25D
		LDY	$233
		STY	$263
		LDA	$232
		STA	$262
		LSR	A
		BCS	loc_8341
		ROL	A
		SEC
		SBC	#1
		STA	$260
		STA	$25E
		TYA
		SBC	#0
		STA	$261
		STA	$25F
		JMP	$FA33
; ---------------------------------------------------------------------------

loc_8341:				; CODE XREF: RAM:8329j
		ROL	A
		STA	$25E
		STY	$25F
		ADC	#1
		STA	$260
		BCC	loc_8350
		INY

loc_8350:				; CODE XREF: RAM:834Dj
		STY	$261
		ASL	$25D
		LDX	#0

loc_8358:				; CODE XREF: RAM:8364j	RAM:836Fj
		LDA	$FBA5,X
		BEQ	loc_839B
		TAX
		LDA	$FDA5,X
		CMP	$25E
		BNE	loc_8358
		LDA	$25F
		ORA	$25C
		CMP	$FEA5,X
		BNE	loc_8358
		BIT	$264
		BPL	loc_837E
		LDA	#$FF
		STA	$FEA5,X
		JMP	$FA78
; ---------------------------------------------------------------------------

loc_837E:				; CODE XREF: RAM:8374j
		JSR	$FB62
		JSR	$FB73
		JSR	$FB88
		STA	$FA6D
		STY	$FA6E
		LDY	#0

loc_838F:				; CODE XREF: RAM:8396j
		LDA	$FFFF,Y
		STA	$100,Y
		INY
		BPL	loc_838F
		JMP	$FB4C
; ---------------------------------------------------------------------------

loc_839B:				; CODE XREF: RAM:835Bj
		BIT	$25B
		BMI	loc_83CC
		LDA	$1903
		STA	$232
		LDA	$1904
		STA	$233
		LDA	#2
		STA	6

loc_83B0:				; CODE XREF: RAM:83B7j
		JSR	$248E
		BPL	loc_83BC
		DEC	6
		BNE	loc_83B0

loc_83B9:				; CODE XREF: RAM:83C4j
		JMP	$FB0C
; ---------------------------------------------------------------------------

loc_83BC:				; CODE XREF: RAM:83B3j
		LDX	#3

loc_83BE:				; CODE XREF: RAM:83C7j
		LDA	$100,X
		CMP	$1905,X
		BNE	loc_83B9
		DEX
		BPL	loc_83BE
		DEC	$25B

loc_83CC:				; CODE XREF: RAM:839Ej
		LDA	$260
		STA	$232
		LDA	$261
		STA	$233
		LDA	#2
		STA	6

loc_83DC:				; CODE XREF: RAM:83E3j
		JSR	$248E
		BPL	loc_83E7
		DEC	6
		BNE	loc_83DC
		BEQ	loc_842F

loc_83E7:				; CODE XREF: RAM:83DFj
		LDX	$FDA4
		JSR	$FB88
		STY	$FAD9
		EOR	#$80 ; 'Ђ'
		STA	$FAD8
		LDY	#0

loc_83F7:				; CODE XREF: RAM:83FEj
		LDA	$100,Y
		STA	$FFFF,Y
		INY
		BPL	loc_83F7
		LDA	#$FE ; 'ю'
		STA	PORTB
		LDA	#$40 ; '@'
		STA	$D40E
		CLI
		LDX	$FDA4
		LDA	#$FF
		STA	$FEA5,X
		STA	$FDA5,X
		LDA	$262
		STA	$232
		LDA	$263
		STA	$233
		LDA	#2
		STA	6

loc_8426:				; CODE XREF: RAM:842Dj
		JSR	$248E
		BPL	loc_8443
		DEC	6
		BNE	loc_8426

loc_842F:				; CODE XREF: RAM:83E5j
		LDA	$262
		STA	$232
		LDA	$263
		STA	$233
		LDA	#0
		STA	$25B
		LDY	#$FF
		RTS
; ---------------------------------------------------------------------------

loc_8443:				; CODE XREF: RAM:8429j
		LDX	$FDA4
		LDA	$25F
		ORA	$25C
		STA	$FEA5,X
		LDA	$25E
		STA	$FDA5,X
		JSR	$FB62
		JSR	$FB73
		JSR	$FB88
		STA	$FB47
		STY	$FB48
		LDY	#0

loc_8466:				; CODE XREF: RAM:846Dj
		LDA	$100,Y
		STA	$FFFF,Y
		INY
		BPL	loc_8466
		INC	$232
		BNE	loc_8477
		INC	$233

loc_8477:				; CODE XREF: RAM:8472j
		LDA	#$FE ; 'ю'
		STA	PORTB
		LDA	#$40 ; '@'
		STA	$D40E
		CLI
		LDY	#1
		RTS
; ---------------------------------------------------------------------------
		LDY	$FCA5,X
		LDA	$FBA5,X
		STA	$FBA5,Y
		TAY
		LDA	$FCA5,X
		STA	$FCA5,Y
		RTS
; ---------------------------------------------------------------------------
		LDA	$FBA5
		STA	$FBA5,X
		STX	$FBA5
		TAY
		LDA	$FCA5,Y
		STA	$FCA5,X
		TXA
		STA	$FCA5,Y
		RTS
; ---------------------------------------------------------------------------
		SEI
		LDY	#0
		STY	$D40E
		TXA
		ASL	A
		ROL	A
		ROL	A
		ASL	A
		ASL	A
		AND	#$C
		ORA	#$E2 ; 'в'
		STA	PORTB
		TXA
		AND	#$3F ; '?'
		ORA	#$40 ; '@'
		TAY
		LDA	$25D
		RTS
; ---------------------------------------------------------------------------
		.BYTE	2
; ---------------------------------------------------------------------------
		STA	$6283
		JSR	$5835
		BCS	loc_84D4
		JMP	$5209
; ---------------------------------------------------------------------------

loc_84D4:				; CODE XREF: RAM:84CFj
		JMP	$5225
; ---------------------------------------------------------------------------
		LDX	#0

loc_84D9:				; CODE XREF: RAM:84E3j
		LDA	$63A2,X
		CMP	#$FF
		BEQ	loc_84E7
		INX
		CPX	#4
		BCC	loc_84D9
		BCS	loc_84EB

loc_84E7:				; CODE XREF: RAM:84DEj
		TXA
		JMP	$555A
; ---------------------------------------------------------------------------

loc_84EB:				; CODE XREF: RAM:84E5j
		LDX	#$31 ; '1'
		STX	$5D51
		INX
		STX	$5D67
		INX
		STX	$5D7D
		INX
		STX	$5D93
		JSR	$502E
		LDA	#$85 ; '…'
		STA	$193A
		LDA	#$5F ; '_'
		STA	$193B
		LDA	#$3D ; '='
		STA	$1944
		LDA	#$5F ; '_'
		STA	$1945
		LDX	#3

loc_8515:				; CODE XREF: RAM:851Cj
		LDA	$63A2,X
		STA	$1946,X
		DEX
		BPL	loc_8515
		JSR	$508C

loc_8521:				; CODE XREF: RAM:852Aj
		JSR	$5049
		BCC	loc_852C
		CMP	#$1B
		BEQ	loc_853A
		BNE	loc_8521

loc_852C:				; CODE XREF: RAM:8524j
		CLC
		ADC	#6
		STA	$6283
		JSR	$5835
		BCS	loc_853A
		JMP	$5209
; ---------------------------------------------------------------------------

loc_853A:				; CODE XREF: RAM:8528j	RAM:8535j
		JMP	$5225
; ---------------------------------------------------------------------------
		DEC	$627F
		LDA	$6398
		BPL	loc_8548
		JMP	$56C1
; ---------------------------------------------------------------------------

loc_8548:				; CODE XREF: RAM:8543j
		LDA	#4
		LDY	#2
		JSR	$56D7
		LDY	#0
		LDA	($41),Y
		AND	#$78 ; 'x'
		BEQ	loc_8561
		LDX	#0

loc_8559:				; CODE XREF: RAM:855Fj
		CMP	$559E,X
		BEQ	loc_8567
		DEX
		BPL	loc_8559

loc_8561:				; CODE XREF: RAM:8555j
		JSR	$5602
		JMP	$5209
; ---------------------------------------------------------------------------

loc_8567:				; CODE XREF: RAM:855Cj
		LDA	$559F,X
		PHA
		LDA	$55A0,X
		PHA
		RTS
; ---------------------------------------------------------------------------
		PHP
		EOR	$A0,X
		LDY	#0
		LDA	($43),Y
		TAX
		ORA	#$80 ; 'Ђ'
		STA	$51
		TYA
		STA	$6390,X
		JSR	$55B7
		JSR	$5602
		JMP	$5209
; ---------------------------------------------------------------------------
		LDA	#0
		STA	$3D
		LDA	#$65 ; 'e'
		STA	$3E
		LDA	#0
		STA	$49

loc_8595:				; CODE XREF: RAM:85B3j
		LDY	#0
		LDA	($3D),Y
		AND	#$83 ; 'ѓ'
		CMP	$51
		BNE	loc_85A2
		JSR	$4A01

loc_85A2:				; CODE XREF: RAM:859Dj
		LDA	$3D
		CLC
		ADC	#$10
		STA	$3D
		BCC	loc_85AD
		INC	$3E

loc_85AD:				; CODE XREF: RAM:85A9j
		INC	$49
		LDA	$49
		CMP	#$40 ; '@'
		BCC	loc_8595
		LDA	$51
		AND	#3
		CMP	#3
		BNE	locret_85D3
		TAX
		LDA	#0
		STA	$6390,X
		LDX	#0

loc_85C5:				; CODE XREF: RAM:85D1j
		LDA	#0
		STA	$6350,X
		TXA
		CLC
		ADC	#8
		TAX
		CMP	#$38 ; '8'
		BCC	loc_85C5

locret_85D3:				; CODE XREF: RAM:85BBj
		RTS
; ---------------------------------------------------------------------------
		CLC
		LDA	#6
		ADC	$41
		STA	$193C
		STA	7
		LDA	#0
		ADC	$42
		STA	$193D
		STA	8
		LDY	#6
		LDA	(off_7),Y
		BNE	loc_85F1
		LDA	#$20 ; ' '
		STA	(off_7),Y

loc_85F1:				; CODE XREF: RAM:85EBj
		LDA	#$E8 ; 'и'
		STA	off_16
		LDA	#$60 ; '`'
		STA	off_16+1
		LDX	$194A
		JSR	$3C5C
		LDA	#2
		JMP	$2BFC
; ---------------------------------------------------------------------------
		LDY	#0
		LDA	($41),Y
		AND	#$78 ; 'x'
		BEQ	loc_8616
		LDX	#0

loc_860E:				; CODE XREF: RAM:8614j
		CMP	$564F,X
		BEQ	loc_8619
		DEX
		BPL	loc_860E

loc_8616:				; CODE XREF: RAM:860Aj
		JMP	$5209
; ---------------------------------------------------------------------------

loc_8619:				; CODE XREF: RAM:8611j
		LDA	$5651,X
		PHA
		LDA	$5650,X
		PHA
; ---------------------------------------------------------------------------
		.BYTE $FF
		.WORD $5208
; ---------------------------------------------------------------------------
		RTS
; ---------------------------------------------------------------------------
		AND	#3
		TAX
		LDA	$565F,X
		PHA
		LDA	$5663,X
		PHA
		RTS
; ---------------------------------------------------------------------------
		LSR	$56,X
		LSR	$57,X
		ROR	$A6
		SBC	#$22 ; '"'
		LDA	$63BB
		BNE	loc_8641
		JMP	$5774
; ---------------------------------------------------------------------------

loc_8641:				; CODE XREF: RAM:863Cj
		DEC	$63BB
		LDA	$6398
		BMI	loc_8663
		LDA	$6399
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	$6054,X
		LDX	#$99 ; '™'
		JSR	$2E43
		LDA	#$1C
		LDX	#$98 ; ''
		JSR	$2E43
		JMP	$5225
; ---------------------------------------------------------------------------

loc_8663:				; CODE XREF: RAM:8647j
		LDA	#$EF ; 'п'
		STA	off_16
		LDA	#$5F ; '_'
		STA	off_16+1
		LDX	$194A
		JSR	$3C5C
		LDA	#$10
		JSR	$2BFC
		JMP	$5225
; ---------------------------------------------------------------------------
		LDA	$63BC
		BNE	loc_8681
		JMP	$5774
; ---------------------------------------------------------------------------

loc_8681:				; CODE XREF: RAM:867Cj
		DEC	$63BC
		LDA	$6398
		BMI	loc_8693
		LDA	#$10
		LDY	#8
		JSR	$56D7
		JMP	$5225
; ---------------------------------------------------------------------------

loc_8693:				; CODE XREF: RAM:8687j
		LDA	#$64 ; 'd'
		STA	off_16
		LDA	#$60 ; '`'
		STA	off_16+1
		LDX	$194A
		JSR	$3C5C
		LDA	#$10
		JSR	$2BFC
		JMP	$5225
; ---------------------------------------------------------------------------
		PHA
		TYA
		LDX	#$98 ; ''
		JSR	$2E43
		PLA
		LDX	#$9A ; 'љ'
		JMP	$2E43
; ---------------------------------------------------------------------------

loc_86B6:				; CODE XREF: RAM:86D3j	RAM:86DAj
		JSR	$57DC
		JMP	$5225
; ---------------------------------------------------------------------------
		LDA	$63BD
		BNE	loc_86C7
		JMP	$5774
; ---------------------------------------------------------------------------

loc_86C4:				; CODE XREF: RAM:86CAj
		JMP	$5225
; ---------------------------------------------------------------------------

loc_86C7:				; CODE XREF: RAM:86BFj
		JSR	$57AB
		BCS	loc_86C4
		LDX	#$61 ; 'a'
		LDY	#$29 ; ')'
		JSR	$4B4D
		BMI	loc_86B6
		LDA	#$88 ; '€'
		JSR	$49B0
		BMI	loc_86B6
		LDY	#2

loc_86DE:				; CODE XREF: RAM:86E6j
		LDA	$611A,Y
		STA	($3D),Y
		INY
		CPY	#$F
		BNE	loc_86DE
		LDA	$4B
		STA	($3D),Y
		DEC	$63BD
		INC	$6390
		JMP	$54AF
; ---------------------------------------------------------------------------
		LDA	$63C1
		BEQ	loc_8746
		LDA	#$61 ; 'a'
		STA	off_16
		LDA	#$61 ; 'a'
		STA	off_16+1
		JSR	$2E31
		LDA	#$73 ; 's'
		LDX	$6309
		CPX	#1
		BNE	loc_8710
		LDA	#$20 ; ' '

loc_8710:				; CODE XREF: RAM:870Cj
		STA	$6176
		LDA	#1
		CPX	#$A
		BCC	loc_871B
		LDA	#2

loc_871B:				; CODE XREF: RAM:8717j
		STA	$616E
		LDA	$630A
		LDY	#1
		CMP	#$A
		BCC	loc_8729
		LDY	#2

loc_8729:				; CODE XREF: RAM:8725j
		STY	$6186
		ASL	A
		TAX
		LDA	$6191,X
		STA	$6187
		LDA	$6192,X
		STA	$6188

loc_873A:				; CODE XREF: RAM:874Ej
		LDX	$194A
		JSR	$3C5C
		JSR	$2BFA
		JMP	$5225
; ---------------------------------------------------------------------------

loc_8746:				; CODE XREF: RAM:86F8j
		LDA	#$4D ; 'M'
		STA	off_16
		LDA	#$61 ; 'a'
		STA	off_16+1
		BNE	loc_873A
		LDA	#0
		STA	$6276
		LDA	#$D0 ; 'Р'
		STA	$51B0
		LDA	#$2E ; '.'
		STA	$193A
		LDA	#$5F ; '_'
		STA	$193B
		JMP	$51D8
; ---------------------------------------------------------------------------
		CMP	#$80 ; 'Ђ'
		BCS	locret_877C
		TAY
		LDA	$644B,Y
		STA	$A
		LDA	$640B,Y
		STA	9
		LDY	#2
		LDA	#8
		STA	(9),Y

locret_877C:				; CODE XREF: RAM:8769j
		RTS
; ---------------------------------------------------------------------------

loc_877D:				; CODE XREF: RAM:87A3j	RAM:87A7j
		LDA	#$96 ; '–'
		STA	off_16
		LDA	#$5F ; '_'
		STA	off_16+1
		LDX	$194A
		JSR	$3C5C

loc_878B:				; CODE XREF: RAM:879Aj
		LDA	#$C6 ; 'Ж'
		STA	$1977
		LDA	#$57 ; 'W'
		STA	$1978
		JMP	$2FF3
; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_878B
		CMP	#$1B
		BEQ	locret_87AD
		SEC
		SBC	#$31 ; '1'
		BCC	loc_877D
		CMP	#2
		BCS	loc_877D
		STA	$6283
		CLC

locret_87AD:				; CODE XREF: RAM:879Ej
		RTS
; ---------------------------------------------------------------------------
		LDA	#$C1 ; 'Б'
		STA	off_16
		LDA	#$61 ; 'a'
		STA	off_16+1
		LDX	$194A
		JSR	$3C5C
		JMP	$2BFA
; ---------------------------------------------------------------------------
		LDX	$6315
		LDA	$6313
		CLC
		ADC	$628B,X
		STA	$6289
		SEC
		LDA	$6292,X
		SBC	$6314
		STA	$628A
		BPL	loc_87DD
		LDA	#$FF
		STA	$6289

loc_87DD:				; CODE XREF: RAM:87D6j
		LDA	#$99 ; '™'
		STA	off_16
		LDA	#$62 ; 'b'
		STA	off_16+1
		LDX	$194A
		DEC	$18FE
		JSR	$3C5C
		LDA	#0
		STA	$18FE
		JSR	$2BB0
		LDA	#7
		STA	off_16
		LDA	#$20 ; ' '
		STA	off_16+1
		LDX	$194A
		JSR	$3C5C
		JMP	$5209
; ---------------------------------------------------------------------------
		LDX	$6283
		LDA	$639C,X
		BMI	loc_8816
		CMP	$4B
		BEQ	loc_8816
		JSR	$5795

loc_8816:				; CODE XREF: RAM:880Dj	RAM:8811j
		LDA	$4B
		JSR	$4EB4
		PHP
		JSR	$4EA2
		LDA	$4B
		LDX	$6283
		STA	$639C,X
		PLP
		RTS
; ---------------------------------------------------------------------------
		LDX	#0
		STX	$197B
		DEX
		STX	$58C1
		LDA	#$F
		STA	$6284

loc_8837:				; CODE XREF: RAM:887Aj
		LDX	$6284
		LDA	$6494,X
		CMP	#2
		BNE	loc_8877
		LDA	$64C4,X
		CMP	$6315
		BNE	loc_8877
		LDA	$64A4,X
		CMP	$6313
		BNE	loc_8877
		LDA	$64B4,X
		CMP	$6314
		BNE	loc_8877
		BIT	$4B
		BPL	loc_8867
		LDA	#$53 ; 'S'
		STA	$59C1
		LDA	#$5E ; '^'
		STA	$59C2

loc_8867:				; CODE XREF: RAM:885Bj
		LDX	$6284
		LDA	$64D4,X
		STA	$4B
		STA	$58C1
		JSR	$58C2
		BCS	locret_8892

loc_8877:				; CODE XREF: RAM:883Fj	RAM:8847j ...
		DEC	$6284
		BPL	loc_8837
		LDA	$58C1
		BPL	locret_8892
		LDA	#$EE ; 'о'
		STA	off_16
		LDA	#$59 ; 'Y'
		STA	off_16+1
		LDX	$194A
		JSR	$3C5C
		JSR	$2BB0

locret_8892:				; CODE XREF: RAM:8875j	RAM:887Fj
		RTS
; ---------------------------------------------------------------------------
		.BYTE	0
; ---------------------------------------------------------------------------
		LDA	$4B
		JSR	$4B74
		LDA	#6
		CLC
		ADC	$41
		STA	$59C1
		LDA	$42
		ADC	#0
		STA	$59C2
		LDA	#$9B ; '›'
		STA	$5955
		LDA	#$59 ; 'Y'
		STA	$5956
		LDY	#0
		LDA	($41),Y
		AND	#$7F ; ''
		BNE	loc_88D6
		LDA	$4B
		JSR	$4EC4
		LDY	#1
		LDA	($43),Y
		STA	$59E3
		INY
		LDA	(0),Y
		STA	$59E4
		LDA	#$AB ; '«'
		STA	$5955
		LDA	#$59 ; 'Y'
		STA	$5956

loc_88D6:				; CODE XREF: RAM:88B8j	RAM:8904j
		LDA	$5955
		STA	off_16
		LDA	$5956
		STA	off_16+1
		LDX	$194A
		JSR	$3C5C

loc_88E6:				; CODE XREF: RAM:88F5j
		LDA	#$21 ; '!'
		STA	$1977
		LDA	#$59 ; 'Y'
		STA	$1978
		JMP	$2FF3
; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_88E6
		CMP	#$1B
		BEQ	loc_891D+2
		JSR	$2BA5
		CMP	#'N'
		BEQ	loc_891D
		CMP	#'Y'
		BNE	loc_88D6
		LDA	#8
		STA	$1961
		LDY	#0
		LDA	($41),Y
		BNE	loc_8917
		JSR	$5957
		JMP	$594B
; ---------------------------------------------------------------------------

loc_8917:				; CODE XREF: RAM:890Fj
		LDY	#2
		LDA	#1
		STA	($41),Y

loc_891D:				; CODE XREF: RAM:8900j	RAM:88F9j
		LDY	$ACF9
		SBC	$F9C9,Y
		AND	#$38 ; '8'
		RTS
; ---------------------------------------------------------------------------
		JSR	$292B
		CLC
		RTS
; ---------------------------------------------------------------------------
		LDA	#7
		STA	off_16
		LDA	#$20 ; ' '
		STA	off_16+1
		JSR	$1C88
		RTS
; ---------------------------------------------------------------------------
		LDA	SEGADDR
		STA	9
		LDA	SEGADDR+1
		STA	$A
		LDA	$1903
		STA	$232
		LDA	$1904
		STA	$233
		LDA	$1907
		STA	$B
		LDA	$1908
		STA	$C
		JSR	$2979
		BMI	loc_8976
		LDX	#$F

loc_895E:				; CODE XREF: RAM:8965j
		LDA	$100,X
		STA	$180,X
		DEX
		BPL	loc_895E
		LDX	#3

loc_8969:				; CODE XREF: RAM:8972j
		LDA	$1905,X
		CMP	$180,X
		BNE	loc_8976
		DEX
		BPL	loc_8969
		INX
		RTS
; ---------------------------------------------------------------------------

loc_8976:				; CODE XREF: RAM:895Aj	RAM:896Fj
		LDA	#$FF
		RTS
; ---------------------------------------------------------------------------
		BIT	$258
		BVC	loc_8986
		BIT	$25A
		BPL	loc_8986
		JMP	$F9F4
; ---------------------------------------------------------------------------

loc_8986:				; CODE XREF: RAM:897Cj	RAM:8981j
		LDA	#2
		STA	6

loc_898A:				; CODE XREF: RAM:8991j
		JSR	$248E
		BPL	loc_8995
		DEC	6
		BNE	loc_898A
		BEQ	loc_899D

loc_8995:				; CODE XREF: RAM:898Dj
		INC	$232
		BNE	loc_899D
		INC	$233

loc_899D:				; CODE XREF: RAM:8993j	RAM:8998j
		TYA
		RTS
; ---------------------------------------------------------------------------
		.BYTE $A8
		.BYTE $A6,  0,	1
		.BYTE $A5
aPleaseInsertTh:.BYTE "Please insert The Dungeon Disk "
		.BYTE $B2
		.WORD $1911
		.BYTE 1
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		.BYTE "Side "
		.BYTE $B2
		.WORD $1910
		.BYTE 1
aIntoAnyDrive_:	.BYTE " into any drive.",$D
		.BYTE $A6,  0,	5
		.BYTE $A5
aPress:		.BYTE "Press "
		.BYTE $A1
aSpaceBar:	.BYTE "SPACE BAR"
		.BYTE $A0
aToCon:		.BYTE " to con"
; end of 'RAM'


		.END
