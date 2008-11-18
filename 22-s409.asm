		.include	"equates.inc"
		.include	"macros.inc"

;		* =  $7600
		.BYTE $19
; ---------------------------------------------------------------------------
		JMP	loc_7610
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_78F1
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601j
		LDA	#$FF
		STA	$1937
		LDA	#$45 ; 'E'
		STA	$1977
		LDA	#$76 ; 'v'
		STA	$1978
		LDA	#$DC ; '‹'
		STA	$16
		LDA	#$76 ; 'v'
		STA	$17
		JSR	$184B
		LDA	$1933
		STA	$62
		LDA	#$6D ; 'm'
		STA	7
		LDA	#$7A ; 'z'
		STA	8
		LDA	#2
		JSR	$180F
		LDA	$6388
		AND	#$FE ; '˛'
		STA	$6388
		RTS
; ---------------------------------------------------------------------------
		LDX	#6
		STX	$6313
		INX
		STX	$6314

loc_764E:				; CODE XREF: RAM:76D1j
		LDA	#$DE ; 'ﬁ'
		STA	$16
		LDA	#$76 ; 'v'
		STA	$17
		LDX	$62
		JSR	$1851

loc_765B:				; CODE XREF: RAM:766Aj	RAM:7687j
		LDA	#$68 ; 'h'
		STA	$1977
		LDA	#$76 ; 'v'
		STA	$1978
		JMP	$1806
; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_765B
		CMP	#$31 ; '1'
		BNE	loc_7685
		LDA	#$5D ; ']'
		STA	$16
		LDA	#$77 ; 'w'
		STA	$17
		LDX	$62
		JSR	$1851
		LDA	#6
		JSR	$185A
		JMP	loc_76D4
; ---------------------------------------------------------------------------

loc_7685:				; CODE XREF: RAM:766Ej
		CMP	#$32 ; '2'
		BNE	loc_765B
		LDA	#$DC ; '‹'
		STA	$16
		LDA	#$76 ; 'v'
		STA	$17
		LDX	$62
		JSR	$1851
		JSR	$18A8
		JSR	$18A5
		LDA	$6388
		LSR	A
		BCC	loc_76BF
		LDX	#2
		STX	$6313
		DEX
		STX	$6314
		DEX
		STX	$6312
		LDA	#6
		STA	$6315
		LDA	#$8D ; 'ç'
		STA	$16
		LDA	#$77 ; 'w'
		STA	$17
		JMP	loc_76C7
; ---------------------------------------------------------------------------

loc_76BF:				; CODE XREF: RAM:76A0j
		LDA	#1
		STA	$16
		LDA	#$78 ; 'x'
		STA	$17

loc_76C7:				; CODE XREF: RAM:76BCj
		LDX	$62
		JSR	$1851
		LDA	#8
		JSR	$185A
		JMP	loc_764E
; ---------------------------------------------------------------------------

loc_76D4:				; CODE XREF: RAM:7682j
		LDA	#$FF
		STA	$AC00
		JMP	$180C
; ---------------------------------------------------------------------------
		.BYTE $A8,$FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aThisIsThePlace:.BYTE "This is the place known as Death's Door:"
		.BYTE $D
		.BYTE $A6,  5,	3
aDoYou:		.BYTE "Do you ("
		.BYTE $A1
a1:		.BYTE '1'
		.BYTE $A0
aPassThroughOr:	.BYTE ") Pass through or"
		.BYTE $A6, $C,	4
		.BYTE '('
		.BYTE $A1
a2:		.BYTE '2'
		.BYTE $A0
aUseAnItemq:	.BYTE ") Use an item?"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThereIsNoTurni:.BYTE "There is no turning back."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aBravelyYouWalk:.BYTE "Bravely you walk through the door"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAnd___:	.BYTE "and..."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aFewHaveVenture:.BYTE "Few have ventured beyond"
		.BYTE $D
		.BYTE $A5
aYetManyHavePas:.BYTE "Yet many have passed through."
		.BYTE $D
		.BYTE $A5
aMoreAdventures:.BYTE "More adventures await thee"
		.BYTE $D
		.BYTE $A5
aInTheDankDepth:.BYTE "In the dank depths below!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	3
		.BYTE $A5
aNothingHappens:.BYTE "Nothing happens..."
		.BYTE $D
		.BYTE $FF
unk_7819:	.BYTE $70 ; p		; DATA XREF: RAM:7849o
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
		.WORD unk_7819
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
		STA	$D01A
		STX	$D016
		STY	$D018
		LDX	#$23 ; '#'
		LDY	$BBDC,X

loc_78AF:				; CODE XREF: RAM:78D4j
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
		BPL	loc_78AF
		LDA	#0
		STA	WSYNC
		STA	$D018
		STA	$D01A
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

loc_78F1:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$19
		STA	$254
		LDA	#$78 ; 'x'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_7904:				; CODE XREF: RAM:7912j
		LDY	#$C

loc_7906:				; CODE XREF: RAM:790Dj
		STA	$BB4C,X
		DEX
		BMI	loc_7914
		DEY
		BNE	loc_7906
		CLC
		ADC	#4
		BNE	loc_7904

loc_7914:				; CODE XREF: RAM:790Aj
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_7A0C
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_7A0C
		LDA	#0
		STA	loc_793A+1
		LDA	#$BD ; 'Ω'
		STA	loc_793A+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_793A:				; CODE XREF: RAM:793Ej	RAM:7944j
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_793A
		INC	loc_793A+2
		DEY
		BNE	loc_793A
		LDX	#7

loc_7948:				; CODE XREF: RAM:794Cj
		STA	$D000,X
		DEX
		BPL	loc_7948
		LDA	#3
		TAX

loc_7951:				; CODE XREF: RAM:7955j
		STA	$D008,X
		DEX
		BPL	loc_7951
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

loc_797F:				; CODE XREF: RAM:79A5j
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_7987:				; CODE XREF: RAM:7992j
		LSR	4
		BCC	loc_7991
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_7991:				; CODE XREF: RAM:7989j
		DEY
		BPL	loc_7987
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_799F
		INC	$A

loc_799F:				; CODE XREF: RAM:799Bj
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_797F
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_79B7:				; CODE XREF: RAM:79C8j
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
		BCC	loc_79B7

loc_79CA:				; CODE XREF: RAM:79E7j
		LDX	#0

loc_79CC:				; CODE XREF: RAM:79E5j
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_79D2:				; CODE XREF: RAM:79D7j
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_79D2
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_79E9
		CPX	#$A
		BCC	loc_79CC
		BCS	loc_79CA

loc_79E9:				; CODE XREF: RAM:79E1j
		LDX	#3
		LDA	$BC5F

loc_79EE:				; CODE XREF: RAM:79F2j
		STA	$D012,X
		DEX
		BPL	loc_79EE
		LDA	#$4B ; 'K'
		STA	$24A
		LDA	#$78 ; 'x'
		STA	$24B
		LDA	#$C0 ; '¿'
		STA	$D40E
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_7A0C:				; CODE XREF: RAM:791Cp	RAM:7927p ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_7A16
		INC	8

loc_7A16:				; CODE XREF: RAM:7A12j
		CMP	#$1B
		BEQ	loc_7A25
		STA	(9),Y
		INC	9
		BNE	loc_7A22
		INC	$A

loc_7A22:				; CODE XREF: RAM:7A1Ej
		JMP	loc_7A0C
; ---------------------------------------------------------------------------

loc_7A25:				; CODE XREF: RAM:7A18j
		LDA	(7),Y
		INC	7
		BNE	loc_7A2D
		INC	8

loc_7A2D:				; CODE XREF: RAM:7A29j
		CMP	#$FF
		BNE	loc_7A32
		RTS
; ---------------------------------------------------------------------------

loc_7A32:				; CODE XREF: RAM:7A2Fj
		STA	byte_7A6C
		ADC	9
		STA	loc_7A45+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_7A4A
		LDA	byte_7A6C

loc_7A45:				; DATA XREF: RAM:7A37w
		SBC	#$FF
		STA	byte_7A6C

loc_7A4A:				; CODE XREF: RAM:7A40j
		LDA	(7),Y
		INC	7
		BNE	loc_7A52
		INC	8

loc_7A52:				; CODE XREF: RAM:7A4Ej
		LDY	byte_7A6C

loc_7A55:				; CODE XREF: RAM:7A58j
		STA	(9),Y
		DEY
		BPL	loc_7A55
		INC	byte_7A6C
		LDA	byte_7A6C
		CLC
		ADC	9
		STA	9
		BCC	loc_7A69
		INC	$A

loc_7A69:				; CODE XREF: RAM:7A65j
		JMP	loc_7A0C
; ---------------------------------------------------------------------------
byte_7A6C:	.BYTE 0			; DATA XREF: RAM:loc_7A32w RAM:7A42r ...
		.BYTE $1B
		.BYTE $56 ; V
		.BYTE $22 ; "
		.BYTE $1B
		.BYTE	4
		.BYTE $20
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $F5 ; ı
		.BYTE $35 ; 5
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	2
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $FD ; ˝
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $66 ; f
		.BYTE $1B
		.BYTE	2
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	7
		.BYTE $66 ; f
		.BYTE $1B
		.BYTE	4
		.BYTE $54 ; T
		.BYTE $40 ; @
		.BYTE $44 ; D
		.BYTE $40 ; @
		.BYTE	3
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $4A ; J
		.BYTE $AA ; ™
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $BE ; æ
		.BYTE $FA ; ˙
		.BYTE $EA ; Í
		.BYTE $EB ; Î
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE	5
		.BYTE $10
		.BYTE $45 ; E
		.BYTE	5
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $51 ; Q
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE $51 ; Q
		.BYTE $1B
		.BYTE $37 ; 7
		.BYTE $11
		.BYTE $1B
		.BYTE $4C ; L
		.BYTE $22 ; "
		.BYTE $1B
		.BYTE	4
		.BYTE $20
		.BYTE $1B
		.BYTE  $D
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $C5 ; ≈
		.BYTE $1B
		.BYTE	5
		.BYTE $F5 ; ı
		.BYTE $35 ; 5
		.BYTE $1B
		.BYTE	4
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $F7 ; ˜
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE $17
		.BYTE $55 ; U
		.BYTE $66 ; f
		.BYTE $66 ; f
		.BYTE $1B
		.BYTE	3
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $44 ; D
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	5
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE  $F
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $CF ; œ
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE  $E
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	5
		.BYTE $FC ; ¸
		.BYTE  $E
		.BYTE $4E ; N
		.BYTE  $F
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $EF ; Ô
		.BYTE $FE ; ˛
		.BYTE $BE ; æ
		.BYTE $BB ; ª
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $EF ; Ô
		.BYTE $FE ; ˛
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE	5
		.BYTE $10
		.BYTE $45 ; E
		.BYTE	5
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $11
		.BYTE $11
		.BYTE	1
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $11
		.BYTE $1B
		.BYTE	2
		.BYTE	1
		.BYTE $1B
		.BYTE $27 ; '
		.BYTE $11
		.BYTE $1B
		.BYTE $1C
		.BYTE $22 ; "
		.BYTE $1B
		.BYTE	2
		.BYTE $20
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $22 ; "
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $20
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $20
		.BYTE $1B
		.BYTE $16
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $C5 ; ≈
		.BYTE $1B
		.BYTE	5
		.BYTE $F5 ; ı
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $40 ; @
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $15
		.BYTE $1B
		.BYTE $1C
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $D5 ; ’
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE	4
		.BYTE $54 ; T
		.BYTE $FC ; ¸
		.BYTE $5C ; \
		.BYTE $1C
		.BYTE $FC ; ¸
		.BYTE $3C ; <
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $3F ; ?
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $BA ; ∫
		.BYTE $1B
		.BYTE	2
		.BYTE $BE ; æ
		.BYTE $3E ; >
		.BYTE	0
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $83 ; É
		.BYTE $83 ; É
		.BYTE  $F
		.BYTE  $F
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $3C ; <
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	2
		.BYTE $F8 ; ¯
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $82 ; Ç
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE	5
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE $27 ; '
		.BYTE $11
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
		.BYTE $12
		.BYTE $22 ; "
		.BYTE $1B
		.BYTE	2
		.BYTE $20
		.BYTE $1B
		.BYTE $19
		.BYTE	0
		.BYTE $20
		.BYTE $20
		.BYTE $1B
		.BYTE $2D ; -
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $F5 ; ı
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $51 ; Q
		.BYTE $51 ; Q
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $15
		.BYTE $1B
		.BYTE $1D
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $5D ; ]
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $2F ; /
		.BYTE $1B
		.BYTE	3
		.BYTE $2B ; +
		.BYTE $2A ; *
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE  $C
		.BYTE $FF
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $1B
		.BYTE	3
		.BYTE  $F
		.BYTE $CF ; œ
		.BYTE $C3 ; √
		.BYTE	0
		.BYTE	0
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE	3
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $FC ; ¸
		.BYTE $E0 ; ‡
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE	5
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $11
		.BYTE $11
		.BYTE	1
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $11
		.BYTE	1
		.BYTE	1
		.BYTE $1B
		.BYTE $17
		.BYTE $11
		.BYTE $1B
		.BYTE	4
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $20
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $20
		.BYTE $1B
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $F5 ; ı
		.BYTE	5
		.BYTE $1B
		.BYTE $33 ; 3
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $51 ; Q
		.BYTE $50 ; P
		.BYTE $51 ; Q
		.BYTE $1B
		.BYTE	7
		.BYTE $2A ; *
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; ˛
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $CC ; Ã
		.BYTE $8C ; å
		.BYTE $8C ; å
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $CF ; œ
		.BYTE $CC ; Ã
		.BYTE  $C
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $F3 ; Û
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $CF ; œ
		.BYTE  $F
		.BYTE $2F ; /
		.BYTE $1B
		.BYTE	4
		.BYTE $E2 ; ‚
		.BYTE $E0 ; ‡
		.BYTE $A1 ; °
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $45 ; E
		.BYTE $10
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE $1F
		.BYTE	0
		.BYTE $11
		.BYTE $11
		.BYTE $1B
		.BYTE	2
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $11
		.BYTE $10
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $10
		.BYTE $10
		.BYTE $1B
		.BYTE $65 ; e
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $F5 ; ı
		.BYTE	5
		.BYTE $1B
		.BYTE $2F ; /
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $BB ; ª
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $8C ; å
		.BYTE $8E ; é
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE  $F
		.BYTE $80 ; Ä
		.BYTE	3
		.BYTE  $B
		.BYTE $CF ; œ
		.BYTE $EF ; Ô
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE	0
		.BYTE $BF ; ø
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A1 ; °
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	4
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE $15
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $45 ; E
		.BYTE $10
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE $37 ; 7
		.BYTE	0
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
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
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
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $F5 ; ı
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE $5A ; Z
		.BYTE $A9 ; ©
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $A9 ; ©
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $A5 ; •
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $A9 ; ©
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $A9 ; ©
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $AB ; ´
		.BYTE $BF ; ø
		.BYTE $95 ; ï
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $AB ; ´
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE  $D
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	6
		.BYTE $E5 ; Â
		.BYTE $AA ; ™
		.BYTE $69 ; i
		.BYTE $59 ; Y
		.BYTE $59 ; Y
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $45 ; E
		.BYTE $10
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE $37 ; 7
		.BYTE	0
		.BYTE $1B
		.BYTE $36 ; 6
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $A9 ; ©
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE  $A
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $AB ; ´
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $E5 ; Â
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $65 ; e
		.BYTE $69 ; i
		.BYTE $59 ; Y
		.BYTE $59 ; Y
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $45 ; E
		.BYTE $10
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE $37 ; 7
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE $1B
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $A9 ; ©
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE $13
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE $14
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $69 ; i
		.BYTE $65 ; e
		.BYTE $A5 ; •
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE $16
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $65 ; e
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $65 ; e
		.BYTE $69 ; i
		.BYTE $59 ; Y
		.BYTE $59 ; Y
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $85 ; Ö
		.BYTE $60 ; `
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE $4F ; O
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $A
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE	8
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $5A ; Z
		.BYTE $5E ; ^
		.BYTE $5C ; \
		.BYTE $5A ; Z
		.BYTE $58 ; X
		.BYTE $56 ; V
		.BYTE $54 ; T
		.BYTE $52 ; R
		.BYTE $52 ; R
		.BYTE $1B
		.BYTE  $C
		.BYTE $42 ; B
		.BYTE $44 ; D
		.BYTE $42 ; B
		.BYTE $1B
		.BYTE	8
		.BYTE $2E ; .
		.BYTE	0
		.BYTE	3
		.BYTE $80 ; Ä
		.BYTE  $C
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $80 ; Ä
		.BYTE  $E
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE $20
		.BYTE $1B
		.BYTE $11
		.BYTE	0
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1F
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE	0
		.BYTE  $A
		.BYTE $35 ; 5
		.BYTE  $F
		.BYTE $9C ; ú
		.BYTE	4
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
; end of 'RAM'


		.END
