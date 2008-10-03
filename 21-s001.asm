		.SEGMENT	"SEG_279D"
;		* =  $279D
byte_279D:	.BYTE $21		; DATA XREF: RAM:279Fo
		.BYTE 9
		.WORD byte_279D
		.WORD loc_27A3
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД

loc_27A3:				; DATA XREF: RAM:27A1o
		LDY	#$FF
		STY	$3F8
		INY
		STY	$244
		STY	$3FA
		LDA	#$FF
		STA	$D301
		LDA	#$9D ; 'ќ'
		STA	$80
		STA	$82
		LDA	#$27 ; '''
		STA	$81
		LDA	#$B7 ; '·'
		STA	$83
		LDX	#5

loc_27C4:				; CODE XREF: RAM:27C9j	RAM:27D0j
		LDA	($80),Y
		STA	($82),Y
		INY
		BNE	loc_27C4
		INC	$81
		INC	$83
		DEX
		BNE	loc_27C4
		JMP	$B7D7
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД
		.BYTE	0
		.BYTE	0
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД

		.SEGMENT	"SEG_B7D7"
;		* =  $B7D7
		LDA	#$41 ; 'A'
		STA	2
		LDA	#$B8 ; 'ё'
		STA	3
		LDA	#2
		STA	9
		LDX	$E424
		LDY	$E425
		INX
		BNE	loc_B7ED
		INY

loc_B7ED:				; CODE XREF: RAM:B7EAj
		STX	$84
		STY	$85
		LDA	#0
		STA	$80
		STA	$81
		LDA	#1
		STA	$82
		STA	$83
		JMP	$E474

; ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ S U B	R O U T	I N E ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ


sub_B800:				; CODE XREF: sub_B80F+2p RAM:B850p
		LDA	#0
		TAX

loc_B803:				; CODE XREF: sub_B800+9j
		STA	$BC40,X
		INX
		CPX	#$C8 ; 'И'
		BNE	loc_B803
		RTS
; End of function sub_B800


; ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ S U B	R O U T	I N E ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ


sub_B80C:				; CODE XREF: RAM:loc_B8C2p
					; RAM:loc_B941p ...
		JMP	($84)
; End of function sub_B80C


; ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ S U B	R O U T	I N E ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ


sub_B80F:				; CODE XREF: RAM:B93Ep	RAM:B94Ap ...
		STX	$F6
		JSR	sub_B800
		LDA	$F6
		TAX
		ASL	A
		TAY
		LDA	off_BC04,Y
		STA	$F0
		LDA	off_BC04+1,Y
		STA	$F1
		LDY	unk_BC14,X

loc_B826:				; CODE XREF: sub_B80F+1Dj
		LDA	($F0),Y
		STA	$BC40,Y
		DEY
		BPL	loc_B826
		RTS
; End of function sub_B80F


; ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ S U B	R O U T	I N E ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ


sub_B82F:				; CODE XREF: RAM:B848p	RAM:B933p ...
		STA	$2C6
		STA	$2C8
		LDA	#0
		STA	$2C5
		LDA	$14

loc_B83C:				; CODE XREF: sub_B82F+Fj
		CMP	$14
		BEQ	loc_B83C
		RTS
; End of function sub_B82F

; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД
		LDA	#'1'
		STA	$300

loc_B846:				; CODE XREF: RAM:BAE7j
		LDA	#0
		JSR	sub_B82F
		LDA	#$C
		STA	$2C5
		JSR	sub_B800
		LDA	#$4A ; 'J'
		STA	$F2
		LDA	#$BC ; 'ј'
		STA	$F3
		LDX	#0

loc_B85D:				; CODE XREF: RAM:B884j
		TXA
		ASL	A
		TAY
		LDA	off_BB3A,Y
		STA	$F0
		LDA	off_BB3A+1,Y
		STA	$F1
		LDY	unk_BB44,X

loc_B86D:				; CODE XREF: RAM:B872j
		LDA	($F0),Y
		STA	($F2),Y
		DEY
		BPL	loc_B86D
		CLC
		LDA	$F2
		ADC	#$28 ; '('
		STA	$F2
		LDA	$F3
		ADC	#0
		STA	$F3
		INX
		CPX	#5
		BNE	loc_B85D

loc_B886:				; CODE XREF: RAM:B8CFj
		LDX	#2
		LDA	$80
		BNE	loc_B894

loc_B88C:				; CODE XREF: RAM:B890j
		STA	$BC4A,X
		DEX
		BPL	loc_B88C
		BMI	loc_B89D

loc_B894:				; CODE XREF: RAM:B88Aj	RAM:B89Bj
		LDA	$BB49,X
		STA	$BC4A,X
		DEX
		BPL	loc_B894

loc_B89D:				; CODE XREF: RAM:B892j	RAM:B8DBj
		LDX	#2
		LDA	$81
		BNE	loc_B8AB

loc_B8A3:				; CODE XREF: RAM:B8A7j
		STA	$BC72,X
		DEX
		BPL	loc_B8A3
		BMI	loc_B8B4

loc_B8AB:				; CODE XREF: RAM:B8A1j	RAM:B8B2j
		LDA	$BB49,X
		STA	$BC72,X
		DEX
		BPL	loc_B8AB

loc_B8B4:				; CODE XREF: RAM:B8A9j	RAM:B8E7j ...
		LDA	$82
		ORA	#$10
		STA	$BCA7
		LDA	$83
		ORA	#$10
		STA	$BCD4

loc_B8C2:				; CODE XREF: RAM:B903j
		JSR	sub_B80C
		CMP	#$56 ; 'V'
		BNE	loc_B8D1
		LDA	$80
		EOR	#1
		STA	$80
		BCS	loc_B886

loc_B8D1:				; CODE XREF: RAM:B8C7j
		CMP	#$46 ; 'F'
		BNE	loc_B8DD
		LDA	$81
		EOR	#1
		STA	$81
		BCS	loc_B89D

loc_B8DD:				; CODE XREF: RAM:B8D3j
		CMP	#$53 ; 'S'
		BNE	loc_B8EF
		INC	$82
		LDA	$82
		CMP	#5
		BNE	loc_B8B4
		LDA	#1
		STA	$82
		BNE	loc_B8B4

loc_B8EF:				; CODE XREF: RAM:B8DFj
		CMP	#$44 ; 'D'
		BNE	loc_B901
		INC	$83
		LDA	$83
		CMP	#5
		BNE	loc_B8B4
		LDA	#1
		STA	$83
		BNE	loc_B8B4

loc_B901:				; CODE XREF: RAM:B8F1j
		CMP	#$9B ; '›'
		BNE	loc_B8C2
		LDA	#$50 ; 'P'
		LDX	$80
		BNE	loc_B90D
		LDA	#$57 ; 'W'

loc_B90D:				; CODE XREF: RAM:B909j
		STA	$86
		LDA	#1
		STA	$87
		STA	$89
		LDA	#0
		STA	$88
		STA	$8A
		STA	$309
		STA	$8F
		LDX	#$59 ; 'Y'
		STX	$8B
		STX	$8D
		LDY	#7
		STY	$8C
		STY	$8E

loc_B92C:				; CODE XREF: RAM:B92Fj
		STA	$91,X
		DEX
		BPL	loc_B92C

loc_B931:				; CODE XREF: RAM:BACBj
		LDA	#$C8 ; 'И'
		JSR	sub_B82F
		LDA	$82
		CMP	$83
		BNE	loc_B948
		LDX	#0
		JSR	sub_B80F

loc_B941:				; CODE XREF: RAM:B946j
		JSR	sub_B80C
		CMP	#$9B ; '›'
		BNE	loc_B941

loc_B948:				; CODE XREF: RAM:B93Aj
		LDX	#2
		JSR	sub_B80F
		LDA	$82
		STA	$301
		LDA	#6
		STA	$306
		LDA	#$80 ; 'Ђ'
		STA	$308
		LDA	$87
		STA	$30A
		LDA	$88
		STA	$30B
		LDA	#0
		STA	$304
		LDA	#4
		STA	$305

loc_B970:				; CODE XREF: RAM:B9D3j
		LDA	#3
		STA	$90

loc_B974:				; CODE XREF: RAM:B985j
		LDA	#'R'
		STA	$302
		LDA	#$40 ; '@'
		STA	$303
		JSR	$E459
		BPL	loc_B989
		DEC	$90
		BNE	loc_B974
		BEQ	loc_B9BA

loc_B989:				; CODE XREF: RAM:B981j
		LDA	$304
		STA	$F6
		LDA	$305
		STA	$F7
		LDY	#$7F ; ''

loc_B995:				; CODE XREF: RAM:B99Aj
		LDA	($F6),Y
		BNE	loc_B99E
		DEY
		BPL	loc_B995
		BMI	loc_B9BA

loc_B99E:				; CODE XREF: RAM:B997j
		CLC
		LDA	$304
		ADC	#$80 ; 'Ђ'
		STA	$304
		LDA	$305
		ADC	#0
		STA	$305
		LDX	$8B
		LDY	$8C
		LDA	$91,X
		ORA	byte_BAEA,Y
		STA	$91,X

loc_B9BA:				; CODE XREF: RAM:B987j	RAM:B99Cj
		INC	$30A
		BNE	loc_B9C2
		INC	$30B

loc_B9C2:				; CODE XREF: RAM:B9BDj
		DEC	$8C
		BPL	loc_B9CE
		LDA	#7
		STA	$8C
		DEC	$8B
		BMI	loc_B9D5

loc_B9CE:				; CODE XREF: RAM:B9C4j
		LDA	$305
		CMP	#$B8 ; 'ё'
		BCC	loc_B970

loc_B9D5:				; CODE XREF: RAM:B9CCj
		LDA	#$46 ; 'F'
		JSR	sub_B82F
		LDA	$82
		CMP	$83
		BNE	loc_B9EC
		LDX	#1
		JSR	sub_B80F

loc_B9E5:				; CODE XREF: RAM:B9EAj
		JSR	sub_B80C
		CMP	#$9B ; '›'
		BNE	loc_B9E5

loc_B9EC:				; CODE XREF: RAM:B9DEj
		LDA	$30A
		STA	$87
		LDA	$30B
		STA	$88
		LDA	$83
		STA	$301
		LDA	$8F
		BNE	loc_BA3A
		LDA	$81
		BNE	loc_BA3A

loc_BA03:				; CODE XREF: RAM:BA38j
		LDX	#4
		JSR	sub_B80F
		LDA	#$21 ; '!'
		STA	$302
		LDA	#$40 ; '@'
		STA	$303
		LDA	#0
		STA	$30B
		STA	$304
		LDA	#1
		STA	$305
		STA	$30A
		LDA	#$E0 ; 'а'
		STA	$306
		JSR	$E459
		BPL	loc_BA3A
		LDX	#5
		JSR	sub_B80F

loc_BA31:				; CODE XREF: RAM:BA36j
		JSR	sub_B80C
		CMP	#$9B ; '›'
		BNE	loc_BA31
		BEQ	loc_BA03

loc_BA3A:				; CODE XREF: RAM:B9FDj	RAM:BA01j ...
		LDX	#3
		JSR	sub_B80F
		LDA	#0
		STA	$304
		LDA	#4
		STA	$305
		LDA	$89
		STA	$30A
		LDA	$8A
		STA	$30B

loc_BA53:				; CODE XREF: RAM:BA68j	RAM:BA70j ...
		LDX	$8D
		LDY	$8E
		LDA	$91,X
		AND	byte_BAEA,Y
		BNE	loc_BA74
		INC	$30A
		BNE	loc_BA66
		INC	$30B

loc_BA66:				; CODE XREF: RAM:BA61j
		DEC	$8E
		BPL	loc_BA53
		LDA	#7
		STA	$8E
		DEC	$8D
		BPL	loc_BA53
		BMI	loc_BACE

loc_BA74:				; CODE XREF: RAM:BA5Cj
		LDA	#3
		STA	$90
		LDA	#6
		STA	$306

loc_BA7D:				; CODE XREF: RAM:BA8Ej
		LDA	$86
		STA	$302
		LDA	#$80 ; 'Ђ'
		STA	$303
		JSR	$E459
		BPL	loc_BA93
		DEC	$90
		BNE	loc_BA7D
		JMP	loc_BADB
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД

loc_BA93:				; CODE XREF: RAM:BA8Aj
		CLC
		LDA	#1
		ADC	$30A
		STA	$30A
		STA	$89
		LDA	#0
		ADC	$30B
		STA	$30B
		STA	$8A
		DEC	$8E
		BPL	loc_BAB4
		LDA	#7
		STA	$8E
		DEC	$8D
		BMI	loc_BACE

loc_BAB4:				; CODE XREF: RAM:BAAAj
		CLC
		LDA	#$80 ; 'Ђ'
		ADC	$304
		STA	$304
		LDA	#0
		ADC	$305
		STA	$305
		CMP	#$B8 ; 'ё'
		BNE	loc_BA53
		INC	$8F
		JMP	loc_B931
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД

loc_BACE:				; CODE XREF: RAM:BA72j	RAM:BAB2j
		LDA	#$A8 ; 'Ё'
		JSR	sub_B82F
		LDX	#6
		JSR	sub_B80F
		JMP	loc_BAE0
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД

loc_BADB:				; CODE XREF: RAM:BA90j
		LDX	#7
		JSR	sub_B80F

loc_BAE0:				; CODE XREF: RAM:BAD8j	RAM:BAE5j
		JSR	sub_B80C
		CMP	#$9B ; '›'
		BNE	loc_BAE0
		JMP	loc_B846
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД
byte_BAEA:	.BYTE $80,$40,$20,$10,	8,  4,	2,  1 ;	DATA XREF: RAM:B9B5r
					; RAM:BA59r
unk_BAF2:	.BYTE	0		; DATA XREF: RAM:off_BB3Ao
		.BYTE	0
		.BYTE	0
		.BYTE $B6 ; ¶
		.BYTE $25 ; %
		.BYTE $32 ; 2
		.BYTE $29 ; )
		.BYTE $26 ; &
		.BYTE $39 ; 9
unk_BAFB:	.BYTE	0		; DATA XREF: RAM:BB3Co
		.BYTE	0
		.BYTE	0
		.BYTE $A6 ; ¦
		.BYTE $2F ; /
		.BYTE $32 ; 2
		.BYTE $2D ; -
		.BYTE $21 ; !
		.BYTE $34 ; 4
unk_BB04:	.BYTE $B3 ; і		; DATA XREF: RAM:BB3Eo
		.BYTE $2F ; /
		.BYTE $35 ; 5
		.BYTE $32 ; 2
		.BYTE $23 ; #
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $24 ; $
		.BYTE $32 ; 2
		.BYTE $29 ; )
		.BYTE $36 ; 6
		.BYTE $25 ; %
		.BYTE $1D
		.BYTE $11
unk_BB12:	.BYTE $A4 ; ¤		; DATA XREF: RAM:BB40o
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $34 ; 4
		.BYTE $29 ; )
		.BYTE $2E ; .
		.BYTE $21 ; !
		.BYTE $34 ; 4
		.BYTE $29 ; )
		.BYTE $2F ; /
		.BYTE $2E ; .
		.BYTE	0
		.BYTE $24 ; $
		.BYTE $32 ; 2
		.BYTE $29 ; )
		.BYTE $36 ; 6
		.BYTE $25 ; %
		.BYTE $1D
		.BYTE $11
unk_BB25:	.BYTE $30 ; 0		; DATA XREF: RAM:BB42o
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $B2 ; І
		.BYTE $A5 ; Ґ
		.BYTE $B4 ; ґ
		.BYTE $B5 ; µ
		.BYTE $B2 ; І
		.BYTE $AE ; ®
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE $2F ; /
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE $34 ; 4
		.BYTE $21 ; !
		.BYTE $32 ; 2
		.BYTE $34 ; 4
off_BB3A:	.WORD unk_BAF2		; DATA XREF: RAM:B860r	RAM:B865r
		.WORD unk_BAFB
		.WORD unk_BB04
		.WORD unk_BB12
		.WORD unk_BB25
unk_BB44:	.BYTE	8		; DATA XREF: RAM:B86Ar
		.BYTE	8
		.BYTE  $D
		.BYTE $12
		.BYTE $14
		.BYTE $2E ; .
		.BYTE $2F ; /
		.BYTE	0
unk_BB4C:	.BYTE $29 ; )		; DATA XREF: RAM:off_BC04o
		.BYTE $2E ; .
		.BYTE $33 ; 3
		.BYTE $25 ; %
		.BYTE $32 ; 2
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE $2F ; /
		.BYTE $35 ; 5
		.BYTE $32 ; 2
		.BYTE $23 ; #
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $24 ; $
		.BYTE $29 ; )
		.BYTE $33 ; 3
		.BYTE $2B ; +
		.BYTE  $C
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $B2 ; І
		.BYTE $A5 ; Ґ
		.BYTE $B4 ; ґ
		.BYTE $B5 ; µ
		.BYTE $B2 ; І
		.BYTE $AE ; ®
unk_BB6C:	.BYTE $29 ; )		; DATA XREF: RAM:BC06o
		.BYTE $2E ; .
		.BYTE $33 ; 3
		.BYTE $25 ; %
		.BYTE $32 ; 2
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE $24 ; $
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $34 ; 4
		.BYTE $29 ; )
		.BYTE $2E ; .
		.BYTE $21 ; !
		.BYTE $34 ; 4
		.BYTE $29 ; )
		.BYTE $2F ; /
		.BYTE $2E ; .
		.BYTE	0
		.BYTE $24 ; $
		.BYTE $29 ; )
		.BYTE $33 ; 3
		.BYTE $2B ; +
		.BYTE  $C
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $B2 ; І
		.BYTE $A5 ; Ґ
		.BYTE $B4 ; ґ
		.BYTE $B5 ; µ
		.BYTE $B2 ; І
		.BYTE $AE ; ®
unk_BB91:	.BYTE $32 ; 2		; DATA XREF: RAM:BC08o
		.BYTE $25 ; %
		.BYTE $21 ; !
		.BYTE $24 ; $
		.BYTE $29 ; )
		.BYTE $2E ; .
		.BYTE $27 ; '
unk_BB98:	.BYTE $37 ; 7		; DATA XREF: RAM:BC0Ao
		.BYTE $32 ; 2
		.BYTE $29 ; )
		.BYTE $34 ; 4
		.BYTE $29 ; )
		.BYTE $2E ; .
		.BYTE $27 ; '
unk_BB9F:	.BYTE $26 ; &		; DATA XREF: RAM:BC0Co
		.BYTE $2F ; /
		.BYTE $32 ; 2
		.BYTE $2D ; -
		.BYTE $21 ; !
		.BYTE $34 ; 4
		.BYTE $34 ; 4
		.BYTE $29 ; )
		.BYTE $2E ; .
		.BYTE $27 ; '
unk_BBA9:	.BYTE $26 ; &		; DATA XREF: RAM:BC0Eo
		.BYTE $2F ; /
		.BYTE $32 ; 2
		.BYTE $2D ; -
		.BYTE $21 ; !
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE $25 ; %
		.BYTE $32 ; 2
		.BYTE $32 ; 2
		.BYTE $2F ; /
		.BYTE $32 ; 2
		.BYTE  $E
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $B2 ; І
		.BYTE $A5 ; Ґ
		.BYTE $B4 ; ґ
		.BYTE $B5 ; µ
		.BYTE $B2 ; І
		.BYTE $AE ; ®
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE $2F ; /
		.BYTE	0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $34 ; 4
		.BYTE $32 ; 2
		.BYTE $39 ; 9
		.BYTE  $E
unk_BBCE:	.BYTE $24 ; $		; DATA XREF: RAM:BC10o
		.BYTE $2F ; /
		.BYTE $2E ; .
		.BYTE $25 ; %
		.BYTE  $E
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $B2 ; І
		.BYTE $A5 ; Ґ
		.BYTE $B4 ; ґ
		.BYTE $B5 ; µ
		.BYTE $B2 ; І
		.BYTE $AE ; ®
unk_BBE0:	.BYTE $37 ; 7		; DATA XREF: RAM:BC12o
		.BYTE $32 ; 2
		.BYTE $29 ; )
		.BYTE $34 ; 4
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $25 ; %
		.BYTE $32 ; 2
		.BYTE $32 ; 2
		.BYTE $2F ; /
		.BYTE $32 ; 2
		.BYTE  $E
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $B2 ; І
		.BYTE $A5 ; Ґ
		.BYTE $B4 ; ґ
		.BYTE $B5 ; µ
		.BYTE $B2 ; І
		.BYTE $AE ; ®
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE $2F ; /
		.BYTE	0
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE $34 ; 4
		.BYTE $21 ; !
		.BYTE $32 ; 2
		.BYTE $34 ; 4
off_BC04:	.WORD unk_BB4C		; DATA XREF: sub_B80F+Ar sub_B80F+Fr
		.WORD unk_BB6C
		.WORD unk_BB91
		.WORD unk_BB98
		.WORD unk_BB9F
		.WORD unk_BBA9
		.WORD unk_BBCE
		.WORD unk_BBE0
unk_BC14:	.BYTE $1F		; DATA XREF: sub_B80F+14r
		.BYTE $24 ; $
		.BYTE	6
		.BYTE	6
		.BYTE	9
		.BYTE $24 ; $
		.BYTE $11
		.BYTE $23 ; #
		.BYTE	0
; end of 'RAM'


		.END
