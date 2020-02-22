
		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;	.ORG	$100
	.SEGMENT "SEG_1B_KEY"

	.BYTE	$54,$7e,$00,$1c,$d0,$40,$61,$c7,$b2,$e9,$e2,$a3,$87,$87,$b5,$92 ; |T~...@a.........|
	.BYTE	$7d,$33,$d7,$08,$60,$0c,$fc,$da,$64,$b9,$64,$3d,$ee,$8c,$a3,$33 ; |}3..`...d.d=...3|
	.BYTE	$90,$27,$75,$9a,$3b,$72,$0f,$7a,$ce,$87,$1c,$3a,$c9,$9e,$90,$23 ; |.'u.;r.z...:...#|
	.BYTE	$10,$80,$52,$d2,$d4,$d1,$b9,$24,$6f,$21,$c0,$17,$fe,$8f,$d9,$7d ; |..R....$o!.....}|
	.BYTE	$77,$92,$27,$a6,$dc,$14,$a6,$4d,$f9,$7b,$50,$55,$3f,$b6,$dd,$1a ; |w.'....M.{PU?...|
	.BYTE	$85,$5c,$8e,$10,$47,$ac,$cf,$88,$1e,$1d,$aa,$78,$5b,$cb,$6b,$71 ; |.\..G......x[.kq|
	.BYTE	$25,$14,$e6,$0d,$af,$90,$25,$3e,$a9,$e5,$53,$4c,$34,$6b,$d1,$0b ; |%.....%>..SL4k..|
	.BYTE	$ab,$34,$6c,$fa,$a9,$65,$d7,$c2,$63,$80,$27,$f6,$4e,$99,$0a,$ba ; |.4l..e..c.'.N...|

;		.ORG	$7600
	.SEGMENT "SEG_1B"

		.BYTE  $B
; ---------------------------------------------------------------------------
		JMP	loc_7610
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_7F87
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604^j	RAM:7607^j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601^j
		LDA	#$FF
		STA	$1937
		dldi	off_1977, loc_764C
		dldi	off_16, $7930
		JSR	$184B
		LDA	$1933
		STA	$62
		LDA	$7556
		BEQ	loc_763F
		dldi	off_7, $896F
		JMP	loc_7647
; ---------------------------------------------------------------------------

loc_763F:				; CODE XREF: RAM:7632^j
		dldi	off_7, $8103

loc_7647:				; CODE XREF: RAM:763C^j
		LDA	#2
		JSR	$180F

loc_764C:
		LDX	#4

loc_764E:				; CODE XREF: RAM:7655vj
		LDA	$6318,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_764E
		LDA	$7556
		BEQ	loc_7686
		dldi	off_16, $7932
		LDX	$62
		JSR	j_sub_3C5C

loc_7669:				; CODE XREF: RAM:7681vj
		dldi	off_1977, loc_7676
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7676:
		JSR	j_sub_262F
		AND	#2
		BNE	loc_7683
		LDA	$31
		CMP	#'0'
		BNE	loc_7669

loc_7683:				; CODE XREF: RAM:767B^j
		JMP	loc_783B
; ---------------------------------------------------------------------------

loc_7686:				; CODE XREF: RAM:765A^j
		LDA	$7555
		BNE	loc_76A3
		INC	$7555
		dldi	off_16, $795A
		LDX	$62
		JSR	j_sub_3C5C
		LDA	#$F
		JSR	$183C
		JMP	loc_76AE
; ---------------------------------------------------------------------------

loc_76A3:				; CODE XREF: RAM:7689^j
		dldi	off_16, $7A6A
		JSR	sub_78AE

loc_76AE:				; CODE XREF: RAM:76A0^j	RAM:76EFvj
		dldi	off_16, $79FF
		JSR	sub_78B8

loc_76B9:				; CODE XREF: RAM:76D8vj
		dldi	off_1977, loc_76C6
		JMP	$1806
; ---------------------------------------------------------------------------

loc_76C6:
		JSR	j_sub_262F
		AND	#2
		BNE	loc_76D3
		LDA	$31
		CMP	#$30 ; '0'
		BNE	loc_76D6

loc_76D3:				; CODE XREF: RAM:76CB^j
		JMP	loc_783B
; ---------------------------------------------------------------------------

loc_76D6:				; CODE XREF: RAM:76D1^j
		CMP	#$31 ; '1'
		BNE	loc_76B9
		JSR	sub_7843
		BCC	loc_76FD
		LDA	$63BF
		BEQ	loc_76F2
		dldi	off_16, $7A98

loc_76EC:				; CODE XREF: RAM:76FAvj
		JSR	sub_78AE
		JMP	loc_76AE
; ---------------------------------------------------------------------------

loc_76F2:				; CODE XREF: RAM:76E2^j
		dldi	off_16, $7ABD
		JMP	loc_76EC
; ---------------------------------------------------------------------------

loc_76FD:				; CODE XREF: RAM:76DD^j
		INC	$7556
		dldi	off_7, $896F
		LDA	#2
		JSR	$180F
		dldi	off_16, $7B5A
		JSR	sub_78AE
		ldi	I_LOC_X, $10
		ldi	I_LOC_Y, $1E
		ldi	I_LOC_Z, $00
		ldi	$6312, $01

loc_772C:				; CODE XREF: RAM:77C9vj
		DEC	$32
		DEC	byte_F
		DEC	$1937
		dldi	off_16, $7B9C
		JSR	sub_78B8

loc_773E:				; CODE XREF: RAM:7753vj
		dldi	off_1977, $774B
		JMP	$1806
; ---------------------------------------------------------------------------

loc_774B:
		LDA	$31
		CMP	#'1'
		BEQ	loc_775B
		CMP	#'2'
		BNE	loc_773E
		JSR	sub_78BD
		JMP	loc_7809
; ---------------------------------------------------------------------------

loc_775B:				; CODE XREF: RAM:774F^j
		JSR	sub_7872
		LDA	$66
		CMP	#$C
		BCS	loc_7767
		JMP	loc_77E5
; ---------------------------------------------------------------------------

loc_7767:				; CODE XREF: RAM:7762^j
		dldi	off_16, $7CB6
		JSR	sub_78AE

loc_7772:				; CODE XREF: RAM:loc_77B3vj
		LDA	$64
		ASL	A
		ASL	A
		ASL	A
		TAY
		LDX	#0

loc_777A:				; CODE XREF: RAM:7784vj
		LDA	$7910,Y
		STA	$7928,X
		INX
		INY
		CPX	#8
		BNE	loc_777A
		dldi	off_16, $7AD4
		JSR	sub_78B8

loc_7791:				; CODE XREF: RAM:77CFvj	RAM:77D3vj
		dldi	off_1977, loc_779E
		JMP	$1806
; ---------------------------------------------------------------------------

loc_779E:
		LDA	$31
		JSR	j_UPPER
		CMP	#'F'
		BNE	loc_77B1
		INC	$64
		LDA	$64
		CMP	#4
		BCC	loc_77B3
		LDA	#0

loc_77B1:				; CODE XREF: RAM:77A5^j	RAM:77C0vj
		STA	$64

loc_77B3:				; CODE XREF: RAM:77AD^j	RAM:77BCvj
		JMP	loc_7772
; ---------------------------------------------------------------------------
		CMP	#'B'
		BNE	loc_77C2
		DEC	$64
		BPL	loc_77B3
		LDA	#3
		BNE	loc_77B1

loc_77C2:				; CODE XREF: RAM:77B8^j
		CMP	#$1B
		BNE	loc_77CC
		JSR	sub_78BD
		JMP	loc_772C
; ---------------------------------------------------------------------------

loc_77CC:				; CODE XREF: RAM:77C4^j
		SEC
		SBC	#$31 ; '1'
		BCS	loc_7791
		CMP	#4
		BCS	loc_7791
		STA	$63
		LDA	$64
		ASL	A
		ASL	A
		CLC
		ADC	$63
		TAY
		LDA	$7904,Y
		JSR	$188A

loc_77E5:				; CODE XREF: RAM:7764^j
		JSR	sub_78BD
		LDA	$6369
		CMP	#$40 ; '@'
		BCC	loc_77F1
		LDA	#$40 ; '@'

loc_77F1:				; CODE XREF: RAM:77ED^j
		CLC
		ADC	#$A
		STA	byte_78EC
		ldxy	$78C5
		JSR	j_sub_4B4D
		dldi	off_16, $7D07
		JSR	sub_78AE

loc_7809:				; CODE XREF: RAM:7758^j
		ldxy	$7508
		SEC
		LDA	#$13
		JSR	j_SETBIT
		ldxy	byte_78EF
		JSR	j_sub_4B4D
		dldi	off_16, $7D6A
		JSR	sub_78AE
		dldi	off_16, $7E12
		JSR	sub_78AE
		dldi	off_16, $7DE5
		JSR	sub_78AE

loc_783B:				; CODE XREF: RAM:loc_7683^j
					; RAM:loc_76D3^j
		LDA	#$FF
		STA	$AC00
		JMP	$180C

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7843:				; CODE XREF: RAM:76DA^p
		ldi	$65, $3F

loc_7847:				; CODE XREF: sub_7843+2Bvj
		LDA	$65
		STA	$4B
		JSR	j_LOADINV
		BEQ	loc_786C
		LDY	#0
		LDA	(off_41),Y
		CMP	#$87
		BNE	loc_786C
		JSR	$1896
		LDY	#0
		LDA	($43),Y
		CMP	#2
		BNE	loc_786C
		INY
		LDA	($43),Y
		CMP	#7
		BNE	loc_786C
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_786C:				; CODE XREF: sub_7843+B^j sub_7843+13^j	...
		DEC	$65
		BPL	loc_7847
		SEC
		RTS
; End of function sub_7843


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7872:				; CODE XREF: RAM:loc_775B^p
		ldi	$65, $3F
		ldi	$66, $00

loc_787A:				; CODE XREF: sub_7872+39vj
		LDA	$65
		STA	$4B
		JSR	j_LOADINV
		BEQ	loc_78A9
		LDY	#0
		LDA	(off_41),Y
		CMP	#$81
		BNE	loc_78A9
		LDX	$66
		LDA	$65
		STA	$7904,X
		TXA
		ASL	A
		TAX
		LDA	off_41
		CLC
		ADC	#6
		BCC	loc_789E
		INC	off_41+1

loc_789E:				; CODE XREF: sub_7872+28^j
		STA	$7910,X
		INX
		LDA	$42
		STA	$7910,X
		INC	$66

loc_78A9:				; CODE XREF: sub_7872+F^j sub_7872+17^j
		DEC	$65
		BPL	loc_787A
		RTS
; End of function sub_7872


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_78AE:				; CODE XREF: RAM:76AB^p	RAM:loc_76EC^p ...
		LDX	$62
		JSR	j_sub_3C5C
		LDA	#$14
		JMP	j_sub_2BFC
; End of function sub_78AE


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_78B8:				; CODE XREF: RAM:76B6^p	RAM:773B^p ...
		LDX	$62
		JMP	j_sub_3C5C
; End of function sub_78B8


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_78BD:				; CODE XREF: RAM:7755^p	RAM:77C6^p ...
		INC	$32
		INC	byte_F
		INC	$1937
		RTS
; End of function sub_78BD

; ---------------------------------------------------------------------------
		.BYTE $81 ; 
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
aTemporalFugue:	.BYTE "Temporal Fugue",0
		.BYTE $88 ; 
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $F0 ; ð
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE  $A
byte_78EC:	.BYTE $A		; DATA XREF: RAM:77F4^w
		.BYTE	4
		.BYTE $FF

byte_78EF:
		.BYTE $87 ; 
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $12
aStaffPiece:	.BYTE "Staff Piece",0
		.BYTE	0
		.BYTE	2
		.BYTE	6
		.BYTE	"The alien captors",$0D,$0D
		.BYTE	$A5,"do not take your intrusi"
		.BYTE	$A8,$FF
		MOVEXY	9,1
		.BYTE	"This is an empty cell."
		MOVEXY	16,3
		MenuItem "0","Leave"
		.BYTE	$FF

		MOVEXY	1,0
		.BYTE	"Hail, Friend. I am Ozob, Acrinimiril's"
		MOVEXY	0,2
		.BYTE "former Apprentice. I was imprisoned here"
		MOVEXY	0,4
		.BYTE "by my Master's killers. Unlock my chains"
		MOVEXY	0,6
		.BYTE	$A5,"and I shall greatly reward thee.",$0D,$FF

		MOVEXY	0,0
		.BYTE	$A5,"There is a prisoner chained here.",$0D
		.BYTE	$A5,"What do you do?",$0D
		MOVEXY	4,3
		MenuItem "1","Unlock his chains with a key"
		.BYTE $A6, $E,	5
		MenuItem "0","Leave"
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
		.BYTE $B3
		.WORD $6321
		.BYTE $19
aHastThou:	.BYTE ", hast thou"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aReturnedToResc:.BYTE "returned to rescue me?"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	3
		.BYTE $A5
aNoneOfYourKeys:.BYTE "None of your keys fit the lock."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	3
		.BYTE $A5
aYouHaveNoKeys_:.BYTE "You have no keys."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aWhichSpellWoul:.BYTE "Which spell would you like to replace?"
		.BYTE $D
		.BYTE $D
		MenuItem "1",""
		.BYTE $B4
		.WORD $7928
		.BYTE $20
		.BYTE $D
		MenuItem "2",""
		.BYTE $B4
		.WORD $792A
		.BYTE $20
		.BYTE $D
		MenuItem "3",""
		.BYTE $B4
		.WORD $792C
		.BYTE $20
		.BYTE $D
		MenuItem "4",""
		.BYTE $B4
		.WORD $792E
		.BYTE $20
		.BYTE $D
		.BYTE $D
aItem:		.BYTE "Item #, "
aF:		BLINK 'F'
aOrward:	.BYTE "orward, "
aB:		BLINK "B"
aAckOr:		.BYTE "ack, or "
aStop:		BLINK "STOP"
aToExit:	.BYTE " to exit"
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aTheSilverKeyUn:.BYTE "The Silver Key unlocks Ozob's chains!"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aManyThanks:	.BYTE $22,"Many thanks, "
		.BYTE $B3
		.WORD $6321
		.BYTE $17
		.BYTE "!",$22
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aToSpeedTheeOnT:.BYTE "To speed thee on thy way, I offer"
		.BYTE $D
		.BYTE $A5
aTheFugueSpell_:.BYTE "the Fugue Spell.  Cast this spell on thy"
		.BYTE $D
		.BYTE $A5
aEnemyAndTimeSh:.BYTE "enemy and time shall quicken for you"
		.BYTE $D
		.BYTE $A5
aAllowingYouToS:.BYTE "allowing you to strike lightning fast"
		.BYTE $D
		.BYTE $A5
aBlowsInQuickSu:.BYTE "blows in quick succession and get"
		.BYTE $D
		.BYTE $A5
aDroppedItemsDu:.BYTE "dropped items during combat."
		.BYTE $D
		.BYTE $A6,  5,	6
		MenuItem "1","Learn the spell from Ozob"
		.BYTE $A6,  5,	7
		MenuItem "2","Refuse the Spell"
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aToLearnTheFugu:.BYTE "To learn the Fugue Spell, thou must"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aForgetOneThatT:.BYTE "forget one that thou already knowest."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aThouNowKnowest:.BYTE "Thou now knowest the Fugue Spell"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aUseItWiselyFor:.BYTE "Use it wisely, for as its power is"
		.BYTE $D
		.BYTE $A5
aGreatSoIsItsCo:.BYTE "great so is its cost."
		.BYTE $D
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
aYouAreTeleport:.BYTE "You are teleported to Ozob's secret lair"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThyRewardIsThe:.BYTE "Thy reward is the top of my Master's"
		.BYTE $D
		.BYTE $A5
aStaffMayItHelp:.BYTE "staff; may it help you on your quest."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	3
		.BYTE $A5
aOzobSaysFarewe:.BYTE "Ozob says ",$22,"Farewell",$22," and teleports you."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aIShallHelpYouO:.BYTE "I shall help you on your quest by"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTeleportingYou:.BYTE "teleporting you to the puzzle of the"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThreeDoors_Som:.BYTE "three doors.  Some say that these doors"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aLeadToMyMaster:.BYTE "lead to my Master's resting place."
		.BYTE $D
		.BYTE $FF
byte_7EAF:	.BYTE $70		; DATA XREF: RAM:7EDFvo
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42 ; B
		.BYTE	0
		.BYTE	4
		.BYTE $80 ; 
		.BYTE	2
		.BYTE $80 ; 
		.BYTE	2
		.BYTE $80 ; 
		.BYTE	2
		.BYTE $80 ; 
		.BYTE	2
		.BYTE $80 ; 
		.BYTE	6
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $F0 ; ð
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
		.WORD byte_7EAF
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
		LDY	#$90 ; ''
		STA	WSYNC
		STA	$D000
		STX	$D001
		STY	$D002
		STA	WSYNC
		LDA	#$B0 ; '°'
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
		STY	COLPF2
		LDX	#$23 ; '#'
		LDY	$BBDC,X

loc_7F45:				; CODE XREF: RAM:7F6Avj
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
		BPL	loc_7F45
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

loc_7F87:				; CODE XREF: RAM:760A^j
		LDA	#$7F ; ''
		STA	$253
		LDA	#$AF ; '¯'
		STA	$254
		LDA	#$7E ; '~'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_7F9A:				; CODE XREF: RAM:7FA8vj
		LDY	#$C

loc_7F9C:				; CODE XREF: RAM:7FA3vj
		STA	$BB4C,X
		DEX
		BMI	loc_7FAA
		DEY
		BNE	loc_7F9C
		CLC
		ADC	#4
		BNE	loc_7F9A

loc_7FAA:				; CODE XREF: RAM:7FA0^j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_80A2
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; '»'
		STA	$A
		JSR	loc_80A2
		LDA	#0
		STA	loc_7FD0+1
		LDA	#$BD ; '½'
		STA	loc_7FD0+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; ''

loc_7FD0:				; CODE XREF: RAM:7FD4vj	RAM:7FDAvj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_7FD0
		INC	loc_7FD0+2
		DEY
		BNE	loc_7FD0
		LDX	#7

loc_7FDE:				; CODE XREF: RAM:7FE2vj
		STA	$D000,X
		DEX
		BPL	loc_7FDE
		LDA	#3
		TAX

loc_7FE7:				; CODE XREF: RAM:7FEBvj
		STA	$D008,X
		DEX
		BPL	loc_7FE7
		ldi	SIZEM, $FF
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_8015:				; CODE XREF: RAM:803Bvj
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_801D:				; CODE XREF: RAM:8028vj
		LSR	4
		BCC	loc_8027
		LDA	(9),Y
		ORA	#$80 ; ''
		STA	(9),Y

loc_8027:				; CODE XREF: RAM:801F^j
		DEY
		BPL	loc_801D
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_8035
		INC	$A

loc_8035:				; CODE XREF: RAM:8031^j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_8015
		LDA	#$2D ; '-'
		STA	off_7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; '½'
		STA	$F1

loc_804D:				; CODE XREF: RAM:805Evj
		CLC
		LDA	$F0,X
		ADC	#$80 ; ''
		STA	$F2,X
		LDA	$F1,X
		ADC	#0
		STA	$F3,X
		INX
		INX
		CPX	#8
		BCC	loc_804D

loc_8060:				; CODE XREF: RAM:807Dvj
		LDX	#0

loc_8062:				; CODE XREF: RAM:807Bvj
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_8068:				; CODE XREF: RAM:806Dvj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_8068
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_807F
		CPX	#$A
		BCC	loc_8062
		BCS	loc_8060

loc_807F:				; CODE XREF: RAM:8077^j
		LDX	#3
		LDA	$BC5F

loc_8084:				; CODE XREF: RAM:8088vj
		STA	COLPM0,X
		DEX
		BPL	loc_8084
		dldi	off_24A, $7EE1
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_80A2:				; CODE XREF: RAM:7FB2^p	RAM:7FBD^p ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_80AC
		INC	8

loc_80AC:				; CODE XREF: RAM:80A8^j
		CMP	#$1B
		BEQ	loc_80BB
		STA	(9),Y
		INC	9
		BNE	loc_80B8
		INC	$A

loc_80B8:				; CODE XREF: RAM:80B4^j
		JMP	loc_80A2
; ---------------------------------------------------------------------------

loc_80BB:				; CODE XREF: RAM:80AE^j
		LDA	(7),Y
		INC	7
		BNE	loc_80C3
		INC	8

loc_80C3:				; CODE XREF: RAM:80BF^j
		CMP	#$FF
		BNE	loc_80C8
		RTS
; ---------------------------------------------------------------------------

loc_80C8:				; CODE XREF: RAM:80C5^j
		STA	byte_8102
		ADC	9
		STA	loc_80DB+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_80E0
		LDA	byte_8102

loc_80DB:				; DATA XREF: RAM:80CD^w
		SBC	#$FF
		STA	byte_8102

loc_80E0:				; CODE XREF: RAM:80D6^j
		LDA	(7),Y
		INC	7
		BNE	loc_80E8
		INC	8

loc_80E8:				; CODE XREF: RAM:80E4^j
		LDY	byte_8102

loc_80EB:				; CODE XREF: RAM:80EEvj
		STA	(9),Y
		DEY
		BPL	loc_80EB
		INC	byte_8102
		LDA	byte_8102
		CLC
		ADC	9
		STA	9
		BCC	loc_80FF
		INC	$A

loc_80FF:				; CODE XREF: RAM:80FB^j
		JMP	loc_80A2
; ---------------------------------------------------------------------------
byte_8102:	.BYTE 0			; DATA XREF: RAM:loc_80C8^w RAM:80D8^r ...
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $52 ; R
		.BYTE $52 ; R
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $82 ; 
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE	2
		.BYTE	2
		.BYTE $82 ; 
		.BYTE $A8 ; ¨
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $82 ; 
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $82 ; 
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	6
		.BYTE $16
		.BYTE $1A
		.BYTE $18
		.BYTE $1B
		.BYTE	3
		.BYTE $1A
		.BYTE $90 ; 
		.BYTE $94 ; 
		.BYTE $A4 ; ¤
		.BYTE $24 ; $
		.BYTE $1B
		.BYTE	3
		.BYTE $A4 ; ¤
		.BYTE	4
		.BYTE $14
		.BYTE $1B
		.BYTE	5
		.BYTE $18
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE	8
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $80 ; 
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	1
		.BYTE $25 ; %
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $28 ; (
		.BYTE $80 ; 
		.BYTE $85 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $53 ; S
		.BYTE $28 ; (
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $31 ; 1
		.BYTE $33 ; 3
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE  $A
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $6A ; j
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $29 ; )
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $A8 ; ¨
		.BYTE $A9 ; ©
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $4C ; L
		.BYTE $CC ; Ì
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $C5 ; Å
		.BYTE  $A
		.BYTE	2
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $68 ; h
		.BYTE $50 ; P
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $F3 ; ó
		.BYTE $F0 ; ð
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FD ; ý
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE  $A
		.BYTE $4A ; J
		.BYTE $42 ; B
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE  $A
		.BYTE $82 ; 
		.BYTE $82 ; 
		.BYTE	2
		.BYTE $82 ; 
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $AA ; ª
		.BYTE $80 ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $82 ; 
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	2
		.BYTE  $A
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $28 ; (
		.BYTE	8
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $41 ; A
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $1A
		.BYTE	0
		.BYTE $11
		.BYTE	4
		.BYTE $11
		.BYTE	4
		.BYTE $1B
		.BYTE	2
		.BYTE $A4 ; ¤
		.BYTE	0
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $1B
		.BYTE	2
		.BYTE $18
		.BYTE	0
		.BYTE $10
		.BYTE $44 ; D
		.BYTE $10
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $80 ; 
		.BYTE $22 ; "
		.BYTE $A8 ; ¨
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $25 ; %
		.BYTE $85 ; 
		.BYTE $85 ; 
		.BYTE	5
		.BYTE $A5 ; ¥
		.BYTE $A5 ; ¥
		.BYTE $53 ; S
		.BYTE $1B
		.BYTE	5
		.BYTE $33 ; 3
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $33 ; 3
		.BYTE $FF
		.BYTE $15
		.BYTE $1B
		.BYTE	5
		.BYTE $31 ; 1
		.BYTE $FD ; ý
		.BYTE $68 ; h
		.BYTE $40 ; @
		.BYTE $68 ; h
		.BYTE $68 ; h
		.BYTE $60 ; `
		.BYTE $42 ; B
		.BYTE $4A ; J
		.BYTE $4A ; J
		.BYTE	9
		.BYTE	1
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $29 ; )
		.BYTE $81 ; 
		.BYTE $81 ; 
		.BYTE $A9 ; ©
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	5
		.BYTE $4C ; L
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $CC ; Ì
		.BYTE $FF
		.BYTE $C5 ; Å
		.BYTE $1B
		.BYTE	5
		.BYTE $CC ; Ì
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $5A ; Z
		.BYTE $50 ; P
		.BYTE $52 ; R
		.BYTE $1B
		.BYTE	2
		.BYTE $5A ; Z
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $CF ; Ï
		.BYTE $F3 ; ó
		.BYTE $3C ; <
		.BYTE $15
		.BYTE $1B
		.BYTE	3
		.BYTE $C7 ; Ç
		.BYTE $C5 ; Å
		.BYTE $FD ; ý
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $57 ; W
		.BYTE	0
		.BYTE $C1 ; Á
		.BYTE $1B
		.BYTE	5
		.BYTE $F1 ; ñ
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $57 ; W
		.BYTE	3
		.BYTE $1B
		.BYTE	4
		.BYTE $CF ; Ï
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE $CF ; Ï
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE  $F
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE	5
		.BYTE $F5 ; õ
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	2
		.BYTE	2
		.BYTE $82 ; 
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE	0
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE $82 ; 
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	3
		.BYTE $A0 ;  
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $51 ; Q
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $11
		.BYTE	5
		.BYTE $1B
		.BYTE	6
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $20
		.BYTE $82 ; 
		.BYTE $A2 ; ¢
		.BYTE $88 ; 
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $25 ; %
		.BYTE	5
		.BYTE	5
		.BYTE $25 ; %
		.BYTE $A5 ; ¥
		.BYTE $1B
		.BYTE	6
		.BYTE $33 ; 3
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $33 ; 3
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $F1 ; ñ
		.BYTE $31 ; 1
		.BYTE $1B
		.BYTE	2
		.BYTE $F1 ; ñ
		.BYTE $FF
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE $68 ; h
		.BYTE $62 ; b
		.BYTE $42 ; B
		.BYTE $62 ; b
		.BYTE $68 ; h
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE	9
		.BYTE $A1 ; ¡
		.BYTE $A1 ; ¡
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE	1
		.BYTE $1B
		.BYTE	6
		.BYTE $4C ; L
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $CC ; Ì
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $CC ; Ì
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $58 ; X
		.BYTE $50 ; P
		.BYTE $58 ; X
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $50 ; P
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $52 ; R
		.BYTE $3D ; =
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $7E ; ~
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $A8 ; ¨
		.BYTE $59 ; Y
		.BYTE $58 ; X
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $99 ; 
		.BYTE $4A ; J
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $D9 ; Ù
		.BYTE $EA ; ê
		.BYTE $AB ; «
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $E0 ; à
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FC ; ü
		.BYTE  $D
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $EB ; ë
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $A8 ; ¨
		.BYTE $59 ; Y
		.BYTE $59 ; Y
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $65 ; e
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $4F ; O
		.BYTE $43 ; C
		.BYTE $50 ; P
		.BYTE $D0 ; Ð
		.BYTE $1B
		.BYTE	2
		.BYTE $F4 ; ô
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AF ; ¯
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
		.BYTE $C1 ; Á
		.BYTE $C1 ; Á
		.BYTE	1
		.BYTE $DF ; ß
		.BYTE $13
		.BYTE $10
		.BYTE $50 ; P
		.BYTE $74 ; t
		.BYTE $7D ; }
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $CF ; Ï
		.BYTE $CC ; Ì
		.BYTE $C1 ; Á
		.BYTE $C5 ; Å
		.BYTE $C5 ; Å
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	5
		.BYTE $F3 ; ó
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	2
		.BYTE $42 ; B
		.BYTE $1B
		.BYTE	4
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $82 ; 
		.BYTE $82 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE	0
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE	0
		.BYTE	0
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	2
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE  $A
		.BYTE	2
		.BYTE $80 ; 
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE	0
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $51 ; Q
		.BYTE $45 ; E
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $15
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE $7C ; |
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE $80 ; 
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $28 ; (
		.BYTE	8
		.BYTE $20
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE $A5 ; ¥
		.BYTE $85 ; 
		.BYTE $25 ; %
		.BYTE $1B
		.BYTE	2
		.BYTE $A5 ; ¥
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $31 ; 1
		.BYTE	0
		.BYTE $68 ; h
		.BYTE $60 ; `
		.BYTE $62 ; b
		.BYTE $42 ; B
		.BYTE $68 ; h
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE	0
		.BYTE $A1 ; ¡
		.BYTE $A1 ; ¡
		.BYTE $81 ; 
		.BYTE $81 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $29 ; )
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $4C ; L
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $CC ; Ì
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $CC ; Ì
		.BYTE	0
		.BYTE $5A ; Z
		.BYTE $52 ; R
		.BYTE $50 ; P
		.BYTE $58 ; X
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $58 ; X
		.BYTE	0
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	3
		.BYTE $F1 ; ñ
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $57 ; W
		.BYTE	0
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	3
		.BYTE $3D ; =
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $42 ; B
		.BYTE $1B
		.BYTE	3
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ¨
		.BYTE $88 ; 
		.BYTE $80 ; 
		.BYTE	0
		.BYTE	5
		.BYTE	7
		.BYTE	7
		.BYTE $17
		.BYTE $1B
		.BYTE	2
		.BYTE $1F
		.BYTE $5F ; _
		.BYTE $CF ; Ï
		.BYTE $C7 ; Ç
		.BYTE $1B
		.BYTE	3
		.BYTE $C5 ; Å
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $7C ; |
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1F
		.BYTE $1F
		.BYTE $15
		.BYTE $15
		.BYTE	0
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $CF ; Ï
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE $D5 ; Õ
		.BYTE	0
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	3
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE	3
		.BYTE $FF
		.BYTE	2
		.BYTE  $A
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE	2
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE  $A
		.BYTE  $A
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $51 ; Q
		.BYTE $45 ; E
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $17
		.BYTE $17
		.BYTE $1F
		.BYTE $1F
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE $2B ; +
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE $24 ; $
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $F9 ; ù
		.BYTE $E5 ; å
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $F0 ; ð
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $12
		.BYTE $4A ; J
		.BYTE $20
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $88 ; 
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $F3 ; ó
		.BYTE $F1 ; ñ
		.BYTE $F1 ; ñ
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $4A ; J
		.BYTE $1B
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $42 ; B
		.BYTE $40 ; @
		.BYTE $42 ; B
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	6
		.BYTE $5F ; _
		.BYTE $5C ; \
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $CC ; Ì
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $5C ; \
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $5C ; \
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE	1
		.BYTE $FF
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE	2
		.BYTE $F5 ; õ
		.BYTE $F0 ; ð
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $D5 ; Õ
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $D5 ; Õ
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	4
		.BYTE $4A ; J
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $53 ; S
		.BYTE $4F ; O
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE $29 ; )
		.BYTE $FF
		.BYTE $CF ; Ï
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $DF ; ß
		.BYTE $DF ; ß
		.BYTE $F7 ; ÷
		.BYTE $77 ; w
		.BYTE $7F ; 
		.BYTE $F0 ; ð
		.BYTE $DF ; ß
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE  $C
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	9
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $F9 ; ù
		.BYTE $E5 ; å
		.BYTE $A5 ; ¥
		.BYTE	5
		.BYTE	1
		.BYTE $AA ; ª
		.BYTE $95 ; 
		.BYTE	5
		.BYTE $51 ; Q
		.BYTE $54 ; T
		.BYTE $52 ; R
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $AA ; ª
		.BYTE $52 ; R
		.BYTE $4A ; J
		.BYTE $28 ; (
		.BYTE $82 ; 
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $11
		.BYTE $1F
		.BYTE $F5 ; õ
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $2F ; /
		.BYTE $FA ; ú
		.BYTE $AF ; ¯
		.BYTE $FF
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $BF ; ¿
		.BYTE $FB ; û
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $AA ; ª
		.BYTE $FA ; ú
		.BYTE $AE ; ®
		.BYTE $AA ; ª
		.BYTE $5A ; Z
		.BYTE $F5 ; õ
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1A
		.BYTE $F6 ; ö
		.BYTE $AA ; ª
		.BYTE $B9 ; ¹
		.BYTE $55 ; U
		.BYTE $4D ; M
		.BYTE $11
		.BYTE $17
		.BYTE $FC ; ü
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $6F ; o
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; «
		.BYTE $FF
		.BYTE $FB ; û
		.BYTE $1B
		.BYTE  $C
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $3F ; ?
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $CF ; Ï
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $58 ; X
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	2
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE	1
		.BYTE	9
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	3
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE  $D
		.BYTE $FF
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	5
		.BYTE $F1 ; ñ
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $1F
		.BYTE $17
		.BYTE $15
		.BYTE $15
		.BYTE $1B
		.BYTE	4
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $F1 ; ñ
		.BYTE $1B
		.BYTE	3
		.BYTE $F3 ; ó
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE	3
		.BYTE $F5 ; õ
		.BYTE $1B
		.BYTE	6
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $51 ; Q
		.BYTE $45 ; E
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $51 ; Q
		.BYTE $45 ; E
		.BYTE $17
		.BYTE $5F ; _
		.BYTE $FF
		.BYTE $41 ; A
		.BYTE $45 ; E
		.BYTE $15
		.BYTE $57 ; W
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $36 ; 6
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE  $A
		.BYTE $C0 ; À
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
		.BYTE $F3 ; ó
		.BYTE	3
		.BYTE $CE ; Î
		.BYTE $A3 ; £
		.BYTE $AB ; «
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $CF ; Ï
		.BYTE $3A ; :
		.BYTE $EA ; ê
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE	3
		.BYTE	3
		.BYTE  $F
		.BYTE  $F
		.BYTE $CF ; Ï
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $C0 ; À
		.BYTE $E0 ; à
		.BYTE $1B
		.BYTE	5
		.BYTE $E8 ; è
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE  $F
		.BYTE $1B
		.BYTE	6
		.BYTE $8F ; 
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE	0
		.BYTE $F0 ; ð
		.BYTE $C0 ; À
		.BYTE $C0 ; À
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	6
		.BYTE	2
		.BYTE $1A
		.BYTE $6A ; j
		.BYTE $A8 ; ¨
		.BYTE $80 ; 
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A1 ; ¡
		.BYTE $85 ; 
		.BYTE $17
		.BYTE $5F ; _
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $15
		.BYTE $5C ; \
		.BYTE $F0 ; ð
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE	0
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $FF
		.BYTE $C3 ; Ã
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1F
		.BYTE $17
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1F
		.BYTE $1B
		.BYTE $32 ; 2
		.BYTE $FF
		.BYTE $C3 ; Ã
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE  $F
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	3
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $F3 ; ó
		.BYTE $F1 ; ñ
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $D4 ; Ô
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $D4 ; Ô
		.BYTE $F4 ; ô
		.BYTE	3
		.BYTE  $F
		.BYTE $1B
		.BYTE	5
		.BYTE $15
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE $4F ; O
		.BYTE $45 ; E
		.BYTE $45 ; E
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $C3 ; Ã
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $E8 ; è
		.BYTE $D4 ; Ô
		.BYTE $D4 ; Ô
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $F5 ; õ
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $85 ; 
		.BYTE $85 ; 
		.BYTE $1B
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $EB ; ë
		.BYTE $FA ; ú
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $A2 ; ¢
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $E9 ; é
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $A1 ; ¡
		.BYTE $85 ; 
		.BYTE $17
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $F0 ; ð
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	5
		.BYTE $11
		.BYTE $5C ; \
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE $FF
		.BYTE $1B
		.BYTE  $A
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; ó
		.BYTE $3C ; <
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE  $F
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $CF ; Ï
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE  $A
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $15
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE  $D
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE $C3 ; Ã
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $C3 ; Ã
		.BYTE  $F
		.BYTE $C3 ; Ã
		.BYTE $1B
		.BYTE $2C ; ,
		.BYTE $FF
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE	7
		.BYTE $1B
		.BYTE	4
		.BYTE $3E ; >
		.BYTE $1B
		.BYTE	3
		.BYTE $36 ; 6
		.BYTE $46 ; F
		.BYTE $47 ; G
		.BYTE $47 ; G
		.BYTE $1B
		.BYTE $17
		.BYTE $36 ; 6
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $B
		.BYTE $1B
		.BYTE  $B
		.BYTE $3B ; ;
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE $16
		.BYTE $9C ; 
		.BYTE $1B
		.BYTE $20
		.BYTE	0
		.BYTE	3
		.BYTE $1B
		.BYTE $19
		.BYTE	0
		.BYTE $76 ; v
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1C
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $18
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $18
		.BYTE $1B
		.BYTE  $E
		.BYTE	0
		.BYTE	7
		.BYTE  $E
		.BYTE  $B
		.BYTE $9C ; 
		.BYTE $3E ; >
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $52 ; R
		.BYTE $52 ; R
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $82 ; 
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE	2
		.BYTE	2
		.BYTE $82 ; 
		.BYTE $A8 ; ¨
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $82 ; 
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $82 ; 
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	6
		.BYTE $16
		.BYTE $1A
		.BYTE $18
		.BYTE $1B
		.BYTE	3
		.BYTE $1A
		.BYTE $90 ; 
		.BYTE $94 ; 
		.BYTE $A4 ; ¤
		.BYTE $24 ; $
		.BYTE $1B
		.BYTE	3
		.BYTE $A4 ; ¤
		.BYTE	4
		.BYTE $14
		.BYTE $1B
		.BYTE	5
		.BYTE $18
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE	8
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $80 ; 
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	1
		.BYTE $25 ; %
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $28 ; (
		.BYTE $80 ; 
		.BYTE $85 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $53 ; S
		.BYTE $28 ; (
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $31 ; 1
		.BYTE $33 ; 3
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE  $A
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $6A ; j
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $29 ; )
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $A8 ; ¨
		.BYTE $A9 ; ©
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $4C ; L
		.BYTE $CC ; Ì
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $C5 ; Å
		.BYTE  $A
		.BYTE	2
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $68 ; h
		.BYTE $50 ; P
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $F3 ; ó
		.BYTE $F0 ; ð
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FD ; ý
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE  $A
		.BYTE $4A ; J
		.BYTE $42 ; B
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE  $A
		.BYTE $82 ; 
		.BYTE $82 ; 
		.BYTE	2
		.BYTE $82 ; 
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $AA ; ª
		.BYTE $80 ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $82 ; 
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	2
		.BYTE  $A
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $28 ; (
		.BYTE	8
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $41 ; A
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $1A
		.BYTE	0
		.BYTE $11
		.BYTE	4
		.BYTE $11
		.BYTE	4
		.BYTE $1B
		.BYTE	2
		.BYTE $A4 ; ¤
		.BYTE	0
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $1B
		.BYTE	2
		.BYTE $18
		.BYTE	0
		.BYTE $10
		.BYTE $44 ; D
		.BYTE $10
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $80 ; 
		.BYTE $22 ; "
		.BYTE $A8 ; ¨
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $25 ; %
		.BYTE $85 ; 
		.BYTE $85 ; 
		.BYTE	5
		.BYTE $A5 ; ¥
		.BYTE $A5 ; ¥
		.BYTE $53 ; S
		.BYTE $1B
		.BYTE	5
		.BYTE $33 ; 3
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $33 ; 3
		.BYTE $FF
		.BYTE $15
		.BYTE $1B
		.BYTE	5
		.BYTE $31 ; 1
		.BYTE $FD ; ý
		.BYTE $68 ; h
		.BYTE $40 ; @
		.BYTE $68 ; h
		.BYTE $68 ; h
		.BYTE $60 ; `
		.BYTE $42 ; B
		.BYTE $4A ; J
		.BYTE $4A ; J
		.BYTE	9
		.BYTE	1
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $29 ; )
		.BYTE $81 ; 
		.BYTE $81 ; 
		.BYTE $A9 ; ©
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	5
		.BYTE $4C ; L
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $CC ; Ì
		.BYTE $FF
		.BYTE $C5 ; Å
		.BYTE $1B
		.BYTE	5
		.BYTE $CC ; Ì
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $5A ; Z
		.BYTE $50 ; P
		.BYTE $52 ; R
		.BYTE $1B
		.BYTE	2
		.BYTE $5A ; Z
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE  $F
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE $CC ; Ì
		.BYTE $15
		.BYTE $1B
		.BYTE	3
		.BYTE $C7 ; Ç
		.BYTE $C5 ; Å
		.BYTE $FD ; ý
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $57 ; W
		.BYTE	0
		.BYTE $C1 ; Á
		.BYTE $1B
		.BYTE	5
		.BYTE $F1 ; ñ
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $57 ; W
		.BYTE	1
		.BYTE $1B
		.BYTE	4
		.BYTE $CF ; Ï
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE  $F
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $F0 ; ð
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE	5
		.BYTE $F5 ; õ
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	2
		.BYTE	2
		.BYTE $82 ; 
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE	0
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE $82 ; 
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	3
		.BYTE $A0 ;  
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $51 ; Q
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $11
		.BYTE	5
		.BYTE $1B
		.BYTE	6
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $20
		.BYTE $82 ; 
		.BYTE $A2 ; ¢
		.BYTE $88 ; 
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $25 ; %
		.BYTE	5
		.BYTE	5
		.BYTE $25 ; %
		.BYTE $A5 ; ¥
		.BYTE $1B
		.BYTE	6
		.BYTE $33 ; 3
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $33 ; 3
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $F1 ; ñ
		.BYTE $31 ; 1
		.BYTE $1B
		.BYTE	2
		.BYTE $F1 ; ñ
		.BYTE $FF
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE $68 ; h
		.BYTE $62 ; b
		.BYTE $42 ; B
		.BYTE $62 ; b
		.BYTE $68 ; h
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE	9
		.BYTE $A1 ; ¡
		.BYTE $A1 ; ¡
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE	1
		.BYTE $1B
		.BYTE	6
		.BYTE $4C ; L
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $CC ; Ì
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $CC ; Ì
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $58 ; X
		.BYTE $50 ; P
		.BYTE $58 ; X
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $50 ; P
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $52 ; R
		.BYTE $3D ; =
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $7E ; ~
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $A8 ; ¨
		.BYTE $59 ; Y
		.BYTE $58 ; X
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $99 ; 
		.BYTE $4A ; J
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $D9 ; Ù
		.BYTE $EA ; ê
		.BYTE $AB ; «
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $E0 ; à
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FC ; ü
		.BYTE  $D
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $EB ; ë
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $A8 ; ¨
		.BYTE $59 ; Y
		.BYTE $59 ; Y
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $65 ; e
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $4C ; L
		.BYTE $41 ; A
		.BYTE $C5 ; Å
		.BYTE $C5 ; Å
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	5
		.BYTE $F3 ; ó
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	2
		.BYTE $42 ; B
		.BYTE $1B
		.BYTE	4
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $82 ; 
		.BYTE $82 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE	0
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE	0
		.BYTE	0
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	2
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE  $A
		.BYTE	2
		.BYTE $80 ; 
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE	0
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $51 ; Q
		.BYTE $45 ; E
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $15
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE $7C ; |
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE $80 ; 
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $28 ; (
		.BYTE	8
		.BYTE $20
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE $A5 ; ¥
		.BYTE $85 ; 
		.BYTE $25 ; %
		.BYTE $1B
		.BYTE	2
		.BYTE $A5 ; ¥
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $31 ; 1
		.BYTE	0
		.BYTE $68 ; h
		.BYTE $60 ; `
		.BYTE $62 ; b
		.BYTE $42 ; B
		.BYTE $68 ; h
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE	0
		.BYTE $A1 ; ¡
		.BYTE $A1 ; ¡
		.BYTE $81 ; 
		.BYTE $81 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $29 ; )
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $4C ; L
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $CC ; Ì
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $CC ; Ì
		.BYTE	0
		.BYTE $5A ; Z
		.BYTE $52 ; R
		.BYTE $50 ; P
		.BYTE $58 ; X
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $58 ; X
		.BYTE	0
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	3
		.BYTE $F1 ; ñ
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $57 ; W
		.BYTE	0
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1F
		.BYTE $17
		.BYTE $15
		.BYTE	3
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE	0
		.BYTE $FF
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	3
		.BYTE $F1 ; ñ
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE  $F
		.BYTE $FF
		.BYTE $CF ; Ï
		.BYTE $C7 ; Ç
		.BYTE $1B
		.BYTE	3
		.BYTE $C5 ; Å
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $7C ; |
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1F
		.BYTE $1F
		.BYTE $15
		.BYTE $15
		.BYTE	0
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $CF ; Ï
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE $D5 ; Õ
		.BYTE	0
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	3
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE	3
		.BYTE $FF
		.BYTE	2
		.BYTE  $A
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE	2
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE  $A
		.BYTE  $A
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $51 ; Q
		.BYTE $45 ; E
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $17
		.BYTE $17
		.BYTE $1F
		.BYTE $1F
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE $2B ; +
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE $24 ; $
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $F9 ; ù
		.BYTE $E5 ; å
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $F0 ; ð
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $12
		.BYTE $4A ; J
		.BYTE $20
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $88 ; 
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $F3 ; ó
		.BYTE $F1 ; ñ
		.BYTE $F1 ; ñ
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $CC ; Ì
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $5C ; \
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $5C ; \
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE	1
		.BYTE $FF
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE	2
		.BYTE $F5 ; õ
		.BYTE $F0 ; ð
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $D5 ; Õ
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $D5 ; Õ
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	4
		.BYTE $4A ; J
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $53 ; S
		.BYTE $4F ; O
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE $29 ; )
		.BYTE $FF
		.BYTE $CF ; Ï
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $DF ; ß
		.BYTE $DF ; ß
		.BYTE $F7 ; ÷
		.BYTE $77 ; w
		.BYTE $7F ; 
		.BYTE $F0 ; ð
		.BYTE $DF ; ß
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE  $C
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	9
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $F9 ; ù
		.BYTE $E5 ; å
		.BYTE $A5 ; ¥
		.BYTE	5
		.BYTE	1
		.BYTE $AA ; ª
		.BYTE $95 ; 
		.BYTE	5
		.BYTE $51 ; Q
		.BYTE $54 ; T
		.BYTE $52 ; R
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $AA ; ª
		.BYTE $52 ; R
		.BYTE $4A ; J
		.BYTE $28 ; (
		.BYTE $82 ; 
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $11
		.BYTE $1F
		.BYTE $F5 ; õ
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $2F ; /
		.BYTE $FA ; ú
		.BYTE $AF ; ¯
		.BYTE $FF
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $BF ; ¿
		.BYTE $FB ; û
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $AA ; ª
		.BYTE $FA ; ú
		.BYTE $AE ; ®
		.BYTE $AA ; ª
		.BYTE $5A ; Z
		.BYTE $F5 ; õ
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1A
		.BYTE $F6 ; ö
		.BYTE $AA ; ª
		.BYTE $B9 ; ¹
		.BYTE $55 ; U
		.BYTE $4D ; M
		.BYTE $11
		.BYTE $17
		.BYTE $FC ; ü
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $6F ; o
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; «
		.BYTE $FF
		.BYTE $FB ; û
		.BYTE $1B
		.BYTE  $C
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $3F ; ?
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $CF ; Ï
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	4
		.BYTE $F1 ; ñ
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	5
		.BYTE $F1 ; ñ
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $1F
		.BYTE $17
		.BYTE $15
		.BYTE $15
		.BYTE $1B
		.BYTE	4
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $F1 ; ñ
		.BYTE $1B
		.BYTE	3
		.BYTE $F3 ; ó
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE	3
		.BYTE $F5 ; õ
		.BYTE $1B
		.BYTE	6
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $51 ; Q
		.BYTE $45 ; E
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $51 ; Q
		.BYTE $45 ; E
		.BYTE $17
		.BYTE $5F ; _
		.BYTE $FF
		.BYTE $41 ; A
		.BYTE $45 ; E
		.BYTE $15
		.BYTE $57 ; W
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $36 ; 6
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE  $A
		.BYTE $C0 ; À
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
		.BYTE $F3 ; ó
		.BYTE	3
		.BYTE $CE ; Î
		.BYTE $A3 ; £
		.BYTE $AB ; «
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $CF ; Ï
		.BYTE $3A ; :
		.BYTE $EA ; ê
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE	3
		.BYTE	3
		.BYTE  $F
		.BYTE  $F
		.BYTE $CF ; Ï
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $C0 ; À
		.BYTE $E0 ; à
		.BYTE $1B
		.BYTE	5
		.BYTE $E8 ; è
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE  $F
		.BYTE $1B
		.BYTE	6
		.BYTE $8F ; 
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F1 ; ñ
		.BYTE	0
		.BYTE $F0 ; ð
		.BYTE $C0 ; À
		.BYTE $C0 ; À
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	7
		.BYTE	0
		.BYTE	7
		.BYTE	1
		.BYTE $1F
		.BYTE $7F ; 
		.BYTE $1F
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $C3 ; Ã
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1F
		.BYTE $17
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1F
		.BYTE $1B
		.BYTE $32 ; 2
		.BYTE $FF
		.BYTE $C3 ; Ã
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE  $F
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	3
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $F3 ; ó
		.BYTE $F1 ; ñ
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $D4 ; Ô
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $D4 ; Ô
		.BYTE $F4 ; ô
		.BYTE	3
		.BYTE  $F
		.BYTE $1B
		.BYTE	5
		.BYTE $15
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE $4F ; O
		.BYTE $45 ; E
		.BYTE $45 ; E
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $C3 ; Ã
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $E8 ; è
		.BYTE $D4 ; Ô
		.BYTE $D4 ; Ô
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $F5 ; õ
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $85 ; 
		.BYTE $85 ; 
		.BYTE $1B
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE $1E
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $F0 ; ð
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	5
		.BYTE $11
		.BYTE $5C ; \
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE $FF
		.BYTE $1B
		.BYTE  $A
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; ó
		.BYTE $3C ; <
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE  $F
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $CF ; Ï
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE  $A
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $15
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE  $D
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE $C3 ; Ã
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $C3 ; Ã
		.BYTE  $F
		.BYTE $C3 ; Ã
		.BYTE $1B
		.BYTE $2C ; ,
		.BYTE $FF
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE	7
		.BYTE $1B
		.BYTE	4
		.BYTE $3E ; >
		.BYTE $1B
		.BYTE	3
		.BYTE $36 ; 6
		.BYTE $46 ; F
		.BYTE $47 ; G
		.BYTE $47 ; G
		.BYTE $1B
		.BYTE $17
		.BYTE $36 ; 6
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $B
		.BYTE $1B
		.BYTE  $B
		.BYTE $3B ; ;
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE $16
		.BYTE $9C ; 
		.BYTE $1B
		.BYTE $20
		.BYTE	0
		.BYTE	3
		.BYTE $1B
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $10
		.BYTE $1B
		.BYTE  $E
		.BYTE	0
		.BYTE	7
		.BYTE  $E
		.BYTE  $B
		.BYTE $9C ; 
		.BYTE $3E ; >
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
; end of 'RAM'


		.END
