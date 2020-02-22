
		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;		.ORG	$0100
	.SEGMENT "SEG_16_KEY"

		.BYTE $54,$01,$00,$10,$A0,$5F,$D0,$54,$7B,$D9,$AE,$31,$B3,$86,$84,$9C
		.BYTE $1A,$15,$AB,$0A,$C3,$D5,$9B,$BD,$34,$A4,$63,$83,$AA,$52,$B6,$1A
		.BYTE $51,$FB,$2B,$1A,$54,$CD,$2C,$32,$2E,$39,$75,$02,$88,$33,$6C,$7B
		.BYTE $04,$79,$32,$70,$9B,$3C,$65,$AB,$1F,$BF,$B8,$EA,$85,$4E,$A4,$46
		.BYTE $D5,$10,$02,$56,$81,$9C,$00,$41,$A8,$A9,$C4,$D2,$A3,$07,$13,$5D
		.BYTE $7F,$96,$16,$30,$4D,$45,$EE,$CC,$45,$3C,$85,$06,$B3,$8F,$18,$DC
		.BYTE $12,$95,$E2,$AD,$6C,$BA,$81,$45,$82,$F0,$79,$71,$14,$C6,$01,$88
		.BYTE $44,$D8,$C3,$15,$4C,$F7,$82,$E3,$A1,$84,$C2,$7D,$70,$36,$3B,$D6

;		.ORG	$7600
	.SEGMENT "SEG_16"

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

loc_760D:				; CODE XREF: RAM:7604^j	RAM:7607^j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601^j
		LDA	#30
		STA	$66
		LDX	#2

loc_7616:				; CODE XREF: RAM:7620vj
		LDA	RANDOM
		AND	#7
		ADC	$66
		STA	$66
		DEX
		BPL	loc_7616
		INX
		STX	$6B
		DEC	$1937
		LDX	#4

loc_762A:				; CODE XREF: RAM:7631vj
		LDA	$6318,X
		STA	$750D,X
		DEX
		BPL	loc_762A
		JSR	j_sub_2E31
		LDA	$6309
		STA	$6E
		LDX	I_LOC_X
		CPX	#2
		BEQ	loc_7644
		LDX	#0

loc_7644:				; CODE XREF: RAM:7640^j
		LDA	off_79C3,X
		STA	off_78D2
		LDA	off_79C3+1,X
		STA	off_78D2+1
		dldi	off_1977, loc_76D5
		LDA	RANDOM
		AND	#$F
		STA	$6D
		LDA	$7583,X
		ORA	$7584,X
		BNE	loc_766D
		LDY	#7
		BNE	loc_7685

loc_766D:				; CODE XREF: RAM:7667^j
		LDA	$630F
		SEC
		SBC	$7583,X
		TAY
		LDA	$6310
		SBC	$7584,X
		BEQ	loc_767F
		LDY	#7

loc_767F:				; CODE XREF: RAM:767B^j
		CPY	#8
		BCC	loc_7685
		LDY	#7

loc_7685:				; CODE XREF: RAM:766B^j	RAM:7681^j
		LDA	unk_79F1,Y
		SBC	$6D
		BCS	loc_768E
		LDA	#0

loc_768E:				; CODE XREF: RAM:768A^j
		STA	$6D
		LDA	$630F
		STA	$7583,X
		LDA	$6310
		STA	$7584,X
		dldi	off_16, a_YouAreIn
		JSR	$184B
		LDA	$1933
		STA	$67
		dldi	off_7, byte_7C4D
		LDA	#2
		JSR	$180F
		RTS
; ---------------------------------------------------------------------------

loc_76BA:				; CODE XREF: RAM:77A1vj
		dldi	off_16, a_Searching
		LDX	$67
		JSR	j_sub_3C5C
		LDA	RANDOM
		AND	#3
		ADC	#2
		JSR	sub_77F9
		LDA	$68
		STA	$6B

loc_76D5:
		LDA	#0
		STA	$6C

loc_76D9:				; CODE XREF: RAM:76E4vj
		LDA	RANDOM
		CMP	$6C
		BCC	loc_76E2
		STA	$6C

loc_76E2:				; CODE XREF: RAM:76DE^j
		DEC	$6B
		BPL	loc_76D9
		dldi	off_62, byte_79B4
		LDY	#0
		LDA	$6C

loc_76F2:				; CODE XREF: RAM:76FBvj
		CMP	(off_62),Y
		BEQ	loc_76FD
		BCC	loc_76FD
		INY
		INY
		INY
		BNE	loc_76F2

loc_76FD:				; CODE XREF: RAM:76F4^j	RAM:76F6^j
		INY
		LDA	(off_62),Y
		STA	off_64
		INY
		LDA	(off_62),Y
		STA	off_64+1
		LDY	#0
		LDA	(off_64),Y
		STA	off_62
		INY
		LDA	(off_64),Y
		STA	off_62+1
		LDA	#2
		CLC
		ADC	off_64
		STA	off_78D0
		LDA	#0
		ADC	off_64+1
		STA	off_78D0+1
		dldi	off_16, a_YouAreIn
		LDX	$67
		JSR	j_sub_3C5C

loc_772E:				; CODE XREF: RAM:77ACvj
		LDX	$67
		STX	$1933
		JSR	j_sub_3C2D

loc_7736:				; CODE XREF: RAM:779Bvj
		dldi	off_1977, loc_7776
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7743:				; CODE XREF: RAM:7782vj
		LDA	I_ALIGN
		CMP	#$70
		BCC	loc_775C
		LDA	$6387
		CMP	#$10
		BCS	loc_775C
		dldi	off_16, a_AGuardEscortsYou
		JMP	loc_7764
; ---------------------------------------------------------------------------

loc_775C:				; CODE XREF: RAM:7748^j	RAM:774F^j
		dldi	off_16, a_AGuardDragsYou

loc_7764:				; CODE XREF: RAM:7759^j
		LDX	$67
		JSR	j_sub_3C5C
		LDA	#4
		JSR	j_sub_2BFC
		LDA	#$A
		STA	$6320
		JMP	loc_77E8
; ---------------------------------------------------------------------------

loc_7776:				; CODE XREF: RAM:778Fvj
		JSR	j_sub_2E31
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

loc_778D:				; CODE XREF: RAM:7789^j
		STA	$6E
		JMP	loc_7776
; ---------------------------------------------------------------------------

loc_7792:				; CODE XREF: RAM:777E^j
		JSR	j_sub_262F
		AND	#2
		BNE	loc_77E8
		LDA	$31
		BMI	loc_7736
		CMP	#$32 ; '2'
		BNE	loc_77A4
		JMP	loc_76BA
; ---------------------------------------------------------------------------

loc_77A4:				; CODE XREF: RAM:779F^j
		CMP	#$30 ; '0'
		BEQ	loc_77E8
		CMP	#$31 ; '1'
		BEQ	loc_77AF
		JMP	loc_772E
; ---------------------------------------------------------------------------

loc_77AF:				; CODE XREF: RAM:77AA^j
		LDY	#1
		LDA	(off_62),Y
		CLC
		ADC	$66
		STA	(off_62),Y
		LDA	#0
		DEY
		ADC	($62),Y
		STA	($62),Y
		BCC	loc_77C8
		LDA	#$FF
		STA	(off_62),Y
		INY
		STA	(off_62),Y

loc_77C8:				; CODE XREF: RAM:77BF^j
		dldi	off_16, $793A
		LDX	$67
		JSR	j_sub_3C5C
		LDA	#4
		JSR	j_sub_2BFC
		LDX	#$87
		LDA	#$10
		JSR	j_ADDSTAT1
		LDX	#$85
		LDA	#2
		JSR	$186F

loc_77E8:				; CODE XREF: RAM:7773^j	RAM:7797^j ...
		LDX	#4

loc_77EA:				; CODE XREF: RAM:77F1vj
		LDA	$750D,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_77EA
		STX	$AC00
		JMP	$180C

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_77F9:				; CODE XREF: RAM:76CE^p
		STA	$69
		LDA	#0
		STA	$68
		DEC	$1937
		JSR	$181E

loc_7805:				; CODE XREF: RAM:7834vj
		LDA	#6
		STA	$6A

loc_7809:				; CODE XREF: RAM:782Evj
		LDX	#$A

loc_780B:				; CODE XREF: sub_77F9+1Bvj
		LDA	$252

loc_780E:				; CODE XREF: sub_77F9+18vj
		CMP	$252
		BEQ	loc_780E
		DEX
		BNE	loc_780B
		dldi	off_1977, $7823
		JMP	$1806
; End of function sub_77F9

; ---------------------------------------------------------------------------
		LDA	$31
		BPL	loc_7836
		JSR	j_sub_262F
		BMI	loc_7836
		DEC	$6A
		BNE	loc_7809
		INC	$68
		DEC	$69
		BNE	loc_7805

loc_7836:				; CODE XREF: RAM:7825^j	RAM:782A^j
		INC	$1937
		RTS
; ---------------------------------------------------------------------------
		.BYTE $A8,$FF

a_YouAreIn:
		MOVEXY	0,0
		.BYTE	$A5,"You are in"
		.BYTE	$B4
		.WORD	$78D2
		.BYTE	$28
aVault_:	.BYTE	" vault.",$0D,$0D
aYouSeeABagOf:	.BYTE	$A5,"You see a bag of "
		.BYTE	$B4
		.WORD	off_78D0
		.BYTE	$D
		.BYTE $D
		.BYTE $D
aDoYou:		.BYTE "Do you "
		MenuItem "1","Grab the bag and run,"
		.BYTE $D
		.BYTE "       "
		MenuItem "2","Search for something else or"
		.BYTE $D
		.BYTE "       "
		MenuItem "0","Leave?"
		.BYTE $FF
off_78D0:	.WORD byte_78E2		; DATA XREF: RAM:7717^w	RAM:786A^o ...
off_78D2:	.WORD aSideTheFirstCi	; DATA XREF: RAM:7647^w	RAM:764D^w
					; "side	the First City"
		.WORD $63B5
aCopperCoins:	.BYTE "copper coins"
byte_78E2:	.BYTE 0			; DATA XREF: RAM:off_78D0^o
		.WORD $63B3
aSilverCoins:	.BYTE "silver coins",0
		.WORD $63B1
aGoldCoins:	.BYTE "gold coins",0
		.WORD $63B7
aGems:		.BYTE "gems",0
		.WORD $63B9
aJewels:	.BYTE "jewels",0
a_Searching:
		MOVEXY	14,3
		.BYTE $A1
aSearching___:	.BYTE "Searching..."
		MOVEXY	9,7
		.BYTE $A0
aHitAnyKeyToSto:.BYTE "(Hit any key to stop.)"
		.BYTE $FF
		MOVEXY	0,3
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

a_AGuardEscortsYou:
		MOVEXY	10,2
aAGuardEscortsY:.BYTE "A guard escorts you"
		MOVEXY	8,4
aOutOfTheBankSV:.BYTE "out of the bank's vault."
		.BYTE $FF

a_AGuardDragsYou:
		MOVEXY	7,4
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
aSideTheFirstCi:.BYTE "side the First City",0 ; DATA XREF: RAM:off_78D2^o
aGramSGoldExcha:.BYTE " Gram's Gold Exchange",0
unk_79F1:	.BYTE	0		; DATA XREF: RAM:loc_7685^r
		.BYTE	5
		.BYTE  $A
		.BYTE  $A
		.BYTE  $F
		.BYTE  $F
		.BYTE $14
		.BYTE $1E

byte_79F9:
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE	$42
		.WORD	$400
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
		.WORD	$0658
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
		.WORD	byte_79F9
; ---------------------------------------------------------------------------

loc_7A2B:
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

loc_7A8F:				; CODE XREF: RAM:7AB4vj
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
		BPL	loc_7A8F
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

loc_7AD1:				; CODE XREF: RAM:760A^j
		LDA	#$7F ; ''
		STA	$253
		dldi	off_254, byte_79F9
		LDA	#8
		LDX	#$23 ; '#'

loc_7AE4:				; CODE XREF: RAM:7AF2vj
		LDY	#$C

loc_7AE6:				; CODE XREF: RAM:7AEDvj
		STA	$BB4C,X
		DEX
		BMI	loc_7AF4
		DEY
		BNE	loc_7AE6
		CLC
		ADC	#4
		BNE	loc_7AE4

loc_7AF4:				; CODE XREF: RAM:7AEA^j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_7BEC
		dldi	off_9, $BB70
		JSR	loc_7BEC
		dldi	loc_7B1A+1, $BD00
		LDY	#3
		LDA	#0
		LDX	#$80 ; ''

loc_7B1A:				; CODE XREF: RAM:7B1Evj	RAM:7B24vj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_7B1A
		INC	loc_7B1A+2
		DEY
		BNE	loc_7B1A
		LDX	#7

loc_7B28:				; CODE XREF: RAM:7B2Cvj
		STA	$D000,X
		DEX
		BPL	loc_7B28
		LDA	#3
		TAX

loc_7B31:				; CODE XREF: RAM:7B35vj
		STA	$D008,X
		DEX
		BPL	loc_7B31
		ldi	SIZEM, $FF
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_7B5F:				; CODE XREF: RAM:7B85vj
		LDY	6
		LDA	(off_7),Y
		STA	4
		LDY	#7

loc_7B67:				; CODE XREF: RAM:7B72vj
		LSR	4
		BCC	loc_7B71
		LDA	(off_9),Y
		ORA	#$80 ; ''
		STA	(off_9),Y

loc_7B71:				; CODE XREF: RAM:7B69^j
		DEY
		BPL	loc_7B67
		LDA	off_9
		CLC
		ADC	#8
		STA	off_9
		BCC	loc_7B7F
		INC	off_9+1

loc_7B7F:				; CODE XREF: RAM:7B7B^j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_7B5F
		LDA	#$2D ; '-'
		STA	off_7
		LDX	#0
		STX	6
		dldi	off_F0, $BDA9

loc_7B97:				; CODE XREF: RAM:7BA8vj
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
		BCC	loc_7B97

loc_7BAA:				; CODE XREF: RAM:7BC7vj
		LDX	#0

loc_7BAC:				; CODE XREF: RAM:7BC5vj
		LDY	6
		LDA	(off_7),Y
		LDY	#4

loc_7BB2:				; CODE XREF: RAM:7BB7vj
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

loc_7BC9:				; CODE XREF: RAM:7BC1^j
		LDX	#3
		LDA	$BC5F

loc_7BCE:				; CODE XREF: RAM:7BD2vj
		STA	COLPM0,X
		DEX
		BPL	loc_7BCE
		dldi	off_24A, $7A2B
		LDA	#$C0
		STA	NMIEN
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_7BEC:				; CODE XREF: RAM:7AFC^p	RAM:7B07^p ...
		LDY	#0
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_7BF6
		INC	off_7+1

loc_7BF6:				; CODE XREF: RAM:7BF2^j
		CMP	#$1B
		BEQ	loc_7C05
		STA	(off_9),Y
		INC	off_9
		BNE	loc_7C02
		INC	off_9+1

loc_7C02:				; CODE XREF: RAM:7BFE^j
		JMP	loc_7BEC
; ---------------------------------------------------------------------------

loc_7C05:				; CODE XREF: RAM:7BF8^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_7C0D
		INC	off_7+1

loc_7C0D:				; CODE XREF: RAM:7C09^j
		CMP	#$FF
		BNE	loc_7C12
		RTS
; ---------------------------------------------------------------------------

loc_7C12:				; CODE XREF: RAM:7C0F^j
		STA	byte_7C4C
		ADC	off_9
		STA	loc_7C25+1
		LDA	off_9+1
		ADC	#0
		CMP	#$14
		BNE	loc_7C2A
		LDA	byte_7C4C

loc_7C25:				; DATA XREF: RAM:7C17^w
		SBC	#$FF
		STA	byte_7C4C

loc_7C2A:				; CODE XREF: RAM:7C20^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_7C32
		INC	off_7+1

loc_7C32:				; CODE XREF: RAM:7C2E^j
		LDY	byte_7C4C

loc_7C35:				; CODE XREF: RAM:7C38vj
		STA	(off_9),Y
		DEY
		BPL	loc_7C35
		INC	byte_7C4C
		LDA	byte_7C4C
		CLC
		ADC	off_9
		STA	off_9
		BCC	loc_7C49
		INC	off_9+1

loc_7C49:				; CODE XREF: RAM:7C45^j
		JMP	loc_7BEC
; ---------------------------------------------------------------------------
byte_7C4C:	.BYTE 0			; DATA XREF: RAM:loc_7C12^w RAM:7C22^r ...
byte_7C4D:	.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	7
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A0 ;  
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE $82 ; 
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE	2
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $82 ; 
		.BYTE $80 ; 
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A0 ;  
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	2
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
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
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $82 ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $A0 ;  
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $80 ; 
		.BYTE $82 ; 
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $82 ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $82 ; 
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $F0 ; ð
		.BYTE  $A
		.BYTE	0
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $FF
		.BYTE $F3 ; ó
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
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
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $FF
		.BYTE $C0 ; À
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
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE $AF ; ¯
		.BYTE $A8 ; ¨
		.BYTE $AB ; «
		.BYTE $BB ; »
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE $BB ; »
		.BYTE $AB ; «
		.BYTE $A8 ; ¨
		.BYTE $AB ; «
		.BYTE $BB ; »
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE $BB ; »
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; 
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $80 ; 
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $AA ; ª
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
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $82 ; 
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $AA ; ª
		.BYTE $80 ; 
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $28 ; (
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $80 ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $80 ; 
		.BYTE $82 ; 
		.BYTE  $A
		.BYTE  $A
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE $28 ; (
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	4
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	3
		.BYTE	2
		.BYTE	0
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE $F0 ; ð
		.BYTE $FE ; þ
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE  $B
		.BYTE $3B ; ;
		.BYTE $CB ; Ë
		.BYTE $33 ; 3
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $C0 ; À
		.BYTE $C3 ; Ã
		.BYTE $CC ; Ì
		.BYTE $1B
		.BYTE	4
		.BYTE $2F ; /
		.BYTE $EF ; ï
		.BYTE $2F ; /
		.BYTE $CF ; Ï
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	7
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $AB ; «
		.BYTE $FF
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $80 ; 
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $28 ; (
		.BYTE $82 ; 
		.BYTE $82 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $82 ; 
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $82 ; 
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $AA ; ª
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
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $28 ; (
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	3
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE $80 ; 
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE	2
		.BYTE  $A
		.BYTE	0
		.BYTE $82 ; 
		.BYTE $82 ; 
		.BYTE $80 ; 
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE $82 ; 
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	3
		.BYTE $F2 ; ò
		.BYTE $F0 ; ð
		.BYTE	2
		.BYTE	2
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE  $F
		.BYTE $1B
		.BYTE	5
		.BYTE  $B
		.BYTE $FF
		.BYTE $FF
		.BYTE $C3 ; Ã
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; À
		.BYTE $EA ; ê
		.BYTE $EA ; ê
		.BYTE $2F ; /
		.BYTE $FF
		.BYTE $FF
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE $1B
		.BYTE	2
		.BYTE $AF ; ¯
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE	0
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
		.BYTE $AA ; ª
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE $17
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	7
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $AB ; «
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $82 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE $82 ; 
		.BYTE $82 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE  $A
		.BYTE $82 ; 
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE	2
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE  $A
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $82 ; 
		.BYTE $80 ; 
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; 
		.BYTE	0
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
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE	2
		.BYTE $82 ; 
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE	0
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $28 ; (
		.BYTE $80 ; 
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $80 ; 
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $82 ; 
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $AF ; ¯
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $FE ; þ
		.BYTE $FE ; þ
		.BYTE	3
		.BYTE	3
		.BYTE $FF
		.BYTE $FF
		.BYTE $AF ; ¯
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $AF ; ¯
		.BYTE $EA ; ê
		.BYTE $EA ; ê
		.BYTE $C0 ; À
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; «
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	2
		.BYTE  $F
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; «
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $3F ; ?
		.BYTE $EA ; ê
		.BYTE $BF ; ¿
		.BYTE $FF
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; À
		.BYTE $2A ; *
		.BYTE $CA ; Ê
		.BYTE $B2 ; ²
		.BYTE $EC ; ì
		.BYTE $EC ; ì
		.BYTE $1B
		.BYTE	2
		.BYTE $FB ; û
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	7
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $AF ; ¯
		.BYTE $FF
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $82 ; 
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE	2
		.BYTE $82 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE	0
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $82 ; 
		.BYTE $8A ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $BF ; ¿
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $F2 ; ò
		.BYTE $FE ; þ
		.BYTE $BE ; ¾
		.BYTE $AB ; «
		.BYTE $AF ; ¯
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $BF ; ¿
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $FE ; þ
		.BYTE $CF ; Ï
		.BYTE	3
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $3C ; <
		.BYTE $CF ; Ï
		.BYTE $C3 ; Ã
		.BYTE $F0 ; ð
		.BYTE $32 ; 2
		.BYTE $3E ; >
		.BYTE  $C
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AF ; ¯
		.BYTE $BF ; ¿
		.BYTE $B0 ; °
		.BYTE	3
		.BYTE	3
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $FE ; þ
		.BYTE $3A ; :
		.BYTE $EA ; ê
		.BYTE $EA ; ê
		.BYTE $1B
		.BYTE	4
		.BYTE $8A ; 
		.BYTE	3
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE $28 ; (
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A0 ;  
		.BYTE $82 ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $8A ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $8A ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $C0 ; À
		.BYTE $FF
		.BYTE $FF
		.BYTE	2
		.BYTE	2
		.BYTE $FF
		.BYTE $FF
		.BYTE	3
		.BYTE	3
		.BYTE $C0 ; À
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE	0
		.BYTE $C0 ; À
		.BYTE $FF
		.BYTE $FF
		.BYTE $EA ; ê
		.BYTE $EA ; ê
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $C0 ; À
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; þ
		.BYTE $FF
		.BYTE	3
		.BYTE	3
		.BYTE $C3 ; Ã
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	3
		.BYTE $F3 ; ó
		.BYTE $FF
		.BYTE $BF ; ¿
		.BYTE $EA ; ê
		.BYTE $1B
		.BYTE	3
		.BYTE $FB ; û
		.BYTE $EC ; ì
		.BYTE $EC ; ì
		.BYTE $B2 ; ²
		.BYTE $CA ; Ê
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE  $B
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	7
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $AF ; ¯
		.BYTE $FF
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $82 ; 
		.BYTE $82 ; 
		.BYTE $A2 ; ¢
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A0 ;  
		.BYTE $8A ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $82 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $AB ; «
		.BYTE $BF ; ¿
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F2 ; ò
		.BYTE $B8 ; ¸
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE $EA ; ê
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $8E ; 
		.BYTE  $F
		.BYTE	3
		.BYTE	3
		.BYTE	0
		.BYTE $BE ; ¾
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE  $F
		.BYTE	3
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE $A8 ; ¨
		.BYTE $E0 ; à
		.BYTE $E0 ; à
		.BYTE $F0 ; ð
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $C0 ; À
		.BYTE $C0 ; À
		.BYTE $C2 ; Â
		.BYTE	2
		.BYTE  $B
		.BYTE  $F
		.BYTE $3C ; <
		.BYTE $30 ; 0
		.BYTE $B0 ; °
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
		.BYTE $FA ; ú
		.BYTE $3E ; >
		.BYTE  $E
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE  $F
		.BYTE	2
		.BYTE $BF ; ¿
		.BYTE $B0 ; °
		.BYTE	0
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $F3 ; ó
		.BYTE $C3 ; Ã
		.BYTE $A0 ;  
		.BYTE	3
		.BYTE $C2 ; Â
		.BYTE $FA ; ú
		.BYTE $3F ; ?
		.BYTE  $C
		.BYTE  $C
		.BYTE $C8 ; È
		.BYTE $F8 ; ø
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $3E ; >
		.BYTE $3F ; ?
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $80 ; 
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $82 ; 
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $82 ; 
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE  $A
		.BYTE	0
		.BYTE $82 ; 
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A2 ; ¢
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $28 ; (
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	5
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $FF
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $C0 ; À
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $FE ; þ
		.BYTE $FE ; þ
		.BYTE $FF
		.BYTE $FF
		.BYTE	3
		.BYTE	3
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE	0
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; ê
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; þ
		.BYTE $FF
		.BYTE $C0 ; À
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $AF ; ¯
		.BYTE $FF
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
		.BYTE	4
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE $16
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	7
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $AF ; ¯
		.BYTE $FF
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $2F ; /
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $8A ; 
		.BYTE $82 ; 
		.BYTE	0
		.BYTE $C5 ; Å
		.BYTE $D5 ; Õ
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $D5 ; Õ
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE $15
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; þ
		.BYTE $FA ; ú
		.BYTE $FA ; ú
		.BYTE  $C
		.BYTE	8
		.BYTE $20
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $3C ; <
		.BYTE  $C
		.BYTE  $F
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE  $A
		.BYTE	8
		.BYTE $28 ; (
		.BYTE $E8 ; è
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $3C ; <
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $FD ; ý
		.BYTE	8
		.BYTE	8
		.BYTE $20
		.BYTE $1B
		.BYTE	2
		.BYTE $E0 ; à
		.BYTE $68 ; h
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE  $F
		.BYTE $3E ; >
		.BYTE  $E
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $FD ; ý
		.BYTE $F5 ; õ
		.BYTE $D5 ; Õ
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $A0 ;  
		.BYTE $68 ; h
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE  $F
		.BYTE  $F
		.BYTE  $C
		.BYTE	0
		.BYTE $20
		.BYTE $90 ; 
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	5
		.BYTE	0
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1D
		.BYTE $15
		.BYTE $F5 ; õ
		.BYTE $FD ; ý
		.BYTE	0
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $D7 ; ×
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $D7 ; ×
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $2A ; *
		.BYTE $2B ; +
		.BYTE $FF
		.BYTE $FB ; û
		.BYTE $BF ; ¿
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $BA ; º
		.BYTE $FE ; þ
		.BYTE $BF ; ¿
		.BYTE $AE ; ®
		.BYTE $1B
		.BYTE	7
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE	3
		.BYTE $1B
		.BYTE	5
		.BYTE	2
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $BF ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $BF ; ¿
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE	0
		.BYTE $C0 ; À
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE $20
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	7
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $AF ; ¯
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $97 ; 
		.BYTE $75 ; u
		.BYTE $5D ; ]
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $77 ; w
		.BYTE $FD ; ý
		.BYTE  $F
		.BYTE	3
		.BYTE	3
		.BYTE	0
		.BYTE $FD ; ý
		.BYTE $F5 ; õ
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FD ; ý
		.BYTE $3F ; ?
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $5D ; ]
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE	2
		.BYTE $F5 ; õ
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE $1A
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $80 ; 
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $F5 ; õ
		.BYTE $1B
		.BYTE $26 ; &
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $3D ; =
		.BYTE $77 ; w
		.BYTE $D7 ; ×
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $F7 ; ÷
		.BYTE $55 ; U
		.BYTE $DD ; Ý
		.BYTE $77 ; w
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $DD ; Ý
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $5F ; _
		.BYTE $7E ; ~
		.BYTE $DF ; ß
		.BYTE $57 ; W
		.BYTE $D5 ; Õ
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $EF ; ï
		.BYTE $FF
		.BYTE $BF ; ¿
		.BYTE $D7 ; ×
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $77 ; w
		.BYTE $FE ; þ
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $5E ; ^
		.BYTE $D6 ; Ö
		.BYTE $75 ; u
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $BF ; ¿
		.BYTE $BD ; ½
		.BYTE $FD ; ý
		.BYTE $B7 ; ·
		.BYTE $F5 ; õ
		.BYTE $95 ; 
		.BYTE $5D ; ]
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $AA ; ª
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $AA ; ª
		.BYTE $BF ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $C0 ; À
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; þ
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; ê
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE $AF ; ¯
		.BYTE $A8 ; ¨
		.BYTE $AB ; «
		.BYTE $BB ; »
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE $BB ; »
		.BYTE $AB ; «
		.BYTE $A8 ; ¨
		.BYTE $AB ; «
		.BYTE $BB ; »
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE $BB ; »
		.BYTE $AB ; «
		.BYTE $AA ; ª
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $AF ; ¯
		.BYTE $FF
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	4
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $F7 ; ÷
		.BYTE $DF ; ß
		.BYTE $D7 ; ×
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE $16
		.BYTE $55 ; U
		.BYTE $5D ; ]
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $D5 ; Õ
		.BYTE $75 ; u
		.BYTE $1B
		.BYTE $1D
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $3F ; ?
		.BYTE $C0 ; À
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $22 ; "
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE	4
		.BYTE	6
		.BYTE	8
		.BYTE  $A
		.BYTE  $C
		.BYTE  $C
		.BYTE  $E
		.BYTE  $E
		.BYTE  $C
		.BYTE  $A
		.BYTE	8
		.BYTE	6
		.BYTE	4
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	4
		.BYTE	6
		.BYTE	8
		.BYTE  $A
		.BYTE  $C
		.BYTE  $F
		.BYTE  $E
		.BYTE  $C
		.BYTE  $A
		.BYTE	8
		.BYTE	6
		.BYTE	4
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	4
		.BYTE	6
		.BYTE	8
		.BYTE  $A
		.BYTE  $C
		.BYTE  $E
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $7E ; ~
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $7F ; 
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $80 ; 
		.BYTE $7F ; 
		.BYTE	0
		.BYTE	3
		.BYTE $FF
		.BYTE $E0 ; à
		.BYTE $7F ; 
		.BYTE	0
		.BYTE $63 ; c
		.BYTE $F7 ; ÷
		.BYTE $FC ; ü
		.BYTE $7F ; 
		.BYTE	0
		.BYTE $E0 ; à
		.BYTE $3C ; <
		.BYTE $38 ; 8
		.BYTE $7F ; 
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE	9
		.BYTE $8F ; 
		.BYTE	8
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $7F ; 
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $7F ; 
		.BYTE	8
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $7F ; 
		.BYTE	3
		.BYTE	0
		.BYTE $1E
		.BYTE	0
		.BYTE $7F ; 
		.BYTE	3
		.BYTE	3
		.BYTE $FF
		.BYTE $E0 ; à
		.BYTE $7D ; }
		.BYTE	0
		.BYTE	3
		.BYTE $FF
		.BYTE $F8 ; ø
		.BYTE $EF ; ï
		.BYTE	8
		.BYTE $E0 ; à
		.BYTE $F0 ; ð
		.BYTE $37 ; 7
		.BYTE $FF
		.BYTE	3
		.BYTE $E0 ; à
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $35 ; 5
		.BYTE  $E
		.BYTE $9C ; 
		.BYTE $27 ; '
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
; end of 'RAM'


		.END
