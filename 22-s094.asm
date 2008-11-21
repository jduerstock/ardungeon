		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"
		
;		.ORG	$7600
		.BYTE	$E
; ---------------------------------------------------------------------------
		JMP	loc_7610
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_7F3C
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601j
		dldi	off_7, $80B8
		LDA	#2
		JSR	$180F
		LDA	#$FF
		STA	$1937
		dldi	off_16, $77EF
		JSR	$184B
		LDA	$1933
		STA	$62
		dldi	off_1977, loc_763D
		RTS
; ---------------------------------------------------------------------------

loc_763D:
		LDA	#$A
		JSR	sub_775E
		BCC	loc_7652
		dldi	off_16, $7933
		JSR	$183C
		JMP	loc_7750
; ---------------------------------------------------------------------------

loc_7652:				; CODE XREF: RAM:7642j
		JSR	$1869
		LDA	$630F
		CMP	$7526
		BNE	loc_7673
		LDA	$6310
		CMP	$7527
		BNE	loc_7673
		dldi	off_16, $77F1
		JSR	sub_779C
		JMP	loc_7750
; ---------------------------------------------------------------------------

loc_7673:				; CODE XREF: RAM:765Bj	RAM:7663j
		LDA	$630F
		STA	$7526
		LDA	$6310
		STA	$7527
		LDA	#9
		JSR	sub_775E
		BCC	loc_768C
		LDA	#3
		STA	$63
		BNE	loc_76C0

loc_768C:				; CODE XREF: RAM:7684j
		dldi	off_16, $7837
		JSR	sub_77A6
		JSR	$183C
		LDA	#0
		STA	$63

loc_769E:				; CODE XREF: RAM:76ACj
		JSR	sub_76F2
		BCC	loc_76A6
		JMP	loc_7750
; ---------------------------------------------------------------------------

loc_76A6:				; CODE XREF: RAM:76A1j
		INC	$63
		LDA	$63
		CMP	#3
		BNE	loc_769E
		LDA	#$D
		STA	I_LOC_X
		LDA	#$F
		STA	I_LOC_Y
		LDA	#0
		STA	$6312
		JMP	loc_7E5C
; ---------------------------------------------------------------------------

loc_76C0:				; CODE XREF: RAM:768Aj
		LDA	$6303
		ORA	#2
		STA	$6303
		JSR	sub_76F2
		BCC	loc_76D0
		JMP	loc_7750
; ---------------------------------------------------------------------------

loc_76D0:				; CODE XREF: RAM:76CBj
		ldxy	$7E07
		JSR	$1884
		ldxy	$7E32
		JSR	$1884
		ldxy	$7E32
		JSR	$1884
		LDA	#$D
		STA	I_LOC_X
		LDA	#$F
		STA	I_LOC_Y
		JMP	loc_7E5C

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_76F2:				; CODE XREF: RAM:loc_769Ep RAM:76C8p
		LDY	$63
		LDA	unk_77AB,Y
		STA	$16
		LDA	unk_77AF,Y
		STA	$17
		LDA	unk_77C3,Y
		STA	$66
		LDA	unk_77C7,Y
		STA	$64
		JSR	sub_77A6
		JSR	sub_776D
		BCS	loc_773D
		LDA	$66
		JSR	sub_775E
		BCS	loc_7729
		LDA	$66
		JSR	sub_7765
		LDA	$64
		LDX	#$6A ; 'j'
		JSR	$1878
		DEC	$195F
		JSR	$18A5

loc_7729:				; CODE XREF: sub_76F2+23j
		LDY	$63
		LDA	unk_77BB,Y
		STA	$16
		LDA	unk_77BF,Y
		STA	$17
		JSR	sub_77A6
		JSR	$183C
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_773D:				; CODE XREF: sub_76F2+1Cj
		LDA	$63
		CMP	#3
		BEQ	loc_774E
		dldi	off_16, $78C9
		JSR	sub_779C

loc_774E:				; CODE XREF: sub_76F2+4Fj
		SEC
		RTS
; End of function sub_76F2

; ---------------------------------------------------------------------------

loc_7750:				; CODE XREF: RAM:764Fj	RAM:7670j ...
		LDX	#4

loc_7752:				; CODE XREF: RAM:7759j
		LDA	$6318,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_7752
		JMP	loc_7E5C

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_775E:				; CODE XREF: RAM:763Fp	RAM:7681p ...
		ldxy	$7508
		JMP	j_TESTBIT
; End of function sub_775E


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7765:				; CODE XREF: sub_76F2+27p
		ldxy	$7508
		SEC
		JMP	j_SETBIT
; End of function sub_7765


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_776D:				; CODE XREF: sub_76F2+19p
		LDY	$63
		LDA	unk_77CB,Y
		STA	$65
		JSR	$1839
		BCS	loc_7798
		CPX	$65
		BNE	loc_7798
		LDY	$63
		LDA	unk_77B3,Y
		STA	$67
		LDA	unk_77B7,Y
		STA	$68
		TXA
		TAY

loc_778B:				; CODE XREF: sub_776D+29j
		DEY
		BMI	loc_779A
		LDA	$18D5,Y
		JSR	j_UPPER
		CMP	($67),Y
		BEQ	loc_778B

loc_7798:				; CODE XREF: sub_776D+Aj sub_776D+Ej
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_779A:				; CODE XREF: sub_776D+1Fj
		CLC
		RTS
; End of function sub_776D


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_779C:				; CODE XREF: RAM:766Dp	sub_76F2+59p
		LDX	$62
		JSR	$1851
		LDA	#$A
		JMP	$185A
; End of function sub_779C


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_77A6:				; CODE XREF: RAM:7694p	sub_76F2+16p ...
		LDX	$62
		JMP	$1851
; End of function sub_77A6

; ---------------------------------------------------------------------------
unk_77AB:	.BYTE	<$7968		; DATA XREF: sub_76F2+2r
		.BYTE	<$7A4C
		.BYTE	<$7B3B
		.BYTE	<$7C26
unk_77AF:	.BYTE	>$7968		; DATA XREF: sub_76F2+7r
		.BYTE	>$7A4C
		.BYTE	>$7B3B
		.BYTE	>$7C26
unk_77B3:	.BYTE $CF ; œ		; DATA XREF: sub_776D+12r
		.BYTE $D8 ; ÿ
		.BYTE $DE ; ﬁ
		.BYTE $E8 ; Ë
unk_77B7:	.BYTE $77 ; w		; DATA XREF: sub_776D+17r
		.BYTE $77 ; w
		.BYTE $77 ; w
		.BYTE $77 ; w
unk_77BB:	.BYTE $40 ; @		; DATA XREF: sub_76F2+39r
		.BYTE $92 ; í
		.BYTE $DD ; ›
		.BYTE $7A ; z
unk_77BF:	.BYTE $7C ; |		; DATA XREF: sub_76F2+3Er
		.BYTE $7C ; |
		.BYTE $7C ; |
		.BYTE $7D ; }
unk_77C3:	.BYTE	7		; DATA XREF: sub_76F2+Cr
		.BYTE	8
		.BYTE	9
		.BYTE  $A
unk_77C7:	.BYTE	1		; DATA XREF: sub_76F2+11r
		.BYTE	2
		.BYTE	3
		.BYTE	0
unk_77CB:	.BYTE	9		; DATA XREF: sub_776D+2r
		.BYTE	6
		.BYTE	10
		.BYTE	7
aShipwreck:	.BYTE	"SHIPWRECK"
aOracle:	.BYTE	"ORACLE"
aBloodstone:	.BYTE	"BLOODSTONE"
aShingor:	.BYTE	"SHINGOR"
		.BYTE	$A8,$FF
		MOVEXY	0,2
		.BYTE	$A5,"I test a man but once per day;",$0D,$0D
		.BYTE	$A5,"I've tired of thee, so go away!",$0D,$FF
		MOVEXY	0,0
		.BYTE	$A5,"A creature old and dark I be;",$0D
		.BYTE	$A5,"Thou must be quick to get by me.",$0D,$0D
		.BYTE	$A5,"If thou'rt wise, 'tis for me to see:",$0D
		.BYTE	$A5,"Thou shalt answer my riddles, three.",$0D,$FF

		MOVEXY	0,1
		.BYTE	$A5,"The halls echo with laughter.",$0D,$0D
		.BYTE	$A5,"Foolish mortal,thou'st failed my rhyme;",$0D,$0D
		.BYTE	$A5,"Try it again another time.",$0D,$FF

		.BYTE $A6,  0,	2
		.BYTE $A5
aTheRiddlerIsSi:.BYTE "The Riddler is silent."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aPressAnyKeyToE:.BYTE "Press any key to exit."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aTheFirstSSimpl:.BYTE "The first's simple--should take no time;"
		.BYTE $D
		.BYTE $A5
aAllThouMustDoI:.BYTE "All thou must do is end my rhyme:"
		.BYTE $D
		.BYTE $A5
aNotManNorBeast:.BYTE "Not man nor beast met his demise"
		.BYTE $D
		.BYTE $A5
aToTheeIMSureTi:.BYTE "(To thee I'm sure 'tis no surprise);"
		.BYTE $D
		.BYTE $A5
aACruelFateEnde:.BYTE "A cruel fate ended it's trek;"
		.BYTE $D
		.BYTE $A5
aNowThouStandSt:.BYTE "Now thou stand'st 'neath a great _____"
		.BYTE $D
		.BYTE $A6, $F,	7
		.BYTE ">"
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aGoblinAndTroll:.BYTE "Goblin and Troll, with vilest kings;"
		.BYTE $D
		.BYTE $A5
aEachSideHasOnl:.BYTE "Each side has only half a ring;"
		.BYTE $D
		.BYTE $A5
aBothSidesWantT:.BYTE "Both sides want to possess the whole;"
		.BYTE $D
		.BYTE $A5
aToRuleTheEntir:.BYTE "To rule the entire realm's the goal."
		.BYTE $D
		.BYTE $A5
aIfThouShouldSt:.BYTE "If thou should'st get the cursed thing,"
		.BYTE $D
		.BYTE $A5
aThereSJustOneP:.BYTE "There's just one place to cast the ring."
		.BYTE $D
		.BYTE $A6,$10,	7
		.BYTE ">"
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aNotFarFromHere:.BYTE "Not far from here's an evil wyrm,"
		.BYTE $D
		.BYTE $A5
aWhoseRoarCanMa:.BYTE "Whose roar can make the boldest squirm;"
		.BYTE $D
		.BYTE $A5
aHeToysWithThos:.BYTE "He toys with those he likes the best,"
		.BYTE $D
		.BYTE $A5
aAndSendsThemOn:.BYTE "And sends them on a fearful quest;"
		.BYTE $D
		.BYTE $A5
aTreasureHeOffe:.BYTE "Treasure he offers - gems and gold -"
		.BYTE $D
		.BYTE $A5
aButHisHeartSDe:.BYTE "but his heart's desire must be told."
		.BYTE $D
		.BYTE $A6, $D,	7
		.BYTE ">"
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aWhatIsMyNameq:	.BYTE "What is my name?"
		.BYTE $D
		.BYTE $A6,$12,	4
		.BYTE ">"
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aTheFirstOneWas:.BYTE "The first one was but children's play;"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTwoMoreBeforeT:.BYTE "Two more before thou'rt on thy way."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aRavenWritingDe:.BYTE "Raven--Writing Desk; Lion--Honey;"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWisdomSGiftIsM:.BYTE "Wisdom's gift is more than money."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aABeastWithFang:.BYTE "A beast with fangs and fearsome gaze"
		.BYTE $D
aWhoseHideWillS:.BYTE "Whose hide will stop the keenest blades;"
		.BYTE $D
		.BYTE $A5
aAllFormsOfMagi:.BYTE "All forms of magic it withstands,"
		.BYTE $D
aYetThouMightCo:.BYTE "Yet thou might conquer with bare hands."
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aGreetings:	.BYTE "Greetings "
		.BYTE $B3
		.WORD $6321
		.BYTE $19
		.BYTE "!"
		.BYTE $D
		.BYTE $A5
aIHaveAWeaponAn:.BYTE "I have a weapon and ammo here for you."
		.BYTE $D
aYouNeedThemToG:.BYTE "You need them to get past the sentries."
		.BYTE $D
aMeetMeInYourTr:.BYTE "Meet me in your true form on the bridge."
		.BYTE $FF
		.BYTE	3
		.BYTE $2B ; +
		.BYTE	1
		.BYTE	0
		.BYTE $12
		.BYTE $17
aPulseRifle95:	.BYTE "Pulse Rifle [95]",0
		.BYTE	0
		.BYTE	4
		.BYTE $5F ; _
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $18
		.BYTE	0
		.BYTE $4F ; O
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $10
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	2
		.BYTE $2A ; *
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aPulseRifleAmmo:.BYTE "Pulse Rifle Ammo [95]",0
		.BYTE	0
		.BYTE	4
		.BYTE $5F ; _
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $18
		.BYTE	0
		.BYTE $4F ; O
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
; ---------------------------------------------------------------------------

loc_7E5C:				; CODE XREF: RAM:76BDj	RAM:76EFj ...
		LDA	#$FF
		STA	$AC00
		JMP	$180C
; ---------------------------------------------------------------------------
unk_7E64:	.BYTE $70 ; p		; DATA XREF: RAM:7E94o
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
		.WORD unk_7E64
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
		STA	COLBK
		STX	$D016
		STY	$D018
		LDX	#$23 ; '#'
		LDY	$BBDC,X

loc_7EFA:				; CODE XREF: RAM:7F1Fj
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
		BPL	loc_7EFA
		LDA	#0
		STA	WSYNC
		STA	$D018
		STA	COLBK
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

loc_7F3C:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$64 ; 'd'
		STA	$254
		LDA	#$7E ; '~'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_7F4F:				; CODE XREF: RAM:7F5Dj
		LDY	#$C

loc_7F51:				; CODE XREF: RAM:7F58j
		STA	$BB4C,X
		DEX
		BMI	loc_7F5F
		DEY
		BNE	loc_7F51
		CLC
		ADC	#4
		BNE	loc_7F4F

loc_7F5F:				; CODE XREF: RAM:7F55j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_8057
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_8057
		LDA	#0
		STA	loc_7F85+1
		LDA	#$BD ; 'Ω'
		STA	loc_7F85+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_7F85:				; CODE XREF: RAM:7F89j	RAM:7F8Fj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_7F85
		INC	loc_7F85+2
		DEY
		BNE	loc_7F85
		LDX	#7

loc_7F93:				; CODE XREF: RAM:7F97j
		STA	$D000,X
		DEX
		BPL	loc_7F93
		LDA	#3
		TAX

loc_7F9C:				; CODE XREF: RAM:7FA0j
		STA	$D008,X
		DEX
		BPL	loc_7F9C
		LDA	#$FF
		STA	$D00C
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
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

loc_7FCA:				; CODE XREF: RAM:7FF0j
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_7FD2:				; CODE XREF: RAM:7FDDj
		LSR	4
		BCC	loc_7FDC
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_7FDC:				; CODE XREF: RAM:7FD4j
		DEY
		BPL	loc_7FD2
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_7FEA
		INC	$A

loc_7FEA:				; CODE XREF: RAM:7FE6j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_7FCA
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_8002:				; CODE XREF: RAM:8013j
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
		BCC	loc_8002

loc_8015:				; CODE XREF: RAM:8032j
		LDX	#0

loc_8017:				; CODE XREF: RAM:8030j
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_801D:				; CODE XREF: RAM:8022j
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_801D
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_8034
		CPX	#$A
		BCC	loc_8017
		BCS	loc_8015

loc_8034:				; CODE XREF: RAM:802Cj
		LDX	#3
		LDA	$BC5F

loc_8039:				; CODE XREF: RAM:803Dj
		STA	COLPM0,X
		DEX
		BPL	loc_8039
		dldi	off_24A, $7E96
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_8057:				; CODE XREF: RAM:7F67p	RAM:7F72p ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_8061
		INC	8

loc_8061:				; CODE XREF: RAM:805Dj
		CMP	#$1B
		BEQ	loc_8070
		STA	(9),Y
		INC	9
		BNE	loc_806D
		INC	$A

loc_806D:				; CODE XREF: RAM:8069j
		JMP	loc_8057
; ---------------------------------------------------------------------------

loc_8070:				; CODE XREF: RAM:8063j
		LDA	(7),Y
		INC	7
		BNE	loc_8078
		INC	8

loc_8078:				; CODE XREF: RAM:8074j
		CMP	#$FF
		BNE	loc_807D
		RTS
; ---------------------------------------------------------------------------

loc_807D:				; CODE XREF: RAM:807Aj
		STA	byte_80B7
		ADC	9
		STA	loc_8090+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_8095
		LDA	byte_80B7

loc_8090:				; DATA XREF: RAM:8082w
		SBC	#$FF
		STA	byte_80B7

loc_8095:				; CODE XREF: RAM:808Bj
		LDA	(7),Y
		INC	7
		BNE	loc_809D
		INC	8

loc_809D:				; CODE XREF: RAM:8099j
		LDY	byte_80B7

loc_80A0:				; CODE XREF: RAM:80A3j
		STA	(9),Y
		DEY
		BPL	loc_80A0
		INC	byte_80B7
		LDA	byte_80B7
		CLC
		ADC	9
		STA	9
		BCC	loc_80B4
		INC	$A

loc_80B4:				; CODE XREF: RAM:80B0j
		JMP	loc_8057
; ---------------------------------------------------------------------------
byte_80B7:	.BYTE 0			; DATA XREF: RAM:loc_807Dw RAM:808Dr ...
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE  $F
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE	0
		.BYTE	0
		.BYTE $5A ; Z
		.BYTE $68 ; h
		.BYTE $A0 ; †
		.BYTE $81 ; Å
		.BYTE $81 ; Å
		.BYTE	1
		.BYTE	1
		.BYTE	5
		.BYTE $17
		.BYTE $5F ; _
		.BYTE $7E ; ~
		.BYTE $FA ; ˙
		.BYTE $EB ; Î
		.BYTE $EB ; Î
		.BYTE $55 ; U
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	2
		.BYTE $B5 ; µ
		.BYTE	0
		.BYTE	5
		.BYTE $15
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $5E ; ^
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $D4 ; ‘
		.BYTE $F5 ; ı
		.BYTE $BD ; Ω
		.BYTE $AF ; Ø
		.BYTE $EB ; Î
		.BYTE $EB ; Î
		.BYTE	0
		.BYTE	0
		.BYTE $A5 ; •
		.BYTE $29 ; )
		.BYTE  $A
		.BYTE $42 ; B
		.BYTE $42 ; B
		.BYTE $40 ; @
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $FF
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $AF ; Ø
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE	0
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $AF ; Ø
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $EA ; Í
		.BYTE $A9 ; ©
		.BYTE $56 ; V
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $A5 ; •
		.BYTE $95 ; ï
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $A5 ; •
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $A5 ; •
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	5
		.BYTE $58 ; X
		.BYTE	1
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	3
		.BYTE $EE ; Ó
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $2B ; +
		.BYTE $AA ; ™
		.BYTE $BA ; ∫
		.BYTE $DE ; ﬁ
		.BYTE $D7 ; ◊
		.BYTE $E5 ; Â
		.BYTE $E9 ; È
		.BYTE $FA ; ˙
		.BYTE $BD ; Ω
		.BYTE $B5 ; µ
		.BYTE $B5 ; µ
		.BYTE $F6 ; ˆ
		.BYTE $D6 ; ÷
		.BYTE $5A ; Z
		.BYTE $6B ; k
		.BYTE $AD ; ≠
		.BYTE $5B ; [
		.BYTE $5E ; ^
		.BYTE $5E ; ^
		.BYTE $9F ; ü
		.BYTE $97 ; ó
		.BYTE $A5 ; •
		.BYTE $E9 ; È
		.BYTE $7A ; z
		.BYTE $E5 ; Â
		.BYTE $AA ; ™
		.BYTE $AE ; Æ
		.BYTE $B7 ; ∑
		.BYTE $D7 ; ◊
		.BYTE $5B ; [
		.BYTE $6B ; k
		.BYTE $AF ; Ø
		.BYTE $7E ; ~
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	3
		.BYTE $BB ; ª
		.BYTE $BA ; ∫
		.BYTE $BA ; ∫
		.BYTE $E8 ; Ë
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	5
		.BYTE $25 ; %
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $A5 ; •
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $AA ; ™
		.BYTE $FA ; ˙
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $6A ; j
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $A9 ; ©
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $A9 ; ©
		.BYTE $EA ; Í
		.BYTE $FF
		.BYTE $FF
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $AA ; ™
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE  $C
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $FF
		.BYTE  $F
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	1
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $15
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $AF ; Ø
		.BYTE	0
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $AB ; ´
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $AB ; ´
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE $14
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $F9 ; ˘
		.BYTE $E9 ; È
		.BYTE $A5 ; •
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $95 ; ï
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $5B ; [
		.BYTE $6B ; k
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $6B ; k
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	4
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	3
		.BYTE $A5 ; •
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	2
		.BYTE $97 ; ó
		.BYTE $1B
		.BYTE	3
		.BYTE $96 ; ñ
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $E9 ; È
		.BYTE $1E
		.BYTE $37 ; 7
		.BYTE $2D ; -
		.BYTE  $B
		.BYTE $82 ; Ç
		.BYTE $80 ; Ä
		.BYTE $82 ; Ç
		.BYTE $49 ; I
		.BYTE $2B ; +
		.BYTE $8A ; ä
		.BYTE $6A ; j
		.BYTE $DA ; ⁄
		.BYTE $BE ; æ
		.BYTE $AA ; ™
		.BYTE $82 ; Ç
		.BYTE $E2 ; ‚
		.BYTE $BA ; ∫
		.BYTE $E9 ; È
		.BYTE $A7 ; ß
		.BYTE $9E ; û
		.BYTE $B8 ; ∏
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $B8 ; ∏
		.BYTE $A6 ; ¶
		.BYTE $69 ; i
		.BYTE $DA ; ⁄
		.BYTE $B6 ; ∂
		.BYTE $2D ; -
		.BYTE	9
		.BYTE	9
		.BYTE $29 ; )
		.BYTE $9A ; ö
		.BYTE $69 ; i
		.BYTE $A7 ; ß
		.BYTE $9E ; û
		.BYTE $78 ; x
		.BYTE $60 ; `
		.BYTE $60 ; `
		.BYTE $68 ; h
		.BYTE $AE ; Æ
		.BYTE $6B ; k
		.BYTE $DA ; ⁄
		.BYTE $B6 ; ∂
		.BYTE $2E ; .
		.BYTE  $A
		.BYTE  $A
		.BYTE $2E ; .
		.BYTE $E8 ; Ë
		.BYTE $A2 ; ¢
		.BYTE $A9 ; ©
		.BYTE $A7 ; ß
		.BYTE $BE ; æ
		.BYTE $AA ; ™
		.BYTE $82 ; Ç
		.BYTE $8B ; ã
		.BYTE $B4 ; ¥
		.BYTE $DC ; ‹
		.BYTE $78 ; x
		.BYTE $E0 ; ‡
		.BYTE $82 ; Ç
		.BYTE	2
		.BYTE $82 ; Ç
		.BYTE $61 ; a
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	2
		.BYTE $96 ; ñ
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $5B ; [
		.BYTE $1B
		.BYTE	3
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	2
		.BYTE $D6 ; ÷
		.BYTE $E9 ; È
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $BF ; ø
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $E9 ; È
		.BYTE $F9 ; ˘
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $6F ; o
		.BYTE $6B ; k
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $96 ; ñ
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $A5 ; •
		.BYTE $EA ; Í
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $A5 ; •
		.BYTE $EA ; Í
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $95 ; ï
		.BYTE $A9 ; ©
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE  $F
		.BYTE	3
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $30 ; 0
		.BYTE  $F
		.BYTE	3
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	3
		.BYTE $FE ; ˛
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $FE ; ˛
		.BYTE $95 ; ï
		.BYTE $5A ; Z
		.BYTE $BD ; Ω
		.BYTE $6B ; k
		.BYTE $C9 ; …
		.BYTE $DA ; ⁄
		.BYTE $96 ; ñ
		.BYTE $9B ; õ
		.BYTE $E6 ; Ê
		.BYTE $96 ; ñ
		.BYTE $A7 ; ß
		.BYTE $63 ; c
		.BYTE $E9 ; È
		.BYTE $7E ; ~
		.BYTE $A5 ; •
		.BYTE $55 ; U
		.BYTE $BF ; ø
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $BF ; ø
		.BYTE $C0 ; ¿
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE  $F
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $5B ; [
		.BYTE $FA ; ˙
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $FD ; ˝
		.BYTE $6A ; j
		.BYTE $F2 ; Ú
		.BYTE $76 ; v
		.BYTE $A5 ; •
		.BYTE $6B ; k
		.BYTE $E9 ; È
		.BYTE $5A ; Z
		.BYTE $9D ; ù
		.BYTE $8F ; è
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE $FF
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $30 ; 0
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $15
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE	1
		.BYTE	5
		.BYTE $15
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6B ; k
		.BYTE $AF ; Ø
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE $24 ; $
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $F9 ; ˘
		.BYTE $E9 ; È
		.BYTE $E5 ; Â
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $5B ; [
		.BYTE $6B ; k
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $FA ; ˙
		.BYTE $F9 ; ˘
		.BYTE $F9 ; ˘
		.BYTE $97 ; ó
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	4
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $E9 ; È
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $4B ; K
		.BYTE $52 ; R
		.BYTE $52 ; R
		.BYTE $94 ; î
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $A9 ; ©
		.BYTE $EA ; Í
		.BYTE $7A ; z
		.BYTE $DE ; ﬁ
		.BYTE $AE ; Æ
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $52 ; R
		.BYTE $56 ; V
		.BYTE $96 ; ñ
		.BYTE $BE ; æ
		.BYTE $AF ; Ø
		.BYTE $EF ; Ô
		.BYTE $EB ; Î
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $BE ; æ
		.BYTE $B9 ; π
		.BYTE $F9 ; ˘
		.BYTE $E9 ; È
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $B9 ; π
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $6E ; n
		.BYTE $6F ; o
		.BYTE $6B ; k
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $6E ; n
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE $BE ; æ
		.BYTE $FA ; ˙
		.BYTE $FB ; ˚
		.BYTE $EB ; Î
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $BE ; æ
		.BYTE $AD ; ≠
		.BYTE $B7 ; ∑
		.BYTE $BA ; ∫
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $85 ; Ö
		.BYTE $95 ; ï
		.BYTE $96 ; ñ
		.BYTE $E1 ; ·
		.BYTE $85 ; Ö
		.BYTE	5
		.BYTE $15
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AB ; ´
		.BYTE $6B ; k
		.BYTE $6B ; k
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $D6 ; ÷
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	4
		.BYTE $F5 ; ı
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	5
		.BYTE $AF ; Ø
		.BYTE $6F ; o
		.BYTE $6F ; o
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $E9 ; È
		.BYTE $F9 ; ˘
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $6F ; o
		.BYTE $6B ; k
		.BYTE $5B ; [
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $95 ; ï
		.BYTE $A9 ; ©
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $E9 ; È
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE  $C
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE	0
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE $3F ; ?
		.BYTE  $C
		.BYTE	3
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE $3F ; ?
		.BYTE $30 ; 0
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	1
		.BYTE	5
		.BYTE $15
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE	5
		.BYTE $15
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6B ; k
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $6B ; k
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE $32 ; 2
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $F9 ; ˘
		.BYTE $F9 ; ˘
		.BYTE $E5 ; Â
		.BYTE $E5 ; Â
		.BYTE $95 ; ï
		.BYTE $96 ; ñ
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $5B ; [
		.BYTE $6B ; k
		.BYTE $6F ; o
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE $11
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F9 ; ˘
		.BYTE $1B
		.BYTE	7
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $BE ; æ
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $AA ; ™
		.BYTE $E9 ; È
		.BYTE $E9 ; È
		.BYTE $E5 ; Â
		.BYTE $E5 ; Â
		.BYTE $FD ; ˝
		.BYTE $BD ; Ω
		.BYTE $AF ; Ø
		.BYTE $5B ; [
		.BYTE $56 ; V
		.BYTE $7F ; 
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $7F ; 
		.BYTE $7E ; ~
		.BYTE $FA ; ˙
		.BYTE $E5 ; Â
		.BYTE $95 ; ï
		.BYTE $FD ; ˝
		.BYTE	6
		.BYTE	6
		.BYTE $BE ; æ
		.BYTE $BA ; ∫
		.BYTE $BA ; ∫
		.BYTE $AA ; ™
		.BYTE $6B ; k
		.BYTE $6B ; k
		.BYTE $5B ; [
		.BYTE $5B ; [
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE  $E
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	7
		.BYTE $6F ; o
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $E5 ; Â
		.BYTE $E9 ; È
		.BYTE $F9 ; ˘
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $6F ; o
		.BYTE $6F ; o
		.BYTE $5B ; [
		.BYTE $5B ; [
		.BYTE $56 ; V
		.BYTE $96 ; ñ
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE $27 ; '
		.BYTE $FF
		.BYTE $E9 ; È
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $E9 ; È
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE  $C
		.BYTE	3
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $AB ; ´
		.BYTE	2
		.BYTE $D0 ; –
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $B5 ; µ
		.BYTE $BD ; Ω
		.BYTE $AD ; ≠
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $7C ; |
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE	2
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $7C ; |
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $2B ; +
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $2F ; /
		.BYTE $1B
		.BYTE $15
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $F9 ; ˘
		.BYTE $F9 ; ˘
		.BYTE $E5 ; Â
		.BYTE $E5 ; Â
		.BYTE $95 ; ï
		.BYTE $96 ; ñ
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $5B ; [
		.BYTE $6B ; k
		.BYTE $6F ; o
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE $19
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F9 ; ˘
		.BYTE $1B
		.BYTE	7
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE  $D
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $E8 ; Ë
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	2
		.BYTE $D6 ; ÷
		.BYTE $D4 ; ‘
		.BYTE $50 ; P
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $84 ; Ñ
		.BYTE $C4 ; -
		.BYTE $F4 ; Ù
		.BYTE $BF ; ø
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE	2
		.BYTE	2
		.BYTE $12
		.BYTE $13
		.BYTE $1F
		.BYTE $FE ; ˛
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $56 ; V
		.BYTE $96 ; ñ
		.BYTE $97 ; ó
		.BYTE $97 ; ó
		.BYTE $17
		.BYTE	5
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $2B ; +
		.BYTE  $A
		.BYTE	2
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	7
		.BYTE $6F ; o
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $E5 ; Â
		.BYTE $E9 ; È
		.BYTE $F9 ; ˘
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $6F ; o
		.BYTE $6F ; o
		.BYTE $5B ; [
		.BYTE $5B ; [
		.BYTE $56 ; V
		.BYTE $96 ; ñ
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE $15
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $F8 ; ¯
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $E8 ; Ë
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $3D ; =
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $EA ; Í
		.BYTE $80 ; Ä
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $5E ; ^
		.BYTE $7E ; ~
		.BYTE $7A ; z
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $6B ; k
		.BYTE $E5 ; Â
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $80 ; Ä
		.BYTE	1
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $69 ; i
		.BYTE $59 ; Y
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $6F ; o
		.BYTE $E5 ; Â
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $F5 ; ı
		.BYTE $55 ; U
		.BYTE $58 ; X
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $F0 ; 
		.BYTE $25 ; %
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $5B ; [
		.BYTE $F9 ; ˘
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE	0
		.BYTE	5
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $65 ; e
		.BYTE $5A ; Z
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $D4 ; ‘
		.BYTE	0
		.BYTE $25 ; %
		.BYTE $55 ; U
		.BYTE $6F ; o
		.BYTE $EF ; Ô
		.BYTE $EB ; Î
		.BYTE $FB ; ˚
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $B5 ; µ
		.BYTE $BD ; Ω
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $7C ; |
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE  $B
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $7C ; |
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $2F ; /
		.BYTE  $B
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $BE ; æ
		.BYTE $2E ; .
		.BYTE $F9 ; ˘
		.BYTE $F9 ; ˘
		.BYTE $E5 ; Â
		.BYTE $E5 ; Â
		.BYTE $95 ; ï
		.BYTE $96 ; ñ
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $5B ; [
		.BYTE $6B ; k
		.BYTE $6F ; o
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE $21 ; !
		.BYTE $FF
		.BYTE $F9 ; ˘
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	5
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	7
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $E8 ; Ë
		.BYTE $E0 ; ‡
		.BYTE $1B
		.BYTE	2
		.BYTE $E1 ; ·
		.BYTE	3
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $5D ; ]
		.BYTE $7D ; }
		.BYTE $DD ; ›
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $7D ; }
		.BYTE $77 ; w
		.BYTE $D5 ; ’
		.BYTE	5
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $C0 ; ¿
		.BYTE $70 ; p
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AF ; Ø
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE $2B ; +
		.BYTE  $B
		.BYTE $1B
		.BYTE	2
		.BYTE $4B ; K
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F5 ; ı
		.BYTE $6F ; o
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	5
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE $1F
		.BYTE $FF
		.BYTE $E5 ; Â
		.BYTE $E9 ; È
		.BYTE $F9 ; ˘
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $6F ; o
		.BYTE $6F ; o
		.BYTE $5B ; [
		.BYTE $5B ; [
		.BYTE $56 ; V
		.BYTE $96 ; ñ
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $BE ; æ
		.BYTE $B8 ; ∏
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $F8 ; ¯
		.BYTE $E0 ; ‡
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE $E0 ; ‡
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $3D ; =
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $3D ; =
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $5E ; ^
		.BYTE $7E ; ~
		.BYTE $FB ; ˚
		.BYTE $EB ; Î
		.BYTE $EF ; Ô
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AD ; ≠
		.BYTE $EF ; Ô
		.BYTE $EB ; Î
		.BYTE $FB ; ˚
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $B5 ; µ
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $77 ; w
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE  $A
		.BYTE	0
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $5B ; [
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $7E ; ~
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $7C ; |
		.BYTE $FA ; ˙
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE  $A
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $2B ; +
		.BYTE	2
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	5
		.BYTE $97 ; ó
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; ˛
		.BYTE $A1 ; °
		.BYTE $83 ; É
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $BF ; ø
		.BYTE $AB ; ´
		.BYTE  $A
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $BF ; ø
		.BYTE $AB ; ´
		.BYTE  $A
		.BYTE	0
		.BYTE $57 ; W
		.BYTE $5D ; ]
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $BF ; ø
		.BYTE $AB ; ´
		.BYTE $D5 ; ’
		.BYTE $75 ; u
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $FE ; ˛
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $FE ; ˛
		.BYTE $EA ; Í
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $FE ; ˛
		.BYTE $EA ; Í
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $4A ; J
		.BYTE $C2 ; ¬
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $BF ; ø
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	5
		.BYTE $D6 ; ÷
		.BYTE $56 ; V
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE  $C
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $F5 ; ı
		.BYTE $BF ; ø
		.BYTE $AB ; ´
		.BYTE  $A
		.BYTE $E5 ; Â
		.BYTE $80 ; Ä
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE  $A
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $5E ; ^
		.BYTE $7A ; z
		.BYTE $FB ; ˚
		.BYTE $EB ; Î
		.BYTE $EF ; Ô
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $BF ; ø
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $BF ; ø
		.BYTE $B5 ; µ
		.BYTE $BD ; Ω
		.BYTE $AD ; ≠
		.BYTE $ED ; Ì
		.BYTE $EF ; Ô
		.BYTE $EB ; Î
		.BYTE $FB ; ˚
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE $F7 ; ˜
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $7E ; ~
		.BYTE $FA ; ˙
		.BYTE $E8 ; Ë
		.BYTE $E0 ; ‡
		.BYTE $E2 ; ‚
		.BYTE $FA ; ˙
		.BYTE $E8 ; Ë
		.BYTE $A0 ; †
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE $15
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $2F ; /
		.BYTE  $B
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $2F ; /
		.BYTE  $B
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	4
		.BYTE $E5 ; Â
		.BYTE $E9 ; È
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $F8 ; ¯
		.BYTE $1B
		.BYTE	2
		.BYTE $78 ; x
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE  $D
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $2F ; /
		.BYTE $1B
		.BYTE	2
		.BYTE $2D ; -
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	4
		.BYTE $5B ; [
		.BYTE $6B ; k
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $F8 ; ¯
		.BYTE $E0 ; ‡
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE $F8 ; ¯
		.BYTE $E0 ; ‡
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE  $E
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $BD ; Ω
		.BYTE $AF ; Ø
		.BYTE $2B ; +
		.BYTE  $A
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $BD ; Ω
		.BYTE $AD ; ≠
		.BYTE $2D ; -
		.BYTE $2D ; -
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $75 ; u
		.BYTE $DF ; ﬂ
		.BYTE $75 ; u
		.BYTE $75 ; u
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	9
		.BYTE $55 ; U
		.BYTE $5E ; ^
		.BYTE $7E ; ~
		.BYTE $7A ; z
		.BYTE $7B ; {
		.BYTE $FB ; ˚
		.BYTE $EB ; Î
		.BYTE $EF ; Ô
		.BYTE $EF ; Ô
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $FE ; ˛
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $E
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE	7
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $B
		.BYTE $1B
		.BYTE $12
		.BYTE	9
		.BYTE $1B
		.BYTE	3
		.BYTE	5
		.BYTE	6
		.BYTE	6
		.BYTE	7
		.BYTE	7
		.BYTE $1B
		.BYTE	4
		.BYTE	9
		.BYTE $1B
		.BYTE	3
		.BYTE  $B
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $F8 ; ¯
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1F
		.BYTE $E0 ; ‡
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	7
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE $1F
		.BYTE	0
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE $20
		.BYTE	0
		.BYTE  $E
		.BYTE  $E
		.BYTE  $B
		.BYTE $9C ; ú
		.BYTE $2A ; *
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
; end of 'RAM'


		.END
