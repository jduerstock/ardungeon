		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"
;		.ORG	$7600
		.BYTE  $F
; ---------------------------------------------------------------------------
		JMP	loc_7610
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_7EC3
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601j
		LDA	#$FF
		STA	$1937
		dldi	off_1977, loc_763C
		dldi	off_16, $792C
		JSR	$184B
		LDA	$1933
		STA	$62
		dldi	off_7, $803F
		LDA	#2
		JMP	$180F
; ---------------------------------------------------------------------------

loc_763C:
		LDA	#$3F ; '?'
		STA	$72

loc_7640:				; CODE XREF: RAM:7671j
		LDA	$72
		STA	$4B
		JSR	$1887
		BEQ	loc_766F
		LDY	#0
		LDA	($41),Y
		CMP	#$87 ; 'á'
		BNE	loc_766F
		JSR	$1896
		LDY	#0
		LDA	($43),Y
		CMP	#2
		BNE	loc_766F
		INY
		LDA	($43),Y
		BNE	loc_766F
		dldi	off_16, $796C
		JSR	sub_7872
		JMP	loc_7861
; ---------------------------------------------------------------------------

loc_766F:				; CODE XREF: RAM:7647j	RAM:764Fj ...
		DEC	$72
		BPL	loc_7640

loc_7673:				; CODE XREF: RAM:76AEj	RAM:76C0j ...
		LDY	$7525
		LDA	unk_78FF,Y
		STA	$66
		LDA	unk_7905,Y
		STA	$67
		dldi	off_16, $792E
		LDX	$62
		JSR	$1851

loc_768D:				; CODE XREF: RAM:76A3j
		dldi	off_1977, loc_769A
		JMP	$1806
; ---------------------------------------------------------------------------

loc_769A:
		JSR	$1821
		AND	#2
		BNE	loc_76A9
		LDA	$31
		BMI	loc_768D
		CMP	#'0'
		BNE	loc_76AC

loc_76A9:				; CODE XREF: RAM:769Fj
		JMP	loc_7861
; ---------------------------------------------------------------------------

loc_76AC:				; CODE XREF: RAM:76A7j
		CMP	#'1'
		BNE	loc_7673

loc_76B0:				; CODE XREF: RAM:76D1j
		dldi	off_16, $7A4E
		LDX	$62
		JSR	$1851
		JSR	$18AE
		BCS	loc_7673
		BEQ	loc_7673
		BPL	loc_76D4
		dldi	off_16, $7ABB
		JSR	sub_7872
		JMP	loc_76B0
; ---------------------------------------------------------------------------

loc_76D4:				; CODE XREF: RAM:76C4j
		JSR	sub_787C
		BCC	loc_76E7
		dldi	off_16, $7ADC
		JSR	sub_7872
		JMP	loc_7673
; ---------------------------------------------------------------------------

loc_76E7:				; CODE XREF: RAM:76D7j
		LDA	#$19
		STA	$68
		LDA	#$1E
		STA	$69
		LDA	3
		BNE	loc_774B
		LDA	$7525
		BEQ	loc_76FC
		CMP	#5
		BCC	loc_7700

loc_76FC:				; CODE XREF: RAM:76F6j
		LDA	$69
		BNE	loc_770E

loc_7700:				; CODE XREF: RAM:76FAj
		JSR	j_RND_A
		TAY
		CLC
		ADC	$68
		STA	$68
		TYA
		ADC	$69
		STA	$69

loc_770E:				; CODE XREF: RAM:76FEj
		CMP	2
		BCC	loc_774B
		LDA	$68
		CMP	2
		BCS	loc_772F
		LDA	#$78 ; 'x'
		STA	$6A
		LDA	$6386
		BMI	loc_7724
		INC	$6386

loc_7724:				; CODE XREF: RAM:771Fj
		dldi	off_16, $7B69
		JMP	loc_7767
; ---------------------------------------------------------------------------

loc_772F:				; CODE XREF: RAM:7716j
		LDA	#$38 ; '8'
		STA	$6A
		LDA	#1
		LDX	#$86 ; 'Ü'
		JSR	$186F
		dldi	off_16, $7B0A
		LDY	$7525
		LDA	$790B,Y
		JMP	loc_7764
; ---------------------------------------------------------------------------

loc_774B:				; CODE XREF: RAM:76F1j	RAM:7710j
		LDA	#$D8 ; 'ÿ'
		STA	$6A
		LDA	#1
		LDX	#$86 ; 'Ü'
		JSR	$1878
		dldi	off_16, $7BA5
		LDY	$7525
		LDA	$7911,Y

loc_7764:				; CODE XREF: RAM:7748j
		STA	$7525

loc_7767:				; CODE XREF: RAM:772Cj
		JSR	sub_7872
		LDA	#1
		STA	$6B
		LDA	$6386
		CMP	#$60 ; '`'
		BCS	loc_777C
		LDA	#0
		STA	$6B
		JMP	loc_7784
; ---------------------------------------------------------------------------

loc_777C:				; CODE XREF: RAM:7773j
		CMP	#$70 ; 'p'
		BCC	loc_7784
		LDA	#2
		STA	$6B

loc_7784:				; CODE XREF: RAM:7779j	RAM:777Ej
		LDA	$6386
		dldi	off_16, $7BEC
		LDX	$62
		JSR	$1851
		LDA	RANDOM
		AND	#3
		LDY	$7525
		CLC
		ADC	$7917,Y
		STA	$65
		LDA	#0
		STA	$63
		JSR	$1869
		LDA	$630A
		STA	$64
		DEC	$1972
		DEC	$1955
		JSR	$181E

loc_77B7:				; CODE XREF: RAM:77F0j	RAM:7814j
		dldi	off_1977, loc_77C4
		JMP	$1806
; ---------------------------------------------------------------------------

loc_77C4:
		LDA	$63
		CMP	$65
		BCS	loc_7817
		LDA	$63
		CMP	#8
		BCC	loc_77D7
		LDA	$639B
		CMP	#$FF
		BEQ	loc_7817

loc_77D7:				; CODE XREF: RAM:77CEj
		LDA	$639B
		CMP	#$C0 ; '¿'
		BCC	loc_77E8
		LDA	$63
		BEQ	loc_77E8
		LDA	$31
		CMP	#$20 ; ' '
		BEQ	loc_7817

loc_77E8:				; CODE XREF: RAM:77DCj	RAM:77E0j
		JSR	$1869
		LDA	$630A
		CMP	$64
		BEQ	loc_77B7
		STA	$64
		INC	$63
		LDX	#$9B ; 'õ'
		LDY	$6B
		LDA	unk_7929,Y
		JSR	$1878
		LDX	#$45 ; 'E'
		LDY	$6B
		LDA	unk_7923,Y
		JSR	j_RND_A
		CLC
		ADC	unk_7926,Y
		JSR	$187B
		DEC	$195F
		JMP	loc_77B7
; ---------------------------------------------------------------------------

loc_7817:				; CODE XREF: RAM:77C8j	RAM:77D5j ...
		INC	$1972
		INC	$1955
		LDY	$6B
		LDA	unk_791D,Y
		STA	$66
		LDA	unk_7920,Y
		STA	$67
		dldi	off_16, $7C2A
		JSR	sub_7872
		JSR	$1869
		LDA	$630C
		TAX
		LDA	unk_7D66,X
		STA	byte_7D64
		LDA	unk_7D72,X
		STA	byte_7D65
		LDA	$630B
		CLC
		ADC	#1
		STA	byte_7D62
		LDA	$630E
		STA	byte_7D63
		dldi	off_16, $7CF4
		JSR	sub_7872

loc_7861:				; CODE XREF: RAM:766Cj	RAM:loc_76A9j
		LDY	#4

loc_7863:				; CODE XREF: RAM:786Aj
		LDA	$6318,Y
		STA	I_LOC_X,Y
		DEY
		BPL	loc_7863
		STX	$AC00
		JMP	$180C

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7872:				; CODE XREF: RAM:7669p	RAM:76CEp ...
		LDX	$62
		JSR	$1851
		LDA	#$A
		JMP	$185A
; End of function sub_7872


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_787C:				; CODE XREF: RAM:loc_76D4p
		LDY	#5

loc_787E:				; CODE XREF: sub_787C+9j
		LDA	$63B1,Y
		STA	$6C,Y
		DEY
		BPL	loc_787E

loc_7887:				; CODE XREF: sub_787C:loc_78CFj
		LDA	3
		CMP	$70
		BCC	loc_7899
		BEQ	loc_7891
		BCS	loc_78B3

loc_7891:				; CODE XREF: sub_787C+11j
		LDA	2
		CMP	$71
		BEQ	loc_7899
		BCS	loc_78B3

loc_7899:				; CODE XREF: sub_787C+Fj sub_787C+19j
		LDA	$71
		SEC
		SBC	2
		STA	$71
		LDA	$70
		SBC	3
		STA	$70
		LDY	#5

loc_78A8:				; CODE XREF: sub_787C+33j
		LDA	$6C,Y
		STA	$63B1,Y
		DEY
		BPL	loc_78A8
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_78B3:				; CODE XREF: sub_787C+13j sub_787C+1Bj ...
		LDA	$6F
		ORA	$6E
		BEQ	loc_78D2
		LDA	$6F
		SEC
		SBC	#1
		STA	$6F
		BCS	loc_78C4
		DEC	$6E

loc_78C4:				; CODE XREF: sub_787C+44j
		LDA	#$A
		CLC
		ADC	$71
		STA	$71
		BCC	loc_78CF
		INC	$70

loc_78CF:				; CODE XREF: sub_787C+4Fj
		JMP	loc_7887
; ---------------------------------------------------------------------------

loc_78D2:				; CODE XREF: sub_787C+3Bj
		LDA	$6D
		ORA	$6C
		BNE	loc_78DA
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_78DA:				; CODE XREF: sub_787C+5Aj
		LDA	$6D
		SEC
		SBC	#1
		STA	$6D
		BCS	loc_78E5
		DEC	$6C

loc_78E5:				; CODE XREF: sub_787C+65j
		LDA	#$A
		CLC
		ADC	$6F
		STA	$6F
		BCC	loc_78F0
		INC	$6E

loc_78F0:				; CODE XREF: sub_787C+70j
		JMP	loc_78B3
; End of function sub_787C

; ---------------------------------------------------------------------------

loc_78F3:				; DATA XREF: RAM:7CF8o
		LDA	#$FF
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------

loc_78F9:				; DATA XREF: RAM:7D5Fo
		LDA	#0
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------
unk_78FF:	.BYTE $C9 ; …		; DATA XREF: RAM:7676r
		.BYTE $F1 ; Ò
		.BYTE $F1 ; Ò
		.BYTE $F1 ; Ò
		.BYTE	6
		.BYTE $2B ; +
unk_7905:	.BYTE $79 ; y		; DATA XREF: RAM:767Br
		.BYTE $79 ; y
		.BYTE $79 ; y
		.BYTE $79 ; y
		.BYTE $7A ; z
		.BYTE $7A ; z
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	4
		.BYTE	1
		.BYTE	5
		.BYTE	5
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	5
		.BYTE  $A
		.BYTE	8
		.BYTE	6
		.BYTE	4
		.BYTE	2
		.BYTE  $C
unk_791D:	.BYTE $31 ; 1		; DATA XREF: RAM:781Fr
		.BYTE $78 ; x
		.BYTE $AE ; Æ
unk_7920:	.BYTE $7C ; |		; DATA XREF: RAM:7824r
		.BYTE $7C ; |
		.BYTE $7C ; |
unk_7923:	.BYTE	2		; DATA XREF: RAM:7804r
		.BYTE	4
		.BYTE	5
unk_7926:	.BYTE	0		; DATA XREF: RAM:780Br
		.BYTE	1
		.BYTE	2
unk_7929:	.BYTE	4		; DATA XREF: RAM:77FAr
		.BYTE	8
		.BYTE $10
		.BYTE $A8 ; ®
		.BYTE $FF
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE	0
		.BYTE $A5 ; •
		.BYTE $B4 ; ¥
		.BYTE $66 ; f
		.BYTE	0
		.BYTE $28 ; (
		.BYTE  $D
		.BYTE  $D
		.BYTE $A5
aWouldsTThouLik:.BYTE "Woulds't thou like to"
		.BYTE $D
		.BYTE $A6, $E,	4
		MenuItem "1","Sleep"
		.BYTE $A6, $E,	5
		MenuItem "0","Leave"
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aThouArtWelcome:.BYTE "Thou art welcome here but thy deceased"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aFriendIsNotPle:.BYTE "friend is not!  Please have it wait"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOutside:	.BYTE "outside!"
		.BYTE $D
		.BYTE $FF
aWelcomeStrange:.BYTE "Welcome, Stranger, to our meager hovel.",0
aArtThouBackAga:.BYTE "Art thou back again?",0
aThouHastThyNer:.BYTE "Thou hast thy nerve, returning here!",0
aGreetingsExplo:.BYTE "Greetings, Explorer. Welcome back!",0
		.BYTE $A6,  0,	0
		.BYTE $A5
aThouMayestHave:.BYTE "Thou mayest have a spot on"
		.BYTE $D
		.BYTE $A5
aTheFloorForASm:.BYTE "the floor for a small donation."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aHowManyCoppers:.BYTE "How many coppers woulds't thou give?"
		.BYTE $D
		.BYTE $D
		.BYTE $A6,$10,	5
		.BYTE '>'
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aInvalidEntry_:	.BYTE "Invalid Entry."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTryAgain_:	.BYTE "Try Again."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aThouHastOffere:.BYTE "Thou hast offered more"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThanThouHast:	.BYTE "than thou hast!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aThatSNotEnough:.BYTE "That's not enough to"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aCoverTheCostOf:.BYTE "cover the cost of delousing!"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTakeTheDraftyS:.BYTE "Take the drafty spot near the door!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aPinchingPennie:.BYTE "Pinching pennies, eh?"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWellLieDownInT:.BYTE "Well, lie down in that corner!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aThouArtGenerou:.BYTE "Thou art generous to a fault!"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTakeThisPlaceN:.BYTE "Take this place next to the fire!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6, $D,	3
		.BYTE $A1
aThouSleepest_:	.BYTE "Thou sleepest."
		.BYTE $A0
		.BYTE $A6,  0,	7
		.BYTE $A5
aPress:		.BYTE "(Press "
		.BYTE $A1
aSpace:		.BYTE "SPACE"
		.BYTE $A0
		.BYTE $20
aWhenReadyToAwa:.BYTE "when ready to awaken.)"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $AD
		.WORD $66
		.BYTE $FF
		.BYTE $A5
aThySleepIsTrou:.BYTE "Thy sleep is troubled by evil dreams."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThouWakestInAC:.BYTE "Thou wakest in a cold sweat!"
		.BYTE $D
		.BYTE $AE
		.BYTE $A5
aThyRestIsFitfu:.BYTE "Thy rest is fitful."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThouWakestWith:.BYTE "Thou wakest with droopy eyes."
		.BYTE $D
		.BYTE $AE
		.BYTE $A5
aThyDreamsAreWa:.BYTE "Thy dreams are warm and bright."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThouWakestRest:.BYTE "Thou wakest rested and refreshed."
		.BYTE $D
		.BYTE $AE
		.BYTE $A6,  0,	1
		.BYTE $A3
		.WORD loc_78F3
		.BYTE $A5
aThouHastSleptF:.BYTE "Thou hast slept for "
		.BYTE $B2
		.WORD $63
		.BYTE 2
		.BYTE $20
aHours_:	.BYTE "hours."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aItIsDay:	.BYTE "It is day "
		.BYTE $B2
		.WORD $7D62
		.BYTE 2
		.BYTE $D
		.BYTE $A5
aInTheMonthOf:	.BYTE "in the month of "
		.BYTE $B4
		.WORD $7D64
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aYear:		.BYTE "year "
		.BYTE $B2
		.WORD $7D63
		.BYTE 3
aSinceAbduction:.BYTE " since abduction."
		.BYTE $D
		.BYTE $A3
		.WORD loc_78F9
		.BYTE $FF
byte_7D62:	.BYTE 0			; DATA XREF: RAM:784Dw
byte_7D63:	.BYTE 0			; DATA XREF: RAM:7853w
byte_7D64:	.BYTE $FF		; DATA XREF: RAM:783Ew
byte_7D65:	.BYTE $FF		; DATA XREF: RAM:7844w
unk_7D66:	.BYTE $7E ; ~		; DATA XREF: RAM:783Br
		.BYTE $86 ; Ü
		.BYTE $90 ; ê
		.BYTE $96 ; ñ
		.BYTE $9C ; ú
		.BYTE $A4 ; §
		.BYTE $B1 ; ±
		.BYTE $B9 ; π
		.BYTE $C7 ; «
		.BYTE $D0 ; –
		.BYTE $D9 ; Ÿ
		.BYTE $E4 ; ‰
unk_7D72:	.BYTE $7D ; }		; DATA XREF: RAM:7841r
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
aRebirth:	.BYTE "Rebirth",0
aAwakening:	.BYTE "Awakening",0
aWinds:		.BYTE "Winds",0
aRains:		.BYTE "Rains",0
aSowings:	.BYTE "Sowings",0
aFirstFruits:	.BYTE "First Fruits",0
aHarvest:	.BYTE "Harvest",0
aFinalReaping:	.BYTE "Final Reaping",0
aTheFall:	.BYTE "The Fall",0
aDarkness:	.BYTE "Darkness",0
aColdWinds:	.BYTE "Cold Winds",0
aLights:	.BYTE "Lights",0
unk_7DEB:	.BYTE $70 ; p		; DATA XREF: RAM:7E1Bo
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
		.BYTE $44
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
		.BYTE $41
		.WORD unk_7DEB
; ---------------------------------------------------------------------------
		PHA
		TXA
		PHA
		TYA
		PHA
		STA	WSYNC
		LDA	#$36 ; '6'
		STA	COLPF3
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

loc_7E81:				; CODE XREF: RAM:7EA6j
		LDA	$BB94,X
		STA	WSYNC
		STA	$D017
		STY	COLPF3
		LDA	$BB4C,X
		STA	CHBASE
		LDA	$BB70,X
		STA	WSYNC
		STA	$D016
		LDA	$BBB8,X
		STA	$D018
		LDY	$BBDB,X
		DEX
		BPL	loc_7E81
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

loc_7EC3:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$EB ; 'Î'
		STA	$254
		LDA	#$7D ; '}'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_7ED6:				; CODE XREF: RAM:7EE4j
		LDY	#$C

loc_7ED8:				; CODE XREF: RAM:7EDFj
		STA	$BB4C,X
		DEX
		BMI	loc_7EE6
		DEY
		BNE	loc_7ED8
		CLC
		ADC	#4
		BNE	loc_7ED6

loc_7EE6:				; CODE XREF: RAM:7EDCj
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_7FDE
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_7FDE
		LDA	#0
		STA	loc_7F0C+1
		LDA	#$BD ; 'Ω'
		STA	loc_7F0C+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_7F0C:				; CODE XREF: RAM:7F10j	RAM:7F16j
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_7F0C
		INC	loc_7F0C+2
		DEY
		BNE	loc_7F0C
		LDX	#7

loc_7F1A:				; CODE XREF: RAM:7F1Ej
		STA	$D000,X
		DEX
		BPL	loc_7F1A
		LDA	#3
		TAX

loc_7F23:				; CODE XREF: RAM:7F27j
		STA	$D008,X
		DEX
		BPL	loc_7F23
		LDA	#$FF
		STA	$D00C
		LDA	#3
		STA	$D01D
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_7F51:				; CODE XREF: RAM:7F77j
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_7F59:				; CODE XREF: RAM:7F64j
		LSR	4
		BCC	loc_7F63
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_7F63:				; CODE XREF: RAM:7F5Bj
		DEY
		BPL	loc_7F59
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_7F71
		INC	$A

loc_7F71:				; CODE XREF: RAM:7F6Dj
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_7F51
		LDA	#$2D ; '-'
		STA	off_7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_7F89:				; CODE XREF: RAM:7F9Aj
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
		BCC	loc_7F89

loc_7F9C:				; CODE XREF: RAM:7FB9j
		LDX	#0

loc_7F9E:				; CODE XREF: RAM:7FB7j
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_7FA4:				; CODE XREF: RAM:7FA9j
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_7FA4
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_7FBB
		CPX	#$A
		BCC	loc_7F9E
		BCS	loc_7F9C

loc_7FBB:				; CODE XREF: RAM:7FB3j
		LDX	#3
		LDA	$BC5F

loc_7FC0:				; CODE XREF: RAM:7FC4j
		STA	COLPM0,X
		DEX
		BPL	loc_7FC0
		dldi	off_24A, $7E1D
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_7FDE:				; CODE XREF: RAM:7EEEp	RAM:7EF9p ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_7FE8
		INC	8

loc_7FE8:				; CODE XREF: RAM:7FE4j
		CMP	#$1B
		BEQ	loc_7FF7
		STA	(9),Y
		INC	9
		BNE	loc_7FF4
		INC	$A

loc_7FF4:				; CODE XREF: RAM:7FF0j
		JMP	loc_7FDE
; ---------------------------------------------------------------------------

loc_7FF7:				; CODE XREF: RAM:7FEAj
		LDA	(7),Y
		INC	7
		BNE	loc_7FFF
		INC	8

loc_7FFF:				; CODE XREF: RAM:7FFBj
		CMP	#$FF
		BNE	loc_8004
		RTS
; ---------------------------------------------------------------------------

loc_8004:				; CODE XREF: RAM:8001j
		STA	byte_803E
		ADC	9
		STA	loc_8017+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_801C
		LDA	byte_803E

loc_8017:				; DATA XREF: RAM:8009w
		SBC	#$FF
		STA	byte_803E

loc_801C:				; CODE XREF: RAM:8012j
		LDA	(7),Y
		INC	7
		BNE	loc_8024
		INC	8

loc_8024:				; CODE XREF: RAM:8020j
		LDY	byte_803E

loc_8027:				; CODE XREF: RAM:802Aj
		STA	(9),Y
		DEY
		BPL	loc_8027
		INC	byte_803E
		LDA	byte_803E
		CLC
		ADC	9
		STA	9
		BCC	loc_803B
		INC	$A

loc_803B:				; CODE XREF: RAM:8037j
		JMP	loc_7FDE
; ---------------------------------------------------------------------------
byte_803E:	.BYTE 0			; DATA XREF: RAM:loc_8004w RAM:8014r ...
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE  $F
		.BYTE	3
		.BYTE	3
		.BYTE  $C
		.BYTE  $C
		.BYTE $1B
		.BYTE	2
		.BYTE  $F
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE  $C
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE	3
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE $31 ; 1
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F1 ; Ò
		.BYTE $C4 ; -
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $C4 ; -
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $FD ; ˝
		.BYTE $FC ; ¸
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $12
		.BYTE $46 ; F
		.BYTE $12
		.BYTE $46 ; F
		.BYTE $12
		.BYTE $44 ; D
		.BYTE $BD ; Ω
		.BYTE $AC ; ¨
		.BYTE $A1 ; °
		.BYTE $A8 ; ®
		.BYTE $A9 ; ©
		.BYTE $A8 ; ®
		.BYTE $A9 ; ©
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $FD ; ˝
		.BYTE $FC ; ¸
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $13
		.BYTE $47 ; G
		.BYTE $13
		.BYTE $47 ; G
		.BYTE $13
		.BYTE $74 ; t
		.BYTE  $D
		.BYTE $DC ; ‹
		.BYTE $DD ; ›
		.BYTE $FC ; ¸
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $45 ; E
		.BYTE $10
		.BYTE $44 ; D
		.BYTE $10
		.BYTE $46 ; F
		.BYTE $19
		.BYTE $44 ; D
		.BYTE $3D ; =
		.BYTE $3C ; <
		.BYTE $11
		.BYTE	4
		.BYTE $11
		.BYTE	4
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $47 ; G
		.BYTE $12
		.BYTE $47 ; G
		.BYTE $12
		.BYTE $47 ; G
		.BYTE $12
		.BYTE $43 ; C
		.BYTE $BC ; º
		.BYTE $BC ; º
		.BYTE $E1 ; ·
		.BYTE $B4 ; ¥
		.BYTE $E1 ; ·
		.BYTE $B4 ; ¥
		.BYTE $E1 ; ·
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $43 ; C
		.BYTE $10
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $3C ; <
		.BYTE  $C
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE	3
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE $30 ; 0
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $C3 ; √
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $C3 ; √
		.BYTE  $F
		.BYTE $1B
		.BYTE $27 ; '
		.BYTE $3F ; ?
		.BYTE $3D ; =
		.BYTE $35 ; 5
		.BYTE $3D ; =
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $35 ; 5
		.BYTE $3D ; =
		.BYTE $55 ; U
		.BYTE $99 ; ô
		.BYTE $55 ; U
		.BYTE $31 ; 1
		.BYTE $35 ; 5
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $33 ; 3
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $33 ; 3
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $3F ; ?
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE $12
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE  $F
		.BYTE  $C
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	5
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE	4
		.BYTE $11
		.BYTE	4
		.BYTE $11
		.BYTE	4
		.BYTE $10
		.BYTE	0
		.BYTE $10
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $20
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE	4
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $10
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE	8
		.BYTE $2A ; *
		.BYTE $46 ; F
		.BYTE $12
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $1F
		.BYTE $A8 ; ®
		.BYTE $A1 ; °
		.BYTE $A4 ; §
		.BYTE $91 ; ë
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $F1 ; Ò
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $4F ; O
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $D1 ; —
		.BYTE $47 ; G
		.BYTE $13
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $1B
		.BYTE	2
		.BYTE $FD ; ˝
		.BYTE $1D
		.BYTE $4D ; M
		.BYTE $13
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $E4 ; ‰
		.BYTE $D1 ; —
		.BYTE $C4 ; -
		.BYTE $D1 ; —
		.BYTE $C4 ; -
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE	4
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $10
		.BYTE $47 ; G
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $B4 ; ¥
		.BYTE $D1 ; —
		.BYTE $47 ; G
		.BYTE $1F
		.BYTE $7F ; 
		.BYTE $3F ; ?
		.BYTE $7F ; 
		.BYTE $3F ; ?
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $F4 ; Ù
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FD ; ˝
		.BYTE $40 ; @
		.BYTE $10
		.BYTE $44 ; D
		.BYTE $10
		.BYTE $44 ; D
		.BYTE $D0 ; –
		.BYTE $C4 ; -
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; 
		.BYTE	3
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE $21 ; !
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $AF ; Ø
		.BYTE $8F ; è
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
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
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE  $F
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	7
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE  $A
		.BYTE	8
		.BYTE $1B
		.BYTE	2
		.BYTE  $A
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $E2 ; ‚
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE	0
		.BYTE $74 ; t
		.BYTE $DC ; ‹
		.BYTE $74 ; t
		.BYTE $1E
		.BYTE $3A ; :
		.BYTE $1A
		.BYTE $36 ; 6
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $8F ; è
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE  $F
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $F0 ; 
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $3C ; <
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $BE ; æ
		.BYTE	0
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $9D ; ù
		.BYTE $77 ; w
		.BYTE $9D ; ù
		.BYTE $B6 ; ∂
		.BYTE	0
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DF ; ﬂ
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE  $A
		.BYTE $4A ; J
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE	7
		.BYTE  $D
		.BYTE  $B
		.BYTE $29 ; )
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $EB ; Î
		.BYTE $3F ; ?
		.BYTE $7F ; 
		.BYTE $3F ; ?
		.BYTE $4F ; O
		.BYTE $D0 ; –
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $B7 ; ∑
		.BYTE $FC ; ¸
		.BYTE $F5 ; ı
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE $1D
		.BYTE $7A ; z
		.BYTE $DE ; ﬁ
		.BYTE $AA ; ™
		.BYTE $C0 ; ¿
		.BYTE $DC ; ‹
		.BYTE $18
		.BYTE $68 ; h
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $FE ; ˛
		.BYTE $2A ; *
		.BYTE	8
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE $15
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	6
		.BYTE $3C ; <
		.BYTE  $A
		.BYTE  $A
		.BYTE	2
		.BYTE	2
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $EC ; Ï
		.BYTE $BB ; ª
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $8F ; è
		.BYTE  $F
		.BYTE $CF ; œ
		.BYTE $B3 ; ≥
		.BYTE $23 ; #
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $46 ; F
		.BYTE $1A
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE  $A
		.BYTE	8
		.BYTE	8
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE	8
		.BYTE	8
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $10
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $15
		.BYTE	5
		.BYTE	5
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $AB ; ´
		.BYTE $2B ; +
		.BYTE $1B
		.BYTE	7
		.BYTE $3C ; <
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE  $A
		.BYTE  $A
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $AA ; ™
		.BYTE $AE ; Æ
		.BYTE $FA ; ˙
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $16
		.BYTE $1A
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	4
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $1A
		.BYTE $37 ; 7
		.BYTE  $D
		.BYTE	7
		.BYTE  $D
		.BYTE	7
		.BYTE	1
		.BYTE	3
		.BYTE $EA ; Í
		.BYTE $66 ; f
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $C2 ; ¬
		.BYTE $4A ; J
		.BYTE $DE ; ﬁ
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $AA ; ™
		.BYTE $7A ; z
		.BYTE $DD ; ›
		.BYTE $B7 ; ∑
		.BYTE $9D ; ù
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $76 ; v
		.BYTE $AA ; ™
		.BYTE $B7 ; ∑
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $9D ; ù
		.BYTE $B7 ; ∑
		.BYTE $AA ; ™
		.BYTE $BB ; ª
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $AA ; ™
		.BYTE $7B ; {
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DE ; ﬁ
		.BYTE $7A ; z
		.BYTE $DA ; ⁄
		.BYTE $6A ; j
		.BYTE $DB ; -
		.BYTE $6F ; o
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $F9 ; ˘
		.BYTE $A7 ; ß
		.BYTE $9D ; ù
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $76 ; v
		.BYTE $DD ; ›
		.BYTE $76 ; v
		.BYTE $EA ; Í
		.BYTE $7A ; z
		.BYTE $EA ; Í
		.BYTE $6A ; j
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $A8 ; ®
		.BYTE $F0 ; 
		.BYTE $F8 ; ¯
		.BYTE $E2 ; ‚
		.BYTE $C8 ; »
		.BYTE $E2 ; ‚
		.BYTE $C8 ; »
		.BYTE $C2 ; ¬
		.BYTE $C8 ; »
		.BYTE  $F
		.BYTE $8B ; ã
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE	8
		.BYTE $1B
		.BYTE	4
		.BYTE $3F ; ?
		.BYTE $1F
		.BYTE $37 ; 7
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $3F ; ?
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE $33 ; 3
		.BYTE $32 ; 2
		.BYTE $33 ; 3
		.BYTE $32 ; 2
		.BYTE $3C ; <
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE $EE ; Ó
		.BYTE $BB ; ª
		.BYTE $EE ; Ó
		.BYTE $BB ; ª
		.BYTE $EE ; Ó
		.BYTE  $B
		.BYTE	0
		.BYTE $B0 ; ∞
		.BYTE $EE ; Ó
		.BYTE $BB ; ª
		.BYTE $EE ; Ó
		.BYTE $B3 ; ≥
		.BYTE $CC ; Ã
		.BYTE $8F ; è
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE $EE ; Ó
		.BYTE $BB ; ª
		.BYTE $EE ; Ó
		.BYTE $B5 ; µ
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FA ; ˙
		.BYTE $B9 ; π
		.BYTE $F4 ; Ù
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE  $C
		.BYTE $2C ; ,
		.BYTE $2C ; ,
		.BYTE $20
		.BYTE $23 ; #
		.BYTE  $B
		.BYTE  $B
		.BYTE	2
		.BYTE $2E ; .
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $8E ; é
		.BYTE $AE ; Æ
		.BYTE $2F ; /
		.BYTE $3B ; ;
		.BYTE $2F ; /
		.BYTE $E8 ; Ë
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $B8 ; ∏
		.BYTE $B8 ; ∏
		.BYTE $AB ; ´
		.BYTE $23 ; #
		.BYTE $BF ; ø
		.BYTE $2C ; ,
		.BYTE $2E ; .
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE $BA ; ∫
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $BC ; º
		.BYTE	0
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $80 ; Ä
		.BYTE $E0 ; ‡
		.BYTE $E0 ; ‡
		.BYTE $80 ; Ä
		.BYTE	8
		.BYTE $A8 ; ®
		.BYTE $20
		.BYTE $68 ; h
		.BYTE $28 ; (
		.BYTE $48 ; H
		.BYTE $18
		.BYTE $7F ; 
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE	0
		.BYTE	5
		.BYTE $15
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE  $F
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	3
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $AC ; ¨
		.BYTE $1B
		.BYTE	6
		.BYTE $AF ; Ø
		.BYTE	1
		.BYTE $C3 ; √
		.BYTE $F1 ; Ò
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $1D
		.BYTE $C4 ; -
		.BYTE $F3 ; Û
		.BYTE $FF
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DF ; ﬂ
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $DA ; ⁄
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $F7 ; ˜
		.BYTE $F5 ; ı
		.BYTE $D7 ; ◊
		.BYTE $9A ; ö
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AD ; ≠
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $AD ; ≠
		.BYTE $A7 ; ß
		.BYTE $9D ; ù
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $AA ; ™
		.BYTE $BA ; ∫
		.BYTE $DE ; ﬁ
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $E9 ; È
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $AA ; ™
		.BYTE $BB ; ª
		.BYTE $9D ; ù
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $A9 ; ©
		.BYTE $A7 ; ß
		.BYTE $ED ; Ì
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $DA ; ⁄
		.BYTE $6B ; k
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $B6 ; ∂
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $77 ; w
		.BYTE $A8 ; ®
		.BYTE $A4 ; §
		.BYTE $9C ; ú
		.BYTE $A4 ; §
		.BYTE $9C ; ú
		.BYTE $74 ; t
		.BYTE $DC ; ‹
		.BYTE $74 ; t
		.BYTE $C2 ; ¬
		.BYTE $C0 ; ¿
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $F2 ; Ú
		.BYTE $C8 ; »
		.BYTE $22 ; "
		.BYTE	8
		.BYTE $80 ; Ä
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $CC ; Ã
		.BYTE $EE ; Ó
		.BYTE $FC ; ¸
		.BYTE $15
		.BYTE $35 ; 5
		.BYTE $3A ; :
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE  $C
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE $33 ; 3
		.BYTE $32 ; 2
		.BYTE $33 ; 3
		.BYTE $32 ; 2
		.BYTE $1B
		.BYTE	2
		.BYTE $30 ; 0
		.BYTE $EE ; Ó
		.BYTE $BB ; ª
		.BYTE $EE ; Ó
		.BYTE $BB ; ª
		.BYTE $EE ; Ó
		.BYTE $BB ; ª
		.BYTE	0
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $80 ; Ä
		.BYTE $E2 ; ‚
		.BYTE $B8 ; ∏
		.BYTE $EE ; Ó
		.BYTE $BB ; ª
		.BYTE $2E ; .
		.BYTE  $B
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $E5 ; Â
		.BYTE $B9 ; π
		.BYTE $2C ; ,
		.BYTE $8B ; ã
		.BYTE $E2 ; ‚
		.BYTE $B8 ; ∏
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $45 ; E
		.BYTE $D5 ; ’
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $BF ; ø
		.BYTE $BC ; º
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $51 ; Q
		.BYTE $55 ; U
		.BYTE $EE ; Ó
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $14
		.BYTE $55 ; U
		.BYTE $FE ; ˛
		.BYTE $3E ; >
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $45 ; E
		.BYTE $55 ; U
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $7C ; |
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $F0 ; 
		.BYTE $F5 ; ı
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE	3
		.BYTE $17
		.BYTE $1B
		.BYTE	5
		.BYTE $15
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $66 ; f
		.BYTE $9A ; ö
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE  $A
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $C1 ; ¡
		.BYTE $C1 ; ¡
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $DC ; ‹
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $22 ; "
		.BYTE $48 ; H
		.BYTE $62 ; b
		.BYTE $48 ; H
		.BYTE $62 ; b
		.BYTE $48 ; H
		.BYTE $62 ; b
		.BYTE $5F ; _
		.BYTE $FE ; ˛
		.BYTE $FD ; ˝
		.BYTE $32 ; 2
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $7F ; 
		.BYTE	0
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $15
		.BYTE $95 ; ï
		.BYTE $15
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $15
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $15
		.BYTE	2
		.BYTE $1B
		.BYTE	6
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE $7B ; {
		.BYTE $5E ; ^
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $22 ; "
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $80 ; Ä
		.BYTE $95 ; ï
		.BYTE $29 ; )
		.BYTE $A9 ; ©
		.BYTE $A5 ; •
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $6B ; k
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A6 ; ¶
		.BYTE $A5 ; •
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $F0 ; 
		.BYTE  $D
		.BYTE $1B
		.BYTE	3
		.BYTE $FD ; ˝
		.BYTE $F9 ; ˘
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $15
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $14
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FD ; ˝
		.BYTE $D1 ; —
		.BYTE $51 ; Q
		.BYTE $1B
		.BYTE $6C ; l
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $4F ; O
		.BYTE	3
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $DF ; ﬂ
		.BYTE $D7 ; ◊
		.BYTE $D7 ; ◊
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	2
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	2
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $57 ; W
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $5D ; ]
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $4F ; O
		.BYTE $F3 ; Û
		.BYTE $F4 ; Ù
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $C5 ; ≈
		.BYTE $15
		.BYTE $1B
		.BYTE $13
		.BYTE $55 ; U
		.BYTE $51 ; Q
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE	6
		.BYTE	6
		.BYTE	2
		.BYTE $10
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	1
		.BYTE	1
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $81 ; Å
		.BYTE $41 ; A
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $41 ; A
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $15
		.BYTE $1B
		.BYTE	9
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	3
		.BYTE $5F ; _
		.BYTE	3
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE  $F
		.BYTE	0
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $F5 ; ı
		.BYTE $C5 ; ≈
		.BYTE	5
		.BYTE $35 ; 5
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	2
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE $67 ; g
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE	1
		.BYTE	5
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $15
		.BYTE	5
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $15
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $57 ; W
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $F0 ; 
		.BYTE $F5 ; ı
		.BYTE $C5 ; ≈
		.BYTE $D5 ; ’
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE $26 ; &
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE  $C
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $15
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE $6F ; o
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $1B
		.BYTE  $E
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $1B
		.BYTE $6E ; n
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $25 ; %
		.BYTE $28 ; (
		.BYTE $23 ; #
		.BYTE $21 ; !
		.BYTE $24 ; $
		.BYTE $28 ; (
		.BYTE $23 ; #
		.BYTE $21 ; !
		.BYTE $24 ; $
		.BYTE $28 ; (
		.BYTE $23 ; #
		.BYTE $21 ; !
		.BYTE $24 ; $
		.BYTE $28 ; (
		.BYTE $23 ; #
		.BYTE $21 ; !
		.BYTE  $A
		.BYTE $1B
		.BYTE $10
		.BYTE  $B
		.BYTE  $A
		.BYTE  $B
		.BYTE $1B
		.BYTE $1D
		.BYTE $2E ; .
		.BYTE  $F
		.BYTE  $E
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE  $E
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $26 ; &
		.BYTE $1B
		.BYTE $17
		.BYTE $47 ; G
		.BYTE $1B
		.BYTE	4
		.BYTE $D7 ; ◊
		.BYTE $1B
		.BYTE	6
		.BYTE $CA ;  
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $BE ; æ
		.BYTE	0
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	4
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE	0
		.BYTE $FE ; ˛
		.BYTE $3D ; =
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	0
		.BYTE  $E
		.BYTE $3F ; ?
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	0
		.BYTE  $E
		.BYTE $3F ; ?
		.BYTE $81 ; Å
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE $31 ; 1
		.BYTE	0
		.BYTE  $B
		.BYTE $35 ; 5
		.BYTE $26 ; &
		.BYTE $9C ; ú
		.BYTE $48 ; H
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
; end of 'RAM'


		.END
