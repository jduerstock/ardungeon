		.include	"equates.inc"
		.include	"exp_kernel.inc"
		.include	"globals.inc"

;		.ORG	$1E00
		.RES	398, $00
		.BYTE	$87
aMainbeg:	.BYTE	"MAINBEG"
		.WORD	$2EF5
		.BYTE	$88
aSkipblko:	.BYTE	"SKIPBLKO"
		.WORD	$2F2F
		.BYTE	$85
aClrzp:		.BYTE	"CLRZP"
		.WORD	$2F4F
		.BYTE	$88
		.BYTE	"MODINMEM"
		.WORD	$2F5A
		.BYTE	$87
		.BYTE	"NOINITM"
		.WORD	$2F65
		.BYTE	$88
		.BYTE	"MAINLOOP"
		.WORD	$2F68
		.BYTE	$86
		.BYTE	"MAINL0"
		.WORD	$2F82
		.BYTE	$87
		.BYTE	"NOTREAS"
		.WORD	$2FA7
		.BYTE	$87
		.BYTE	"NODOGET"
		.WORD	$2FB1
		.BYTE	$86
		.BYTE	"GOTCHA"
		.WORD	$2FBB
		.BYTE	$87
		.BYTE	"MAINL14"
		.WORD	$2FDF
		.BYTE	$87
		.BYTE	"MAIN"
; ���������������������������������������������������������������������������
		LDA	#$40 ; '@'
		STA	$236
		LDA	#0
		STA	$D20E
		STA	$D40E
		STA	$22F
		STA	$256
		TAX

loc_2014:				; CODE XREF: RAM:2017j
		STA	0,X
		INX
		BNE	loc_2014
		LDA	#7
		STA	$237
		LDA	#$8E ; '�'
		STA	off_20E
		LDA	#$22 ; '"'
		STA	off_20E+1
		LDA	#$46 ; 'F'
		STA	$20C
		LDA	#$22 ; '"'
		STA	$20D
		LDA	#$DE ; '�'
		STA	$20A
		LDA	#$21 ; '!'
		STA	$20B
		LDA	#$A3 ; '�'
		STA	$216
		LDA	#$22 ; '"'
		STA	$217
		LDA	#$1A
		STA	$208
		LDA	#$26 ; '&'
		STA	$209
		LDA	#$9D ; '�'
		STA	$254
		LDA	#$19
		STA	$255
		LDA	#$3E ; '>'
		STA	$222
		LDA	#$23 ; '#'
		STA	$223
		LDA	#$40 ; '@'
		STA	$D40E
		LDA	$236
		STA	$D20E
		RTS
; ���������������������������������������������������������������������������
		JSR	$7600
		LDA	#$14
		STA	$D409
		JSR	$76AE
		JSR	$7691
		LDA	#1
		JSR	$1A0D
		LDA	#$40 ; '@'
		STA	$236
		STA	$D20E
		JSR	$76C1
		JMP	loc_2E3B
; ���������������������������������������������������������������������������
		LDX	#2
		LDA	#0

loc_2095:				; CODE XREF: RAM:209Fj
		STA	byte_18C1,X
		STA	byte_18C4,X
		STA	byte_18C7,X
		DEX
		BPL	loc_2095
		STA	$1F
		STA	$20
		STA	$21
		STA	$25
		STA	$24
		STA	$26
		RTS
; ���������������������������������������������������������������������������
		LDA	#7
		STA	CONSOL_SAVE
		LDA	#0
		STA	$2E
		STA	$18FF
		STA	$2F
		LDA	#$FF
		STA	$30
		RTS
; ���������������������������������������������������������������������������
		LDX	#$1F
		LDA	#0

loc_20C5:				; CODE XREF: RAM:20CCj
		LDA	$77AF,X
		STA	$197C,X
		DEX
		BPL	loc_20C5
		JSR	sub_243F
		LDX	#3
		STX	6

loc_20D5:				; CODE XREF: RAM:20FEj
		LDX	6
		LDA	#$FF
		STA	$24E,X
		INX
		TXA
		AND	#$F
		ORA	#$30 ; '0'
		STA	$230
		JSR	sub_2485
		BMI	loc_20F9
		LDX	6
		INC	$24E,X
		JSR	$7789
		BMI	loc_20F9
		LDX	6
		INC	$24E,X

loc_20F9:				; CODE XREF: RAM:20E8j	RAM:20F2j
		JSR	sub_28F8
		DEC	6
		BPL	loc_20D5
		LDA	#$31 ; '1'
		STA	$230
		LDA	#4
		STA	6
		LDA	#$80 ; '�'
		STA	9
		LDA	#2
		STA	$A
		LDA	#2
		STA	byte_24C8
		LDA	#0
		STA	byte_24C9

loc_211B:				; CODE XREF: RAM:2144j
		LDA	byte_24C8
		STA	word_232
		LDA	byte_24C9
		STA	word_232+1
		JSR	sub_2470
		LDY	#0

loc_212C:				; CODE XREF: RAM:2132j
		LDA	$100,Y
		STA	(off_9),Y
		INY
		BPL	loc_212C
		LDA	off_9
		CLC
		ADC	#$80 ; '�'
		STA	off_9
		BCC	loc_213F
		INC	off_9+1

loc_213F:				; CODE XREF: RAM:213Bj
		INC	byte_24C8
		DEC	6
		BNE	loc_211B
		JMP	loc_2803
; ���������������������������������������������������������������������������
		LDA	#$C
		STA	$234
		LDA	#0
		STA	$235
		LDA	#$4E ; 'N'
		LDX	#$40 ; '@'
		LDY	#1
		JSR	sub_2476
		BMI	locret_2164
		LDA	$107
		BPL	locret_2164
		DEY

locret_2164:				; CODE XREF: RAM:215Cj	RAM:2161j
		RTS
; ���������������������������������������������������������������������������
		JSR	$7749
		LDA	#0
		STA	$105
		STA	$106
		LDX	#$80 ; '�'
		STX	$107
		LDA	#$4F ; 'O'
		LDY	#2
		JSR	sub_2476
		PHP
		LDA	#$80 ; '�'
		STA	$234
		LDA	#0
		STA	$235
		PLP
		RTS
; ���������������������������������������������������������������������������
		JSR	$7749
		LDA	#4
		STA	$105
		LDX	#1
		STX	$106
		DEX
		STX	$107
		LDA	#$4F ; 'O'
		LDX	#$80 ; '�'
		LDY	#2
		JSR	sub_2476
		BMI	locret_21AD
		DEY
		STA	$234
		INY
		STY	$235

locret_21AD:				; CODE XREF: RAM:21A3j
		RTS
; ���������������������������������������������������������������������������
		RTS
; ���������������������������������������������������������������������������
aSystemInitiali:.BYTE "      System Initialization     "
		.BYTE 2
; ���������������������������������������������������������������������������
		STA	$23A
		LDA	#1
		STA	1
		ADC	$235
		STA	$23B
		RTS
; ���������������������������������������������������������������������������
		TYA
		PHA
		LDA	$D20F
		STA	SKREST
		BMI	loc_21ED
		LDY	#$8C ; '�'
		STY	$23D

loc_21ED:				; CODE XREF: RAM:21E6j
		AND	#$20 ; ' '
		BNE	loc_21F6
		LDY	#$8E ; '�'
		STY	$23D

loc_21F6:				; CODE XREF: RAM:21EFj
		LDA	$242
		BEQ	loc_2211
		LDA	$D20D
		CMP	$23C
		BEQ	loc_2208
		LDY	#$8F ; '�'
		STY	$23D

loc_2208:				; CODE XREF: RAM:2201j	RAM:223Dj
		LDA	#$FF
		STA	$240

loc_220D:				; CODE XREF: RAM:2231j	RAM:2244j
		PLA
		TAY
		PLA
		RTI
; ���������������������������������������������������������������������������

loc_2211:				; CODE XREF: RAM:21F9j
		LDA	$D20D
		LDY	#0
		STA	(0),Y
		CLC
		ADC	$23C
		ADC	#0
		STA	$23C
		INC	0
		BNE	loc_2227
		INC	1

loc_2227:				; CODE XREF: RAM:2223j
		LDA	0
		CMP	$23A
		LDA	1
		SBC	$23B
		BCC	loc_220D
		LDA	$245
		BEQ	loc_223F
		LDA	#0
		STA	$245
		BEQ	loc_2208

loc_223F:				; CODE XREF: RAM:2236j
		LDA	#$FF
		STA	$242
		BNE	loc_220D
		TYA
		PHA
		INC	0
		BNE	loc_224E
		INC	1

loc_224E:				; CODE XREF: RAM:224Aj
		LDA	0
		CMP	$23A
		LDA	1
		SBC	$23B
		BCC	loc_227B
		LDA	$243
		BNE	loc_226C
		LDA	$23C
		STA	$D20D
		LDA	#$FF
		STA	$243
		BNE	loc_2277

loc_226C:				; CODE XREF: RAM:225Dj
		LDA	$236
		ORA	#8
		STA	$236
		STA	$D20E

loc_2277:				; CODE XREF: RAM:226Aj	RAM:228Bj
		PLA
		TAY
		PLA
		RTI
; ���������������������������������������������������������������������������

loc_227B:				; CODE XREF: RAM:2258j
		LDY	#0
		LDA	(0),Y
		STA	$D20D
		CLC
		ADC	$23C
		ADC	#0
		STA	$23C
		JMP	loc_2277
; ���������������������������������������������������������������������������
		LDA	$243
		BEQ	loc_22A1
		STA	$241
		LDA	$236
		AND	#$F7 ; '�'
		STA	$236
		STA	$D20E

loc_22A1:				; CODE XREF: RAM:2291j
		PLA
		RTI
; ���������������������������������������������������������������������������
		PHA
		LDA	$D20E
		AND	#$20 ; ' '
		BNE	loc_22B9
		LDA	#$DF ; '�'
		STA	$D20E
		LDA	$236
		STA	$D20E
		JMP	($20A)
; ���������������������������������������������������������������������������

loc_22B9:				; CODE XREF: RAM:22A9j
		TXA
		PHA
		LDX	#2

loc_22BD:				; CODE XREF: RAM:22CFj
		LDA	unk_22F8,X
		CPX	#1
		BNE	loc_22C9
		AND	$236
		BEQ	loc_22CE

loc_22C9:				; CODE XREF: RAM:22C2j
		BIT	$D20E
		BEQ	loc_22D3

loc_22CE:				; CODE XREF: RAM:22C7j
		DEX
		BPL	loc_22BD
		BMI	loc_22EE

loc_22D3:				; CODE XREF: RAM:22CCj
		EOR	#$FF
		STA	$D20E
		LDA	$236
		STA	$D20E
		LDA	unk_22FB,X
		STA	loc_22EB+1
		LDA	#2
		STA	loc_22EB+2
		PLA
		TAX

loc_22EB:				; DATA XREF: RAM:22E1w	RAM:22E6w
					; hand coded to silence warnings
		.BYTE	$6C		; JMP ($FFFF)
		.WORD	$FFFF
; ���������������������������������������������������������������������������

loc_22EE:				; CODE XREF: RAM:22D1j
		PLA
		TAX
		LDA	$D300
		LDA	$D301
		PLA
		RTI
; ���������������������������������������������������������������������������
unk_22F8:	.BYTE $40 ; @		; DATA XREF: RAM:loc_22BDr
		.BYTE	8
		.BYTE $10
unk_22FB:	.BYTE	8		; DATA XREF: RAM:22DEr
		.BYTE  $E
		.BYTE  $C
unk_22FE:	.BYTE $22 ; "		; DATA XREF: RAM:2345r
		.BYTE $22 ; "
		.BYTE $2E ; .
; ���������������������������������������������������������������������������

loc_2301:				; CODE XREF: RAM:2355j
		LDA	#$F5 ; '�'
		STA	$D402
		LDA	#$19
		STA	$D403
		LDA	#$40 ; '@'
		STA	$D40E
		LDA	#$21 ; '!'
		STA	$D400
		LDA	$239
		BEQ	loc_233B
		LDA	$24C
		ORA	$24D
		BEQ	loc_233B
		SEC
		LDA	$24C
		SBC	#1
		STA	$24C
		LDA	$24D
		SBC	#0
		STA	$24D
		ORA	$24C
		BNE	loc_233B
		STA	$239

loc_233B:				; CODE XREF: RAM:2318j	RAM:2320j ...
		JMP	byte_242D
; ���������������������������������������������������������������������������
		CLD
		INC	$252
		LDX	$18B9
		LDA	unk_22FE,X
		STA	$D400
		LDA	#$14
		STA	$D409
		LDA	$253
		BEQ	loc_2366
		BMI	loc_2301
		DEC	$253
		LDA	#$A
		STA	$D402
		LDA	#$1A
		STA	$D403
		BNE	loc_233B

loc_2366:				; CODE XREF: RAM:2353j
		LDA	$254
		STA	$D402
		LDA	$255
		STA	$D403
		LDA	off_248
		STA	off_200
		LDA	off_248+1
		STA	off_200+1
		LDA	#$C0 ; '�'
		BRK
; ���������������������������������������������������������������������������
		.RES	172,$00
byte_242D:	.RES	18,$00		;	CODE XREF: RAM:loc_233Bj

; ��������������� S U B	R O U T	I N E ���������������������������������������


sub_243F:				; CODE XREF: RAM:20CEp
		BRK
; End of function sub_243F

; ���������������������������������������������������������������������������
		.RES	48,$00

; ��������������� S U B	R O U T	I N E ���������������������������������������


sub_2470:				; CODE XREF: RAM:2127p
		BRK
; End of function sub_2470

; ���������������������������������������������������������������������������
		.RES	5,$00

; ��������������� S U B	R O U T	I N E ���������������������������������������


sub_2476:				; CODE XREF: RAM:2159p	RAM:2179p ...
		BRK
; End of function sub_2476

; ���������������������������������������������������������������������������
		.RES	14,$00

; ��������������� S U B	R O U T	I N E ���������������������������������������


sub_2485:				; CODE XREF: RAM:20E5p
		BRK
; End of function sub_2485

; ���������������������������������������������������������������������������
		.RES	66,$00
byte_24C8:	.BYTE 0			; DATA XREF: RAM:2113w	RAM:loc_211Br ...
byte_24C9:	.BYTE 0			; DATA XREF: RAM:2118w	RAM:2121r
		.RES	825,$00
; ���������������������������������������������������������������������������

loc_2803:				; CODE XREF: RAM:2146j
		BRK
; ���������������������������������������������������������������������������
		.RES	244,$00

; ��������������� S U B	R O U T	I N E ���������������������������������������


sub_28F8:				; CODE XREF: RAM:loc_20F9p
		BRK
; End of function sub_28F8

; ���������������������������������������������������������������������������
		.RES	1159,$00
		.BYTE	"()",0
a42:		.BYTE	"4(%2%"
		.BYTE	1
		.RES	71,$00
		.BYTE	$20,$13,$E7,$41,$AA,$6B,$6B,$51
		.BYTE	$10,$80,$6E,$3D,$80,$E0,$21,$29
		.BYTE	$50,$84,$84,$42,$C4,$30,$08,$01
		.BYTE	$80,$03,$18,$04,$82
		.RES	18,$00
		.BYTE	7
a_4:		.BYTE "./4",0
a154:		.BYTE "15)4%",0
a0:		.BYTE "+%%0",0
a429_:		.BYTE "429).",$27,0
		.RES	37,$00
; ���������������������������������������������������������������������������

loc_2E3B:				; CODE XREF: RAM:208Ej
		BRK
; ���������������������������������������������������������������������������
		.RES	68,$00
; end of 'RAM'


		.END