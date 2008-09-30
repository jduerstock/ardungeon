		.include	"globals.inc"
		.include	"exp_kernel.inc"

;		.ORG	$7600
		.BYTE	6
; ---------------------------------------------------------------------------
		JMP	loc_7610
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_7AD1
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601j
		LDA	#30
		STA	$66
		LDX	#2

loc_7616:				; CODE XREF: RAM:7620j
		LDA	$D20A
		AND	#7
		ADC	$66
		STA	$66
		DEX
		BPL	loc_7616
		INX
		STX	$6B
		DEC	$1937
		LDX	#4

loc_762A:				; CODE XREF: RAM:7631j
		LDA	$6318,X
		STA	$750D,X
		DEX
		BPL	loc_762A
		JSR	$1869
		LDA	$6309
		STA	$6E
		LDX	$6313
		CPX	#2
		BEQ	loc_7644
		LDX	#0

loc_7644:				; CODE XREF: RAM:7640j
		LDA	off_79C3,X
		STA	off_78D2
		LDA	off_79C3+1,X
		STA	off_78D2+1
		LDA	#<loc_76D5
		STA	off_1977
		LDA	#>loc_76D5
		STA	off_1977+1
		LDA	$D20A
		AND	#$F
		STA	$6D
		LDA	$7583,X
		ORA	$7584,X
		BNE	loc_766D
		LDY	#7
		BNE	loc_7685

loc_766D:				; CODE XREF: RAM:7667j
		LDA	$630F
		SEC
		SBC	$7583,X
		TAY
		LDA	$6310
		SBC	$7584,X
		BEQ	loc_767F
		LDY	#7

loc_767F:				; CODE XREF: RAM:767Bj
		CPY	#8
		BCC	loc_7685
		LDY	#7

loc_7685:				; CODE XREF: RAM:766Bj	RAM:7681j
		LDA	unk_79F1,Y
		SBC	$6D
		BCS	loc_768E
		LDA	#0

loc_768E:				; CODE XREF: RAM:768Aj
		STA	$6D
		LDA	$630F
		STA	$7583,X
		LDA	$6310
		STA	$7584,X
		LDA	#$3C ; '<'
		STA	$16
		LDA	#$78 ; 'x'
		STA	$17
		JSR	$184B
		LDA	$1933
		STA	$67
		LDA	#$4D ; 'M'
		STA	7
		LDA	#$7C ; '|'
		STA	8
		LDA	#2
		JSR	$180F
		RTS
; ---------------------------------------------------------------------------

loc_76BA:				; CODE XREF: RAM:77A1j
		LDA	#$F
		STA	$16
		LDA	#$79 ; 'y'
		STA	$17
		LDX	$67
		JSR	$1851
		LDA	$D20A
		AND	#3
		ADC	#2
		JSR	sub_77F9
		LDA	$68
		STA	$6B

loc_76D5:
		LDA	#0
		STA	$6C

loc_76D9:				; CODE XREF: RAM:76E4j
		LDA	$D20A
		CMP	$6C
		BCC	loc_76E2
		STA	$6C

loc_76E2:				; CODE XREF: RAM:76DEj
		DEC	$6B
		BPL	loc_76D9
		LDA	#$B4 ; '�'
		STA	$62
		LDA	#$79 ; 'y'
		STA	$63
		LDY	#0
		LDA	$6C

loc_76F2:				; CODE XREF: RAM:76FBj
		CMP	($62),Y
		BEQ	loc_76FD
		BCC	loc_76FD
		INY
		INY
		INY
		BNE	loc_76F2

loc_76FD:				; CODE XREF: RAM:76F4j	RAM:76F6j
		INY
		LDA	($62),Y
		STA	$64
		INY
		LDA	($62),Y
		STA	$65
		LDY	#0
		LDA	($64),Y
		STA	$62
		INY
		LDA	($64),Y
		STA	$63
		LDA	#2
		CLC
		ADC	$64
		STA	off_78D0
		LDA	#0
		ADC	$65
		STA	off_78D0+1
		LDA	#$3C ; '<'
		STA	$16
		LDA	#$78 ; 'x'
		STA	$17
		LDX	$67
		JSR	$1851

loc_772E:				; CODE XREF: RAM:77ACj
		LDX	$67
		STX	$1933
		JSR	$1848

loc_7736:				; CODE XREF: RAM:779Bj
		LDA	#$76 ; 'v'
		STA	$1977
		LDA	#$77 ; 'w'
		STA	$1978
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7743:				; CODE XREF: RAM:7782j
		LDA	$6385
		CMP	#$70 ; 'p'
		BCC	loc_775C
		LDA	$6387
		CMP	#$10
		BCS	loc_775C
		LDA	#$64 ; 'd'
		STA	$16
		LDA	#$79 ; 'y'
		STA	$17
		JMP	loc_7764
; ---------------------------------------------------------------------------

loc_775C:				; CODE XREF: RAM:7748j	RAM:774Fj
		LDA	#$96 ; '�'
		STA	$16
		LDA	#$79 ; 'y'
		STA	$17

loc_7764:				; CODE XREF: RAM:7759j
		LDX	$67
		JSR	$1851
		LDA	#4
		JSR	$185A
		LDA	#$A
		STA	$6320
		JMP	loc_77E8
; ---------------------------------------------------------------------------

loc_7776:				; CODE XREF: RAM:778Fj
		JSR	$1869
		LDA	$6E
		CMP	$6309
		BEQ	loc_7792
		DEC	$6D
		BMI	loc_7743
		CLC
		ADC	#1
		CMP	#$3C ; '<'
		BNE	loc_778D
		LDA	#0

loc_778D:				; CODE XREF: RAM:7789j
		STA	$6E
		JMP	loc_7776
; ---------------------------------------------------------------------------

loc_7792:				; CODE XREF: RAM:777Ej
		JSR	$1821
		AND	#2
		BNE	loc_77E8
		LDA	$31
		BMI	loc_7736
		CMP	#$32 ; '2'
		BNE	loc_77A4
		JMP	loc_76BA
; ---------------------------------------------------------------------------

loc_77A4:				; CODE XREF: RAM:779Fj
		CMP	#$30 ; '0'
		BEQ	loc_77E8
		CMP	#$31 ; '1'
		BEQ	loc_77AF
		JMP	loc_772E
; ---------------------------------------------------------------------------

loc_77AF:				; CODE XREF: RAM:77AAj
		LDY	#1
		LDA	($62),Y
		CLC
		ADC	$66
		STA	($62),Y
		LDA	#0
		DEY
		ADC	($62),Y
		STA	($62),Y
		BCC	loc_77C8
		LDA	#$FF
		STA	($62),Y
		INY
		STA	($62),Y

loc_77C8:				; CODE XREF: RAM:77BFj
		LDA	#$3A ; ':'
		STA	$16
		LDA	#$79 ; 'y'
		STA	$17
		LDX	$67
		JSR	$1851
		LDA	#4
		JSR	$185A
		LDX	#$87 ; '�'
		LDA	#$10
		JSR	$1878
		LDX	#$85 ; '�'
		LDA	#2
		JSR	$186F

loc_77E8:				; CODE XREF: RAM:7773j	RAM:7797j ...
		LDX	#4

loc_77EA:				; CODE XREF: RAM:77F1j
		LDA	$750D,X
		STA	$6313,X
		DEX
		BPL	loc_77EA
		STX	$AC00
		JMP	$180C

; ��������������� S U B	R O U T	I N E ���������������������������������������


sub_77F9:				; CODE XREF: RAM:76CEp
		STA	$69
		LDA	#0
		STA	$68
		DEC	$1937
		JSR	$181E

loc_7805:				; CODE XREF: RAM:7834j
		LDA	#6
		STA	$6A

loc_7809:				; CODE XREF: RAM:782Ej
		LDX	#$A

loc_780B:				; CODE XREF: sub_77F9+1Bj
		LDA	$252

loc_780E:				; CODE XREF: sub_77F9+18j
		CMP	$252
		BEQ	loc_780E
		DEX
		BNE	loc_780B
		LDA	#$23 ; '#'
		STA	$1977
		LDA	#$78 ; 'x'
		STA	$1978
		JMP	$1806
; End of function sub_77F9

; ---------------------------------------------------------------------------
		LDA	$31
		BPL	loc_7836
		JSR	$1821
		BMI	loc_7836
		DEC	$6A
		BNE	loc_7809
		INC	$68
		DEC	$69
		BNE	loc_7805

loc_7836:				; CODE XREF: RAM:7825j	RAM:782Aj
		INC	$1937
		RTS
; ---------------------------------------------------------------------------
		.BYTE $A8,$FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aYouAreIn:	.BYTE "You are in"
		.BYTE $B4
		.WORD $78D2
		.BYTE $28
aVault_:	.BYTE " vault."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aYouSeeABagOf:	.BYTE "You see a bag of "
		.BYTE $B4
		.WORD off_78D0
		.BYTE $D
		.BYTE $D
		.BYTE $D
aDoYou:		.BYTE "Do you ("
		.BYTE $A1
a1:		.BYTE '1'
		.BYTE $A0
aGrabTheBagAndR:.BYTE ") Grab the bag and run,"
		.BYTE $D
		.BYTE "       ("
		.BYTE $A1
a2:		.BYTE '2'
		.BYTE $A0
aSearchForSomet:.BYTE ") Search for something else or"
		.BYTE $D
		.BYTE "       ("
		.BYTE $A1
a0:		.BYTE '0'
		.BYTE $A0
aLeaveq:	.BYTE ") Leave?"
		.BYTE $FF
off_78D0:	.WORD byte_78E2		; DATA XREF: RAM:7717w	RAM:786Ao ...
off_78D2:	.WORD aSideTheFirstCi	; DATA XREF: RAM:7647w	RAM:764Dw
					; "side	the First City"
		.WORD $63B5
aCopperCoins:	.BYTE "copper coins"
byte_78E2:	.BYTE 0			; DATA XREF: RAM:off_78D0o
		.WORD $63B3
aSilverCoins:	.BYTE "silver coins",0
		.WORD $63B1
aGoldCoins:	.BYTE "gold coins",0
		.WORD $63B7
aGems:		.BYTE "gems",0
		.WORD $63B9
aJewels:	.BYTE "jewels",0
		.BYTE $A6, $E,	3
		.BYTE $A1
aSearching___:	.BYTE "Searching..."
		.BYTE $A6,  9,	7
		.BYTE $A0
aHitAnyKeyToSto:.BYTE "(Hit any key to stop.)"
		.BYTE $FF
		.BYTE $A6,  0,	3
		.BYTE $A5
aYouGrabTheBagO:.BYTE "You grab the bag of "
		.BYTE $B4
		.WORD off_78D0
		.BYTE $E
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAndRun:	.BYTE " and run!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6, $A,	2
aAGuardEscortsY:.BYTE "A guard escorts you"
		.BYTE $A6,  8,	4
aOutOfTheBankSV:.BYTE "out of the bank's vault."
		.BYTE $FF
		.BYTE $A6,  7,	4
aAGuardDragsYou:.BYTE "A guard drags you outside."
		.BYTE $FF

byte_79B4:
		.BYTE	$7F
		.WORD	$78D4
		.BYTE	$BF
		.WORD	$78E3
		.BYTE	$DF
		.WORD	$78F2
		.BYTE	$EF
		.WORD	$78FF
		.BYTE	$FF
		.WORD	$7906
off_79C3:	.WORD	$79C7
		.WORD	$79DB
aSideTheFirstCi:.BYTE "side the First City",0 ; DATA XREF: RAM:off_78D2o
aGramSGoldExcha:.BYTE " Gram's Gold Exchange",0
unk_79F1:	.BYTE	0		; DATA XREF: RAM:loc_7685r
		.BYTE	5
		.BYTE  $A
		.BYTE  $A
		.BYTE  $F
		.BYTE  $F
		.BYTE $14
		.BYTE $1E
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42 ; B
		.BYTE	0
		.BYTE	4
		.BYTE $80 ; �
		.BYTE	2
		.BYTE $80 ; �
		.BYTE	2
		.BYTE $80 ; �
		.BYTE	2
		.BYTE $80 ; �
		.BYTE	2
		.BYTE $80 ; �
		.BYTE	6
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $F0 ; �
		.BYTE	4
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
		.BYTE $58 ; X
		.BYTE	6
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
		.BYTE $F9 ; �
		.BYTE $79 ; y
; ---------------------------------------------------------------------------

loc_7A2B:
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
		LDY	#$90 ; '�'
		STA	$D40A
		STA	$D000
		STX	$D001
		STY	$D002
		STA	$D40A
		LDA	#$B0 ; '�'
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

loc_7A8F:				; CODE XREF: RAM:7AB4j
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
		BPL	loc_7A8F
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

loc_7AD1:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$F9 ; '�'
		STA	$254
		LDA	#$79 ; 'y'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_7AE4:				; CODE XREF: RAM:7AF2j
		LDY	#$C

loc_7AE6:				; CODE XREF: RAM:7AEDj
		STA	$BB4C,X
		DEX
		BMI	loc_7AF4
		DEY
		BNE	loc_7AE6
		CLC
		ADC	#4
		BNE	loc_7AE4

loc_7AF4:				; CODE XREF: RAM:7AEAj
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_7BEC
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; '�'
		STA	$A
		JSR	loc_7BEC
		LDA	#0
		STA	loc_7B1A+1
		LDA	#$BD ; '�'
		STA	loc_7B1A+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; '�'

loc_7B1A:				; CODE XREF: RAM:7B1Ej	RAM:7B24j
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_7B1A
		INC	loc_7B1A+2
		DEY
		BNE	loc_7B1A
		LDX	#7

loc_7B28:				; CODE XREF: RAM:7B2Cj
		STA	$D000,X
		DEX
		BPL	loc_7B28
		LDA	#3
		TAX

loc_7B31:				; CODE XREF: RAM:7B35j
		STA	$D008,X
		DEX
		BPL	loc_7B31
		LDA	#$FF
		STA	$D00C
		LDA	#3
		STA	$D01D
		LDA	#$BC ; '�'
		STA	$D407
		LDA	#4
		STA	$D01B
		LDA	#0
		STA	7
		LDA	#$BC ; '�'
		STA	8
		LDA	#$F0 ; '�'
		STA	9
		LDA	#4
		STA	$A
		LDA	#0
		STA	6

loc_7B5F:				; CODE XREF: RAM:7B85j
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_7B67:				; CODE XREF: RAM:7B72j
		LSR	4
		BCC	loc_7B71
		LDA	(9),Y
		ORA	#$80 ; '�'
		STA	(9),Y

loc_7B71:				; CODE XREF: RAM:7B69j
		DEY
		BPL	loc_7B67
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_7B7F
		INC	$A

loc_7B7F:				; CODE XREF: RAM:7B7Bj
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_7B5F
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		LDA	#$A9 ; '�'
		STA	$F0
		LDA	#$BD ; '�'
		STA	$F1

loc_7B97:				; CODE XREF: RAM:7BA8j
		CLC
		LDA	$F0,X
		ADC	#$80 ; '�'
		STA	$F2,X
		LDA	$F1,X
		ADC	#0
		STA	$F3,X
		INX
		INX
		CPX	#8
		BCC	loc_7B97

loc_7BAA:				; CODE XREF: RAM:7BC7j
		LDX	#0

loc_7BAC:				; CODE XREF: RAM:7BC5j
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_7BB2:				; CODE XREF: RAM:7BB7j
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_7BB2
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_7BC9
		CPX	#$A
		BCC	loc_7BAC
		BCS	loc_7BAA

loc_7BC9:				; CODE XREF: RAM:7BC1j
		LDX	#3
		LDA	$BC5F

loc_7BCE:				; CODE XREF: RAM:7BD2j
		STA	$D012,X
		DEX
		BPL	loc_7BCE
		LDA	#$2B ; '+'
		STA	off_24A
		LDA	#$7A ; 'z'
		STA	off_24A+1
		LDA	#$C0 ; '�'
		STA	$D40E
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_7BEC:				; CODE XREF: RAM:7AFCp	RAM:7B07p ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_7BF6
		INC	8

loc_7BF6:				; CODE XREF: RAM:7BF2j
		CMP	#$1B
		BEQ	loc_7C05
		STA	(9),Y
		INC	9
		BNE	loc_7C02
		INC	$A

loc_7C02:				; CODE XREF: RAM:7BFEj
		JMP	loc_7BEC
; ---------------------------------------------------------------------------

loc_7C05:				; CODE XREF: RAM:7BF8j
		LDA	(7),Y
		INC	7
		BNE	loc_7C0D
		INC	8

loc_7C0D:				; CODE XREF: RAM:7C09j
		CMP	#$FF
		BNE	loc_7C12
		RTS
; ---------------------------------------------------------------------------

loc_7C12:				; CODE XREF: RAM:7C0Fj
		STA	byte_7C4C
		ADC	9
		STA	loc_7C25+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_7C2A
		LDA	byte_7C4C

loc_7C25:				; DATA XREF: RAM:7C17w
		SBC	#$FF
		STA	byte_7C4C

loc_7C2A:				; CODE XREF: RAM:7C20j
		LDA	(7),Y
		INC	7
		BNE	loc_7C32
		INC	8

loc_7C32:				; CODE XREF: RAM:7C2Ej
		LDY	byte_7C4C

loc_7C35:				; CODE XREF: RAM:7C38j
		STA	(9),Y
		DEY
		BPL	loc_7C35
		INC	byte_7C4C
		LDA	byte_7C4C
		CLC
		ADC	9
		STA	9
		BCC	loc_7C49
		INC	$A

loc_7C49:				; CODE XREF: RAM:7C45j
		JMP	loc_7BEC
; ---------------------------------------------------------------------------
byte_7C4C:	.BYTE 0			; DATA XREF: RAM:loc_7C12w RAM:7C22r ...
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $AF ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $FC ; �
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $A0 ; �
		.BYTE	2
		.BYTE $A2 ; �
		.BYTE $A8 ; �
		.BYTE $A8 ; �
		.BYTE $8A ; �
		.BYTE $8A ; �
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; �
		.BYTE  $A
		.BYTE $8A ; �
		.BYTE $8A ; �
		.BYTE $A2 ; �
		.BYTE $A0 ; �
		.BYTE $A0 ; �
		.BYTE $8A ; �
		.BYTE $8A ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE	0
		.BYTE $82 ; �
		.BYTE $A2 ; �
		.BYTE $8A ; �
		.BYTE $8A ; �
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE	2
		.BYTE $8A ; �
		.BYTE $8A ; �
		.BYTE $A2 ; �
		.BYTE $A8 ; �
		.BYTE $82 ; �
		.BYTE $80 ; �
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $A0 ; �
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $2A ; *
		.BYTE $80 ; �
		.BYTE $8A ; �
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $A8 ; �
		.BYTE $A8 ; �
		.BYTE $A0 ; �
		.BYTE	2
		.BYTE  $A
		.BYTE $8A ; �
		.BYTE $8A ; �
		.BYTE $A2 ; �
		.BYTE  $A
		.BYTE	2
		.BYTE $A0 ; �
		.BYTE $A8 ; �
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE $A2 ; �
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $A8 ; �
		.BYTE $A8 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; �
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; �
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A2 ; �
		.BYTE $A0 ; �
		.BYTE $A0 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; �
		.BYTE $A0 ; �
		.BYTE $82 ; �
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; �
		.BYTE $A0 ; �
		.BYTE	2
		.BYTE $A2 ; �
		.BYTE $A8 ; �
		.BYTE $A8 ; �
		.BYTE $A0 ; �
		.BYTE $A0 ; �
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $2A ; *
		.BYTE $8A ; �
		.BYTE $A2 ; �
		.BYTE $8A ; �
		.BYTE  $A
		.BYTE $A2 ; �
		.BYTE $A8 ; �
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE $A2 ; �
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; �
		.BYTE $80 ; �
		.BYTE $82 ; �
		.BYTE $8A ; �
		.BYTE  $A
		.BYTE $8A ; �
		.BYTE $A2 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; �
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; �
		.BYTE $82 ; �
		.BYTE $8A ; �
		.BYTE $2A ; *
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE $82 ; �
		.BYTE  $A
		.BYTE $8A ; �
		.BYTE $A2 ; �
		.BYTE $A8 ; �
		.BYTE $A8 ; �
		.BYTE $F0 ; �
		.BYTE $F0 ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $F0 ; �
		.BYTE  $A
		.BYTE	0
		.BYTE $FC ; �
		.BYTE $FF
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $F3 ; �
		.BYTE $F0 ; �
		.BYTE $F0 ; �
		.BYTE  $B
		.BYTE  $B
		.BYTE	3
		.BYTE	3
		.BYTE $FF
		.BYTE $FF
		.BYTE  $B
		.BYTE  $B
		.BYTE $1B
		.BYTE	3
		.BYTE $C0 ; �
		.BYTE $F0 ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $C0 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $2F ; /
		.BYTE  $F
		.BYTE  $F
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $AF ; �
		.BYTE $A8 ; �
		.BYTE $AB ; �
		.BYTE $BB ; �
		.BYTE $AB ; �
		.BYTE $AB ; �
		.BYTE $BB ; �
		.BYTE $AB ; �
		.BYTE $A8 ; �
		.BYTE $AB ; �
		.BYTE $BB ; �
		.BYTE $AB ; �
		.BYTE $AB ; �
		.BYTE $BB ; �
		.BYTE $AB ; �
		.BYTE $AB ; �
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE $A2 ; �
		.BYTE  $A
		.BYTE $8A ; �
		.BYTE $8A ; �
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; �
		.BYTE $A0 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; �
		.BYTE $A2 ; �
		.BYTE $A2 ; �
		.BYTE $8A ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A0 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; �
		.BYTE $80 ; �
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; �
		.BYTE $80 ; �
		.BYTE $8A ; �
		.BYTE $8A ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; �
		.BYTE $82 ; �
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; �
		.BYTE $A2 ; �
		.BYTE $A2 ; �
		.BYTE $8A ; �
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $A8 ; �
		.BYTE $A2 ; �
		.BYTE  $A
		.BYTE $8A ; �
		.BYTE $A2 ; �
		.BYTE $A2 ; �
		.BYTE $A8 ; �
		.BYTE $A8 ; �
		.BYTE $A0 ; �
		.BYTE $A8 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE	0
		.BYTE $A0 ; �
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; �
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; �
		.BYTE	0
		.BYTE $A8 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE $A2 ; �
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $82 ; �
		.BYTE $A0 ; �
		.BYTE $A8 ; �
		.BYTE $A0 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; �
		.BYTE $80 ; �
		.BYTE $8A ; �
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; �
		.BYTE $A2 ; �
		.BYTE $A2 ; �
		.BYTE $A0 ; �
		.BYTE $A2 ; �
		.BYTE $8A ; �
		.BYTE $8A ; �
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $AA ; �
		.BYTE $80 ; �
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; �
		.BYTE $28 ; (
		.BYTE $AA ; �
		.BYTE $2A ; *
		.BYTE $8A ; �
		.BYTE $8A ; �
		.BYTE $80 ; �
; end of 'RAM'


		.END
