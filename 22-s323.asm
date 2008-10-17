		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

off_63	= $63

;		.ORG	$7600
		.BYTE	$17
; ---------------------------------------------------------------------------
		JMP	loc_7610
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_7D07
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601j
		dldi	off_7, $7E83
		LDA	#2
		JSR	$180F
		DEC	$1937
		dldi	off_1977, loc_763B
		dldi	off_16, $76E4
		JSR	$184B
		LDA	$1933
		STA	$62
		RTS
; ---------------------------------------------------------------------------

loc_763B:
		dldi	off_16, $76E6
		JSR	sub_76C4
		ldxy	$7508
		LDA	#2
		JSR	j_TESTBIT
		BCC	loc_765F
		dldi	off_16, $7757
		JSR	sub_76C4
		JMP	loc_76AD
; ---------------------------------------------------------------------------

loc_765F:				; CODE XREF: RAM:764Fj
		dldi	off_63, $76CE
		LDA	#$B
		STA	$65
		LDX	#$75 ; 'u'
		LDY	#8
		LDA	#2
		SEC
		JSR	$1860

loc_7675:				; CODE XREF: RAM:769Aj
		LDY	#0
		LDA	(off_63),Y
		STA	$16
		INY
		LDA	(off_63),Y
		STA	$17
		LDX	$62
		JSR	$1851
		LDA	off_63
		CLC
		ADC	#2
		STA	off_63
		BCC	loc_7690
		INC	off_63+1

loc_7690:				; CODE XREF: RAM:768Cj
		JSR	$183C
		LDA	$65
		SEC
		SBC	#1
		STA	$65
		BNE	loc_7675
		LDX	#$75 ; 'u'
		LDY	#8
		SEC
		LDA	#$14
		JSR	$1860
		LDX	#$7C ; '|'
		LDY	#$1A
		JSR	$1884

loc_76AD:				; CODE XREF: RAM:765Cj
		LDA	#$E
		STA	$6313
		LDA	#$1C
		STA	$6314
		LDA	#2
		STA	$6312
		LDA	#$FF
		STA	$AC00
		JMP	$180C

; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_76C4:				; CODE XREF: RAM:7643p	RAM:7659p
		LDX	$62
		JSR	$1851
		LDA	#$12
		JMP	$185A
; End of function sub_76C4

; ---------------------------------------------------------------------------
		.WORD byte_778C
		.WORD byte_77F3
		.WORD byte_7865
		.WORD byte_78D8
		.WORD byte_794D
		.WORD byte_79C3
		.WORD byte_7A2F
		.WORD byte_7A9D
		.WORD byte_7B0C
		.WORD byte_7B50
		.WORD byte_7BC3
		.BYTE $A8,$FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aAsYouGazeAtThe:.BYTE "As you gaze at the wall of the crypt"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheGhostlyFigu:.BYTE "the ghostly figure of King Danjor"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAppears_TheApp:.BYTE "appears.  The apparition speaks:"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aICanTellYouNoM:.BYTE "I can tell you no more"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThanYouAlready:.BYTE "than you already know."
		.BYTE $D
		.BYTE $FF
byte_778C:	.BYTE $A6,  0,	0	; DATA XREF: RAM:76CEo
		.BYTE $A5
aLongAgoOnADist:.BYTE "Long ago, on a distant soil,"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheKeepersCame:.BYTE "The Keepers came. What became of"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aMyHomeIKnowNot:.BYTE "my home, I know not. I awoke in"
		.BYTE $D
		.BYTE $FF
byte_77F3:	.BYTE $A6,  0,	0	; DATA XREF: RAM:76D0o
		.BYTE $A5
aAStrangeWorld_:.BYTE "a strange world. In it were some"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aLikeMyselfButM:.BYTE "like myself, but most were strange"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aCreatures_Many:.BYTE "creatures. Many among us forsook the"
		.BYTE $D
		.BYTE $FF
byte_7865:	.BYTE $A6,  0,	0	; DATA XREF: RAM:76D2o
		.BYTE $A5
aWayOfKnowledge:.BYTE "Way of Knowledge and became sloth,"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTurningToThiev:.BYTE "turning to thievery and murder for"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheirDailyBrea:.BYTE "their daily bread. Only I and seven"
		.BYTE $D
		.BYTE $FF
byte_78D8:	.BYTE $A6,  0,	0	; DATA XREF: RAM:76D4o
		.BYTE $A5
aOthersRemained:.BYTE "others remained True. We learned to"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aLookBehindTheM:.BYTE "look behind the mask of this world,"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAndToSeeTheKee:.BYTE "and to see The Keepers, who brought"
		.BYTE $D
		.BYTE $FF
byte_794D:	.BYTE $A6,  0,	0	; DATA XREF: RAM:76D6o
		.BYTE $A5
aUsHereToQuarre:.BYTE "us here to quarrel and fight amongst"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOurselvesForTh:.BYTE "ourselves for their amusement. We"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTaughtOthersOu:.BYTE "taught others our knowledge and stole"
		.BYTE $D
		.BYTE $FF
byte_79C3:	.BYTE $A6,  0,	0	; DATA XREF: RAM:76D8o
		.BYTE $A5
aTheWeaponsOfLi:.BYTE "the weapons of light from The Keepers."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAGreatBattleWa:.BYTE "A great battle was made; but, in the"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aEndWeWereDefea:.BYTE "end, we were defeated."
		.BYTE $D
		.BYTE $FF
byte_7A2F:	.BYTE $A6,  0,	0	; DATA XREF: RAM:76DAo
		.BYTE $A5
aLestOurDreamsO:.BYTE "Lest our dreams of home and freedom"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aDieWithUsOnThi:.BYTE "die with us on this alien soil,"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheSevenTookAn:.BYTE "The Seven took an oath so strong"
		.BYTE $D
		.BYTE $FF
byte_7A9D:	.BYTE $A6,  0,	0	; DATA XREF: RAM:76DCo
		.BYTE $A5
aThatItBoundThe:.BYTE "that it bound them beyond death:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWeShallAwaitOn:.BYTE "We shall await one that will have"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheStrengthToC:.BYTE "the strength to carry on our hope."
		.BYTE $D
		.BYTE $FF
byte_7B0C:	.BYTE $A6,  0,	0	; DATA XREF: RAM:76DEo
		.BYTE $A5
aYouAreThatOne:	.BYTE "You are that one,"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		.BYTE $B3
		.WORD $6321
		.BYTE $19
a_:		.BYTE "."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOtherThanTheGi:.BYTE "Other than the gifts that you have"
		.BYTE $D
		.BYTE $FF
byte_7B50:	.BYTE $A6,  0,	0	; DATA XREF: RAM:76E0o
		.BYTE $A5
aReceivedFromTh:.BYTE "received from The Seven, I can only"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOfferYouAPorti:.BYTE "offer you a portion of the staff of"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAcrinimiril_Th:.BYTE "Acrinimiril. The Keepers consider"
		.BYTE $D
		.BYTE $FF
byte_7BC3:	.BYTE $A6,  0,	0	; DATA XREF: RAM:76E2o
		.BYTE $A5
aAcrinimirilMad:.BYTE "Acrinimiril mad and are not"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAwareOfHisTrue:.BYTE "aware of his true knowledge."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aSeekThisKnowle:.BYTE "Seek this knowledge!"
		.BYTE $D
		.BYTE $FF
		.BYTE	7
		.BYTE $15
		.BYTE	1
		.BYTE	0
		.BYTE	2
		.BYTE $12
aStaffPiece:	.BYTE "Staff Piece",0
		.BYTE	0
		.BYTE	2
		.BYTE	6
unk_7C2F:	.BYTE $70 ; p		; DATA XREF: RAM:7C5Fo
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
		.BYTE $44 ; D
		.BYTE $F0 ; 
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
		.BYTE $41 ; A
		.WORD unk_7C2F
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

loc_7CC5:				; CODE XREF: RAM:7CEAj
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
		BPL	loc_7CC5
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

loc_7D07:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$2F ; '/'
		STA	$254
		LDA	#$7C ; '|'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_7D1A:				; CODE XREF: RAM:7D28j
		LDY	#$C

loc_7D1C:				; CODE XREF: RAM:7D23j
		STA	$BB4C,X
		DEX
		BMI	loc_7D2A
		DEY
		BNE	loc_7D1C
		CLC
		ADC	#4
		BNE	loc_7D1A

loc_7D2A:				; CODE XREF: RAM:7D20j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_7E22
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_7E22
		LDA	#0
		STA	loc_7D50+1
		LDA	#$BD ; 'Ω'
		STA	loc_7D50+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_7D50:				; CODE XREF: RAM:7D54j	RAM:7D5Aj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_7D50
		INC	loc_7D50+2
		DEY
		BNE	loc_7D50
		LDX	#7

loc_7D5E:				; CODE XREF: RAM:7D62j
		STA	$D000,X
		DEX
		BPL	loc_7D5E
		LDA	#3
		TAX

loc_7D67:				; CODE XREF: RAM:7D6Bj
		STA	$D008,X
		DEX
		BPL	loc_7D67
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

loc_7D95:				; CODE XREF: RAM:7DBBj
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_7D9D:				; CODE XREF: RAM:7DA8j
		LSR	4
		BCC	loc_7DA7
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_7DA7:				; CODE XREF: RAM:7D9Fj
		DEY
		BPL	loc_7D9D
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_7DB5
		INC	$A

loc_7DB5:				; CODE XREF: RAM:7DB1j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_7D95
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_7DCD:				; CODE XREF: RAM:7DDEj
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
		BCC	loc_7DCD

loc_7DE0:				; CODE XREF: RAM:7DFDj
		LDX	#0

loc_7DE2:				; CODE XREF: RAM:7DFBj
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_7DE8:				; CODE XREF: RAM:7DEDj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_7DE8
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_7DFF
		CPX	#$A
		BCC	loc_7DE2
		BCS	loc_7DE0

loc_7DFF:				; CODE XREF: RAM:7DF7j
		LDX	#3
		LDA	$BC5F

loc_7E04:				; CODE XREF: RAM:7E08j
		STA	$D012,X
		DEX
		BPL	loc_7E04
		LDA	#$61 ; 'a'
		STA	$24A
		LDA	#$7C ; '|'
		STA	$24B
		LDA	#$C0 ; '¿'
		STA	$D40E
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_7E22:				; CODE XREF: RAM:7D32p	RAM:7D3Dp ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_7E2C
		INC	8

loc_7E2C:				; CODE XREF: RAM:7E28j
		CMP	#$1B
		BEQ	loc_7E3B
		STA	(9),Y
		INC	9
		BNE	loc_7E38
		INC	$A

loc_7E38:				; CODE XREF: RAM:7E34j
		JMP	loc_7E22
; ---------------------------------------------------------------------------

loc_7E3B:				; CODE XREF: RAM:7E2Ej
		LDA	(7),Y
		INC	7
		BNE	loc_7E43
		INC	8

loc_7E43:				; CODE XREF: RAM:7E3Fj
		CMP	#$FF
		BNE	loc_7E48
		RTS
; ---------------------------------------------------------------------------

loc_7E48:				; CODE XREF: RAM:7E45j
		STA	byte_7E82
		ADC	9
		STA	loc_7E5B+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_7E60
		LDA	byte_7E82

loc_7E5B:				; DATA XREF: RAM:7E4Dw
		SBC	#$FF
		STA	byte_7E82

loc_7E60:				; CODE XREF: RAM:7E56j
		LDA	(7),Y
		INC	7
		BNE	loc_7E68
		INC	8

loc_7E68:				; CODE XREF: RAM:7E64j
		LDY	byte_7E82

loc_7E6B:				; CODE XREF: RAM:7E6Ej
		STA	(9),Y
		DEY
		BPL	loc_7E6B
		INC	byte_7E82
		LDA	byte_7E82
		CLC
		ADC	9
		STA	9
		BCC	loc_7E7F
		INC	$A

loc_7E7F:				; CODE XREF: RAM:7E7Bj
		JMP	loc_7E22
; ---------------------------------------------------------------------------
byte_7E82:	.BYTE 0			; DATA XREF: RAM:loc_7E48w RAM:7E58r ...
		.BYTE $1B
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE $35 ; 5
		.BYTE $35 ; 5
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $7C ; |
		.BYTE $FF
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $15
		.BYTE	5
		.BYTE	1
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE	3
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5D ; ]
		.BYTE $7F ; 
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $5D ; ]
		.BYTE $7F ; 
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $5D ; ]
		.BYTE $7F ; 
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5D ; ]
		.BYTE $7F ; 
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $5D ; ]
		.BYTE $7F ; 
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $5D ; ]
		.BYTE $7F ; 
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $FD ; ˝
		.BYTE $75 ; u
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $75 ; u
		.BYTE $FD ; ˝
		.BYTE $75 ; u
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $FD ; ˝
		.BYTE $75 ; u
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $FD ; ˝
		.BYTE $75 ; u
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $75 ; u
		.BYTE $FD ; ˝
		.BYTE $75 ; u
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $FD ; ˝
		.BYTE $75 ; u
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $C0 ; ¿
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE	5
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE	1
		.BYTE	5
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $70 ; p
		.BYTE $5C ; \
		.BYTE $5C ; \
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $70 ; p
		.BYTE $1B
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE $3D ; =
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE  $D
		.BYTE $35 ; 5
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $57 ; W
		.BYTE $53 ; S
		.BYTE $53 ; S
		.BYTE $47 ; G
		.BYTE $17
		.BYTE $1B
		.BYTE	2
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $15
		.BYTE	5
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $F0 ; 
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE $15
		.BYTE $3F ; ?
		.BYTE $35 ; 5
		.BYTE $35 ; 5
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $3D ; =
		.BYTE $35 ; 5
		.BYTE $16
		.BYTE $5A ; Z
		.BYTE $44 ; D
		.BYTE $54 ; T
		.BYTE $10
		.BYTE $54 ; T
		.BYTE $65 ; e
		.BYTE $BB ; ª
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $11
		.BYTE $15
		.BYTE	4
		.BYTE $15
		.BYTE $59 ; Y
		.BYTE $EE ; Ó
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $7C ; |
		.BYTE $5C ; \
		.BYTE $94 ; î
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	5
		.BYTE $FC ; ¸
		.BYTE $5C ; \
		.BYTE $5C ; \
		.BYTE $1B
		.BYTE  $F
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE  $C
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE  $F
		.BYTE $5F ; _
		.BYTE	3
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE  $C
		.BYTE $FF
		.BYTE $D5 ; ’
		.BYTE $C5 ; ≈
		.BYTE $C5 ; ≈
		.BYTE $D1 ; —
		.BYTE $D4 ; ‘
		.BYTE $1B
		.BYTE	2
		.BYTE $D5 ; ’
		.BYTE $70 ; p
		.BYTE $5C ; \
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $15
		.BYTE	5
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $7C ; |
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	1
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F5 ; ı
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $75 ; u
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE  $C
		.BYTE  $C
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE	3
		.BYTE $10
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $33 ; 3
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE  $B
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $3C ; <
		.BYTE $36 ; 6
		.BYTE $35 ; 5
		.BYTE $3F ; ?
		.BYTE $34 ; 4
		.BYTE $1B
		.BYTE	3
		.BYTE $F4 ; Ù
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	5
		.BYTE $69 ; i
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $4F ; O
		.BYTE $43 ; C
		.BYTE $4F ; O
		.BYTE $4E ; N
		.BYTE $4F ; O
		.BYTE $53 ; S
		.BYTE	5
		.BYTE	1
		.BYTE $F1 ; Ò
		.BYTE $31 ; 1
		.BYTE $1B
		.BYTE	2
		.BYTE $F1 ; Ò
		.BYTE $C5 ; ≈
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	5
		.BYTE $69 ; i
		.BYTE $9C ; ú
		.BYTE $5C ; \
		.BYTE $FC ; ¸
		.BYTE $54 ; T
		.BYTE $64 ; d
		.BYTE $67 ; g
		.BYTE $57 ; W
		.BYTE $23 ; #
		.BYTE $1B
		.BYTE	4
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	7
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE	4
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $CC ; Ã
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $20
		.BYTE $20
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	7
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $15
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
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
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $D5 ; ’
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $75 ; u
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE	6
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	7
		.BYTE $75 ; u
		.BYTE  $C
		.BYTE $1B
		.BYTE	2
		.BYTE $17
		.BYTE	4
		.BYTE $1B
		.BYTE	2
		.BYTE	8
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $33 ; 3
		.BYTE $CC ; Ã
		.BYTE $FC ; ¸
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $33 ; 3
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	3
		.BYTE $33 ; 3
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE $CC ; Ã
		.BYTE $3C ; <
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $C4 ; -
		.BYTE $1B
		.BYTE	4
		.BYTE	4
		.BYTE $1B
		.BYTE	2
		.BYTE $69 ; i
		.BYTE $68 ; h
		.BYTE $68 ; h
		.BYTE $60 ; `
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $30 ; 0
		.BYTE  $C
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE	0
		.BYTE $15
		.BYTE	5
		.BYTE  $C
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $69 ; i
		.BYTE $29 ; )
		.BYTE $29 ; )
		.BYTE	9
		.BYTE  $A
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $23 ; #
		.BYTE $1B
		.BYTE	4
		.BYTE $20
		.BYTE $CC ; Ã
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE $33 ; 3
		.BYTE $3C ; <
		.BYTE  $F
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	2
		.BYTE $CC ; Ã
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE  $C
		.BYTE $33 ; 3
		.BYTE $3F ; ?
		.BYTE  $C
		.BYTE  $C
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $CC ; Ã
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $CC ; Ã
		.BYTE $1B
		.BYTE	3
		.BYTE $AC ; ¨
		.BYTE $1B
		.BYTE	3
		.BYTE $20
		.BYTE $1B
		.BYTE	7
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	7
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $5D ; ]
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $57 ; W
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	7
		.BYTE $75 ; u
		.BYTE	1
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $16
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	5
		.BYTE $1B
		.BYTE	7
		.BYTE $75 ; u
		.BYTE $1B
		.BYTE	4
		.BYTE	8
		.BYTE  $F
		.BYTE  $F
		.BYTE	8
		.BYTE $30 ; 0
		.BYTE $33 ; 3
		.BYTE $30 ; 0
		.BYTE $33 ; 3
		.BYTE $D0 ; –
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $33 ; 3
		.BYTE $FC ; ¸
		.BYTE $33 ; 3
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	7
		.BYTE $30 ; 0
		.BYTE $10
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE  $F
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	2
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE  $F
		.BYTE	8
		.BYTE	8
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	1
		.BYTE	9
		.BYTE $29 ; )
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	3
		.BYTE $40 ; @
		.BYTE $7C ; |
		.BYTE $43 ; C
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE	1
		.BYTE $3D ; =
		.BYTE $C1 ; ¡
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $60 ; `
		.BYTE $68 ; h
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $20
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $20
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE  $C
		.BYTE $1B
		.BYTE	2
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE  $C
		.BYTE	4
		.BYTE  $C
		.BYTE  $C
		.BYTE $3F ; ?
		.BYTE $CC ; Ã
		.BYTE $3F ; ?
		.BYTE $CC ; Ã
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE  $C
		.BYTE $CC ; Ã
		.BYTE  $C
		.BYTE $CC ; Ã
		.BYTE	7
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $20
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $20
		.BYTE $1B
		.BYTE	7
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	7
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	7
		.BYTE $75 ; u
		.BYTE $1B
		.BYTE $1F
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	5
		.BYTE $1B
		.BYTE	7
		.BYTE $75 ; u
		.BYTE $1B
		.BYTE	7
		.BYTE	8
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE	3
		.BYTE $FF
		.BYTE $FF
		.BYTE $33 ; 3
		.BYTE $FF
		.BYTE $33 ; 3
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; 
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	5
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	3
		.BYTE $A4 ; §
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	3
		.BYTE $1A
		.BYTE $1B
		.BYTE	6
		.BYTE $20
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	5
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE  $C
		.BYTE  $F
		.BYTE  $F
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $CC ; Ã
		.BYTE $FF
		.BYTE $CC ; Ã
		.BYTE $1B
		.BYTE	3
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE $20
		.BYTE $1B
		.BYTE	7
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	7
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE $1F
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
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
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	7
		.BYTE $75 ; u
		.BYTE $1B
		.BYTE $1F
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE	5
		.BYTE $3D ; =
		.BYTE $17
		.BYTE $15
		.BYTE $1B
		.BYTE	3
		.BYTE $75 ; u
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	8
		.BYTE $C8 ; »
		.BYTE $48 ; H
		.BYTE $48 ; H
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE $1B
		.BYTE	5
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE $33 ; 3
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $15
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $A4 ; §
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $C3 ; √
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $C3 ; √
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1A
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $EF ; Ô
		.BYTE $EF ; Ô
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $3C ; <
		.BYTE $CC ; Ã
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	5
		.BYTE $C0 ; ¿
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	4
		.BYTE $20
		.BYTE $23 ; #
		.BYTE $21 ; !
		.BYTE $21 ; !
		.BYTE $1B
		.BYTE	3
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $50 ; P
		.BYTE $7C ; |
		.BYTE $D4 ; ‘
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE $1F
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $D5 ; ’
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5D ; ]
		.BYTE $FD ; ˝
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE $1A
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE	8
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE  $F
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE	3
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $1B
		.BYTE	4
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $20
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE $20
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $75 ; u
		.BYTE $7F ; 
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $57 ; W
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE $17
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $6D ; m
		.BYTE	0
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE  $E
		.BYTE $3A ; :
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE  $E
		.BYTE $3A ; :
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE $24 ; $
		.BYTE $AA ; ™
		.BYTE $B0 ; ∞
		.BYTE $AC ; ¨
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $B0 ; ∞
		.BYTE $AC ; ¨
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE $5F ; _
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $56 ; V
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $7C ; |
		.BYTE $56 ; V
		.BYTE $54 ; T
		.BYTE $52 ; R
		.BYTE $50 ; P
		.BYTE $36 ; 6
		.BYTE $36 ; 6
		.BYTE $2A ; *
		.BYTE $2C ; ,
		.BYTE $2E ; .
		.BYTE $2C ; ,
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $26 ; &
		.BYTE $24 ; $
		.BYTE $26 ; &
		.BYTE $24 ; $
		.BYTE $26 ; &
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $2C ; ,
		.BYTE $2E ; .
		.BYTE $2C ; ,
		.BYTE $2C ; ,
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $26 ; &
		.BYTE $24 ; $
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $1B
		.BYTE	5
		.BYTE $36 ; 6
		.BYTE $1B
		.BYTE $1B
		.BYTE  $F
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $59 ; Y
		.BYTE $1B
		.BYTE	3
		.BYTE $5C ; \
		.BYTE $1B
		.BYTE $1F
		.BYTE $66 ; f
		.BYTE $3F ; ?
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $F0 ; 
		.BYTE $FF
		.BYTE $8B ; ã
		.BYTE $E7 ; Á
		.BYTE $F1 ; Ò
		.BYTE $FF
		.BYTE $47 ; G
		.BYTE $83 ; É
		.BYTE $C7 ; «
		.BYTE $C1 ; ¡
		.BYTE $E2 ; ‚
		.BYTE $67 ; g
		.BYTE $83 ; É
		.BYTE $E7 ; Á
		.BYTE $C1 ; ¡
		.BYTE $E6 ; Ê
		.BYTE $60 ; `
		.BYTE	3
		.BYTE $24 ; $
		.BYTE $C0 ; ¿
		.BYTE	6
		.BYTE $60 ; `
		.BYTE	3
		.BYTE $E7 ; Á
		.BYTE $C0 ; ¿
		.BYTE	6
		.BYTE $60 ; `
		.BYTE $A3 ; £
		.BYTE $FF
		.BYTE $E5 ; Â
		.BYTE	6
		.BYTE $78 ; x
		.BYTE $23 ; #
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE $1E
		.BYTE $20
		.BYTE	1
		.BYTE $C3 ; √
		.BYTE $80 ; Ä
		.BYTE	4
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $18
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $BF ; ø
		.BYTE $FC ; ¸
		.BYTE $BC ; º
		.BYTE	0
		.BYTE $3C ; <
		.BYTE $1F
		.BYTE $F4 ; Ù
		.BYTE $BC ; º
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE  $F
		.BYTE $E0 ; ‡
		.BYTE $3D ; =
		.BYTE $3C ; <
		.BYTE $BC ; º
		.BYTE	7
		.BYTE $E0 ; ‡
		.BYTE $1B
		.BYTE	2
		.BYTE $3C ; <
		.BYTE	7
		.BYTE $E0 ; ‡
		.BYTE $7C ; |
		.BYTE $3E ; >
		.BYTE $3E ; >
		.BYTE	7
		.BYTE $E0 ; ‡
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	7
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $7C ; |
		.BYTE $35 ; 5
		.BYTE $59 ; Y
		.BYTE $9C ; ú
		.BYTE $78 ; x
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
; end of 'RAM'


		.END
