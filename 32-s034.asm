
;	.ORG	$100
	.SEGMENT "SEG_17_KEY"

	.BYTE	$54,$22,$00,$1c,$c4,$43,$27,$5e,$a2,$a1,$a8,$a8,$00,$a5,$da,$1e ; |T"...C'^........|
	.BYTE	$87,$59,$98,$13,$26,$b2,$3b,$d4,$0a,$72,$f9,$9b,$4d,$fe,$e7,$89 ; |.Y..&.;..r..M...|
	.BYTE	$cf,$13,$d8,$04,$05,$c1,$fe,$0f,$17,$e0,$f6,$0a,$04,$8b,$a4,$64 ; |...............d|
	.BYTE	$fd,$23,$89,$56,$a3,$33,$b8,$fa,$83,$fa,$5f,$ad,$c2,$a6,$cf,$6e ; |.#.V.3...._....n|
	.BYTE	$a8,$7b,$7b,$3f,$30,$ce,$59,$8c,$93,$f8,$b8,$34,$77,$ec,$df,$38 ; |.{{?0.Y....4w..8|
	.BYTE	$6e,$d2,$63,$86,$5b,$63,$ea,$2a,$2f,$e5,$23,$64,$b8,$2d,$76,$ae ; |n.c.[c.*/.#d.-v.|
	.BYTE	$cf,$a7,$4e,$a1,$c4,$e0,$fb,$60,$d8,$aa,$43,$08,$41,$22,$1c,$bc ; |..N....`..C.A"..|
	.BYTE	$8c,$41,$96,$d7,$11,$4c,$f0,$5b,$a5,$44,$72,$9a,$bf,$dc,$91,$6e ; |.A...L.[.Dr....n|

		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;		.ORG	$7600
	.SEGMENT "SEG_17"

		.BYTE	7
; ---------------------------------------------------------------------------
		JMP	loc_7610
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_7F46
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604^j	RAM:7607^j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601^j
		DEC	$1937
		dldi	off_1977, $76A9
		dldi	off_16, $78B6
		JSR	$184B
		LDA	$1933
		STA	$62
		LDA	I_LOC_Z
		BNE	loc_7649
		STA	$63
		dldi	SEGADDR, byte_890B
		ldi	SEGNO, $34
		JSR	j_SEGLOAD
		JMP	loc_764D
; ---------------------------------------------------------------------------

loc_7649:				; CODE XREF: RAM:7630^j
		LDA	#1
		STA	$63

loc_764D:				; CODE XREF: RAM:7646^j
		dldi	off_7, byte_890B
		LDA	#2
		JSR	$180F
		dldi	SEGADDR, $96F0
		ldi	SEGNO, $0F
		JSR	j_SEGLOAD
		JSR	$96F5
		dmv	off_224, $96F3
		DEC	$22F
		LDY	$63
		LDA	unk_78AE,Y
		LDA	unk_78B0,Y
		STA	off_7
		LDA	unk_78AE,Y
		STA	off_7+1
		LDA	unk_78B2,Y
		STA	word_B
		LDA	unk_78B4,Y
		STA	word_B+1
		dldi	off_9, $9FF0
		JSR	$187E
		ldxy	$9FF0
		JMP	$96F0
; ---------------------------------------------------------------------------
		LDY	$63
		LDA	unk_787A,Y
		ldxy	$7508
		JSR	j_TESTBIT
		BCC	loc_76BA
		JMP	loc_77CA
; ---------------------------------------------------------------------------

loc_76BA:				; CODE XREF: RAM:76B5^j
		LDY	$63
		LDA	unk_787C,Y
		ldxy	$7508
		JSR	j_TESTBIT
		BCC	loc_76CF
		ldxy	$78AA
		JMP	loc_776F
; ---------------------------------------------------------------------------

loc_76CF:				; CODE XREF: RAM:76C6^j
		JSR	sub_782A
		BCC	loc_76D7
		JMP	loc_7758
; ---------------------------------------------------------------------------

loc_76D7:				; CODE XREF: RAM:76D2^j	RAM:7747vj
		ldxy	$7886
		LDA	$63
		JSR	j_sub_2C9B
		JSR	sub_786B

loc_76E3:				; CODE XREF: RAM:76F2vj
		dldi	off_1977, $76F0
		JMP	$1806
; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_76E3
		CMP	#'1'
		BNE	loc_7745
		LDA	$64
		STA	$4B
		JSR	j_LOADINV
		LDY	#2
		LDA	#$10
		STA	(off_41),Y
		JSR	j_sub_408B
		LDY	$63
		LDA	unk_787C,Y
		ldxy	$7508
		SEC
		JSR	j_SETBIT
		LDY	$63
		LDA	unk_7880,Y
		ldxy	$7508
		SEC
		JSR	j_SETBIT
		LDY	$63
		LDA	unk_787E,Y
		ldxy	$7508
		CLC
		JSR	j_SETBIT
		LDX	#$85 ; ''
		LDA	#4
		JSR	$186F
		ldxy	$788A
		LDA	$63
		JSR	j_sub_2C9B
		JSR	sub_7861
		JMP	loc_77F5
; ---------------------------------------------------------------------------

loc_7745:				; CODE XREF: RAM:76F6^j
		CMP	#'2'
		BNE	loc_76D7
		ldxy	$7896
		LDA	$63
		JSR	j_sub_2C9B
		JSR	sub_7861
		JMP	loc_77B2
; ---------------------------------------------------------------------------

loc_7758:				; CODE XREF: RAM:76D4^j
		LDY	$63
		LDA	$7528,Y
		BNE	loc_776B
		LDA	#1
		STA	$7528,Y
		ldxy	$788E
		JMP	loc_776F
; ---------------------------------------------------------------------------

loc_776B:				; CODE XREF: RAM:775D^j
		ldxy	$7892

loc_776F:				; CODE XREF: RAM:76CC^j	RAM:7768^j
		LDA	$63
		JSR	j_sub_2C9B
		JSR	sub_7870

loc_7777:				; CODE XREF: RAM:77A1vj
		ldxy	$789A
		LDA	$63
		JSR	j_sub_2C9B
		JSR	sub_786B

loc_7783:				; CODE XREF: RAM:7792vj
		dldi	off_1977, $7790
		JMP	$1806
; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_7783
		CMP	#'1'
		BEQ	loc_77A6
		CMP	#'0'
		BEQ	loc_77A3
		JSR	j_sub_262F
		AND	#2
		BEQ	loc_7777

loc_77A3:				; CODE XREF: RAM:779A^j
		JMP	loc_77F5
; ---------------------------------------------------------------------------

loc_77A6:				; CODE XREF: RAM:7796^j	RAM:77F2vj
		ldxy	$789E
		LDA	$63
		JSR	j_sub_2C9B
		JSR	sub_7861

loc_77B2:				; CODE XREF: RAM:7755^j
		LDY	$63
		LDA	unk_787A,Y
		ldxy	$7508
		SEC
		JSR	j_SETBIT
		LDY	$63
		LDA	unk_7882,Y
		STA	$6320
		JMP	loc_77F5
; ---------------------------------------------------------------------------

loc_77CA:				; CODE XREF: RAM:76B7^j
		JSR	sub_7809
		BCS	loc_77E6
		ldxy	$78A2
		LDA	$63
		JSR	j_sub_2C9B
		JSR	sub_7861
		LDY	$63
		LDA	unk_7884,Y
		STA	$6320
		JMP	loc_77F5
; ---------------------------------------------------------------------------

loc_77E6:				; CODE XREF: RAM:77CD^j
		ldxy	$78A6
		LDA	$63
		JSR	j_sub_2C9B
		JSR	sub_7861
		JMP	loc_77A6
; ---------------------------------------------------------------------------

loc_77F5:				; CODE XREF: RAM:7742^j	RAM:loc_77A3^j ...
		LDY	#4

loc_77F7:				; CODE XREF: RAM:77FEvj
		LDA	$6318,Y
		STA	I_LOC_X,Y
		DEY
		BPL	loc_77F7
		INC	$22F
		STY	$AC00
		JMP	$180C

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7809:				; CODE XREF: RAM:loc_77CA^p
		LDA	#$17
		ldxy	$7508
		JSR	j_TESTBIT
		BCS	loc_7819
		JSR	sub_781D
		BCC	loc_781B

loc_7819:				; CODE XREF: sub_7809+9^j
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_781B:				; CODE XREF: sub_7809+E^j
		SEC
		RTS
; End of function sub_7809


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_781D:				; CODE XREF: sub_7809+B^p
		LDY	$63
		LDA	unk_787E,Y
		ldxy	$7508
		JSR	j_TESTBIT
		RTS
; End of function sub_781D


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_782A:				; CODE XREF: RAM:loc_76CF^p
		LDA	#$3F ; '?'
		STA	$64

loc_782E:				; CODE XREF: sub_782A+33vj
		LDA	$64
		STA	$4B
		JSR	j_LOADINV
		BEQ	loc_785B
		LDY	#0
		LDA	(off_41),Y
		CMP	#$87
		BNE	loc_785B
		JSR	$1896
		LDY	#0
		LDA	(off_43),Y
		CMP	#2
		BNE	loc_785B
		INY
		LDA	(off_43),Y
		CMP	#3
		BEQ	loc_7859
		CMP	#4
		BEQ	loc_7859
		CMP	#2
		BNE	loc_785B

loc_7859:				; CODE XREF: sub_782A+25^j sub_782A+29^j
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_785B:				; CODE XREF: sub_782A+B^j sub_782A+13^j	...
		DEC	$64
		BPL	loc_782E
		SEC
		RTS
; End of function sub_782A


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7861:				; CODE XREF: RAM:773F^p	RAM:7752^p ...
		LDX	$62
		JSR	j_sub_3C5C
		LDA	#$F
		JMP	j_sub_2BFC
; End of function sub_7861


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_786B:				; CODE XREF: RAM:76E0^p	RAM:7780^p
		LDX	$62
		JMP	j_sub_3C5C
; End of function sub_786B


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7870:				; CODE XREF: RAM:7774^p
		LDX	$62
		JSR	j_sub_3C5C
		LDA	#$F
		JMP	j_sub_2BFC
; End of function sub_7870

; ---------------------------------------------------------------------------
unk_787A:	.BYTE	$10		; DATA XREF: RAM:76AB^r	RAM:77B4^r
		.BYTE	 $F
unk_787C:	.BYTE	$12		; DATA XREF: RAM:76BC^r	RAM:770A^r
		.BYTE	$11
unk_787E:	.BYTE	 $C		; DATA XREF: RAM:7724^r	sub_781D+2^r
		.BYTE	 $B
unk_7880:	.BYTE	 $E		; DATA XREF: RAM:7717^r
		.BYTE	 $D
unk_7882:	.BYTE	$49 		; DATA XREF: RAM:77C1^r
		.BYTE	$4A
unk_7884:	.BYTE	6		; DATA XREF: RAM:77DD^r
		.BYTE	7
		.WORD byte_78DA
		.WORD byte_78B8
		.WORD byte_794F
		.WORD byte_7993
		.WORD byte_79DD
		.WORD byte_7A7B
		.WORD byte_7B1A
		.WORD byte_7B6A
		.WORD byte_7BA6
		.WORD byte_7BD4
		.WORD byte_7C05
		.WORD byte_7C1E
		.WORD byte_7C6F
		.WORD byte_7CB7
		.WORD byte_7CF3
		.WORD byte_7D35
		.WORD byte_7D8A
		.WORD byte_7DBC
		.WORD byte_7E03
		.WORD byte_7E3B
unk_78AE:	.BYTE	$80 ; 		; DATA XREF: RAM:7680^r	RAM:7688^r
		.BYTE	$84 ; 
unk_78B0:	.BYTE	$C2 ; Â		; DATA XREF: RAM:7683^r
		.BYTE	$D3 ; Ó
unk_78B2:	.BYTE	$11		; DATA XREF: RAM:768D^r
		.BYTE	$38 ; 8
unk_78B4:	.BYTE	4		; DATA XREF: RAM:7692^r
		.BYTE	4
		.BYTE	$A8,$FF
byte_78B8:	.BYTE	$A6,  6,	0	; DATA XREF: RAM:7888^o
aThouHastMyHear:.BYTE	"Thou hast my heart's desire!"
		.BYTE	$AC
		.WORD byte_78FB
byte_78DA:	.BYTE	$A6,  6,	0	; DATA XREF: RAM:7886^o
aThouHastBrough:.BYTE	"Thou hast brought my treasure!"
byte_78FB:	.BYTE	$A6,  6,	1	; DATA XREF: RAM:78D8^o
aGiveMeTheRingH:.BYTE	"Give me the ring half!"
		.BYTE	$A6,  6,	3
		MenuItem "1","Give up the ring or"
		.BYTE	$A6,  6,	4
		MenuItem "2","Refuse to give it up."
		.BYTE	$FF
byte_794F:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:788A^o
		.BYTE	$A5
aThouArtWiseNot:.BYTE	"Thou art wise not to risk my wrath."
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aThyRewardIsMyT:.BYTE	"Thy reward is my thanks."
		.BYTE	$D
		.BYTE	$FF
byte_7993:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:788C^o
		.BYTE	$A5
aThouArtWiseN_0:.BYTE	"Thou art wise not to anger the Trolls."
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aGoInPeaceFooli:.BYTE	"Go in peace foolish mortal."
		.BYTE	$D
		.BYTE	$FF
byte_79DD:	.BYTE	$A6,  0,	0	; DATA XREF: RAM:788E^o
aWelcomeSirTrav:.BYTE	"Welcome, Sir Traveller! Lend me thine"
		.BYTE	$D
		.BYTE	$D
aAssistance_Tro:.BYTE	"assistance. Trolls have stolen half"
		.BYTE	$D
		.BYTE	$D
aTheMagicRingTh:.BYTE	"the magic ring The Dwarf made for me."
		.BYTE	$D
		.BYTE	$D
aBringItBackAnd:.BYTE	"Bring it back and I'll reward thee. Go!"
		.BYTE	$FF
byte_7A7B:	.BYTE	$A6,  0,	0	; DATA XREF: RAM:7890^o
aWelcomeBraveQu:.BYTE	"Welcome Brave Quester! I need thy help."
		.BYTE	$D
		.BYTE	$D
aGoblinsHaveTak:.BYTE	"Goblins have taken half the magic ring"
		.BYTE	$D
		.BYTE	$D
aMyFatherGotFro:.BYTE	"my father got from The Dwarf. Great"
		.BYTE	$D
		.BYTE	$D
aRewardIsThineF:.BYTE	"reward is thine for bringing it back."
		.BYTE	$FF
byte_7B1A:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:7892^o
		.BYTE	$A5
aKindKnightWher:.BYTE	"Kind Knight, where is the ring? Don't"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aDarkenThisHall:.BYTE	"darken this hall again without it!"
		.BYTE	$D
		.BYTE	$FF
byte_7B6A:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:7894^o
		.BYTE	$A5
aWhyArtThouBack:.BYTE	"Why art thou back emptyhanded?"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aGoGetTheRingHa:.BYTE	"Go get the ring half!"
		.BYTE	$D
		.BYTE	$FF
byte_7BA6:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:7896^o
		.BYTE	$A5
aFoulFriendToTr:.BYTE	"Foul friend to Trolls!"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aPrepareToDie_:	.BYTE	"Prepare to die."
		.BYTE	$D
		.BYTE	$FF
byte_7BD4:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:7898^o
		.BYTE	$A5
aThouGoblinFrie:.BYTE	"Thou Goblin-friend!"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aPrepareToDoBat:.BYTE	"Prepare to do battle."
		.BYTE	$D
		.BYTE	$FF
byte_7C05:	.BYTE	$AC		; DATA XREF: RAM:789A^o
		.WORD byte_7C36
aDemandTheGobli:.BYTE	") Demand the Goblin"
		.BYTE	$AC
		.WORD aSRingOr		; "'s ring or"
byte_7C1E:	.BYTE	$AC		; DATA XREF: RAM:789C^o
		.WORD byte_7C36
aDemandTheTroll:.BYTE	") Demand the Troll"
		.BYTE	$AC
		.WORD aSRingOr		; "'s ring or"
byte_7C36:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:7C06^o	RAM:7C1F^o
		.BYTE	$A5
aWhatShallYouDo:.BYTE	"What shall you do?"
		.BYTE	$D
		.BYTE	$A6,  4,	4
		.BYTE	'('
a1_0:		BLINK '1'
		.BYTE	$AE
aSRingOr:	.BYTE	"'s ring or"   ; DATA XREF: RAM:7C1C^o RAM:7C34^o
		.BYTE	$A6,  4,	5
		MenuItem "0","Leave?"
		.BYTE	$FF
byte_7C6F:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:789E^o
		.BYTE	$A5
aThouCansTHaveT:.BYTE	"Thou cans't have the ring only by"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aDefeatingMePre:.BYTE	"defeating me! Prepare to duel!"
		.BYTE	$D
		.BYTE	$FF
byte_7CB7:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:78A0^o
		.BYTE	$A5
aILlNotGiveItUp:.BYTE	"I'll not give it up so easily!"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aPrepareToDoB_0:.BYTE	"Prepare to do battle!"
		.BYTE	$D
		.BYTE	$FF
byte_7CF3:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:78A2^o
		.BYTE	$A5
aLoathsomeCreat:.BYTE	"Loathsome creature! Now thou"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aMustBattleTheG:.BYTE	"must battle the Goblin horde!"
		.BYTE	$D
		.BYTE	$FF
byte_7D35:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:78A4^o
aThiefThouHastD:.BYTE	"Thief! Thou hast dared to steal from the"
		.BYTE	$D
		.BYTE	$D
aTrollsNowThouM:.BYTE	"Trolls! Now thou must fight the horde!"
		.BYTE	$D
		.BYTE	$FF
byte_7D8A:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:78A6^o
		.BYTE	$A5
aArtThouTiredOf:.BYTE	"Art thou tired of living?"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aStandAndFight:	.BYTE	"Stand and fight!"
		.BYTE	$D
		.BYTE	$FF
byte_7DBC:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:78A8^o
		.BYTE	$A5
aArtThouBackAga:.BYTE	"Art thou back again, Goblin-face?"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aThouLlNotEscap:.BYTE	"Thou'll not escape this time!"
		.BYTE	$D
		.BYTE	$FF
byte_7E03:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:78AA^o
		.BYTE	$A5
aGreetings:	.BYTE	"Greetings "
		.BYTE	$B3
		.WORD $6321
		.BYTE	$18
a_:		.BYTE	'.'
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aToWhatDoWeOweT:.BYTE	"To what do we owe this pleasure?"
		.BYTE	$D
		.BYTE	$FF
byte_7E3B:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:78AC^o
		.BYTE	$A5
aWelcome:	.BYTE	"Welcome "
		.BYTE	$B3
		.WORD $6321
		.BYTE	$18
a__0:		.BYTE	'.'
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aHastThouMoreBu:.BYTE	"Hast thou more business here?"
		.BYTE	$D
		.BYTE	$FF
unk_7E6E:	.BYTE	$70 ; p		; DATA XREF: RAM:7E9Evo
		.BYTE	$70 ; p
		.BYTE	$30 ; 0
		.BYTE	$42 ; B
		.WORD $400
		.BYTE	$80 ; 
		.BYTE	2
		.BYTE	$80 ; 
		.BYTE	2
		.BYTE	$80 ; 
		.BYTE	2
		.BYTE	$80 ; 
		.BYTE	2
		.BYTE	$80 ; 
		.BYTE	6
		.BYTE	0
		.BYTE	$44 ; D
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
		.BYTE	$42
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
		.BYTE	$41
		.WORD unk_7E6E
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

loc_7F04:				; CODE XREF: RAM:7F29vj
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
		BPL	loc_7F04
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

loc_7F46:				; CODE XREF: RAM:760A^j
		LDA	#$7F ; ''
		STA	$253
		dldi	off_254, $7E6E
		LDA	#8
		LDX	#$23 ; '#'

loc_7F59:				; CODE XREF: RAM:7F67vj
		LDY	#$C

loc_7F5B:				; CODE XREF: RAM:7F62vj
		STA	$BB4C,X
		DEX
		BMI	loc_7F69
		DEY
		BNE	loc_7F5B
		CLC
		ADC	#4
		BNE	loc_7F59

loc_7F69:				; CODE XREF: RAM:7F5F^j
		dldi	off_9, $800
		JSR	loc_8061
		dldi	off_9, $BB70
		JSR	loc_8061
		dldi	loc_7F8F+1, $BD00
		LDY	#3
		LDA	#0
		LDX	#$80 ; ''

loc_7F8F:				; CODE XREF: RAM:7F93vj	RAM:7F99vj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_7F8F
		INC	loc_7F8F+2
		DEY
		BNE	loc_7F8F
		LDX	#7

loc_7F9D:				; CODE XREF: RAM:7FA1vj
		STA	$D000,X
		DEX
		BPL	loc_7F9D
		LDA	#3
		TAX

loc_7FA6:				; CODE XREF: RAM:7FAAvj
		STA	$D008,X
		DEX
		BPL	loc_7FA6
		ldi	SIZEM, $FF
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_7FD4:				; CODE XREF: RAM:7FFAvj
		LDY	6
		LDA	(off_7),Y
		STA	4
		LDY	#7

loc_7FDC:				; CODE XREF: RAM:7FE7vj
		LSR	4
		BCC	loc_7FE6
		LDA	(off_9),Y
		ORA	#$80 ; ''
		STA	(off_9),Y

loc_7FE6:				; CODE XREF: RAM:7FDE^j
		DEY
		BPL	loc_7FDC
		LDA	off_9
		CLC
		ADC	#8
		STA	off_9
		BCC	loc_7FF4
		INC	off_9+1

loc_7FF4:				; CODE XREF: RAM:7FF0^j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_7FD4
		LDA	#$2D ; '-'
		STA	off_7
		LDX	#0
		STX	6
		dldi	off_F0, $BDA9

loc_800C:				; CODE XREF: RAM:801Dvj
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
		BCC	loc_800C

loc_801F:				; CODE XREF: RAM:803Cvj
		LDX	#0

loc_8021:				; CODE XREF: RAM:803Avj
		LDY	6
		LDA	(off_7),Y
		LDY	#4

loc_8027:				; CODE XREF: RAM:802Cvj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_8027
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_803E
		CPX	#$A
		BCC	loc_8021
		BCS	loc_801F

loc_803E:				; CODE XREF: RAM:8036^j
		LDX	#3
		LDA	$BC5F

loc_8043:				; CODE XREF: RAM:8047vj
		STA	COLPM0,X
		DEX
		BPL	loc_8043
		dldi	off_24A, $7EA0
		LDA	#$C0
		STA	NMIEN
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_8061:				; CODE XREF: RAM:7F71^p	RAM:7F7C^p ...
		LDY	#0
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_806B
		INC	off_7+1

loc_806B:				; CODE XREF: RAM:8067^j
		CMP	#$1B
		BEQ	loc_807A
		STA	(off_9),Y
		INC	off_9
		BNE	loc_8077
		INC	off_9+1

loc_8077:				; CODE XREF: RAM:8073^j
		JMP	loc_8061
; ---------------------------------------------------------------------------

loc_807A:				; CODE XREF: RAM:806D^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_8082
		INC	off_7+1

loc_8082:				; CODE XREF: RAM:807E^j
		CMP	#$FF
		BNE	loc_8087
		RTS
; ---------------------------------------------------------------------------

loc_8087:				; CODE XREF: RAM:8084^j
		STA	byte_80C1
		ADC	off_9
		STA	loc_809A+1
		LDA	off_9+1
		ADC	#0
		CMP	#$14
		BNE	loc_809F
		LDA	byte_80C1

loc_809A:				; DATA XREF: RAM:808C^w
		SBC	#$FF
		STA	byte_80C1

loc_809F:				; CODE XREF: RAM:8095^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_80A7
		INC	off_7+1

loc_80A7:				; CODE XREF: RAM:80A3^j
		LDY	byte_80C1

loc_80AA:				; CODE XREF: RAM:80ADvj
		STA	(off_9),Y
		DEY
		BPL	loc_80AA
		INC	byte_80C1
		LDA	byte_80C1
		CLC
		ADC	off_9
		STA	off_9
		BCC	loc_80BE
		INC	off_9+1

loc_80BE:				; CODE XREF: RAM:80BA^j
		JMP	loc_8061
; ---------------------------------------------------------------------------
byte_80C1:	.BYTE	0			; DATA XREF: RAM:loc_8087^w RAM:8097^r ...
		.BYTE	7
		.BYTE	$A1 ; ¡
		.BYTE	$F2 ; ò
		.BYTE	$A0 ;  
		.BYTE	$E0 ; à
		.BYTE	$A0 ;  
		.BYTE	$CD ; Í
		.BYTE	$A0 ;  
		.BYTE	8
		.BYTE	$A1 ; ¡
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A7 ; §
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$10
		.BYTE	1
		.BYTE	1
		.BYTE	8
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A7 ; §
		.BYTE	$A6 ; ¦
		.BYTE	$A5 ; ¥
		.BYTE	$A4 ; ¤
		.BYTE	$A3 ; £
		.BYTE	$A2 ; ¢
		.BYTE	$A1 ; ¡
		.BYTE	$A1 ; ¡
		.BYTE	$A1 ; ¡
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$10
		.BYTE	1
		.BYTE	1
		.BYTE	8
		.BYTE	 $A
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	1
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$10
		.BYTE	1
		.BYTE	2
		.BYTE	 $F
		.BYTE	$1A
		.BYTE	2
		.BYTE	$FE ; þ
		.BYTE	$9F ; 
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	$A1 ; ¡
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	$A1 ; ¡
		.BYTE	 $A
		.BYTE	$ED ; í
		.BYTE	$A2 ; ¢
		.BYTE	 $A
		.BYTE	$ED ; í
		.BYTE	$A2 ; ¢
		.BYTE	5
		.BYTE	$D0 ; Ð
		.BYTE	$A0 ;  
		.BYTE	0
		.BYTE	2
		.BYTE	$43 ; C
		.BYTE	$A0 ;  
		.BYTE	 $A
		.BYTE	$56 ; V
		.BYTE	$A1 ; ¡
		.BYTE	 $A
		.BYTE	$56 ; V
		.BYTE	$A1 ; ¡
		.BYTE	 $A
		.BYTE	$A8 ; ¨
		.BYTE	$A2 ; ¢
		.BYTE	 $A
		.BYTE	$A8 ; ¨
		.BYTE	$A2 ; ¢
		.BYTE	5
		.BYTE	$E3 ; ã
		.BYTE	$A0 ;  
		.BYTE	2
		.BYTE	$43 ; C
		.BYTE	$A0 ;  
		.BYTE	 $A
		.BYTE	$79 ; y
		.BYTE	$A1 ; ¡
		.BYTE	 $A
		.BYTE	$79 ; y
		.BYTE	$A1 ; ¡
		.BYTE	2
		.BYTE	$FE ; þ
		.BYTE	$9F ; 
		.BYTE	 $A
		.BYTE	$5B ; [
		.BYTE	$A2 ; ¢
		.BYTE	 $A
		.BYTE	$5B ; [
		.BYTE	$A2 ; ¢
		.BYTE	5
		.BYTE	$F2 ; ò
		.BYTE	$A0 ;  
		.BYTE	0
		.BYTE	 $A
		.BYTE	$A9 ; ©
		.BYTE	$A1 ; ¡
		.BYTE	 $A
		.BYTE	$3B ; ;
		.BYTE	$A3 ; £
		.BYTE	0
		.BYTE	$12
		.BYTE	$14
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$14
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$14
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	$14
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$3C ; <
		.BYTE	2
		.BYTE	$88 ; 
		.BYTE	$A0 ;  
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$3C ; <
		.BYTE	2
		.BYTE	$FE ; þ
		.BYTE	$9F ; 
		.BYTE	$12
		.BYTE	$14
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$14
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$14
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$14
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	 $A
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$3C ; <
		.BYTE	2
		.BYTE	$88 ; 
		.BYTE	$A0 ;  
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$3C ; <
		.BYTE	2
		.BYTE	$FE ; þ
		.BYTE	$9F ; 
		.BYTE	 $B
		.BYTE	7
		.BYTE	$FA ; ú
		.BYTE	$9F ; 
		.BYTE	4
		.BYTE	$12
		.BYTE	$1E
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$1E
		.BYTE	4
		.BYTE	$FA ; ú
		.BYTE	$9F ; 
		.BYTE	$5A ; Z
		.BYTE	$A1 ; ¡
		.BYTE	$12
		.BYTE	$1E
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$1E
		.BYTE	$12
		.BYTE	$1E
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	$1E
		.BYTE	$12
		.BYTE	$1E
		.BYTE	1
		.BYTE	$80 ; 
		.BYTE	$1E
		.BYTE	$12
		.BYTE	$1E
		.BYTE	1
		.BYTE	$80 ; 
		.BYTE	$1E
		.BYTE	 $B
		.BYTE	1
		.BYTE	$99 ; 
		.BYTE	$1E
		.BYTE	1
		.BYTE	$80 ; 
		.BYTE	$1E
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	$1E
		.BYTE	1
		.BYTE	$80 ; 
		.BYTE	$1E
		.BYTE	1
		.BYTE	$AD ; ­
		.BYTE	$1E
		.BYTE	1
		.BYTE	$80 ; 
		.BYTE	$1E
		.BYTE	1
		.BYTE	$AD ; ­
		.BYTE	$1E
		.BYTE	1
		.BYTE	$80 ; 
		.BYTE	$1E
		.BYTE	1
		.BYTE	$B6 ; ¶
		.BYTE	$1E
		.BYTE	1
		.BYTE	$88 ; 
		.BYTE	$1E
		.BYTE	1
		.BYTE	$C1 ; Á
		.BYTE	$1E
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	$1E
		.BYTE	$12
		.BYTE	$1E
		.BYTE	1
		.BYTE	$99 ; 
		.BYTE	$1E
		.BYTE	1
		.BYTE	$CC ; Ì
		.BYTE	$1E
		.BYTE	1
		.BYTE	$99 ; 
		.BYTE	$1E
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
aYouComeToSee:	.BYTE	"YOU COME TO SEE",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	3
		.BYTE	7
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	8
		.BYTE	 $A
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	 $B
		.BYTE	 $E
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
aTheGoblinKing:	.BYTE	"THE GOBLIN KING",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	3
		.BYTE	6
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	7
		.BYTE	9
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	 $A
		.BYTE	 $E
		.BYTE	1
		.BYTE	$12
		.BYTE	$5A ; Z
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$12
		.BYTE	$32 ; 2
		.BYTE	 $E
		.BYTE	0
aSoManyOfYaPeop:.BYTE	"SO MANY OF YA PEOPLE",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	2
		.BYTE	5
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	6
		.BYTE	6
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	7
		.BYTE	9
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $A
		.BYTE	 $C
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	 $D
		.BYTE	$10
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	$11
		.BYTE	$13
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $E
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$4F ; O
		.BYTE	0
		.BYTE	$12
		.BYTE	$1E
		.BYTE	 $E
		.BYTE	0
		.BYTE	$44 ; D
		.BYTE	$4F ; O
		.BYTE	0
		.BYTE	$12
		.BYTE	$3C ; <
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$12
		.BYTE	$1E
		.BYTE	 $B
		.BYTE	1
		.BYTE	$F3 ; ó
		.BYTE	$1E
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	$1E
		.BYTE	1
		.BYTE	$F3 ; ó
		.BYTE	$1E
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	$1E
		.BYTE	1
		.BYTE	$D9 ; Ù
		.BYTE	$1E
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$1E
		.BYTE	1
		.BYTE	$D9 ; Ù
		.BYTE	$1E
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$1E
		.BYTE	1
		.BYTE	$CC ; Ì
		.BYTE	$1E
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$1E
		.BYTE	1
		.BYTE	$D9 ; Ù
		.BYTE	$1E
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$1E
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	 $A
		.BYTE	1
		.BYTE	$AD ; ­
		.BYTE	 $A
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	 $A
		.BYTE	1
		.BYTE	$AD ; ­
		.BYTE	 $A
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	 $A
		.BYTE	1
		.BYTE	$AD ; ­
		.BYTE	 $A
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	 $A
		.BYTE	$12
		.BYTE	$14
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	2
		.BYTE	1
		.BYTE	$1F
		.BYTE	2
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	2
		.BYTE	1
		.BYTE	$1F
		.BYTE	2
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	2
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$14
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	 $A
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$14
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	 $A
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$14
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$14
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	 $A
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	$14
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	 $A
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$14
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	$14
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$14
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	$14
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $A
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$1E
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$14
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	 $A
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$1E
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$78 ; x
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$14
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	 $A
		.BYTE	1
		.BYTE	$2D ; -
		.BYTE	$14
		.BYTE	1
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	1
		.BYTE	$1D
		.BYTE	$14
		.BYTE	1
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	1
		.BYTE	$2D ; -
		.BYTE	$14
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	 $A
		.BYTE	1
		.BYTE	$2D ; -
		.BYTE	$14
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	 $A
		.BYTE	1
		.BYTE	$28 ; (
		.BYTE	$14
		.BYTE	1
		.BYTE	$25 ; %
		.BYTE	 $A
		.BYTE	1
		.BYTE	$23 ; #
		.BYTE	$14
		.BYTE	1
		.BYTE	$25 ; %
		.BYTE	 $A
		.BYTE	1
		.BYTE	$28 ; (
		.BYTE	$14
		.BYTE	1
		.BYTE	$2D ; -
		.BYTE	 $A
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$14
		.BYTE	1
		.BYTE	$35 ; 5
		.BYTE	 $A
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	$1E
		.BYTE	1
		.BYTE	$2D ; -
		.BYTE	$14
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	 $A
		.BYTE	1
		.BYTE	$35 ; 5
		.BYTE	$1E
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$3C ; <
		.BYTE	2
		.BYTE	$88 ; 
		.BYTE	$A0 ;  
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$3C ; <
		.BYTE	2
		.BYTE	$FE ; þ
		.BYTE	$9F ; 
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
aYouThinkYouMay:.BYTE	"YOU THINK YOU MAYBE",0
		.BYTE	$0F,$00,$02,$01,$12,$0A
		.BYTE	$0F,$03,$08,$01,$12,$14
		.BYTE	$0F,$09,$0C,$01,$12,$0A
		.BYTE	$0F,$0D,$10,$01,$12,$14
		.BYTE	$0F,$11,$12,$01,$12,$0A
		.BYTE	$0E,$00
aTakeTheRingq:	.BYTE	"TAKE THE RING?",0
		.BYTE	$0F,$00,$03,$01,$12,$14
		.BYTE	 $F
		.BYTE	4
		.BYTE	7
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	8
		.BYTE	 $D
		.BYTE	1
		.BYTE	$12
		.BYTE	$5A ; Z
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$12
		.BYTE	$32 ; 2
		.BYTE	 $E
		.BYTE	0
aYouKnowTheTrol:.BYTE	"YOU KNOW THE TROLLS",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	3
		.BYTE	7
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	8
		.BYTE	 $B
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	 $C
		.BYTE	$12
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
aTheyWantItToo:	.BYTE	"THEY WANT IT TOO",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	4
		.BYTE	8
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	9
		.BYTE	 $B
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	 $C
		.BYTE	 $F
		.BYTE	1
		.BYTE	$12
		.BYTE	$1E
		.BYTE	 $F
		.BYTE	 $C
		.BYTE	 $F
		.BYTE	0
		.BYTE	$12
		.BYTE	$3C ; <
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$12
		.BYTE	$1E
		.BYTE	 $B
		.BYTE	0
		.BYTE	$45 ; E
		.BYTE	$A1 ; ¡
		.BYTE	$3B ; ;
		.BYTE	$A1 ; ¡
		.BYTE	$2E ; .
		.BYTE	$A1 ; ¡
		.BYTE	$16
		.BYTE	$A1 ; ¡
		.BYTE	$55 ; U
		.BYTE	$A1 ; ¡
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A1 ; ¡
		.BYTE	$A1 ; ¡
		.BYTE	$A1 ; ¡
		.BYTE	$A1 ; ¡
		.BYTE	$A1 ; ¡
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$10
		.BYTE	1
		.BYTE	1
		.BYTE	$18
		.BYTE	$18
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A7 ; §
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$10
		.BYTE	1
		.BYTE	1
		.BYTE	8
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	3
		.BYTE	5
		.BYTE	7
		.BYTE	9
		.BYTE	 $B
		.BYTE	 $D
		.BYTE	 $F
		.BYTE	$11
		.BYTE	$13
		.BYTE	$15
		.BYTE	$17
		.BYTE	$19
		.BYTE	$A6 ; ¦
		.BYTE	$A5 ; ¥
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$10
		.BYTE	1
		.BYTE	1
		.BYTE	3
		.BYTE	 $F
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$A4 ; ¤
		.BYTE	$10
		.BYTE	1
		.BYTE	1
		.BYTE	8
		.BYTE	 $F
		.BYTE	2
		.BYTE	$3F ; ?
		.BYTE	$A0 ;  
		.BYTE	 $A
		.BYTE	$7E ; ~
		.BYTE	$A1 ; ¡
		.BYTE	 $A
		.BYTE	$1B
		.BYTE	$A2 ; ¢
		.BYTE	$12
		.BYTE	$A0 ;  
		.BYTE	2
		.BYTE	$8C ; 
		.BYTE	$A0 ;  
		.BYTE	 $A
		.BYTE	$56 ; V
		.BYTE	$A3 ; £
		.BYTE	2
		.BYTE	$3F ; ?
		.BYTE	$A0 ;  
		.BYTE	 $A
		.BYTE	$88 ; 
		.BYTE	$A3 ; £
		.BYTE	0
		.BYTE	2
		.BYTE	$FA ; ú
		.BYTE	$9F ; 
		.BYTE	 $A
		.BYTE	$56 ; V
		.BYTE	$A1 ; ¡
		.BYTE	 $A
		.BYTE	$56 ; V
		.BYTE	$A1 ; ¡
		.BYTE	5
		.BYTE	$31 ; 1
		.BYTE	$A1 ; ¡
		.BYTE	0
		.BYTE	2
		.BYTE	$FA ; ú
		.BYTE	$9F ; 
		.BYTE	 $A
		.BYTE	$10
		.BYTE	$A3 ; £
		.BYTE	5
		.BYTE	$3B ; ;
		.BYTE	$A1 ; ¡
		.BYTE	0
		.BYTE	2
		.BYTE	$D1 ; Ñ
		.BYTE	$A0 ;  
		.BYTE	 $A
		.BYTE	$88 ; 
		.BYTE	$A3 ; £
		.BYTE	2
		.BYTE	$3F ; ?
		.BYTE	$A0 ;  
		.BYTE	 $A
		.BYTE	0
		.BYTE	$A4 ; ¤
		.BYTE	5
		.BYTE	$4E ; N
		.BYTE	$A1 ; ¡
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE	$84 ; 
		.BYTE	$A0 ;  
		.BYTE	2
		.BYTE	2
		.BYTE	$FA ; ú
		.BYTE	$9F ; 
		.BYTE	1
		.BYTE	$B6 ; ¶
		.BYTE	$14
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	$14
		.BYTE	1
		.BYTE	$C1 ; Á
		.BYTE	$14
		.BYTE	1
		.BYTE	$88 ; 
		.BYTE	$14
		.BYTE	1
		.BYTE	$B6 ; ¶
		.BYTE	$14
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	$14
		.BYTE	1
		.BYTE	$E6 ; æ
		.BYTE	$14
		.BYTE	2
		.BYTE	$3F ; ?
		.BYTE	$A0 ;  
		.BYTE	1
		.BYTE	$99 ; 
		.BYTE	$14
		.BYTE	4
		.BYTE	$84 ; 
		.BYTE	$A0 ;  
		.BYTE	$5A ; Z
		.BYTE	$A1 ; ¡
		.BYTE	 $B
		.BYTE	 $E
		.BYTE	0
aAh___comeIn:	.BYTE	"AH!...COME IN",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	5
		.BYTE	1
		.BYTE	1
		.BYTE	$2D ; -
		.BYTE	$33 ; 3
		.BYTE	 $F
		.BYTE	6
		.BYTE	9
		.BYTE	1
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	 $A
		.BYTE	 $C
		.BYTE	1
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	 $E
		.BYTE	0
aTheTrollKingCa:.BYTE	"THE TROLL KING CALLS",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	8
		.BYTE	$12
		.BYTE	2
		.BYTE	 $F
		.BYTE	3
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	9
		.BYTE	 $D
		.BYTE	1
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	 $E
		.BYTE	$13
		.BYTE	1
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $E
		.BYTE	0
aYouCrossTheRoo:.BYTE	"YOU 'CROSS THE ROOM",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	3
		.BYTE	9
		.BYTE	1
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	$28 ; (
		.BYTE	 $F
		.BYTE	 $A
		.BYTE	 $D
		.BYTE	1
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	 $E
		.BYTE	$12
		.BYTE	1
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	$50 ; P
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$12
		.BYTE	$13
		.BYTE	 $B
		.BYTE	 $E
		.BYTE	0
aDoBewareThis:	.BYTE	"DO BEWARE THIS",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$33 ; 3
		.BYTE	 $F
		.BYTE	2
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	5
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	9
		.BYTE	 $D
		.BYTE	1
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	8
		.BYTE	$12
		.BYTE	2
		.BYTE	 $E
		.BYTE	0
aHorridCarnivor:.BYTE	"HORRID CARNIVORE",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	3
		.BYTE	5
		.BYTE	1
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	6
		.BYTE	 $A
		.BYTE	1
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	 $B
		.BYTE	 $B
		.BYTE	1
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	 $C
		.BYTE	 $F
		.BYTE	1
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	$28 ; (
		.BYTE	 $E
		.BYTE	0
aDroolsDoom:	.BYTE	"DROOLS DOOM",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	5
		.BYTE	1
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	6
		.BYTE	 $A
		.BYTE	1
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	$3D ; =
		.BYTE	 $E
		.BYTE	0
aIfYouReInHisWa:.BYTE	"IF YOU'RE IN HIS WAY",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	2
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	9
		.BYTE	 $B
		.BYTE	1
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	 $C
		.BYTE	 $F
		.BYTE	1
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	$10
		.BYTE	$13
		.BYTE	1
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	$A0 ;  
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	$8C ; 
		.BYTE	 $E
		.BYTE	0
aDonTStay:	.BYTE	"DON'T STAY",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$14
		.BYTE	 $F
		.BYTE	5
		.BYTE	9
		.BYTE	1
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$F0 ; ð
		.BYTE	 $F
		.BYTE	5
		.BYTE	9
		.BYTE	0
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$4E ; N
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$12
		.BYTE	1
		.BYTE	 $B
		.BYTE	7
		.BYTE	$8B ; 
		.BYTE	$A0 ;  
		.BYTE	2
		.BYTE	1
		.BYTE	$2D ; -
		.BYTE	$14
		.BYTE	1
		.BYTE	$1D
		.BYTE	$14
		.BYTE	1
		.BYTE	$2F ; /
		.BYTE	$14
		.BYTE	1
		.BYTE	$21 ; !
		.BYTE	$14
		.BYTE	1
		.BYTE	$2D ; -
		.BYTE	$14
		.BYTE	1
		.BYTE	$1D
		.BYTE	$14
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	3
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	2
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	3
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	2
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	3
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	2
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	5
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	3
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	2
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	3
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	2
		.BYTE	1
		.BYTE	$80 ; 
		.BYTE	3
		.BYTE	1
		.BYTE	$88 ; 
		.BYTE	2
		.BYTE	1
		.BYTE	$90 ; 
		.BYTE	5
		.BYTE	4
		.BYTE	$8B ; 
		.BYTE	$A0 ;  
		.BYTE	$14
		.BYTE	$A3 ; £
		.BYTE	 $B
		.BYTE	2
		.BYTE	$8C ; 
		.BYTE	$A0 ;  
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $B
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	9
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$63 ; c
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$14
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	$14
		.BYTE	1
		.BYTE	$2D ; -
		.BYTE	$1F
		.BYTE	1
		.BYTE	$28 ; (
		.BYTE	$1B
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	$67 ; g
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$1F
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	$1B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$62 ; b
		.BYTE	$12
		.BYTE	3
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$1E
		.BYTE	$12
		.BYTE	1
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$1C
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	$66 ; f
		.BYTE	 $B
		.BYTE	1
		.BYTE	$2D ; -
		.BYTE	$31 ; 1
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	 $A
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	8
		.BYTE	$12
		.BYTE	2
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	$50 ; P
		.BYTE	$12
		.BYTE	$13
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$33 ; 3
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	 $A
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	8
		.BYTE	$12
		.BYTE	2
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	$12
		.BYTE	 $A
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	$3D ; =
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	 $A
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $A
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	 $A
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $A
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	$A0 ;  
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	$8C ; 
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$14
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$F0 ; ð
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$50 ; P
		.BYTE	 $B
		.BYTE	7
		.BYTE	$8A ; 
		.BYTE	$A0 ;  
		.BYTE	2
		.BYTE	2
		.BYTE	$FA ; ú
		.BYTE	$9F ; 
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	$14
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$14
		.BYTE	1
		.BYTE	$88 ; 
		.BYTE	$14
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	$14
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	$14
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$14
		.BYTE	1
		.BYTE	$99 ; 
		.BYTE	$14
		.BYTE	2
		.BYTE	$3F ; ?
		.BYTE	$A0 ;  
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	$14
		.BYTE	4
		.BYTE	$8A ; 
		.BYTE	$A0 ;  
		.BYTE	4
		.BYTE	$A4 ; ¤
		.BYTE	 $B

byte_890B:
		.BYTE	$1B
		.BYTE	3
		.BYTE	$6F ; o
		.BYTE	$1B
		.BYTE	2
		.BYTE	$5B ; [
		.BYTE	 $B
		.BYTE	$E5 ; å
		.BYTE	$E5 ; å
		.BYTE	$E1 ; á
		.BYTE	$E0 ; à
		.BYTE	$E4 ; ä
		.BYTE	$E4 ; ä
		.BYTE	$E5 ; å
		.BYTE	$D5 ; Õ
		.BYTE	$FA ; ú
		.BYTE	$B9 ; ¹
		.BYTE	$B9 ; ¹
		.BYTE	$B5 ; µ
		.BYTE	$75 ; u
		.BYTE	$75 ; u
		.BYTE	$15
		.BYTE	5
		.BYTE	$BF ; ¿
		.BYTE	$BF ; ¿
		.BYTE	$BE ; ¾
		.BYTE	$AE ; ®
		.BYTE	$6E ; n
		.BYTE	$1B
		.BYTE	2
		.BYTE	$6D ; m
		.BYTE	$AB ; «
		.BYTE	$9B ; 
		.BYTE	$9B ; 
		.BYTE	$5B ; [
		.BYTE	$5A ; Z
		.BYTE	$1B
		.BYTE	2
		.BYTE	$52 ; R
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FE ; þ
		.BYTE	$FA ; ú
		.BYTE	$F8 ; ø
		.BYTE	$97 ; 
		.BYTE	$97 ; 
		.BYTE	$95 ; 
		.BYTE	$15
		.BYTE	$15
		.BYTE	5
		.BYTE	4
		.BYTE	0
		.BYTE	$FF
		.BYTE	$FD ; ý
		.BYTE	$FD ; ý
		.BYTE	$F5 ; õ
		.BYTE	$71 ; q
		.BYTE	0
		.BYTE	$14
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$7F ; 
		.BYTE	$41 ; A
		.BYTE	$11
		.BYTE	1
		.BYTE	$FF
		.BYTE	$DF ; ß
		.BYTE	$DF ; ß
		.BYTE	$5F ; _
		.BYTE	$5F ; _
		.BYTE	$40 ; @
		.BYTE	$44 ; D
		.BYTE	5
		.BYTE	$FA ; ú
		.BYTE	$D6 ; Ö
		.BYTE	$D6 ; Ö
		.BYTE	$D5 ; Õ
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$FF
		.BYTE	$BE ; ¾
		.BYTE	$6E ; n
		.BYTE	$6A ; j
		.BYTE	$6A ; j
		.BYTE	$4A ; J
		.BYTE	 $A
		.BYTE	$1A
		.BYTE	$1B
		.BYTE	3
		.BYTE	$AA ; ª
		.BYTE	$6A ; j
		.BYTE	$6A ; j
		.BYTE	$5A ; Z
		.BYTE	$5A ; Z
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AF ; ¯
		.BYTE	$B7 ; ·
		.BYTE	$B7 ; ·
		.BYTE	$A1 ; ¡
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	2
		.BYTE	$EA ; ê
		.BYTE	$1B
		.BYTE	5
		.BYTE	$AA ; ª
		.BYTE	$A6 ; ¦
		.BYTE	$A6 ; ¦
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$95 ; 
		.BYTE	$AA ; ª
		.BYTE	$9A ; 
		.BYTE	$5A ; Z
		.BYTE	$56 ; V
		.BYTE	$56 ; V
		.BYTE	$55 ; U
		.BYTE	$5D ; ]
		.BYTE	$5D ; ]
		.BYTE	$EA ; ê
		.BYTE	$E9 ; é
		.BYTE	$A9 ; ©
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$95 ; 
		.BYTE	$DD ; Ý
		.BYTE	$DD ; Ý
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$6A ; j
		.BYTE	$6A ; j
		.BYTE	$1B
		.BYTE	2
		.BYTE	$5A ; Z
		.BYTE	$56 ; V
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FA ; ú
		.BYTE	$EA ; ê
		.BYTE	$EA ; ê
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A9 ; ©
		.BYTE	$AB ; «
		.BYTE	$9A ; 
		.BYTE	$9A ; 
		.BYTE	$5A ; Z
		.BYTE	$1B
		.BYTE	3
		.BYTE	$56 ; V
		.BYTE	$EA ; ê
		.BYTE	$EB ; ë
		.BYTE	$EB ; ë
		.BYTE	$AF ; ¯
		.BYTE	$AF ; ¯
		.BYTE	$A1 ; ¡
		.BYTE	$91 ; 
		.BYTE	$91 ; 
		.BYTE	$FE ; þ
		.BYTE	$BA ; º
		.BYTE	$AA ; ª
		.BYTE	$A9 ; ©
		.BYTE	$A9 ; ©
		.BYTE	$E9 ; é
		.BYTE	$E9 ; é
		.BYTE	$64 ; d
		.BYTE	$BF ; ¿
		.BYTE	$FF
		.BYTE	$7F ; 
		.BYTE	$7C ; |
		.BYTE	$4C ; L
		.BYTE	$41 ; A
		.BYTE	$45 ; E
		.BYTE	5
		.BYTE	$FF
		.BYTE	$FD ; ý
		.BYTE	$F5 ; õ
		.BYTE	$F1 ; ñ
		.BYTE	$F0 ; ð
		.BYTE	4
		.BYTE	$14
		.BYTE	$15
		.BYTE	$F5 ; õ
		.BYTE	$D5 ; Õ
		.BYTE	$D5 ; Õ
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$10
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$5B ; [
		.BYTE	$4A ; J
		.BYTE	$46 ; F
		.BYTE	6
		.BYTE	$56 ; V
		.BYTE	$16
		.BYTE	$FF
		.BYTE	$EA ; ê
		.BYTE	$E6 ; æ
		.BYTE	$E6 ; æ
		.BYTE	$E5 ; å
		.BYTE	$E5 ; å
		.BYTE	$D5 ; Õ
		.BYTE	$D5 ; Õ
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	$BF ; ¿
		.BYTE	$AF ; ¯
		.BYTE	$FF
		.BYTE	$FA ; ú
		.BYTE	$F9 ; ù
		.BYTE	$F9 ; ù
		.BYTE	$E9 ; é
		.BYTE	$1B
		.BYTE	2
		.BYTE	$E5 ; å
		.BYTE	$FF
		.BYTE	$BF ; ¿
		.BYTE	$1B
		.BYTE	2
		.BYTE	$BE ; ¾
		.BYTE	$BD ; ½
		.BYTE	$AD ; ­
		.BYTE	$6D ; m
		.BYTE	$BF ; ¿
		.BYTE	$BF ; ¿
		.BYTE	$AE ; ®
		.BYTE	$6D ; m
		.BYTE	$5D ; ]
		.BYTE	$5D ; ]
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$BF ; ¿
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AF ; ¯
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FF
		.BYTE	$FD ; ý
		.BYTE	$FC ; ü
		.BYTE	$7C ; |
		.BYTE	$1B
		.BYTE	4
		.BYTE	$D5 ; Õ
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$10
		.BYTE	$FF
		.BYTE	$FE ; þ
		.BYTE	$FE ; þ
		.BYTE	$7E ; ~
		.BYTE	$4A ; J
		.BYTE	 $A
		.BYTE	$1A
		.BYTE	$59 ; Y
		.BYTE	$FF
		.BYTE	$BF ; ¿
		.BYTE	$AF ; ¯
		.BYTE	$6F ; o
		.BYTE	$6E ; n
		.BYTE	$6E ; n
		.BYTE	$5E ; ^
		.BYTE	$5E ; ^
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$BF ; ¿
		.BYTE	$BF ; ¿
		.BYTE	$AF ; ¯
		.BYTE	$1B
		.BYTE	2
		.BYTE	$6F ; o
		.BYTE	$FA ; ú
		.BYTE	$FA ; ú
		.BYTE	$E9 ; é
		.BYTE	$1B
		.BYTE	4
		.BYTE	$E5 ; å
		.BYTE	$FE ; þ
		.BYTE	$BA ; º
		.BYTE	$B9 ; ¹
		.BYTE	$B9 ; ¹
		.BYTE	$79 ; y
		.BYTE	$75 ; u
		.BYTE	$75 ; u
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	0
		.BYTE	$1B
		.BYTE	$5B ; [
		.BYTE	$57 ; W
		.BYTE	$57 ; W
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	$45 ; E
		.BYTE	$15
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	0
		.BYTE	$15
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$44 ; D
		.BYTE	$40 ; @
		.BYTE	$51 ; Q
		.BYTE	0
		.BYTE	$40 ; @
		.BYTE	$41 ; A
		.BYTE	$45 ; E
		.BYTE	5
		.BYTE	 $D
		.BYTE	$5D ; ]
		.BYTE	$5D ; ]
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$42 ; B
		.BYTE	$1B
		.BYTE	3
		.BYTE	$40 ; @
		.BYTE	$1B
		.BYTE	2
		.BYTE	0
		.BYTE	$F8 ; ø
		.BYTE	$F8 ; ø
		.BYTE	$1B
		.BYTE	3
		.BYTE	$38 ; 8
		.BYTE	8
		.BYTE	8
		.BYTE	$1B
		.BYTE	2
		.BYTE	5
		.BYTE	$1B
		.BYTE	4
		.BYTE	1
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	$40 ; @
		.BYTE	$41 ; A
		.BYTE	 $D
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$CC ; Ì
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	2
		.BYTE	$D5 ; Õ
		.BYTE	$D4 ; Ô
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	5
		.BYTE	$40 ; @
		.BYTE	$44 ; D
		.BYTE	4
		.BYTE	$35 ; 5
		.BYTE	$1A
		.BYTE	$1B
		.BYTE	2
		.BYTE	$58 ; X
		.BYTE	$50 ; P
		.BYTE	$51 ; Q
		.BYTE	5
		.BYTE	$75 ; u
		.BYTE	$5A ; Z
		.BYTE	$5A ; Z
		.BYTE	6
		.BYTE	$52 ; R
		.BYTE	$1B
		.BYTE	3
		.BYTE	$56 ; V
		.BYTE	$1B
		.BYTE	2
		.BYTE	$95 ; 
		.BYTE	$85 ; 
		.BYTE	$85 ; 
		.BYTE	$45 ; E
		.BYTE	$50 ; P
		.BYTE	$51 ; Q
		.BYTE	$62 ; b
		.BYTE	$62 ; b
		.BYTE	$40 ; @
		.BYTE	$4C ; L
		.BYTE	$4C ; L
		.BYTE	0
		.BYTE	$12
		.BYTE	$52 ; R
		.BYTE	$1B
		.BYTE	5
		.BYTE	$9A ; 
		.BYTE	$5A ; Z
		.BYTE	$6A ; j
		.BYTE	$AF ; ¯
		.BYTE	$A0 ;  
		.BYTE	$AF ; ¯
		.BYTE	$AC ; ¬
		.BYTE	$AD ; ­
		.BYTE	$AF ; ¯
		.BYTE	$AF ; ¯
		.BYTE	$AB ; «
		.BYTE	$FE ; þ
		.BYTE	2
		.BYTE	$FE ; þ
		.BYTE	$CE ; Î
		.BYTE	$1E
		.BYTE	$FE ; þ
		.BYTE	$3E ; >
		.BYTE	$FA ; ú
		.BYTE	$1B
		.BYTE	6
		.BYTE	$A6 ; ¦
		.BYTE	$A5 ; ¥
		.BYTE	$A8 ; ¨
		.BYTE	$A8 ; ¨
		.BYTE	$A9 ; ©
		.BYTE	$A9 ; ©
		.BYTE	$1B
		.BYTE	3
		.BYTE	$A5 ; ¥
		.BYTE	$56 ; V
		.BYTE	$15
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	$91 ; 
		.BYTE	$1B
		.BYTE	2
		.BYTE	$95 ; 
		.BYTE	$94 ; 
		.BYTE	$90 ; 
		.BYTE	1
		.BYTE	$10
		.BYTE	$65 ; e
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	1
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$5D ; ]
		.BYTE	$15
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$5D ; ]
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	5
		.BYTE	$15
		.BYTE	4
		.BYTE	$43 ; C
		.BYTE	$53 ; S
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$75 ; u
		.BYTE	$FD ; ý
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	5
		.BYTE	$40 ; @
		.BYTE	$41 ; A
		.BYTE	$51 ; Q
		.BYTE	$41 ; A
		.BYTE	5
		.BYTE	$15
		.BYTE	$14
		.BYTE	$D5 ; Õ
		.BYTE	$C0 ; À
		.BYTE	$D4 ; Ô
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	$40 ; @
		.BYTE	4
		.BYTE	$15
		.BYTE	$6F ; o
		.BYTE	$2B ; +
		.BYTE	$1B
		.BYTE	0
		.BYTE	$1B
		.BYTE	$5B ; [
		.BYTE	$5B ; [
		.BYTE	$57 ; W
		.BYTE	$17
		.BYTE	$16
		.BYTE	$E5 ; å
		.BYTE	$E1 ; á
		.BYTE	$E0 ; à
		.BYTE	$D4 ; Ô
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$6D ; m
		.BYTE	$6D ; m
		.BYTE	$5D ; ]
		.BYTE	$1D
		.BYTE	 $C
		.BYTE	$40 ; @
		.BYTE	$41 ; A
		.BYTE	5
		.BYTE	$50 ; P
		.BYTE	$51 ; Q
		.BYTE	$41 ; A
		.BYTE	0
		.BYTE	$14
		.BYTE	$1B
		.BYTE	2
		.BYTE	$15
		.BYTE	$AF ; ¯
		.BYTE	$AB ; «
		.BYTE	$6B ; k
		.BYTE	$6B ; k
		.BYTE	$1B
		.BYTE	0
		.BYTE	$1B
		.BYTE	 $B
		.BYTE	$4B ; K
		.BYTE	$5B ; [
		.BYTE	$5D ; ]
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$44 ; D
		.BYTE	$45 ; E
		.BYTE	$45 ; E
		.BYTE	$1B
		.BYTE	2
		.BYTE	5
		.BYTE	$59 ; Y
		.BYTE	9
		.BYTE	1
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$5D ; ]
		.BYTE	$5D ; ]
		.BYTE	$41 ; A
		.BYTE	5
		.BYTE	$15
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$6F ; o
		.BYTE	$6B ; k
		.BYTE	$5B ; [
		.BYTE	$5B ; [
		.BYTE	 $B
		.BYTE	$1B
		.BYTE	0
		.BYTE	$1B
		.BYTE	$A5 ; ¥
		.BYTE	$95 ; 
		.BYTE	$94 ; 
		.BYTE	$90 ; 
		.BYTE	$81 ; 
		.BYTE	$85 ; 
		.BYTE	$95 ; 
		.BYTE	$95 ; 
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$10
		.BYTE	$50 ; P
		.BYTE	$1B
		.BYTE	3
		.BYTE	$40 ; @
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$40 ; @
		.BYTE	$45 ; E
		.BYTE	5
		.BYTE	$15
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$51 ; Q
		.BYTE	$41 ; A
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	 $F
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	$1B
		.BYTE	3
		.BYTE	0
		.BYTE	$65 ; e
		.BYTE	$95 ; 
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	$40 ; @
		.BYTE	$70 ; p
		.BYTE	$CC ; Ì
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$F3 ; ó
		.BYTE	$7F ; 
		.BYTE	$3F ; ?
		.BYTE	 $C
		.BYTE	0
		.BYTE	$1B
		.BYTE	3
		.BYTE	$D5 ; Õ
		.BYTE	$55 ; U
		.BYTE	1
		.BYTE	0
		.BYTE	3
		.BYTE	$75 ; u
		.BYTE	$1B
		.BYTE	2
		.BYTE	$77 ; w
		.BYTE	$7F ; 
		.BYTE	$3F ; ?
		.BYTE	7
		.BYTE	$47 ; G
		.BYTE	$75 ; u
		.BYTE	$70 ; p
		.BYTE	$34 ; 4
		.BYTE	$75 ; u
		.BYTE	$F5 ; õ
		.BYTE	$F5 ; õ
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$10
		.BYTE	1
		.BYTE	$45 ; E
		.BYTE	5
		.BYTE	$15
		.BYTE	5
		.BYTE	1
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$52 ; R
		.BYTE	$12
		.BYTE	$22 ; "
		.BYTE	$62 ; b
		.BYTE	$62 ; b
		.BYTE	$6A ; j
		.BYTE	$6A ; j
		.BYTE	$1B
		.BYTE	3
		.BYTE	$68 ; h
		.BYTE	$60 ; `
		.BYTE	$50 ; P
		.BYTE	$1B
		.BYTE	3
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$C0 ; À
		.BYTE	 $C
		.BYTE	0
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$F0 ; ð
		.BYTE	2
		.BYTE	$29 ; )
		.BYTE	9
		.BYTE	9
		.BYTE	1
		.BYTE	1
		.BYTE	$80 ; 
		.BYTE	$80 ; 
		.BYTE	$A0 ;  
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$A4 ; ¤
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A9 ; ©
		.BYTE	$29 ; )
		.BYTE	$29 ; )
		.BYTE	$41 ; A
		.BYTE	5
		.BYTE	5
		.BYTE	$45 ; E
		.BYTE	$41 ; A
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$51 ; Q
		.BYTE	$51 ; Q
		.BYTE	$1D
		.BYTE	 $D
		.BYTE	 $C
		.BYTE	$1C
		.BYTE	$5F ; _
		.BYTE	$5F ; _
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$5D ; ]
		.BYTE	$DD ; Ý
		.BYTE	$DC ; Ü
		.BYTE	$CD ; Í
		.BYTE	$FC ; ü
		.BYTE	$FC ; ü
		.BYTE	$D5 ; Õ
		.BYTE	$D5 ; Õ
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	2
		.BYTE	$57 ; W
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	3
		.BYTE	$33 ; 3
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$CD ; Í
		.BYTE	$FD ; ý
		.BYTE	$FC ; ü
		.BYTE	0
		.BYTE	$10
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$D5 ; Õ
		.BYTE	$F5 ; õ
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$15
		.BYTE	5
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$1B
		.BYTE	2
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$40 ; @
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	1
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	1
		.BYTE	5
		.BYTE	$45 ; E
		.BYTE	$45 ; E
		.BYTE	$41 ; A
		.BYTE	$51 ; Q
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	$40 ; @
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	5
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$41 ; A
		.BYTE	5
		.BYTE	$1B
		.BYTE	2
		.BYTE	$15
		.BYTE	5
		.BYTE	$45 ; E
		.BYTE	$41 ; A
		.BYTE	$41 ; A
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	5
		.BYTE	5
		.BYTE	1
		.BYTE	$1B
		.BYTE	2
		.BYTE	$10
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	$59 ; Y
		.BYTE	$15
		.BYTE	$15
		.BYTE	0
		.BYTE	$40 ; @
		.BYTE	$45 ; E
		.BYTE	5
		.BYTE	$15
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$40 ; @
		.BYTE	$1B
		.BYTE	6
		.BYTE	0
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$52 ; R
		.BYTE	$3D ; =
		.BYTE	$FF
		.BYTE	$F7 ; ÷
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$7E ; ~
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$EA ; ê
		.BYTE	$A8 ; ¨
		.BYTE	$59 ; Y
		.BYTE	$58 ; X
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$5A ; Z
		.BYTE	$55 ; U
		.BYTE	$95 ; 
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$99 ; 
		.BYTE	$4A ; J
		.BYTE	$AA ; ª
		.BYTE	$EA ; ê
		.BYTE	$D9 ; Ù
		.BYTE	$EA ; ê
		.BYTE	$AB ; «
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FD ; ý
		.BYTE	$E0 ; à
		.BYTE	$7F ; 
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$7F ; 
		.BYTE	$FC ; ü
		.BYTE	 $D
		.BYTE	$FF
		.BYTE	$F7 ; ÷
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$EB ; ë
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$EA ; ê
		.BYTE	$A8 ; ¨
		.BYTE	$59 ; Y
		.BYTE	$59 ; Y
		.BYTE	$56 ; V
		.BYTE	$55 ; U
		.BYTE	$56 ; V
		.BYTE	$65 ; e
		.BYTE	$95 ; 
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$41 ; A
		.BYTE	$45 ; E
		.BYTE	5
		.BYTE	$15
		.BYTE	$11
		.BYTE	0
		.BYTE	4
		.BYTE	$14
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$40 ; @
		.BYTE	5
		.BYTE	$15
		.BYTE	$15
		.BYTE	5
		.BYTE	$15
		.BYTE	$15
		.BYTE	0
		.BYTE	$14
		.BYTE	5
		.BYTE	$45 ; E
		.BYTE	$41 ; A
		.BYTE	$1B
		.BYTE	3
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$40 ; @
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$1B
		.BYTE	$17
		.BYTE	0
		.BYTE	$70 ; p
		.BYTE	$70 ; p
		.BYTE	$1B
		.BYTE	2
		.BYTE	$7C ; |
		.BYTE	$1B
		.BYTE	2
		.BYTE	$7F ; 
		.BYTE	0
		.BYTE	3
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$FF
		.BYTE	$FC ; ü
		.BYTE	$C0 ; À
		.BYTE	$C0 ; À
		.BYTE	3
		.BYTE	$C3 ; Ã
		.BYTE	$1B
		.BYTE	2
		.BYTE	$CF ; Ï
		.BYTE	$17
		.BYTE	$17
		.BYTE	$15
		.BYTE	$40 ; @
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	2
		.BYTE	$D4 ; Ô
		.BYTE	$F7 ; ÷
		.BYTE	$F7 ; ÷
		.BYTE	$FF
		.BYTE	$10
		.BYTE	1
		.BYTE	$45 ; E
		.BYTE	$45 ; E
		.BYTE	$41 ; A
		.BYTE	$D1 ; Ñ
		.BYTE	$D0 ; Ð
		.BYTE	$C0 ; À
		.BYTE	$46 ; F
		.BYTE	$42 ; B
		.BYTE	$52 ; R
		.BYTE	$1B
		.BYTE	4
		.BYTE	$56 ; V
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	$52 ; R
		.BYTE	$56 ; V
		.BYTE	$96 ; 
		.BYTE	$A2 ; ¢
		.BYTE	$1B
		.BYTE	3
		.BYTE	$AF ; ¯
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A2 ; ¢
		.BYTE	$B0 ; °
		.BYTE	$FC ; ü
		.BYTE	$FE ; þ
		.BYTE	$DA ; Ú
		.BYTE	$1B
		.BYTE	2
		.BYTE	$9A ; 
		.BYTE	$96 ; 
		.BYTE	$A0 ;  
		.BYTE	$A5 ; ¥
		.BYTE	$A0 ;  
		.BYTE	$A0 ;  
		.BYTE	$80 ; 
		.BYTE	$80 ; 
		.BYTE	0
		.BYTE	0
		.BYTE	$82 ; 
		.BYTE	$96 ; 
		.BYTE	$82 ; 
		.BYTE	2
		.BYTE	$1B
		.BYTE	3
		.BYTE	0
		.BYTE	$BF ; ¿
		.BYTE	$BE ; ¾
		.BYTE	$BE ; ¾
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A6 ; ¦
		.BYTE	$26 ; &
		.BYTE	$26 ; &
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A9 ; ©
		.BYTE	$1B
		.BYTE	4
		.BYTE	$AA ; ª
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	$45 ; E
		.BYTE	5
		.BYTE	$15
		.BYTE	$1B
		.BYTE	2
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$55 ; U
		.BYTE	$95 ; 
		.BYTE	$95 ; 
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$17
		.BYTE	7
		.BYTE	$47 ; G
		.BYTE	$41 ; A
		.BYTE	$15
		.BYTE	$15
		.BYTE	$17
		.BYTE	$17
		.BYTE	$F7 ; ÷
		.BYTE	$F7 ; ÷
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$C0 ; À
		.BYTE	$F0 ; ð
		.BYTE	$F3 ; ó
		.BYTE	$F3 ; ó
		.BYTE	$D3 ; Ó
		.BYTE	$DF ; ß
		.BYTE	3
		.BYTE	 $F
		.BYTE	$3C ; <
		.BYTE	$F0 ; ð
		.BYTE	$C0 ; À
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$3F ; ?
		.BYTE	 $D
		.BYTE	 $D
		.BYTE	$3D ; =
		.BYTE	$3D ; =
		.BYTE	$FD ; ý
		.BYTE	$FD ; ý
		.BYTE	$F5 ; õ
		.BYTE	$F5 ; õ
		.BYTE	$45 ; E
		.BYTE	$41 ; A
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	1
		.BYTE	$10
		.BYTE	$45 ; E
		.BYTE	$45 ; E
		.BYTE	0
		.BYTE	$14
		.BYTE	$15
		.BYTE	$1B
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	5
		.BYTE	$40 ; @
		.BYTE	$50 ; P
		.BYTE	$51 ; Q
		.BYTE	$40 ; @
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	$1B
		.BYTE	2
		.BYTE	5
		.BYTE	$41 ; A
		.BYTE	$51 ; Q
		.BYTE	5
		.BYTE	$45 ; E
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	5
		.BYTE	5
		.BYTE	$15
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	5
		.BYTE	$15
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	5
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$10
		.BYTE	1
		.BYTE	$41 ; A
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	1
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	$40 ; @
		.BYTE	4
		.BYTE	$1B
		.BYTE	7
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$51 ; Q
		.BYTE	$41 ; A
		.BYTE	$45 ; E
		.BYTE	$45 ; E
		.BYTE	5
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$14
		.BYTE	4
		.BYTE	$40 ; @
		.BYTE	$1B
		.BYTE	2
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	4
		.BYTE	$15
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$10
		.BYTE	0
		.BYTE	$40 ; @
		.BYTE	$40 ; @
		.BYTE	0
		.BYTE	$10
		.BYTE	$10
		.BYTE	$1B
		.BYTE	6
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	0
		.BYTE	 $F
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$15
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FC ; ü
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	6
		.BYTE	0
		.BYTE	$95 ; 
		.BYTE	$1B
		.BYTE	3
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	2
		.BYTE	 $F
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	6
		.BYTE	$FC ; ü
		.BYTE	$C0 ; À
		.BYTE	$FC ; ü
		.BYTE	$1B
		.BYTE	5
		.BYTE	$FF
		.BYTE	$56 ; V
		.BYTE	$16
		.BYTE	$1A
		.BYTE	$1A
		.BYTE	$3A ; :
		.BYTE	$FA ; ú
		.BYTE	$EA ; ê
		.BYTE	$EA ; ê
		.BYTE	$96 ; 
		.BYTE	$96 ; 
		.BYTE	$9E ; 
		.BYTE	$BE ; ¾
		.BYTE	$1B
		.BYTE	3
		.BYTE	$AE ; ®
		.BYTE	$1B
		.BYTE	7
		.BYTE	$A2 ; ¢
		.BYTE	$1B
		.BYTE	5
		.BYTE	$A6 ; ¦
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	5
		.BYTE	0
		.BYTE	$80 ; 
		.BYTE	$82 ; 
		.BYTE	$1B
		.BYTE	6
		.BYTE	0
		.BYTE	$A0 ;  
		.BYTE	$16
		.BYTE	$1B
		.BYTE	4
		.BYTE	$1A
		.BYTE	$1B
		.BYTE	9
		.BYTE	$AA ; ª
		.BYTE	$55 ; U
		.BYTE	$96 ; 
		.BYTE	$1B
		.BYTE	2
		.BYTE	$BE ; ¾
		.BYTE	$1B
		.BYTE	2
		.BYTE	$BA ; º
		.BYTE	$1B
		.BYTE	2
		.BYTE	$95 ; 
		.BYTE	$BD ; ½
		.BYTE	$1B
		.BYTE	3
		.BYTE	$AF ; ¯
		.BYTE	$51 ; Q
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$D4 ; Ô
		.BYTE	$FC ; ü
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	5
		.BYTE	$1B
		.BYTE	5
		.BYTE	$15
		.BYTE	$5A ; Z
		.BYTE	$1B
		.BYTE	6
		.BYTE	$50 ; P
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	6
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$40 ; @
		.BYTE	$14
		.BYTE	$1B
		.BYTE	2
		.BYTE	$15
		.BYTE	4
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	5
		.BYTE	$15
		.BYTE	5
		.BYTE	$45 ; E
		.BYTE	$41 ; A
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	$5F ; _
		.BYTE	$41 ; A
		.BYTE	$45 ; E
		.BYTE	$45 ; E
		.BYTE	5
		.BYTE	$1B
		.BYTE	2
		.BYTE	$15
		.BYTE	$FF
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	$45 ; E
		.BYTE	5
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	0
		.BYTE	$14
		.BYTE	$1B
		.BYTE	6
		.BYTE	$55 ; U
		.BYTE	$14
		.BYTE	0
		.BYTE	$41 ; A
		.BYTE	$1B
		.BYTE	2
		.BYTE	$51 ; Q
		.BYTE	$41 ; A
		.BYTE	5
		.BYTE	$15
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	6
		.BYTE	$55 ; U
		.BYTE	$14
		.BYTE	4
		.BYTE	$40 ; @
		.BYTE	$51 ; Q
		.BYTE	$5D ; ]
		.BYTE	$50 ; P
		.BYTE	$40 ; @
		.BYTE	5
		.BYTE	$15
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$15
		.BYTE	5
		.BYTE	$45 ; E
		.BYTE	$41 ; A
		.BYTE	$50 ; P
		.BYTE	$1B
		.BYTE	4
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	3
		.BYTE	$50 ; P
		.BYTE	$1B
		.BYTE	7
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$40 ; @
		.BYTE	1
		.BYTE	5
		.BYTE	$45 ; E
		.BYTE	$41 ; A
		.BYTE	$51 ; Q
		.BYTE	$51 ; Q
		.BYTE	0
		.BYTE	0
		.BYTE	$1B
		.BYTE	3
		.BYTE	$51 ; Q
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$51 ; Q
		.BYTE	1
		.BYTE	$4D ; M
		.BYTE	$4F ; O
		.BYTE	$7F ; 
		.BYTE	$FF
		.BYTE	$53 ; S
		.BYTE	$5F ; _
		.BYTE	$5F ; _
		.BYTE	$7F ; 
		.BYTE	$1B
		.BYTE	$1B
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	7
		.BYTE	$FC ; ü
		.BYTE	$1B
		.BYTE	7
		.BYTE	 $C
		.BYTE	$1B
		.BYTE	7
		.BYTE	 $F
		.BYTE	$1B
		.BYTE	7
		.BYTE	$FC ; ü
		.BYTE	$FB ; û
		.BYTE	$FB ; û
		.BYTE	$FA ; ú
		.BYTE	$1B
		.BYTE	2
		.BYTE	$EA ; ê
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	4
		.BYTE	$EA ; ê
		.BYTE	$1B
		.BYTE	7
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	5
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$AF ; ¯
		.BYTE	$AF ; ¯
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AB ; «
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AA ; ª
		.BYTE	$EF ; ï
		.BYTE	$EF ; ï
		.BYTE	$AF ; ¯
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AB ; «
		.BYTE	$AA ; ª
		.BYTE	$AA ; ª
		.BYTE	$3D ; =
		.BYTE	$1B
		.BYTE	6
		.BYTE	$3F ; ?
		.BYTE	$70 ; p
		.BYTE	$1B
		.BYTE	6
		.BYTE	$F0 ; ð
		.BYTE	0
		.BYTE	0
		.BYTE	$1B
		.BYTE	5
		.BYTE	$30 ; 0
		.BYTE	$1B
		.BYTE	7
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$FF
		.BYTE	5
		.BYTE	$1B
		.BYTE	6
		.BYTE	$FF
		.BYTE	$5F ; _
		.BYTE	$1B
		.BYTE	$26 ; &
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	6
		.BYTE	$FF
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	6
		.BYTE	$FF
		.BYTE	$50 ; P
		.BYTE	$D0 ; Ð
		.BYTE	$1B
		.BYTE	5
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	0
		.BYTE	$F0 ; ð
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$11
		.BYTE	$1F
		.BYTE	$F5 ; õ
		.BYTE	$1B
		.BYTE	7
		.BYTE	$FF
		.BYTE	$2F ; /
		.BYTE	$FA ; ú
		.BYTE	$AF ; ¯
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FA ; ú
		.BYTE	$BF ; ¿
		.BYTE	$FB ; û
		.BYTE	$FC ; ü
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$FA ; ú
		.BYTE	$AA ; ª
		.BYTE	$FA ; ú
		.BYTE	$AE ; ®
		.BYTE	$AA ; ª
		.BYTE	$5A ; Z
		.BYTE	$F5 ; õ
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	0
		.BYTE	$1A
		.BYTE	$F6 ; ö
		.BYTE	$AA ; ª
		.BYTE	$B9 ; ¹
		.BYTE	$55 ; U
		.BYTE	$4D ; M
		.BYTE	$11
		.BYTE	$17
		.BYTE	$FC ; ü
		.BYTE	$7F ; 
		.BYTE	$1B
		.BYTE	6
		.BYTE	$FF
		.BYTE	$6F ; o
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AB ; «
		.BYTE	$FF
		.BYTE	$FB ; û
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FF
		.BYTE	$50 ; P
		.BYTE	$74 ; t
		.BYTE	$75 ; u
		.BYTE	$D5 ; Õ
		.BYTE	$A5 ; ¥
		.BYTE	$65 ; e
		.BYTE	$65 ; e
		.BYTE	$69 ; i
		.BYTE	$5F ; _
		.BYTE	$1F
		.BYTE	$D7 ; ×
		.BYTE	$D5 ; Õ
		.BYTE	$F5 ; õ
		.BYTE	$66 ; f
		.BYTE	$76 ; v
		.BYTE	$9A ; 
		.BYTE	$FF
		.BYTE	$FE ; þ
		.BYTE	$FD ; ý
		.BYTE	$FD ; ý
		.BYTE	$F9 ; ù
		.BYTE	$F9 ; ù
		.BYTE	$E5 ; å
		.BYTE	$65 ; e
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$F7 ; ÷
		.BYTE	$E7 ; ç
		.BYTE	$A7 ; §
		.BYTE	$97 ; 
		.BYTE	$9F ; 
		.BYTE	$9F ; 
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FC ; ü
		.BYTE	$F0 ; ð
		.BYTE	$C0 ; À
		.BYTE	$C0 ; À
		.BYTE	$1B
		.BYTE	5
		.BYTE	 $C
		.BYTE	 $F
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	5
		.BYTE	 $F
		.BYTE	3
		.BYTE	0
		.BYTE	$1B
		.BYTE	5
		.BYTE	$FC ; ü
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	2
		.BYTE	$95 ; 
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$AA ; ª
		.BYTE	$1B
		.BYTE	2
		.BYTE	$56 ; V
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	7
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	7
		.BYTE	$F0 ; ð
		.BYTE	$1B
		.BYTE	7
		.BYTE	$30 ; 0
		.BYTE	$1B
		.BYTE	7
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	$28 ; (
		.BYTE	$FF
		.BYTE	$FD ; ý
		.BYTE	$FD ; ý
		.BYTE	$7D ; }
		.BYTE	$9D ; 
		.BYTE	$97 ; 
		.BYTE	$A5 ; ¥
		.BYTE	$A5 ; ¥
		.BYTE	$FF
		.BYTE	$F7 ; ÷
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$7A ; z
		.BYTE	$7A ; z
		.BYTE	$7E ; ~
		.BYTE	$56 ; V
		.BYTE	$FF
		.BYTE	$DF ; ß
		.BYTE	$FF
		.BYTE	$FD ; ý
		.BYTE	$FD ; ý
		.BYTE	$55 ; U
		.BYTE	$65 ; e
		.BYTE	$95 ; 
		.BYTE	$FF
		.BYTE	$7F ; 
		.BYTE	$7F ; 
		.BYTE	$5F ; _
		.BYTE	$6E ; n
		.BYTE	$66 ; f
		.BYTE	$A6 ; ¦
		.BYTE	$96 ; 
		.BYTE	$1B
		.BYTE	$1F
		.BYTE	$FF
		.BYTE	$7E ; ~
		.BYTE	$6E ; n
		.BYTE	$66 ; f
		.BYTE	$E5 ; å
		.BYTE	$E9 ; é
		.BYTE	$F9 ; ù
		.BYTE	$F9 ; ù
		.BYTE	$FB ; û
		.BYTE	$9B ; 
		.BYTE	$EF ; ï
		.BYTE	$E6 ; æ
		.BYTE	$9E ; 
		.BYTE	$96 ; 
		.BYTE	$B6 ; ¶
		.BYTE	$56 ; V
		.BYTE	$75 ; u
		.BYTE	$EF ; ï
		.BYTE	$6B ; k
		.BYTE	$FB ; û
		.BYTE	$E7 ; ç
		.BYTE	$5F ; _
		.BYTE	$DD ; Ý
		.BYTE	$DD ; Ý
		.BYTE	$AD ; ­
		.BYTE	$9F ; 
		.BYTE	$9F ; 
		.BYTE	$5F ; _
		.BYTE	$1B
		.BYTE	3
		.BYTE	$7F ; 
		.BYTE	$BF ; ¿
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	$18
		.BYTE	$FF
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	6
		.BYTE	$FF
		.BYTE	$C0 ; À
		.BYTE	$C0 ; À
		.BYTE	$C3 ; Ã
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FF
		.BYTE	$FC ; ü
		.BYTE	$FC ; ü
		.BYTE	$1B
		.BYTE	5
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	 $F
		.BYTE	$1B
		.BYTE	$2B ; +
		.BYTE	$FF
		.BYTE	$FC ; ü
		.BYTE	$1B
		.BYTE	2
		.BYTE	$E9 ; é
		.BYTE	$F9 ; ù
		.BYTE	$FA ; ú
		.BYTE	$FA ; ú
		.BYTE	$F6 ; ö
		.BYTE	$3E ; >
		.BYTE	$D5 ; Õ
		.BYTE	$97 ; 
		.BYTE	$97 ; 
		.BYTE	$1B
		.BYTE	4
		.BYTE	$67 ; g
		.BYTE	$1B
		.BYTE	2
		.BYTE	$D5 ; Õ
		.BYTE	$E6 ; æ
		.BYTE	$E6 ; æ
		.BYTE	$A6 ; ¦
		.BYTE	$96 ; 
		.BYTE	$9A ; 
		.BYTE	$96 ; 
		.BYTE	$9A ; 
		.BYTE	$9B ; 
		.BYTE	$9B ; 
		.BYTE	$6B ; k
		.BYTE	$1B
		.BYTE	2
		.BYTE	$6F ; o
		.BYTE	$1B
		.BYTE	6
		.BYTE	$FF
		.BYTE	$C0 ; À
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$FF
		.BYTE	$FA ; ú
		.BYTE	$F6 ; ö
		.BYTE	$FD ; ý
		.BYTE	$F0 ; ð
		.BYTE	$F0 ; ð
		.BYTE	$C0 ; À
		.BYTE	3
		.BYTE	 $F
		.BYTE	$95 ; 
		.BYTE	$A6 ; ¦
		.BYTE	$65 ; e
		.BYTE	0
		.BYTE	0
		.BYTE	$C0 ; À
		.BYTE	$C3 ; Ã
		.BYTE	$CF ; Ï
		.BYTE	$A6 ; ¦
		.BYTE	$96 ; 
		.BYTE	$5A ; Z
		.BYTE	0
		.BYTE	0
		.BYTE	$C0 ; À
		.BYTE	$F0 ; ð
		.BYTE	$F0 ; ð
		.BYTE	$BF ; ¿
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	$58 ; X
		.BYTE	$FF
		.BYTE	$FC ; ü
		.BYTE	$FC ; ü
		.BYTE	$1B
		.BYTE	5
		.BYTE	$FF
		.BYTE	 $E
		.BYTE	0
		.BYTE	0
		.BYTE	$F0 ; ð
		.BYTE	$F0 ; ð
		.BYTE	$C0 ; À
		.BYTE	0
		.BYTE	3
		.BYTE	$A9 ; ©
		.BYTE	$A9 ; ©
		.BYTE	$1B
		.BYTE	2
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$A9 ; ©
		.BYTE	$5A ; Z
		.BYTE	$1B
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE	$C3 ; Ã
		.BYTE	$C3 ; Ã
		.BYTE	$AC ; ¬
		.BYTE	$80 ; 
		.BYTE	0
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$C0 ; À
		.BYTE	$F0 ; ð
		.BYTE	$FC ; ü
		.BYTE	0
		.BYTE	3
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$3F ; ?
		.BYTE	 $F
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$1B
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$34 ; 4
		.BYTE	$36 ; 6
		.BYTE	$34 ; 4
		.BYTE	$32 ; 2
		.BYTE	$34 ; 4
		.BYTE	$36 ; 6
		.BYTE	$38 ; 8
		.BYTE	$3A ; :
		.BYTE	$1B
		.BYTE	3
		.BYTE	$58 ; X
		.BYTE	$56 ; V
		.BYTE	$54 ; T
		.BYTE	$52 ; R
		.BYTE	$50 ; P
		.BYTE	$60 ; `
		.BYTE	$62 ; b
		.BYTE	$64 ; d
		.BYTE	$66 ; f
		.BYTE	$68 ; h
		.BYTE	$6A ; j
		.BYTE	$6C ; l
		.BYTE	$6E ; n
		.BYTE	$5E ; ^
		.BYTE	$5C ; \
		.BYTE	$5A ; Z
		.BYTE	$58 ; X
		.BYTE	$56 ; V
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$52 ; R
		.BYTE	$1B
		.BYTE	3
		.BYTE	$DE ; Þ
		.BYTE	$DC ; Ü
		.BYTE	$DA ; Ú
		.BYTE	$1F
		.BYTE	$DA ; Ú
		.BYTE	$DE ; Þ
		.BYTE	$DE ; Þ
		.BYTE	$1B
		.BYTE	$19
		.BYTE	$8C ; 
		.BYTE	$1B
		.BYTE	$13
		.BYTE	$12
		.BYTE	$1B
		.BYTE	 $B
		.BYTE	$26 ; &
		.BYTE	$EA ; ê
		.BYTE	$EA ; ê
		.BYTE	$60 ; `
		.BYTE	$60 ; `
		.BYTE	$1B
		.BYTE	2
		.BYTE	$38 ; 8
		.BYTE	$1B
		.BYTE	3
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$1B
		.BYTE	3
		.BYTE	$CE ; Î
		.BYTE	$ED ; í
		.BYTE	$EA ; ê
		.BYTE	$EA ; ê
		.BYTE	$ED ; í
		.BYTE	$1B
		.BYTE	 $B
		.BYTE	$CE ; Î
		.BYTE	$2A ; *
		.BYTE	$2C ; ,
		.BYTE	$2E ; .
		.BYTE	$1B
		.BYTE	4
		.BYTE	$AE ; ®
		.BYTE	$FC ; ü
		.BYTE	0
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$FF
		.BYTE	$D4 ; Ô
		.BYTE	$F2 ; ò
		.BYTE	3
		.BYTE	$DE ; Þ
		.BYTE	$FC ; ü
		.BYTE	$C4 ; -
		.BYTE	$32 ; 2
		.BYTE	$C3 ; Ã
		.BYTE	$24 ; $
		.BYTE	$F4 ; ô
		.BYTE	$C0 ; À
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	$74 ; t
		.BYTE	$40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE	$80 ; 
		.BYTE	$64 ; d
		.BYTE	$40 ; @
		.BYTE	7
		.BYTE	$F8 ; ø
		.BYTE	0
		.BYTE	0
		.BYTE	$80 ; 
		.BYTE	$1B
		.BYTE	3
		.BYTE	0
		.BYTE	$60 ; `
		.BYTE	$1B
		.BYTE	2
		.BYTE	0
		.BYTE	$60 ; `
		.BYTE	$1B
		.BYTE	6
		.BYTE	0
		.BYTE	$C0 ; À
		.BYTE	$1B
		.BYTE	3
		.BYTE	0
		.BYTE	$C0 ; À
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	$C1 ; Á
		.BYTE	$F0 ; ð
		.BYTE	$C0 ; À
		.BYTE	0
		.BYTE	1
		.BYTE	$C1 ; Á
		.BYTE	$E0 ; à
		.BYTE	$E0 ; à
		.BYTE	$1B
		.BYTE	2
		.BYTE	0
		.BYTE	$E0 ; à
		.BYTE	$1B
		.BYTE	6
		.BYTE	0
		.BYTE	1
		.BYTE	$C0 ; À
		.BYTE	0
		.BYTE	$E0 ; à
		.BYTE	0
		.BYTE	 $C
		.BYTE	0
		.BYTE	0
		.BYTE	$E1 ; á
		.BYTE	$88 ; 
		.BYTE	$FC ; ü
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	$F8 ; ø
		.BYTE	$94 ; 
		.BYTE	$50 ; P
		.BYTE	 $E
		.BYTE	$60 ; `
		.BYTE	$9C ; 
		.BYTE	$20
		.BYTE	$1B
		.BYTE	$FF
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
