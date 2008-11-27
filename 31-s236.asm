		.include	"equates.inc"
		.include	"exp_kernel.inc"
		.include	"globals.inc"
		.include	"macros.inc"

.macro Item Type,Unknown1,Unknown2,Weight,Name
:		.BYTE	Type
		.BYTE	:++-:-
		.BYTE	Unknown1
		.BYTE	Unknown2
		.BYTE	Weight
		.BYTE	:+-:-
		.BYTE	Name
		.BYTE	0
:
.endmacro

; the monster data appears to go like this:
;
;	byte	maximum number of monsters appearing
;	word	pointer to text for singular monster name
;	word	pointer to text for plural monster name
;	word	pointer to item data for weapon number 1
;	word	pointer to item data for weapon number 2
;	word	pointer to item data for weapon number 3
;	byte*8	unknown
;	word	pointer to code for ???
;	byte*4	unknown
;	word	pointer to code for ???
;	byte*28	unknown
;	byte*11	armor data for monster
;	string	monster death text (terminated by $AE)
;	...	rest fof monster data/code
;

.macro	ItemCurse Curse
	.BYTE	$eb,$00,$41
	.BYTE	Curse
	.RES	(13-.strlen(Curse)),$00
.endmacro

.macro	ItemDisease Disease
	.BYTE	$e1,$00,$41
	.BYTE	Disease
	.RES	(13-.strlen(Disease)),$00
.endmacro

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST01"

		.BYTE	$01
		.WORD	aDevourer,byte_AA78,i_SlimyTentacle,i_SlimyTentacle,i_SlimyTentacle
		.BYTE	$00
		.BYTE	$80,$0b,$04,$ff,$C8 ; |.....|
		.WORD	$0
		.WORD	loc_AC3E
		.BYTE	$00,$00,$00,$00
		.WORD	loc_AAA2
		.BYTE	$00,$00,$00,$04,$00 ; |...>............|
		.BYTE	$49,$a8,$00,$48,$14,$08,$1e,$00,$16,$3c,$32,$00,$00,$00,$00,$00 ; |I..H.....<2.....|
		.BYTE	$00,$00,$00,$00,$00,$00,$00
		.BYTE	$55,$55,$33,$33,$33,$33,$33,$33,$33,$33,$33
		.BYTE	"dissolves in a puddle",$0D,$A5
		.BYTE	"of thick smelly ooze.",$AE

aDevourer:	.BYTE	"devourer",0

byte_AA78:	.BYTE	$00

i_SlimyTentacle:
		Item	$FF,$00,$00,$02,"slimy tentacle"
		.BYTE	$00,$ff,$00
		.BYTE	$28,$12,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$85,$00
:
loc_AAA2:
		JSR	$7707
		LDA	RANDOM
		CMP	#$30
		BCS	:+
		JMP	$7716
:		JSR	$7767
		LDA	RANDOM
		CMP	#$30
		BCC	:+
		JMP	$76FE

sub_AABC:
:		JSR	sub_AAD1
		JSR	$7710
		ldxy	a_YouStruggle
		LDA	$93
		BEQ	:+
		ldxy	byte_AC0D
:		JMP	$776A

sub_AAD1:
		LDA	#$00
		STA	$93
		STA	$95
		LDA	RANDOM
		BMI	:+++
		LDA	#$FF
		STA	$94
		LDA	#$3F
		STA	$4B
:		LDA	$4B
		JSR	$1887
		BEQ	:+
		LDY	#$00
		LDA	(off_41),y
		BPL	:+
		AND	#$87
		CMP	#$81
		BEQ	:+
		LDY	#$04
		LDA	(off_41),y
		CMP	$95
		BCC	:+
		STA	$95
		LDA	$4B
		STA	$94
:		DEC	$4B
		BPL	:--
		LDA	$94
		BMI	:+
		STA	$4B
		JSR	$1887
		BEQ	:+
		LDY	#$02
		LDA	#$10
		STA	(off_41),Y
		LDA	$94
		ORA	#$80
		STA	$94
		INC	$93
		JMP	$AB7B
:		INC	$93
		LDA	#$0B
		JSR	j_RND_A
		STA	$94
		TAX
		dldi	off_7, $6300
		LDA	$76EC, X
		CLC
		ADC	off_7
		STA	off_7
		BCC	:+
		INC	off_7+1
:		LDA	RANDOM
		AND	#$1F
		ADC	#$01
		STA	word_B+1
		LDY	$76E0, X
		STY	word_B
		SEC
		LDA	(off_7),Y
		STA	$02,Y
		SBC	word_B+1
		STA	(off_7),Y
		DEY
		BMI	:+
		LDA	(off_7),Y
		STA	$02,Y
		SBC	#$00
		STA	(off_7),Y
:		BCS	:+
		LDY	word_B
		LDA	$02,Y
		STA	word_B+1
		STA	$93
		LDA	#$00
		STA	(off_7),Y
		DEY
		BMI	:+
		STA	(off_7),Y
:		RTS

a_YouStruggle:
		MOVEXY	0,2
		.BYTE	$A5,"You struggle desperately against the",$0D
		.BYTE	$A5,"sucking force of it's gaping maw.",$0D,$FF

a_SomeOfYour:
		MOVEXY	0,2
		.BYTE	$A5,"Some of your "
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	20
		.BYTE	" goes",$0D,$A5
		.BYTE	"flying into the mouth of the Devourer.",$0D,$FF

byte_AC0D:
		STRJSR	loc_AC10

loc_AC10:
		dldi	off_16, a_SomeOfYour
		BIT	$94
		BPL	:+
		dldi	off_16, byte_AC25
:		RTS

byte_AC25:
		STRSUB	$7653
		.BYTE	"sucks up your",$0D,$A5
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	$20
		.BYTE	".",$0D,$FF

loc_AC3E:
		JSR	sub_AABC
		JMP	$771F
		.BYTE	$00,$00

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST02"

		.BYTE	$04
		.WORD	$0,$0,$0,$0,$0
		.BYTE	$26
		.BYTE	$80,$01,$03,$14,$38
		.WORD	$ABE1
		.WORD	$AC56
		.WORD	$ACE3
		.BYTE	$02,$00
		.WORD	$0001
		.BYTE	$0a,$af,$01,$01,$28,$00,$92,$00,$00,$0c,$0c,$0c,$0c,$0c,$0c ; |.....(..........|
		.BYTE	$0c,$00,$00,$01,$01,$01,$02,$00,$03,$01,$02,$0a,$3c ; |............<...|
		.BYTE	$13,$13,$00,$00,$12,$00,$00,$00,$00,$00,$00
	.BYTE	"will plague",$0D,$A5
	.BYTE	"this world no longer",$AE
	.BYTE	"thief",0
	.BYTE	"cutthroat",0
	.BYTE	"brigand",0
	.BYTE	"master thief",0
	.BYTE	"thieves",0
	.BYTE	"cuthroats",0
	.BYTE	"brigands",0
	.BYTE	$00

	Item	$03,$00,$00,$01,"Stilletto"
	.BYTE	$83,$ff,$c1,$63,$1e,$00,$1e,$00,$00,$91,$78,$00,$01,$00,$01,$00
	ItemCurse "Clumsiness"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$04,$08,$10,$10,$a9,$01

	Item	$03,$00,$00,$01,"Skean"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$04,$06,$10,$10,$81,$02

	Item	$03,$00,$00,$02,"Nasty Knife"
	.BYTE	$83,$ff,$c1,$ff,$05,$00,$11,$00,$00,$92,$45,$00,$01,$00,$03,$00
	ItemCurse "Slow Death"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$16,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$04,$07,$18,$18,$80,$05

	Item	$03,$00,$00,$03,"Kris Knife"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$04,$10,$18,$18,$a8,$08

	Item	$03,$00,$00,$08,"Opal Cutlass"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$1a,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$10,$18,$e0,$e0,$88,$18

	Item	$03,$00,$00,$02,"Damascus Dagger"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$33,$00,$00,$00,$00,$00,$1f,$00,$00,$00
	.BYTE	$04,$08,$20,$20,$98,$04
:
	.WORD	$AA64,$AA89,$AA6A
	.WORD	$AA91,$AA74,$AA9B,$AA7C,$AAA4,$AAA5,$AAE9
	.WORD	$AB09,$AB4F,$AB74,$AB9B
		LDA	$8D
		SEC
		SBC	#$01
		ASL	A
		STA	$96
		ASL	A
		TAX
		LDY	#$00
:		LDA	$ABC5,X
		STA	$AA01,Y
		INX
		INY
		CPY	#$04
		BCC	:-
		LDX	$96
		LDY	#$00
:		LDA	$ABD5,X
		STA	$AA05,Y
		INX
		INY
		CPY	#$06
		BCC	:-
		LDA	$8D
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	$96
		LDA	RANDOM
		AND	#$07
		ORA	$96
		LDX	#$06
:		STA	$AA24,X
		DEX
		BPL	:-
		SEC
		SBC	#$0C
		STA	$AA23
		dldi	$76DB, $76DF
		ASL	$AA0C
		LDA	RANDOM
		BPL	:+
		LDA	#$05
		STA	$A6
		LDA	#$80
		STA	$AA0C
:		LDA	$8D
		CMP	#$04
		BNE	:+
		LDA	#$01
		STA	$AA00
		STA	$AA0C
		LDA	#$FF
		STA	$A6
:		JMP	$7719
		LDA	$A6
		CMP	#$05
		BNE	:+
		LDA	$63C7
		AND	#$8F
		BEQ	:+
		JMP	$771C
:		JSR	$7707
		LDA	$AA00
		CMP	#$02
		BCS	:+
		LDA	RANDOM
		CMP	#$40
		BCC	:+
		JSR	$AD37
		JSR	$ACCB
		LDA	#$00
		STA	$AA0F
		JMP	$ACC8
:		ldxy	$AE6C
		JSR	$770A
		LDA	RANDOM
		LDA	$AA00
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		ADC	#$40
		STA	$96
		LDA	RANDOM
		CMP	$96
		BCS	:++
		LDA	RANDOM
		AND	#$03
		STA	$96
		LDA	RANDOM
		AND	#$03
		CLC
		ADC	byte_638E
		STA	byte_638E
:		LDA	byte_638E
		BEQ	:+
		JSR	$AD37
		JSR	$ACCB
		LDA	#$00
		STA	$AA0F
		DEC	$96
		BPL	:-
:		JMP	$771F
		JSR	$7710
		ldxy	$ADE8
		LDA	$93
		BEQ	:+
		ldxy	$AE3E
:		JSR	$770A
		JSR	$7713
		JMP	$7722
		LDX	$A6
		CPX	#$05
		BNE	:+
		LDA	$63C7
		BPL	:+
		JMP	$7725
:		JSR	$7707
		ldxy	$AE88
		JSR	$7728
		JSR	$772B
		BCS	:++++
		LDX	#$09
		LDA	#$00
:		ORA	$63B1,X
		DEX
		BPL	:-
		ORA	$63C0
		ORA	$63C1
		BNE	:+
		INC	$63B6
		ldxy	$AEC7
		JMP	$AD30
:		LDX	#$09
		LDA	#$00
:		STA	$63B1,X
		DEX
		BPL	:-
		STA	$63C0
		STA	$63C1
		ldxy	$AEF1
		JSR	$770A
		JMP	$7608
:		RTS
		LDA	#$00
		STA	$93
		LDA	RANDOM
		CMP	#$40
		BCC	:+
		JMP	$AD80
:		LDA	#$04
		STA	$96
:		LDA	RANDOM
		AND	#$3F
		STA	$4B
		JSR	$1887
		BEQ	:+
		LDY	#$00
		LDA	(off_41),Y
		BPL	:+
		AND	#$87
		CMP	#$87
		BEQ	:+
		CMP	#$81
		BEQ	:+
		JMP	$AD6F
:		DEC	$96
		BPL	:--
		JMP	$AD80
		LDY	#$02
		LDA	#$02
		STA	(off_41),Y
		LDA	$4B
		ORA	#$80
		STA	$94
		INC	$93
		JMP	$ADE7
		INC	$93
		LDA	#$08
		JSR	j_RND_A
		CLC
		ADC	#$03
		STA	$94
		TAX
		dldi	off_7, $6300
		LDA	$76EC,X
		CLC
		ADC	off_7
		STA	off_7
		BCC	:+
		INC	off_7+1
:		LDA	RANDOM
		AND	#$1F
		CLC
		ADC	#$01
		STA	word_B+1
		LDY	$76E0,X
		STY	word_B
		SEC
		LDA	(off_7),Y
		STA	$02,Y
		SBC	word_B+1
		STA	(off_7),Y
		DEY
		BMI	:+
		LDA	(off_7),Y
		STA	$02,Y
		SBC	#$00
		STA	(off_7),Y
:		BCS	:+
		LDY	word_B
		LDA	$02,Y
		STA	word_B+1
		STA	$93
		LDA	#$00
		STA	(off_7),Y
		DEY
		BMI	:+
		STA	(off_7),Y
:		CLC
		LDA	word_B+1
		ADC	$AA2B,X
		BCC	:+
		LDA	#$FF
:		STA	$AA2B,X
		RTS

		STRSUB	$7653
		.BYTE	"tries unsuccessfully",$0D
		.BYTE	$A5,"to pilfer thy personage.",$0D,$FF

		STRSUB	$7653
		.BYTE	"has stolen",$0D
		.BYTE	$A5,"some of your "
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	$20
		.BYTE	".",$0D,$FF
		.BYTE	$A3
		.WORD	$AE41	
		dldi	off_16, $AE1B
		BIT	$94
		BPL	:+
		dldi	off_16, $AE56
:		RTS

		STRSUB	$7653
		.BYTE	"has taken your",$0D,$A5
		STRSUB	$AE37
		STRSUB	$7653
		.BYTE	"tries",$0D
		.BYTE	$A5,"to bludgeon you.",$0D,$FF
		STRSUB	$7653
		.BYTE	"demands:",$0D,$0D
		.BYTE	$A5,$22,"Stand and deliver.",$0D
		.BYTE	$A5,"Thy money or thy life!",$22,$0D
		STRSUB	$7674
		.BYTE	$FF
		MOVEXY	0,3
		.BYTE	$A5,$22,"Thou pitiful fool!  Have a copper.",$22,$0D,$FF
		MOVEXY	0,3
		.BYTE	$A5,$22,"Farewell pidgeon.",$22,$0D,$FF

		LDA	$8D
		CMP	#$04
		BNE	:+
		LDA	#$00
		STA	$AA0B
		LDA	#$FF
		STA	$758A
:		JMP	$773A

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST03"
	
		.BYTE	$01
		.WORD	$AA81,$AA8A,$AA8B,$AAAB,$AACB
		.BYTE	$56
		.BYTE	$40 ; |...........V@|
		.BYTE	$0a,$08,$ff,$c8,$00,$00,$ec,$aa,$00,$00,$00,$00,$01,$00,$00,$00 ; |................|
		.BYTE	$02,$02,$28,$00,$a0,$00,$28,$14,$14,$3c,$14,$14,$41,$63,$00,$00 ; |..(...(..<..Ac..|
		.BYTE	$00,$00,$00,$07,$01,$00,$03,$00,$00,$00
		.BYTE	$16,$16,$00,$00,$13,$00,$00,$00,$00,$00,$00 ; |.....|
		.BYTE	"dies, his face frozen in",$0D
		.BYTE	$A5,"an expression of shock and disbelief",$AE
		.BYTE	"assassin",0
		.BYTE	$00

		Item	$03,$00,$00,$03,"Katar"
		.BYTE	$00,$ff,$00,$00,$18,$00
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$10,$18,$18,$18,$80,$02

		Item	$03,$00,$00,$03,"Katar"
		.BYTE	$00,$ff,$00,$00,$18,$00
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$10,$18,$18,$18,$80,$02

		Item	$03,$00,$00,$0C,"Katana"
		.BYTE	$00,$ff,$00,$00,$25
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$0e,$18,$20,$20,$88,$15
:		ldxy	$AAF6
		JSR	$770A
		JMP	$772E
		MOVEXY	0,3
		.BYTE	$A5,$22,"Greetings from "
		PRINTSTRP $76DD, 22
		.BYTE	"!",$22,$0D,$FF

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST04"

	.BYTE	$02
	.WORD	$AA47,$AA4E,$AA9B,$AA56,$AA9B
	.BYTE	$64,$40,$01,$05,$28,$1c,$c0,$aa,$00,$00,$00,$00,$00,$00,$02,$ab ; |d@..(...........|
	.BYTE	$00,$00,$03,$01,$1e,$00,$a0,$00,$11,$14,$14,$14,$14,$14,$14,$14 ; |................|
	.BYTE	$02,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$50,$14,$14,$0f,$00 ; |...........P....|
	.BYTE	$12,$00,$00,$00,$00,$00,$00
	.BYTE	"dies",$AE
	.BYTE	"goblin",0
	.BYTE	"goblins",0

	Item	$03,$00,$00,$14,"Battle Axe"
	.BYTE	$83,$ff,$c1,$ff,$05,$00,$11,$00,$00,$92,$45,$00,$01,$00,$03,$00
	ItemCurse "Slow Death"
	.BYTE	$00,$ff,$00
	.BYTE	$12,$27,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$16,$10,$30,$30,$80,$10

	Item	$03,$00,$00,$10,"War Hammer"
	.BYTE	$00,$ff,$00
	.BYTE	$24,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$10,$06,$24,$24,$82,$09
:
	JSR	$7719
	LDA	$194C
	CMP	#$02
	BNE	:+
	LDA	#$04
	STA	$AA00
:	LDA	#$10
	ldxy	$7508
	JSR	$1863
	BCC	:+
	INC	$AA10
	ASL	$AA00
	RTS
:	LDA	#$12
	ldxy	$7508
	JSR	$1863
	BCC	:+
	LDA	#$40
	STA	$AA21
	LDA	#$05
	STA	$AA17
	RTS
:	LDA	$7528
	BEQ	:+
	LDA	#$00
	STA	$AA21
:	RTS
	JSR	$7731
	BCS	:+
	RTS
:	LDA	$AA00
	CMP	#$08
	BCS	:+++
	LDA	RANDOM
	CMP	#$28
	BCS	:+++
	dldi	$76D9, $76DF
	ldxy	$AB6E
	JSR	$7728
	dldi	$76D9, $AB88
	LDX	#$28
:	JSR	$7737
	DEX
	BNE	:-
	LDA	RANDOM
	CMP	#$40
	BCS	:+
	dldi	$76D9, $AB98
	LDA	$AA00
	ASL	A
	TAX
	LDA	$AA22
	STA	$B2,X
	LDA	$AA23
	STA	$B3,X
	lDA	#$00
	STA	$C2,X
	STA	$C3,X
	INC	$AA00	
	INC	$8A
:	ldxy	$AB6E
	JMP	$770A
:	JMP	$76F8
	STRSUB	$7665

		.BYTE	"summons help...",$0D
		.BYTE	$A5
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	$1E
		.BYTE	$0D,$FF
		.BYTE	"but none comes.",0
		.BYTE	"and another arrives!",0

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST05"

		.BYTE	$04
		.WORD	$AA47,$AA4D,$AA54,$AA76,$AAB8
		.BYTE	$34
		.BYTE	$40,$01 ; |..G.M.T.v...4@.|
		.BYTE	$05,$28,$1c,$dc,$aa,$00,$00,$00,$00,$00,$00,$1e,$ab,$00,$00,$04 ; |.(..............|
		.BYTE	$01,$32,$00,$a0,$00,$0f,$1c,$14,$28,$14,$14,$14,$14,$02,$01,$01 ; |.2......(.......|
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$50,$22,$22,$0f,$00,$11,$00,$00 ; |........P"".....|
		.BYTE	$00,$00,$00,$00
		.BYTE	"dies",$AE
		.BYTE	"troll",0
		.BYTE	"trolls",0

		Item	$03,$00,$00,$14,"Halberd"
		.BYTE	$00,$ff,$00,$11,$26,$00,$00,$00,$00,$00,$00,$00 ; |....&.......|
		.BYTE	$00,$00,$14,$10,$28,$28,$c0,$20

		Item	$03,$00,$00,$14,"Halberd"	
		.BYTE	$83,$ff,$c1,$ff,$05,$00,$11,$00,$00,$92,$45,$00,$01,$00,$03,$00
		ItemCurse "Slow Death"
		.BYTE	$00,$ff,$00
		.BYTE	$11,$26,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$14,$10,$28,$28,$c0,$20
 
		Item	$03,$00,$00,$19,"Great Axe"
		.BYTE	$00,$ff,$00
		.BYTE	$12,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$20,$10,$30,$30,$c0,$12
:
		JSR	$7719
		LDA	$194C
		CMP	#$03
		BNE	:+
		LDA	#$04
		STA	$AA00
:		LDA	#$0F
		ldxy	$7508
		JSR	$1863
		BCC	:+
		INC	$AA10
		ASL	$AA00
		RTS
:		LDA	#$11
		ldxy	$7508
		JSR	$1863
		BCC	:+
		LDA	#$40
		STA	$AA21
		LDA	#$05
		STA	$AA17
		RTS
:		LDA	$7529
		BEQ	:+
		LDA	#$00
		STA	$AA21
:		RTS
		LDA	$76
		ASL	A
		TAX	
		LDA	#$02
		JSR	j_RND_A
		CLC
		ADC	$B3
		STA	$B3
		BCC	:+
		INC	$B2
:		JSR	$7734
		JMP	$76F8

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST06"

	.BYTE	$01
	.WORD	$AA5E,$AA63,$AA64,$AA64,$AA64
	.BYTE	$22
	.BYTE	$00,$12,$08,$14,$32,$00,$00,$00,$00,$00,$00,$00 ; |.d."....2.......|
	.BYTE	$00,$04,$00,$00,$00,$05,$02,$00,$00,$a0,$00,$2d,$14,$14,$10,$46 ; |...........-...F|
	.BYTE	$46,$26,$1e,$00,$00,$00,$00,$00,$00,$09,$03,$00,$00,$00,$00,$22 ; |F&............."|
	.BYTE	$22,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	"dies for",$0D
	.BYTE	$A5,"for the last time",$AE
	.BYTE	"lich",0
	.BYTE	0

	Item	$03,$00,$20,$00,"Sceptre of Chaos"
	.BYTE	$88,$ff,$a5,$ff,$01,$00,$13,$00,$00,$92,$45,$00,$01 ; |os...........E..|
	.BYTE	$00,$03,$00,$00,$ff,$00,$24,$00,$00,$00,$00,$00,$00,$16,$00,$16 ; |......$.........|
	.BYTE	$00,$00,$00,$40,$40,$02,$08
:

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST07"

	.BYTE	$01
	.WORD	$AA79,$AA87,$AA88,$AA88,$AA88
	.BYTE	$12
	.BYTE	$80,$0c,$04,$ff,$46,$00,$00,$00,$00,$00,$00,$00,$00 ; |.......F........|
	.BYTE	$00,$00,$ad,$aa,$06,$02,$00,$00,$a8,$00,$41,$32,$32,$32,$32,$32 ; |..........A22222|
	.BYTE	$4b,$32,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$33,$33 ; |K2............33|
	.BYTE	$11,$11,$11,$11,$33,$11,$11,$11,$22
	.BYTE	"fades away exclaiming,",$0D
	.BYTE	$A5,$22,"I'm free!  Art thou The One?",$22,$AE
	.BYTE	"Undead Knight",0
	.BYTE	0
	Item	$03,$00,$00,$10,"Ebon Blade"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$26,$00,$00,$00,$00,$00,$24,$00,$00,$00
	.BYTE	$18,$18,$50,$50,$80,$15
:
	LDA	$195A
	AND	#$07
	TAX	
	CLC
	LDA	#$00
:	DEX
	BMI	:+
	ADC	#$08
	BNE	:-
:	CLC
	ADC	#$4A
	TAX
	LDA	#$02
	JSR	$1878	
	LDA	#$01
	LDX	#$45
	JSR	$187B
	LDA	#$01
	LDX	#$47
	JSR	$187B
	JSR	$7713
	LDX	#$AA
	LDY	#$DE
	JMP	$770A

	MOVEXY	0,3
	.BYTE	$A5,"You feel new power!",$0D,$FF

; ----------------------------------------------------------------------------
		.SEGMENT 	"MONST08"
	
		.BYTE	$02
		.WORD	$AA47,$AA4D,$AA61,$AA61,$AA61
		.BYTE	$34
		.BYTE	$81,$04,$08,$28,$28,$00 ; |.M.a.a.a.4...((.|
		.BYTE	$ab,$00,$00,$5c,$ab,$02,$00,$4e,$ad,$00,$00,$07,$01,$28,$00,$10 ; |...\...N.....(..|
		.BYTE	$00,$2e,$14,$14,$28,$14,$14,$26,$14,$00,$00,$00,$00,$00,$03,$00 ; |....(..&........|
		.BYTE	$00,$00,$00,$21,$00,$33,$33,$00,$00,$23,$00,$00,$00,$00,$00,$22 ; |...!.33..#....."|
		.BYTE	"dies",$AE
		.BYTE	"guard",0
		.BYTE	"guards",0
		.BYTE	"palace elite",0
		Item	$03,$00,$00,$07,"Gladius"
		.BYTE	$00,$ff,$00 ; |"....Gladius....|
		.BYTE	$00,$23,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$0a,$0a,$23,$23,$80,$10

		Item	$03,$00,$00,$10,"Longsword"
		.BYTE	$00,$ff,$00
		.BYTE	$11,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$0e,$10,$28,$28,$80,$15

		Item	$03,$00,$81,$0C,"Sword of Light"
		.BYTE	$88,$ff,$04,$01,$01,$00,$00,$00,$00,$81,$90,$00,$01,$00,$01,$00
		.BYTE	$88,$ff,$48,$01,$01,$00,$00,$00,$00,$91,$90,$00,$01,$00,$01,$00
		.BYTE	$88,$ff,$25,$01,$01,$00,$00,$00,$00,$92,$45,$00,$01,$00,$0a,$00
		.BYTE	$00,$ff,$00
		.BYTE	$00,$1a,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$10,$80,$80,$80,$15
:
		BIT	$6387
		BMI	:++
		LDA	$8D
		CMP	#$0A
		BNE	:++
		LDA	$6320
		BMI	:+
		LDA	RANDOM
		BPL	:+
		INC	$6320
		BNE	:++
:		JMP	$7719
:		LDA	#$01
		STA	$AA19
		LDA	#$00
		STA	$AA1A
		LDX	#$07
:		ASL	$AA22,X
		DEX
		BPL	:-
		LDA	#$08
		STA	$AA0D
		LDX	#$09
:		LDA	$AB52,X
		STA	$AA01,X
		DEX
		BPL	:-
		LDA	#$A8
		STA	$AA21
		LDA	#$50
		STA	$AA10
		JSR	$7719
		LDA	#$04
		STA	$AA00
		RTS

		.WORD	$AA54,$AA54,$AA83,$AA83,$AAA7

		LDA	$6387
		CMP	#$10
		BCC	:++
		JSR	$7707
		ldxy	$AC33
		JSR	$7728
		JSR	$772B
		BCS	:++
		ldxy	$AC95
		JSR	$770A
		BIT	$6387
		BMI	:+
		BIT	$63C7
		BVS	:+
		LDA	$63C7
		BEQ	:+
		LDA	RANDOM
		CMP	#$C0
		BCS	:+
		JMP	$ABB0

:		ldxy	$ACCB
		JSR	$7728
		LDA	#$10
		JSR	$185A
		LDA	#$00
		STA	$6345
		STA	$6346
		STA	$6347
		STA	$6348
		JMP	$7608
:		RTS

		ldxy	$AD02
		JSR	$7728
		LDA	#$80
		STA	$32
		STA	$1955
		LDA	#$17
		STA	$36
		LDA	#$3B
		STA	$35
		LDA	#$00
		STA	$32
		JSR	$AC07
		LDA	#$FF
		STA	$6399
		STA	$639B
		STA	$639A
		LDA	$36
		CMP	#$06
		BEQ	:+
		dldi	$1977, $ABD8
		JMP	$1806

:		LDA	#$00
		STA	$1955
		ldi	I_LOC_X, $0B
		ldi	I_LOC_Y, $1E
		ldi	I_LOC_Z, $01
		ldi	$6312, $03
		JMP	$7608
		LDA	#$3F
		STA	$4B
:		LDA	$4B
		JSR	$1887
		BEQ	:+
		LDY	#$00
		LDA	(off_41),Y
		BPL	:+
		AND	#$87
		CMP	#$81
		BEQ	:+
		LDA	#$10
		LDY	#$02
		STA	(off_41),Y
:		DEC	$4B
		BPL	:--
		LDX	#$10
		LDA	#$00
:		STA	$63B1,X
		DEX
		BPL	:-
		RTS

		STRSUB	$7653
		.BYTE	"demands:",$0D,$0D
		.BYTE	$A5,$22,"Surrender in the name of his majesty",$0D
		.BYTE	$A5,"the King. Thou art under arrest varlet!",$22,$0D
		STRSUB	$7674
		.BYTE	$FF
		MOVEXY	0,2
		.BYTE	$A5,$22,"Enough of thy antics,",$0D
		.BYTE	$A5,"to the pokey with thee!",$22,$0D,$FF
		MOVEXY	0,2
		.BYTE	$A5,"You receive a swift trial,",$0D
		.BYTE	$A5,"and a slow execution.",$0D,$FF
		MOVEXY	0,2
		.BYTE	"Fellow Thieves Guild members rescue",$0D
		.BYTE	$A5,"you from prison before your trial.",$0D,$FF

		JSR	$7731
		BCS	:+
		RTS
:		LDA	$AA00
		CMP	#$08
		BCS	:+++
		LDA	RANDOM
		CMP	#$40
		BCS	:+++
		dldi	$76D9, $76DF
		ldxy	$ADBA
		JSR	$7728
		dldi	$76D9, $ADD4
		LDX	#$28
:		JSR	$7737
		DEX
		BNE	:-
		LDA	RANDOM
		CMP	#$40
		BCS	:+
		dldi	$76D9, $ADE6
		LDA	$AA00
		ASL	A
		TAX	
		LDA	$AA22
		STA	$B2,X
		LDA	$AA23
		STA	$B3,X
		LDA	#$00
		STA	$C2,X
		STA	$C3,X
		INC	$AA00
		INC	$8A
:		ldxy	$ADBA
		JMP	$770A
:		JMP	$76F8

		STRSUB	$7665
		.BYTE	"summons help...",$0D
		.BYTE	$A5
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	$1E
		.BYTE	$0D,$FF
		.BYTE	"but none arrives.",$00
		.BYTE	"and another comes!",$00

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST09"

		.BYTE	$02
		.WORD	$AA4F,$AA5C,$AA6A,$AA6A,$AA6A
		.BYTE	$00
		.BYTE	$80,$ff,$00,$ff,$ff,$00,$00,$00,$00,$00,$00,$00,$00 ; |j...............|
		.BYTE	$00,$00,$00,$00,$08,$00,$00,$5f,$a8,$27,$0f,$5a,$5a,$5a,$5a,$5a ; |......._.'.ZZZZZ|
		.BYTE	$5a,$5a,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |ZZ..............|
		.BYTE	$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0
		.BYTE	"shall return",$AE
		.BYTE	"F.B.I. Agent",0
		.BYTE	"F.B.I. Agents",0

		Item	$00,$00,$00,$00,"Long Arm of the Law"
		.BYTE	$00,$11,$00
		.BYTE	$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11
		.BYTE	$11,$11,$00,$00,$07,$11
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST10"

		.BYTE	$01
		.WORD	$AA48,$AA48,$AA54,$AA79,$AA98
		.BYTE	$A9
		.BYTE	$40,$0a,$08,$3c,$2d ; |H.H.T.y....@..<-|
		.BYTE	$05,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$06,$02,$28,$00 ; |..............(.|
		.BYTE	$80,$00,$25,$14,$14,$14,$14,$14,$14,$1e,$00,$00,$00,$00,$00,$03 ; |..%.............|
		.BYTE	$09,$01,$01,$46,$00,$00
		.BYTE	$24,$24,$12,$12,$32,$12,$12,$12,$12,$12,$12
		.BYTE	"falls",$AE
		.BYTE	"Dark Knight",0

		Item	$03,$00,$00,$0C,"Broadsword"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$0c,$0c,$3d,$3d,$80,$11

		Item	$03,$00,$00,$0C,"Mace"
		.BYTE	$00,$ff,$00
		.BYTE	$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$08,$04,$28,$28,$aa,$05

		Item	$03,$00,$60,$0C,"Sword of Doom"
		.BYTE	$88,$ff,$25,$01,$01,$00,$00,$00,$00,$92,$45,$00,$01,$00,$0a,$00
		.BYTE	$00,$ff,$00
		.BYTE	$11,$24,$00,$00,$00,$00,$00,$00,$00,$16,$00
		.BYTE	$10,$10,$40,$40,$88,$15
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST11"

		.BYTE	$01
		.WORD	$AA5D,$AA5D,$AA66,$AA66,$AA89
		.BYTE	$A9
		.BYTE	$90,$07,$08,$4d,$ff ; |].].f.f.......M.|
		.BYTE	$00,$00,$e2,$aa,$00,$00,$00,$00,$01,$00,$00,$00,$09,$02,$28,$00 ; |..............(.|
		.BYTE	$a8,$00,$44,$1e,$14,$2d,$14,$14,$32,$28,$00,$00,$00,$00,$00,$03 ; |..D..-..2(......|
		.BYTE	$06,$09,$04,$00,$28,$00
		.BYTE	$34,$34,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE	"has fought his last battle",$AE
		.BYTE	"Champion",0

		Item	$03,$00,$00,$0E,"Scimitar"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$19,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$16,$24,$24,$80,$15

		Item	$03,$00,$81,$0C,"Sword of Light"
		.BYTE	$88,$ff,$04,$01,$01,$00,$00,$00,$00,$81,$90,$00,$01,$00,$01,$00
		.BYTE	$88,$ff,$48,$01,$01,$00,$00,$00,$00,$91,$90,$00,$01,$00,$01,$00
		.BYTE	$88,$ff,$25,$01,$01,$00,$00,$00,$00,$92,$45,$00,$01,$00,$0a,$00
		.BYTE	$00,$ff,$00
		.BYTE	$00,$1a,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$10,$80,$80,$80,$15
:
		ldxy	aIAmHere
		JSR	$770A
		JMP	$772E

aIAmHere:
		MOVEXY	0,3
		.BYTE	$A5,$22,"I am here for the honor",$0D
		.BYTE	$A5,"of "
		.BYTE	$B4
		.WORD	$76DD
		.BYTE	$16	
		.BYTE	".",$22,$0D,$FF

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST12"

		.BYTE	$01
		.WORD	$AA63,$AA69,$AA6A,$AA6A,$AA6A
		.BYTE	$00 ; |."...c.i.j.j.j..|
		.BYTE	$80,$63,$03,$14,$28,$e7,$aa,$00,$00,$00,$00,$f3,$aa,$2f,$ad,$8b ; |.c..(......../..|
		.BYTE	$aa,$0a,$01,$28,$00,$40,$00,$14,$14,$14,$14,$14,$14,$14,$14,$01 ; |...(.@..........|
		.BYTE	$01,$00,$00,$01,$01,$00,$00,$00,$58,$58,$58,$00,$00,$00,$00,$00 ; |........XXX.....|
		.BYTE	$00,$00,$00,$00,$00,$00
		.BYTE	"curses you",$0D
		.BYTE	$A5,"with his last breath",$AE
		.BYTE	"Healer",0

		Item	$03,$00,$00,$01,"Dagger"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$04,$06,$10,$10,$81,$02
:
		INC	$754F
		ldxy	$AAAE
		JSR	$1884
		BMI	:+
		JSR	$7764
:		JSR	$7713
		LDX	#$86
		LDA	#$05
		JSR	$186F
		LDX	#$85
		LDA	#$04
		JSR	$186F
		JMP	$773A

		Item	$03,$01,$00,$00,""
		.BYTE	$83,$ff,$01,$01,$01,$00,$00,$00,$00,$01,$02,$80,$01,$00,$10,$00
		.BYTE	$83,$ff,$c1,$ff,$01,$00,$3c,$00,$00,$91,$4a,$00,$07,$08,$01,$ff
		ItemCurse "Withering"
		.BYTE	$00,$01
:
		LDA	RANDOM
		BPL	:+
		LDA	#$0A
		STA	$A6
:		JMP	$7719
		BCC	:+
		LDA	$7F
		JSR	$188A
		JMP	$AB09
:		JSR	$773D
		LDA	$75
		CMP	#$04
		BEQ	:+
		JMP	$7740
:		ldxy	$AC0B
		JSR	$7728	
		DEC	$32
		LDA	#$04
		JSR	$7743
		LDA	$74
		INC	$32
		TAX
		BNE	:+
		JMP	$7740
:		DEX
		STX	$AD2E
		BNE	:+
		ldxy	$ACAF
		JSR	$7728
		JSR	$18AE
		BCS	:--
		BMI	:--
		BEQ	:--
		BPL	:++
:		LDX	$AD2E
		LDA	$AC08,X
		STA	$02
		LDA	#$00
		STA	$03
:		JSR	$ABA6
		BCC	:++
		ldxy	$ACFA
		JSR	$770A
		LDX	#$86
		LDA	#$05
		JSR	$186F
		LDX	#$03
		LDA	#$00
:		STA	$63B1,X
		DEX
		BPL	:-
:		LDX	$AD2E
		BEQ	:+++
		LDA	#$00
		STA	$6390,X
		TXA
		ORA	#$80
		STA	$51
		JSR	$1893
:		JSR	$7713
		ldxy	$ACDC
		JSR	$770A
		BIT	$6386
		BMI	:+
		JMP	$7740
:		JMP	$AB09
:		CLC
		LDA	$02
		ADC	$6346
		STA	$6346
		LDA	$03
		ADC	$6345
		STA	$6345
		BCC	:---
		LDA	#$FF
		STA	$6345
		STA	$6346
		BMI	:---
		LDY	#$03
:		LDA	$63B1,Y
		STA	$AC04,Y
		DEY
		BPL	:-
		LDA	$AC07
		CMP	$02
		LDA	$AC06
		SBC	$03
		BCS	:++++
		LDA	$AC05
		ORA	$AC04
		BNE	:+
		SEC
		RTS
:		LDA	$AC05
		SEC
		SBC	#$01
		STA	$AC05
		BCS	:+
		DEC	$AC04
:		LDA	#$0A
		CLC
		ADC	$AC07
		STA	$AC07
		BCC	:+
		INC	$AC06
:		JMP	$ABB1
:		LDA	$AC07
		SEC
		SBC	$02
		STA	$AC07
		LDA	$AC06
		SBC	$03
		STA	$AC06
		LDY	#$03
:		LDA	$AC04,Y
		STA	$63B1,Y
		DEY	
		BPL	:-
		CLC
		RTS

		.BYTE	$00,$92,$45,$00,$01,$64,$32 ; |..c....`..E..d2|
		MOVEXY	0,0
		.BYTE	$A5
		.BYTE	"Would you like the healer to:",$0D
		MOVEXY	7,2
		MenuItem "1","Heal wounds (1 silver each)"
		MOVEXY	7,3
		MenuItem "2","Cure Diseases (100 silvers)"
		MOVEXY	7,4
		MenuItem "3","Cure Poisons (50 silvers)"
		MOVEXY	7,6
		MenuItem "0","Nothing at all"
		.BYTE	$FF
		MOVEXY	10,2
		.BYTE	"Cure how many hits at"
		MOVEXY	8,4
		.BYTE	"1 silver each?  >",$FF
		STRSUB	$7665
		.BYTE	"lays his",$0D
		.BYTE	$A5,"hands upon you.",$0D,$FF
		STRSUB	$7653
		.BYTE	"grumbles:",$0D,$0D,$0D
		.BYTE	$A5,"Thy purse is too small, however...",$0D,$FF
		.BYTE	$00

		LDA	$AB
		BNE	:+
		RTS
:		JMP	$76FB

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST13"

		.BYTE	$01
		.WORD	$AA4C,$AA4C,$AA53,$AA76,$AA53
		.BYTE	$BD
		.BYTE	$FF,$05,$08,$63,$28,$9b,$aa,$00,$00 ; |S.v.S.....c(....|
		.BYTE	$b2,$aa,$00,$00,$00,$00,$00,$00,$09,$01,$28,$00,$a9,$00,$1c,$14 ; |..........(.....|
		.BYTE	$14,$28,$14,$14,$28,$28,$00,$01,$00,$00,$00,$03,$05,$02,$01,$0b ; |.(..((..........|
		.BYTE	$3b,$00
		.BYTE	$33,$33,$11,$11,$23,$11,$11,$11,$11,$11,$22
		.BYTE	"is undone",$AE
		.BYTE	"Knight",$00

		Item	$03,$00,$00,$19,"Claymore"
		.BYTE	$00,$ff,$00
		.BYTE	$13,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$28,$20,$30,$30,$80,$15
	
		Item	$03,$00,$00,$10,"Flamesword"	
		.BYTE	$00,$ff,$00
		.BYTE	$11,$24,$00,$00,$15,$00,$00,$00,$00,$00,$00
		.BYTE	$0e,$10,$30,$30,$80,$15
:
		LDA	RANDOM
		ORA	#$40
		STA	$AA0C
		BMI	:+
		LDA	#$06
		STA	$AA1D
		LDA	#$A8
		STA	$AA21
:		JMP	$7719
		JSR	$7707
		LDA	$AA0C
		AND	$6385
		BPL	:+
		LDA	$AA0C
		CMP	$6385
		BCS	:+
		ldxy	$AB4C
		JSR	$770A
		JMP	$7608
:		ldxy	$AB5F
		JSR	$7728
		JSR	$772B
		BCS	:+++
		LDA	RANDOM
		CMP	#$10
		BCS	:+
		LDX	#$52
		LDA	#$01
		JSR	$186F
		ldxy	$AB9B
		JSR	$770A
:		BIT	$AA0C
		BPL	:+
		LDA	RANDOM
		BPL	:+
		LDX	#$85
		LDA	#$01
		JSR	$1878
:		JMP	$7608
:		dldi	$76D9, $AB24
		BIT	$633B
		BPL	:+
		dldi	$76D9, $AB31
:		ldxy	$ABAA
		JMP	$770D

		.BYTE	"Have at you!",$00
		.BYTE	"Learn respect then, wench!",$00
		STRSUB	$7665
		.BYTE	"yields to you.",$0D,$FF
		STRSUB	$7653
		.BYTE	"demands:",$0D,$0D
		.BYTE	$A5,$22,"Yield the passage or face cold steel!",$22,$0D,$0D,$0D
		STRSUB	$7674
		.BYTE	$FF

		MOVEXY	0,3
		.BYTE	$A5,$22,"Coward!",$22,$0D,$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	$28
		.BYTE	$0D,$FF

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST14"

	.BYTE	$01
	.WORD	$AA6B,$AA6B,$AA72,$AA9A,$AA9A
	.BYTE	$00
	.BYTE	$80,$01,$08,$14,$14 ; |k.k.r...........|
	.BYTE	$00,$00,$00,$00,$be,$aa,$c5,$aa,$ca,$ab,$21,$ab,$0b,$00,$28,$00 ; |..........!...(.|
	.BYTE	$42,$00,$0a,$14,$14,$28,$14,$14,$28,$1c,$00,$00,$00,$00,$00,$00 ; |B....(..(.......|
	.BYTE	$00,$00,$00,$00,$00,$01,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11 ; |................|
	.BYTE	$11
	.BYTE	"gasps:",$0D,$0D
	.BYTE	$A5,$22,"What you sow, you shall reap!",$22,$AE
	.BYTE	"pauper",$00

	Item	$00,$00,$00,$00,"Hardened Fist"
	.BYTE	$00,$ff,$00
	.BYTE	$33,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$00,$00,$00,$00,$06,$00

	Item	$FF,$00,$00,$00,"Bare Foot"
	.BYTE	$00,$ff,$00
	.BYTE	$35,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$00,$00,$00,$00,$01,$00
:
	ldxy	$AB58
	JMP	$770A
	BCS	:+
	JSR	$773D
	JMP	$7740

:	LDA	$7F
	JSR	$1887
	BEQ	:+++
	LDY	#$00
	LDA	(off_41),Y
	BNE	:++++
	LDX	#$86
	LDA	#$01
	JSR	$1878
	LDA	#$01
	LDX	#$85
	JSR	$1878
	dldi	$76D9, $AB4F
	BIT	$633B
	BPL	:+
	dldi	$76D9, $AB53	
:	ldxy	$AB32
	JSR	$770A
:	LDA	$7F
	JSR	$188A
:	JMP	$7740
:	LDA	RANDOM
	CMP	#$40
	BCS	:---
	ldxy	$ABA0
	JSR	$770A
	JMP	$AB08
	LDX	#$86
	LDA	#$03
	JSR	$186F
	LDX	#$85
	LDA	#$02
	JSR	$186F
	JMP	$773A

	MOVEXY	0,3
	.BYTE	$A5,$22,"Bless you, kind "
	.BYTE	$B4
	.WORD	$76D9
	.BYTE	10
	.BYTE	".",$22,$0D,$FF
	.BYTE	"sir",0
	.BYTE	"lady",0
	STRSUB	$7653
	.BYTE	"pleads:",$0D,$0D
	.BYTE	$A5,$22,"Please help a fellow human",$0D
	.BYTE	$A5,"trapped in this foul world.",$22,$0D,$FF
	MOVEXY	0,3
	.BYTE	$A5,$22,"I was hoping for pears and cheese.",$22,$0D,$FF

	LDA	$AB
	BNE	:+
	RTS
:	JMP	$76F8

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST15"

	.BYTE	$01
	.WORD	$AA61,$AA61,$AA6A,$AA6A,$AA8F
	.BYTE	$15
	.BYTE	$80,$03,$03 ; |v.a.a.j.j.......|
	.BYTE	$14,$14,$07,$00,$00,$00,$00,$00,$b5,$aa,$01,$00,$00,$00,$0c,$01 ; |................|
	.BYTE	$28,$00,$02,$00,$12,$14,$14,$1d,$14,$14,$1e,$1e,$00,$00,$00,$00 ; |(...............|
	.BYTE	$00,$01,$00,$03,$01,$28,$50,$00,$14,$14,$00,$00,$13,$00,$00,$00 ; |.....(P.........|
	.BYTE	$00,$00,$00
	.BYTE	"dies with",$0D
	.BYTE	$A5,"a sneer on his face",$AE
	.BYTE	"nobleman",0

	Item	$03,$00,$00,$0C,"Broadsword"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$0c,$0c,$3d,$3d,$80,$11

	Item	$03,$00,$00,$04,"Ruby Rapier"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$25,$00,$00,$18,$00,$13,$00,$00,$00,$00
	.BYTE	$10,$18,$e0,$e0,$80,$15
:
	.BYTE	$90,$08,$a5,$7f
	JSR	$188A
	JMP	$7740
	JSR	$773D
	.BYTE	$a5,$75,$c9,$04,$d0,$f4,$a9,$f7,$8d,$d9,$76,$a9,$aa ; | =w.u........v..|
	.BYTE	$8d,$da,$76,$2c,$3b,$63,$10,$0a
	dldi	$76D9, $AAFD
	ldxy	$AB06
	JSR	$7728
	LDA	#$08
	JSR	$185A
	LDA	#$01
	LDX	#$B1
	JSR	$187B
	JMP	$7740
	.BYTE	"knave",$00
	.BYTE	"scullion",$00
	STRSUB	$7653
	.BYTE	"tosses you a coin",$0D
	.BYTE	$A5,"and says:",$0D,$0D
	.BYTE	$A5,$22,"Away "	
	.BYTE	$B4
	.WORD	$76D9
	.BYTE	10
	.BYTE	"!  Get thyself a bath!",$22,$0D,$FF
; ----------------------------------------------------------------------------
	.SEGMENT	"MONST16"

	.BYTE	$01
	.WORD	$AA65,$AA72,$AA73,$AA73,$AA73
	.BYTE	$00,$80,$0a,$04,$0a,$2d,$00,$00,$00 ; |.s.s.s......-...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$0d,$02,$00,$00,$a2,$00,$31 ; |...............1|
	.BYTE	$14,$14,$14,$14,$14,$3c,$3c,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |.....<<.........|
	.BYTE	$00,$00,$00,$44,$44,$ff,$ff,$23,$23,$13,$38,$ff,$ff,$38,$64,$69 ; |...DD..##.8..8di|
	.BYTE	$73,$73,$6f,$6c,$76,$65,$73,$20,$69,$6e,$20,$61,$0d,$a5,$74,$68 ; |ssolves in a..th|
	.BYTE	$69,$63,$6b,$20,$67,$72,$65,$65,$6e,$20,$70,$75,$64,$64,$6c,$65 ; |ick green puddle|
	.BYTE	$ae
	.BYTE	"alien sentry",$00
	.BYTE	$00
	Item	$03,$00,$00,$04,"Beam Weapon"
	.BYTE	$88,$ff,$04,$01,$01,$00,$00,$00,$00,$01,$02,$80,$01,$00,$10,$00
	.BYTE	$88,$ff,$44,$01,$01,$00,$00,$00,$00,$92,$45,$00,$01,$00,$0e,$00
	.BYTE	$00,$ff,$00
	.BYTE	$00,$00,$00,$00,$00,$00,$68,$00,$00,$00,$00
	.BYTE	$12,$18,$20,$20,$05,$00
:
; ----------------------------------------------------------------------------
	.SEGMENT	"MONST17"

	.BYTE	$02
	.BYTE	$6b,$aa,$71,$aa,$77,$aa,$a2,$aa,$cc,$aa ; |.  ...k.q.w.....|
	.BYTE	$00,$80,$04,$01,$ff,$3c,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00 ; |.....<..........|
	.BYTE	$00,$00,$0e,$02,$00,$00,$a8,$00,$1e,$14,$14,$14,$14,$00,$26,$18 ; |..............&.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$22,$22,$ff,$ff ; |............""..|
	.BYTE	$22,$33,$00,$ff,$ff,$ff,$13,$73,$70,$75,$74,$74,$65,$72,$73,$20 ; |"3.....sputters |
	.BYTE	$61,$72,$6f,$75,$6e,$64,$20,$61,$20,$62,$69,$74,$0d,$a5,$61,$6e ; |around a bit..an|
	.BYTE	$64,$20,$74,$68,$65,$6e,$20,$65,$78,$70,$6c,$6f,$64,$65,$73,$ae ; |d then explodes.|
	.BYTE	$72,$6f,$62,$6f,$74,$00,$27,$62,$6f,$74,$73,$00,$00,$2b,$00,$00 ; |robot.'bots..+..|
	.BYTE	$00,$17,$42,$6c,$61,$64,$65,$20,$41,$74,$74,$61,$63,$68,$6d,$65 ; |..Blade Attachme|
	.BYTE	$6e,$74,$00,$00,$ff,$00,$00,$58,$00,$00,$00,$00,$00,$00,$00,$00 ; |nt.....X........|
	.BYTE	$00,$00,$00,$00,$00,$00,$15,$00,$2a,$00,$00,$00,$16,$4c,$65,$6e ; |........*....Len|
	.BYTE	$73,$20,$41,$74,$74,$61,$63,$68,$6d,$65,$6e,$74,$00,$00,$ff,$00 ; |s Attachment....|
	.BYTE	$00,$00,$00,$00,$38,$00,$38,$00,$00,$00,$00,$00,$00,$00,$00,$05 ; |....8.8.........|
	.BYTE	$00,$ff,$2c,$00,$00,$00,$18,$4e,$6f,$7a,$7a,$6c,$65,$20,$41,$74 ; |..,....Nozzle At|
	.BYTE	$74,$61,$63,$68,$6d,$65,$6e,$74,$00,$00,$ff,$00,$00,$00,$00,$00 ; |tachment........|
	.BYTE	$6f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$00

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST18"

	.BYTE	$03
	.BYTE	$53,$aa ; |o.............S.|
	.BYTE	$5a,$aa,$62,$aa,$83,$aa,$62,$aa,$25,$80,$01,$02,$0a,$14,$02,$00 ; |Z.b...b.%.......|
	.BYTE	$00,$00,$00,$00,$05,$00,$01,$00,$00,$00,$0f,$01,$28,$00,$03,$00 ; |............(...|
	.BYTE	$08,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$00,$01,$01,$00,$01,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$2b,$11,$11,$00,$00,$11,$00,$00,$00,$00,$00,$00,$73 ; |...+...........s|
	.BYTE	$77,$65,$61,$72,$73,$20,$76,$65,$6e,$67,$65,$61,$6e,$63,$65,$ae ; |wears vengeance.|
	.BYTE	$6e,$6f,$76,$69,$63,$65,$00,$6e,$6f,$76,$69,$63,$65,$73,$00,$03 ; |novice.novices..|
	.BYTE	$21,$00,$00,$01,$0d,$44,$61,$67,$67,$65,$72,$00,$00,$ff,$00,$00 ; |!....Dagger.....|
	.BYTE	$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$06,$10,$10,$81,$02 ; |................|
	.BYTE	$03,$41,$00,$00,$01,$0d,$44,$61,$67,$67,$65,$72,$00,$83,$ff,$c1 ; |.A....Dagger....|
	.BYTE	$04,$d0,$02,$a0,$05,$00,$91,$5a,$00,$01,$00,$01,$00
	ItemCurse "Weakness"
	.BYTE	$00,$ff,$00 ; |Weakness........|
	.BYTE	$00,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$06,$10,$10,$81 ; |................|
	.BYTE	$02

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST19"

	.BYTE	$02
	.BYTE	$47,$aa,$52,$aa,$5e,$aa,$7f,$aa,$5e,$aa,$26,$80,$01,$04 ; |..G.R.^...^.&...|
	.BYTE	$0a,$14,$02,$00,$00,$00,$00,$00,$06,$00,$01,$00,$00,$00,$0f,$01 ; |................|
	.BYTE	$28,$00,$00,$00,$0c,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$01,$01,$00,$00 ; |(...............|
	.BYTE	$00,$03,$07,$00,$00,$00,$00,$0b,$11,$11,$00,$00,$12,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$64,$69,$65,$73,$ae,$61,$70,$70,$72,$65,$6e,$74,$69 ; |...dies.apprenti|
	.BYTE	$63,$65,$00,$61,$70,$70,$72,$65,$6e,$74,$69,$63,$65,$73,$00,$03 ; |ce.apprentices..|
	.BYTE	$21,$00,$00,$01,$0d,$44,$61,$67,$67,$65,$72,$00,$00,$ff,$00,$00 ; |!....Dagger.....|
	.BYTE	$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$06,$10,$10,$81,$02 ; |................|
	.BYTE	$03,$41,$00,$00,$01,$0d,$44,$61,$67,$67,$65,$72,$00,$83,$ff,$c1 ; |.A....Dagger....|
	.BYTE	$ff,$05,$00,$11,$00,$00,$92,$45,$00,$01,$00,$03,$00
	ItemCurse "Slow Death"
	.BYTE	$00,$ff,$00 ; |Slow Death......|
	.BYTE	$00,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$06,$10,$10,$81 ; |................|
	.BYTE	$02

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST20"

	.BYTE	$01
	.BYTE	$4a,$aa,$4a,$aa,$4f,$aa,$4f,$aa,$8f,$aa,$9d,$80,$08,$08 ; |..J.J.O.O.......|
	.BYTE	$28,$28,$02,$00,$00,$00,$00,$00,$06,$00,$04,$00,$00,$00,$0a,$01 ; |((..............|
	.BYTE	$28,$00,$00,$00,$25,$19,$19,$19,$37,$37,$23,$19,$00,$00,$00,$00 ; |(...%...77#.....|
	.BYTE	$00,$03,$07,$01,$00,$00,$00,$00,$14,$14,$12,$12,$12,$12,$12,$12 ; |................|
	.BYTE	$12,$12,$12,$65,$78,$70,$69,$72,$65,$73,$ae,$6d,$61,$67,$65,$00 ; |...expires.mage.|
	.BYTE	$03,$40,$00,$00,$06,$0c,$53,$74,$61,$66,$66,$00,$83,$ff,$c1,$ff ; |.@....Staff.....|
	.BYTE	$05,$00,$11,$00,$00,$92,$45,$00,$01,$00,$03,$00
	ItemCurse "Slow Death"
	.BYTE	$00,$ff,$00
	.BYTE	$16,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$06,$18,$18,$18,$d2,$40
	.BYTE	$03,$28,$00,$00,$08,$14,$53,$65,$72,$70,$65,$6e,$74,$20,$53,$74 ; |.(....Serpent St|
	.BYTE	$61,$66,$66,$00,$00,$ff,$00,$26,$16,$00,$00,$00,$00,$00,$00,$00 ; |aff....&........|
	.BYTE	$00,$00,$12,$18,$20,$20,$ca,$40

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST21"

	.BYTE	$01
	.WORD	$AA47,$AA4D,$AA57,$AA57,$AA80
	.BYTE	$12,$80,$10,$08,$14,$28,$cf,$aa,$00,$00,$00,$00,$06 ; |........(.......|
	.BYTE	$00,$ff,$aa,$00,$00,$10,$02,$28,$00,$00,$00,$43,$14,$14,$14,$3c ; |.......(...C...<|
	.BYTE	$3c,$32,$28,$00,$00,$00,$00,$00,$11,$21,$04,$06,$0b,$13,$00
		.BYTE	$23,$23,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE	"dies",$AE
		.BYTE	"wizard",0
		.BYTE	"archmage",0

		Item	$03,$00,$00,$06,"Staff of Power"
		.BYTE	$00,$ff,$00
		.BYTE	$26,$00,$00,$00,$00,$00,$12,$13,$00,$00,$00
		.BYTE	$06,$18,$18,$18,$ca,$40

		Item	$03,$00,$00,$08,"Serpent Staff"
		.BYTE	$00,$ff,$00
		.BYTE	$26,$16,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$12,$18,$20,$20,$ca,$40

		Item	$03,$00,$00,$01,"Glass Dagger"
		.BYTE	$00,$FF,$00
		.BYTE	$00,$F4,$00,$00,$00,$00,$00,$00,$8F,$8F,$00
		.BYTE	$08,$10,$01,$01,$98,$01
:
	LDA	$8D
	CMP	#$19
	BEQ	:++
	LDX	#$09
:	LDA	$AAF5,X
	STA	$AA01,X
	DEX
	BPL	:-
	LDA	#$14
	STA	$AA0D
	LDA	#$32
	STA	$AA23
	LDA	#$23
	STA	$AA37
	STA	$AA38
:	JMP	$7746

	.WORD	$AA4E,$AA4D,$AA80,$AA57,$AAA8

	JSR	$7731
	BCC	:+
	LDA	RANDOM
	BPL	:+
	LDA	$B3
	CMP	#$0B
	BCC	:++
:	JMP	$7701
:	LDA	#$34
	STA	$6320
	dldi	$76D9, $AB67
	LDA	RANDOM
	BPL	:+
	LDA	#$46
	STA	$6320
	dldi	$76D9, $AB74
:	JSR	$7749
	JSR	$774C
	ldxy	$AB48
	JSR	$770A
	LDX	$72
	TXS
	JMP	$7608

	STRSUB	$7665
	.BYTE	"gates in",$0D
	.BYTE	$A5
	.BYTE	$B4
	.WORD	$76D9
	.BYTE	$14
	.BYTE	" and leaves!",$0D,$FF
	.BYTE	"flame demons",0
	.BYTE	"berzerkers",0
; ----------------------------------------------------------------------------

	.SEGMENT	"MONST22"

	.BYTE	$04
	.WORD	$AA5C,$AA64,$AA6D,$AA8E,$AACF
	.BYTE	$65,$80,$04,$08,$14,$28,$02,$00,$00,$00,$00,$00,$06,$00 ; |..e....(........|
	.BYTE	$04,$00,$00,$00,$0f,$01,$28,$00,$00,$00,$09,$14,$14,$14,$1e,$1e ; |......(.........|
	.BYTE	$1e,$1e,$07,$06,$04,$00,$01,$00,$00,$00,$00,$00,$00,$00,$11,$11 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	"goes to",$0D
	.BYTE	$A5,"his final reward",$AE
	.BYTE	"acolyte",0
	.BYTE	"acolytes",0

	Item	$03,$00,$00,$01,"Dagger"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04
	.BYTE	$06,$10,$10,$81,$02

	Item	$03,$00,$00,$01,"Dagger"
	.BYTE	$83,$ff,$c1,$ff,$10,$00,$10,$00,$00,$91,$9a,$00,$01,$00,$01,$00
	ItemCurse "Thirst"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$04,$06,$10,$10,$81,$02

	Item	$03,$00,$00,$03,"Katar"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$10,$18,$18,$18,$80,$02
:
; ----------------------------------------------------------------------------

	.SEGMENT	"MONST23"

	.BYTE	$01
	.WORD	$AA4A,$AA4F,$AA50,$AA50,$AA50
	.BYTE	$11,$80,$07,$08,$14,$28,$02,$00,$00,$00,$00,$00,$79,$aa,$04 ; |......(......y..|
	.BYTE	$00,$c5,$aa,$0a,$01,$28,$00,$00,$00,$1e,$14,$14,$14,$c8,$c8,$46 ; |.....(.........F|
	.BYTE	$32,$00,$00,$00,$00,$01,$01,$03,$02,$02,$04,$14,$00,$22,$22,$00 ; |2............"".|
	.BYTE	$00,$22,$00,$00,$00,$00,$00,$00
	.BYTE	"expires",$AE
	.BYTE	"sage",$00
	.BYTE	$00

	Item	$03,$00,$00,$05,"Diamond Dagger"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$1f,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$08,$0c,$ff,$ff,$89,$30
:
	JSR	$773D
	LDX	$A6
	BMI	:++
	LDA	$63C2,X
	AND	#$8F
	BEQ	:++
	LDA	$6393
	BEQ	:+
	LDA	#$83
	STA	$51
	JSR	$1893
	ldxy	$AAA4
	JSR	$770A
:	JMP	$7740
:	LDA	$AC
	BEQ	:--
	JMP	$7755

	STRSUB	$7653
	.BYTE	"signs a rune over your head.",$0D,$FF

	LDA	RANDOM
	CMP	#$40
	BCS	:++
	ldxy	$AAE5
	JSR	$1884
	BMI	:+
	JSR	$7764
:	JSR	$7713
	ldxy	$AB1E
	JSR	$770A
:	JMP	$773A

	Item	$03,$01,$00,$00,""
	.BYTE	$83,$ff,$01,$01,$01,$00,$00,$00,$00,$01,$02,$80,$01,$00 ; |................|
	.BYTE	$10,$00,$c3,$ff,$c1,$ff,$0a,$00,$3c,$00,$00,$92,$b1,$00,$05,$02 ; |........<.......|
	.BYTE	$01,$ff,$e3,$00,$41
	.BYTE	"Poverty",0
	.BYTE	$00,$00,$00 ; |....APoverty....|
	.BYTE	$00,$00,$00,$01
:
	MOVEXY	0,3
	.BYTE	$A5,$22,"You shall not prosper from this!",$22,$0D,$FF
; ----------------------------------------------------------------------------

	.SEGMENT	"MONST24"

	.BYTE	$03
	.WORD	$AA47,$AA4B,$AA50,$AA72,$AA96
	.BYTE	$44,$40,$04,$04,$1c,$14,$00,$00,$00 ; |.P.r...D@.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$11,$01,$2d,$00,$a0,$00,$17 ; |...........-....|
	.BYTE	$32,$01,$28,$01,$08,$14,$14,$03,$03,$03,$00,$00,$00,$00,$00,$00 ; |2.(.............|
	.BYTE	$00,$00,$00,$23,$23,$0f,$00,$13,$00,$00,$00,$00,$00,$00
	.BYTE	"dies",$AE
	.BYTE	"orc",0
	.BYTE	"orcs",0

	Item	$03,$00,$00,$14,"Halberd"	
	.BYTE	$00,$ff,$00
	.BYTE	$11,$26,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$14,$10,$28,$28,$c0,$20

	Item	$03,$00,$00,$19,"Great Axe"
	.BYTE	$00,$ff,$00
	.BYTE	$12,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$20,$10,$30,$30,$c0,$12
	
	Item	$03,$00,$00,$19,"Claymore"
	.BYTE	$00,$ff,$00
	.BYTE	$13,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$28,$20,$30,$30,$80,$15
:
; ----------------------------------------------------------------------------

	.SEGMENT	"MONST25"
	
	.BYTE	$05,$48,$aa,$4e,$aa,$55,$aa,$74,$aa,$74,$aa ; | 00...H.N.U.t.t.|
	.BYTE	$11,$80,$05,$03,$37,$1e,$00,$00,$00,$00,$00,$00,$06,$00,$03,$00 ; |....7...........|
	.BYTE	$00,$00,$03,$01,$00,$00,$c0,$00,$0a,$14,$0a,$0f,$3c,$14,$19,$21 ; |............<..!|
	.BYTE	$05,$05,$02,$01,$01,$00,$00,$02,$00,$11,$00,$00,$14,$14,$0f,$11 ; |................|
	.BYTE	$11,$11,$11,$11,$11,$11,$11,$70,$6f,$6f,$66,$73,$ae,$67,$6e,$6f ; |.......poofs.gno|
	.BYTE	$6d,$65,$00,$67,$6e,$6f,$6d,$65,$73,$00,$03,$1f,$00,$00,$07,$0b ; |me.gnomes.......|
	.BYTE	$43,$6c,$75,$62,$00,$00,$ff,$00,$17,$00,$00,$00,$00,$00,$00,$00 ; |Club............|
	.BYTE	$00,$00,$00,$08,$02,$18,$18,$aa,$05,$00,$28,$00,$00,$00,$14,$6c ; |..........(....l|
	.BYTE	$69,$67,$68,$74,$69,$6e,$67,$20,$6a,$6f,$6c,$74,$00,$00,$ff,$00 ; |ighting jolt....|
	.BYTE	$00,$00,$00,$00,$00,$00,$24,$00,$00,$00,$00,$00,$00,$00,$00,$05 ; |......$.........|
	.BYTE	$00

; ----------------------------------------------------------------------------

	.SEGMENT	"MONST26"

	.BYTE	$07,$6e,$aa,$74,$aa,$7c,$aa,$7c,$aa,$7c,$aa,$13,$80,$03,$08 ; |..n.t.|.|.|.....|
	.BYTE	$1e,$1e,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$12,$01 ; |................|
	.BYTE	$00,$04,$20,$00,$0c,$14,$14,$14,$14,$14,$14,$14,$00,$00,$00,$01 ; |.. .............|
	.BYTE	$00,$00,$00,$10,$05,$00,$00,$00,$23,$23,$0f,$12,$12,$12,$12,$12 ; |........##......|
	.BYTE	$12,$12,$12,$64,$69,$73,$61,$70,$70,$65,$61,$72,$73,$20,$69,$6e ; |...disappears in|
	.BYTE	$20,$61,$0d,$a5,$70,$75,$66,$66,$20,$6f,$66,$20,$67,$72,$65,$61 ; | a..puff of grea|
	.BYTE	$73,$79,$20,$62,$6c,$61,$63,$6b,$20,$73,$6d,$6f,$6b,$65,$ae,$64 ; |sy black smoke.d|
	.BYTE	$77,$61,$72,$66,$00,$64,$77,$61,$72,$76,$65,$73,$00,$03,$49,$00 ; |warf.dwarves..I.|
	.BYTE	$00,$1c,$15,$54,$68,$75,$6e,$64,$65,$72,$20,$48,$61,$6d,$6d,$65 ; |...Thunder Hamme|
	.BYTE	$72,$00,$83,$ff,$c1,$63,$01,$00,$1e,$00,$00,$91,$50,$00,$06,$08 ; |r....c......P...|
	.BYTE	$01,$00
	ItemCurse "Loki's Wrath"
	.BYTE	$00,$ff,$00
	.BYTE	$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |h....8..........|
	.BYTE	$40,$40,$40,$40,$82,$08

; ----------------------------------------------------------------------------

	.SEGMENT	"MONST27"

	.BYTE	$01,$5e,$aa,$63,$aa,$64,$aa,$89,$aa,$89 ; |@@@@...^.c.d....|
	.BYTE	$aa,$00,$80,$01,$02,$28,$0a,$00,$00,$00,$00,$34,$ab,$00,$00,$b3 ; |.....(.....4....|
	.BYTE	$aa,$00,$00,$13,$01,$00,$1c,$a8,$00,$07,$14,$14,$14,$00,$00,$14 ; |................|
	.BYTE	$14,$00,$00,$00,$00,$00,$01,$03,$00,$00,$00,$00,$00,$00,$ff,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$73,$70,$6c,$61,$74,$74,$65,$72 ; |........splatter|
	.BYTE	$73,$0d,$a5,$69,$6e,$74,$6f,$20,$6e,$6f,$74,$68,$69,$6e,$67,$6e ; |s..into nothingn|
	.BYTE	$65,$73,$73,$ae,$73,$6c,$69,$6d,$65,$00,$ff,$25,$00,$00,$00,$11 ; |ess.slime..%....|
	.BYTE	$61,$63,$69,$64,$69,$63,$20,$67,$6f,$6f,$00,$00,$ff,$00,$00,$00 ; |acidic goo......|
	.BYTE	$00,$00,$13,$13,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$00,$ff ; |................|
	.BYTE	$2a,$00,$00,$00,$16,$63,$6f,$72,$72,$6f,$73,$69,$76,$65,$20,$6a ; |*....corrosive j|
	.BYTE	$65,$6c,$6c,$79,$00,$00,$ff,$00,$00,$00,$11,$11,$12,$12,$00,$00 ; |elly............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$06,$00,$ad,$0a,$d2,$c9,$55,$b0,$05 ; |.............U..|
	.BYTE	$ad,$bb,$63,$d0,$03,$4c,$fe,$76,$a9,$02,$20,$99,$18,$18,$69,$01 ; |..c..L.v.. ...i.|
	.BYTE	$a2,$bb,$20,$6f,$18,$a2,$aa,$a0,$d6,$4c,$0a,$77,$a6,$00,$03,$a5 ; |.. o.....L.w....|
	.BYTE	$53,$6f,$6d,$65,$20,$6f,$66,$20,$79,$6f,$75,$72,$20,$66,$6f,$6f ; |Some of your foo|
	.BYTE	$64,$20,$68,$61,$73,$20,$62,$65,$65,$6e,$20,$73,$6c,$69,$6d,$65 ; |d has been slime|
	.BYTE	$64,$2e,$0d,$ff,$ac,$53,$76,$6f,$6f,$7a,$65,$73,$20,$64,$69,$67 ; |d....Svoozes dig|
	.BYTE	$65,$73,$74,$69,$76,$65,$20,$61,$63,$69,$64,$0d,$a5,$6f,$6e,$74 ; |estive acid..ont|
	.BYTE	$6f,$20,$74,$68,$65,$20,$66,$6c,$6f,$6f,$72,$20,$61,$72,$6f,$75 ; |o the floor arou|
	.BYTE	$6e,$64,$20,$79,$6f,$75,$2e,$0d,$0d,$ff,$20,$67,$77,$a2,$aa,$a0 ; |nd you.... gw...|
	.BYTE	$fe,$4c,$0a,$77

; ----------------------------------------------------------------------------

	.SEGMENT	"MONST28"

	.BYTE	$01,$5d,$aa,$61,$aa,$62,$aa,$8a,$aa,$8a,$aa,$00 ; |.L.w.].a.b......|
	.BYTE	$80,$01,$02,$28,$0f,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00 ; |...(............|
	.BYTE	$00,$13,$01,$00,$1c,$a8,$00,$08,$14,$14,$14,$00,$00,$14,$14,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$ff,$00,$00,$0f ; |................|
	.BYTE	$00,$00,$11,$00,$00,$22,$65,$78,$70,$6c,$6f,$64,$65,$73,$20,$69 ; |....."explodes i|
	.BYTE	$6e,$74,$6f,$0d,$a5,$66,$69,$6e,$65,$20,$70,$6f,$77,$64,$65,$72 ; |nto..fine powder|
	.BYTE	$ae,$6d,$6f,$6c,$64,$00,$ff,$28,$00,$00,$00,$14,$6e,$6f,$78,$69 ; |.mold..(....noxi|
	.BYTE	$6f,$75,$73,$20,$66,$75,$6d,$65,$73,$00,$00,$ff,$00,$00,$00,$00 ; |ous fumes.......|
	.BYTE	$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$ff,$5a ; |...............Z|
	.BYTE	$01,$00,$00,$16,$62,$75,$72,$73,$74,$20,$6f,$66,$20,$73,$70,$6f ; |....burst of spo|
	.BYTE	$72,$65,$73,$00,$88,$ff,$01,$01,$01,$00,$01,$00,$00,$01,$02,$80 ; |res.............|
	.BYTE	$01,$00,$10,$00,$c1,$ff,$c1,$ff,$64,$05,$22,$00,$07,$92,$45,$00 ; |........d."...E.|
	.BYTE	$01,$00,$01,$ff
	ItemDisease "Green Lung"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$00,$12,$14,$00,$00,$00,$00,$00 ; |g...............|
	.BYTE	$00,$00,$00,$00,$00,$00,$04,$00

; ----------------------------------------------------------------------------

		.SEGMENT	"MONST29"

		.BYTE	$07,$5f,$aa,$6a,$aa,$75,$aa,$75 ; |........._.j.u.u|
		.BYTE	$aa,$75,$aa,$12,$00,$12,$02,$14,$37,$05,$00,$00,$00,$00,$00,$06 ; |.u......7.......|
		.BYTE	$00,$05,$00,$00,$00,$14,$02,$00,$06,$a0,$00,$07,$0a,$00,$0f,$3c ; |...............<|
		.BYTE	$3c,$32,$28,$00,$00,$00,$00,$00,$00,$05,$03,$01,$00,$00,$00 ; |<2(.............|
		.BYTE	$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11
		.BYTE	"goes up",$0D
		.BYTE	$A5,"in a cloud of smoke",$AE
		.BYTE	"homunculus",$00
		.BYTE	"homunculii",$00

		Item	$FF,$00,$00,$00,"talons"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$13,$00 ; |...talons.......|
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$00,$00
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST30"

		.BYTE	$01
		.WORD	$AA66,$AA6D,$AA6E,$AA95,$AA6E
		.BYTE	$24,$ff,$07,$02,$28,$2c,$00 ; |.m.n...n.$...(,.|
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$15,$01,$00,$03,$a0 ; |................|
		.BYTE	$00,$27,$1e,$0a,$1e,$14,$15,$1e,$28,$00,$00,$00,$00,$00,$00,$19 ; |.'......(.......|
		.BYTE	$1e,$0a,$00,$00,$00
		.BYTE	$FF,$FF,$00,$00,$F0,$0F,$00,$00,$00,$00,$0F
		.BYTE	"is consumed",$0D
		.BYTE	$A5,"in a fiery orange ball",$AE
		.BYTE	"phoenix",$00

		Item	$FF,$00,$00,$00,"fiery talons"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$14,$00,$00,$13,$00,$00,$00,$12,$00,$00
		.BYTE	$00,$00,$00,$00,$03,$00

		Item	$FF,$00,$00,$00,"immolation"
		.BYTE	$00,$FF,$00
		.BYTE	$00,$00,$00,$00,$2a,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$06,$00
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST31"

		.BYTE	$01
		.WORD	$AA47,$AA50,$AA51,$AA79,$AAC1
		.BYTE	$12,$80,$14,$08,$28,$28,$02,$00,$00,$00,$00,$00,$06 ; |.......((.......|
		.BYTE	$00,$04,$00,$00,$00,$16,$02,$1e,$00,$00,$00,$29,$14,$14,$14,$32 ; |...........)...2|
		.BYTE	$32,$32,$32,$00,$00,$00,$00,$00,$00,$0f,$05,$00,$00,$2d,$00 ; |222..........-..|
		.BYTE	$13,$13,$13,$13,$13,$13,$13,$13,$13,$13,$13

		.BYTE	"dies",$AE
		.BYTE	"sorceress",$00

		Item	$03,$00,$00,$00,"Silver Needle"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$1f,$00,$00,$00,$00,$00,$14,$14,$00,$00
		.BYTE	$0a,$18,$03,$03,$81,$00

		Item	$03,$00,$00,$00,"Silver Needle"
		.BYTE	$83,$ff,$c1,$ff,$05,$00,$11,$00,$00,$92,$45,$00,$01,$00,$03,$00
		ItemCurse "Slow Death"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$1f,$00,$00,$00,$00,$00,$14,$14,$00,$00
		.BYTE	$0a,$18,$03,$03,$81,$00

		Item	$03,$00,$00,$03,"Emerald Knife"
		.BYTE	$00,$ff,$00 ; |merald Knife....|
		.BYTE	$00,$24,$18,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$18,$20,$e0,$e0,$82,$0c
:

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST32"

		.BYTE	$01
		.WORD	$AA4B,$AA54,$AA55,$AA7D,$AAA5
		.BYTE	$25,$80,$04,$04 ; |..K.T.U.}...%...|
		.BYTE	$14,$63,$00,$00,$00,$00,$ce,$aa,$00,$00,$03,$00,$00,$00,$17,$02 ; |.c..............|
		.BYTE	$00,$1a,$a0,$00,$11,$14,$00,$32,$01,$01,$17,$2c,$07,$05,$04,$06 ; |.......2...,....|
		.BYTE	$03,$04,$01,$01,$01,$23,$23,$23,$16,$ff,$00,$0f,$ff,$00,$00,$00 ; |.....###........|
		.BYTE	$00,$00,$00
	
		.BYTE	"subsides",$AE
		.BYTE	"whirlwind",$00

		Item	$00,$00,$00,$00,"flying debris"
		.BYTE	$00,$ff,$00
		.BYTE	$28,$00,$14,$14,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$84,$20

		Item	$FF,$00,$00,$00,"ripping winds"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$00,$00,$2a,$00,$00,$00,$00,$00,$00,$00 ; |s.......*.......|
		.BYTE	$00,$00,$00,$00,$04,$00

		Item	$FF,$00,$00,$00,"lightning bolt"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$00,$00,$00,$00,$00,$1a,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$06,$00
:

		JSR	$7767
		ldxy	a_SucksUp
		JMP	$770A

a_SucksUp:	 STRSUB	$7653
		.BYTE	"sucks up all the",$0D
		.BYTE	$A5,"debris in the area",$0D,$FF
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST33"

		.BYTE	$06
		.WORD	$AA5F,$AA69,$AA74,$AA74,$AA74
		.BYTE	$00,$80,$01 ; |..._.i.t.t.t....|
		.BYTE	$03,$0d,$0a,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$04,$00,$18 ; |................|
		.BYTE	$01,$01,$04,$a8,$00,$06,$14,$00,$14,$00,$00,$0a,$19,$00,$00,$00 ; |................|
		.BYTE	$00,$00,$00,$00,$01,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
		.BYTE	$00,$00,$00,$00
		.BYTE	"lays lifeless",$0D
		.BYTE	$A5,"on the ground",$AE
		.BYTE	"giant rat",$00
		.BYTE	"giant rats",$00

		Item	$FF,$01,$00,$00,"sharp pointy teeth"
		.BYTE	$88,$FF,$01,$01,$01,$00,$01,$00,$00,$01,$02,$80,$01,$00,$10,$00
		.BYTE	$C1,$FF,$C1,$FF,$DC,$05,$25,$00,$05,$92,$45,$00,$01,$00,$01,$FF
		ItemDisease "Rabies"
		.BYTE	$00,$FF,$00
		.BYTE	$00,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$02,$00
:

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST34"

		.BYTE	$01
		.WORD	$AA4B,$AA57,$AA58,$AA7C,$AA9B
		.BYTE	$12,$80 ; |....K.W.X.|.....|
		.BYTE	$11,$08,$14,$28,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00 ; |...(............|
		.BYTE	$19,$04,$32,$03,$a0,$00,$44,$3c,$14,$3c,$46,$46,$2d,$28,$00,$00 ; |..2...D<.<FF-(..|
		.BYTE	$00,$00,$00,$00,$00,$1e,$0a,$c8,$c8,$c8

		.BYTE	$44,$44,$22,$22,$ff,$22,$22,$22,$22,$22,$22
		.BYTE	"is slain",$AE
		.BYTE	"small dragon",$00

		Item	$FF,$00,$00,$00,"huge jaws"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$44,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$02,$00

		Item	$FF,$00,$00,$00,"claw"
		.BYTE	$00,$ff,$00
		.BYTE	$26,$12,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$00,$00

		Item	$FF,$00,$00,$00,"spiked tail"
		.BYTE	$00,$ff,$00
		.BYTE	$26,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$05,$00
:

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST35"

		.BYTE	$08
		.WORD	a_Skeleton,a_Skeletons,i_SkeletonSword,i_SkeletonSword,i_SkeletonSword
		.BYTE	$34 ; |.....k.t.~.~.~.4|
		.BYTE	$00,$01,$08,$4d,$1e,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |...M............|
		.BYTE	$00,$1a,$01,$00,$10,$a8,$00,$06,$14,$00,$14,$00,$00,$14,$14,$00 ; |................|
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$17
		.BYTE	$00,$00,$11,$00,$11,$00,$00,$ff,$00,$00,$ff
		.BYTE	"crumbles into a",$0D
		.BYTE	$A5,"heap of shattered bones",$AE
a_Skeleton:	.BYTE	"skeleton",$00
a_Skeletons:	.BYTE	"skeletons",$00
i_SkeletonSword:
		Item	$03,$00,$00,$07,"Sword"
		.BYTE	$83,$ff,$c1,$63,$1e,$00,$1e,$00,$00,$91,$78,$00,$01,$00,$01,$00
		ItemCurse "Clumsiness"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$23,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$0a,$0a,$23,$23,$80,$10
:

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST36"

		.BYTE	$05
		.WORD	$AA57,$AA5E,$AA66,$AA66,$AA66
		.BYTE	$22,$00,$02 ; |...W.^.f.f.f."..|
		.BYTE	$02,$14,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05 ; |................|
		.BYTE	$01,$1e,$10,$a8,$00,$0a,$14,$00,$14,$00,$00,$14,$0a,$00,$00,$00 ; |................|
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$16
		.BYTE	$00,$00,$00,$00,$0f,$00,$00,$00,$00,$00,$00
		.BYTE	"is no longer animate",$AE
		.BYTE	"zombie",$00
		.BYTE	"zombies",$00
		Item	$00,$01,$00,$00,"rotting arm"
		.BYTE	$88,$ff,$01,$01,$01,$00,$01,$00,$00,$01,$02,$80,$01,$00,$10,$00
		.BYTE	$c1,$ff,$c1,$ff,$1f,$00,$1f,$00,$05,$91,$62,$00,$02,$08,$01,$ff
		ItemDisease "Living Death"
		.BYTE	$00,$ff,$00
		.BYTE	$16,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$02,$00
:

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST37"

		.BYTE	$07
		.WORD	$AA5D,$AA63,$AA6A,$AA6A,$AA6A
		.BYTE	$66,$00,$01,$03,$63,$1e,$00 ; |.c.j.j.j.f...c..|
		.BYTE	$00,$00,$00,$00,$00,$93,$aa,$00,$00,$b1,$aa,$05,$02,$23,$10,$90 ; |.............#..|
		.BYTE	$00,$09,$14,$00,$50,$00,$00,$14,$14,$00,$00,$00,$00,$00,$00,$00 ; |....P...........|
		.BYTE	$00,$00,$00,$00,$58,$00,$00,$00,$00,$0f,$00,$00,$00,$00,$00,$00 ; |....X...........|
		.BYTE	"has robbed his",$0D
		.BYTE	$A5,"last crypt",$AE
		.BYTE	"ghoul",$00
		.BYTE	"ghouls",$00
		Item	$FF,$00,$00,$00,"powerful hands"
		.BYTE	$00,$ff,$00
		.BYTE	$13,$13,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$00,$00
:
		BCS	:+
		JSR	$773D
		JMP	$AAAE
:		LDA	#$07
		STA	$9C
		JSR	$774F
		BNE	:+
		LDX	#$85
		LDA	#$01
		JSR	$186F
		JMP	$7752
:		JMP	$7755
		LDA	$AA1F
		STA	$769B
		JSR	$7758
		dldi	off_7, $AAE4
		JSR	$7758
		LDA	#$41
		STA	$7698
		LDA	#$00
		STA	$76D4
		LDY	#$1F
:		LDA	(off_7),Y
		STA	$76B4,Y
		DEY	
		BPL	:-
		dldi	off_9, $76D5
		JMP	$775B
	
		.BYTE	$c1,$ff,$c1,$00,$68,$01,$0f,$00,$06,$91,$9a,$00,$02,$01,$04,$FF
		ItemDisease "Cholera"

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST38"

	.BYTE	$01,$5c,$aa,$61,$aa,$62,$aa,$82,$aa,$82,$aa,$02,$00,$01 ; |...\.a.b........|
	.BYTE	$04,$14,$28,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$1b ; |..(.............|
	.BYTE	$03,$00,$9a,$a0,$00,$0c,$14,$14,$14,$14,$14,$14,$14,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |......P.........|
	.BYTE	$00,$0f,$00,$00,$64,$69,$73,$73,$69,$70,$61,$74,$65,$73,$0d,$a5 ; |....dissipates..|
	.BYTE	$69,$6e,$74,$6f,$20,$74,$68,$69,$6e,$20,$61,$69,$72,$ae,$67,$68 ; |into thin air.gh|
	.BYTE	$6f,$73,$74,$00,$03,$20,$00,$00,$08,$0c,$43,$68,$61,$69,$6e,$00 ; |ost.. ....Chain.|
	.BYTE	$00,$ff,$00,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$04 ; |................|
	.BYTE	$28,$28,$af,$05,$ff,$29,$00,$00,$00,$15,$68,$69,$64,$65,$6f,$75 ; |((...)....hideou|
	.BYTE	$73,$20,$73,$63,$72,$65,$61,$6d,$00,$00,$ff,$00,$00,$00,$00,$00 ; |s scream........|
	.BYTE	$00,$00,$00,$18,$00,$00,$00,$00,$00,$00,$00,$03,$00

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST39"

	.BYTE	$01,$4d,$aa ; |..............M.|
	.BYTE	$54,$aa,$55,$aa,$7e,$aa,$55,$aa,$12,$00,$06,$04,$1e,$58,$00,$00 ; |T.U.~.U......X..|
	.BYTE	$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$1b,$02,$00,$02,$a0,$00 ; |................|
	.BYTE	$14,$14,$14,$14,$14,$14,$14,$14,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$ff,$ff,$0f,$0f,$23,$0f,$0f,$ff,$0f,$0f,$0f,$66 ; |........#......f|
	.BYTE	$61,$64,$65,$73,$20,$61,$77,$61,$79,$ae,$73,$70,$65,$63,$74,$72 ; |ades away.spectr|
	.BYTE	$65,$00,$ff,$29,$00,$00,$00,$15,$74,$6f,$75,$63,$68,$20,$6f,$66 ; |e..)....touch of|
	.BYTE	$20,$64,$65,$61,$74,$68,$00,$00,$ff,$00,$00,$00,$00,$00,$00,$00 ; | death..........|
	.BYTE	$00,$14,$00,$11,$15,$00,$00,$00,$00,$00,$00,$00,$27,$00,$00,$00 ; |............'...|
	.BYTE	$13,$67,$61,$7a,$65,$20,$6f,$66,$20,$65,$76,$69,$6c,$00,$00,$ff ; |.gaze of evil...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$12,$12,$16,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$05,$00

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST40"

	.BYTE	$03
	.BYTE	$6a,$aa,$71,$aa,$79,$aa,$9f,$aa,$e5,$aa,$24,$00,$08 ; |...j.q.y.....$..|
	.BYTE	$05,$14,$1e,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$1b ; |................|
	.BYTE	$02,$00,$02,$a0,$00,$27,$1e,$14,$28,$28,$28,$28,$28,$00,$00,$00 ; |.....'..(((((...|
	.BYTE	$00,$00,$00,$00,$09,$03,$00,$00,$00
	.BYTE	$23,$23,$11,$11,$00,$11,$00,$00,$0f,$00,$11

	.BYTE	"dissolves in",$0D
	.BYTE	$A5,"a thick vile cloud of gas",$AE
	.BYTE	"wraith",0
	.BYTE	"wraiths",0

	Item	$03,$00,$00,$0C,"Unholy Mace"
	.BYTE	$00,$ff,$00
	.BYTE	$1a,$00,$00,$00,$00,$00,$00,$00,$00,$16,$00
	.BYTE	$18,$20,$48,$48,$82,$15

	Item	$03,$00,$00,$0C,"Unholy Mace"
	.BYTE	$83,$ff,$c1,$18,$13,$00,$3f,$00,$00,$91,$60,$00,$01,$00,$01,$00
	ItemCurse "Weakness"
	.BYTE	$00,$ff,$00
	.BYTE	$1a,$00,$00,$00,$00,$00,$00,$00,$00,$16,$00
	.BYTE	$18,$20,$48,$48,$82,$15

	Item	$03,$00,$00,$14,"Onyx Scythe"
	.BYTE	$00,$ff,$00
	.BYTE	$00,$2a,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE	$20,$20,$e0,$e0,$e8,$20
:
; ----------------------------------------------------------------------------
	.SEGMENT	"MONST41"

	.BYTE	$01
	.WORD	aVampire,M41_null,i_UnholySword,i_UnholySword,i_StealerOfSouls
	.BYTE	$99,$00,$0a,$04,$28,$32,$00,$00 ; |[.....\.....(2..|
	.BYTE	$00,$00,$00,$00,$00,$00,$ce,$aa,$00,$00,$1c,$02,$00,$90,$a0,$00 ; |................|
	.BYTE	$32,$63,$63,$63,$63,$63,$63,$63,$00,$00,$00,$01,$00,$09,$13,$07 ; |2ccccccc........|
	.BYTE	$07,$37,$00,$00

		.BYTE	$18,$18,$18,$18,$00,$0F,$00,$00,$0F,$14,$FF
		.BYTE	"crumbles to dust",$AE
aVampire:	.BYTE	"vampire",0
M41_null:	.BYTE	0

i_StealerOfSouls:
		Item	$03,$00,$20,$15,"Stealer of Souls"
		.BYTE	$88,$FF,$25,$01,$01,$00,$00,$00,$00,$92,$45,$00,$01,$00,$19,$00
		.BYTE	$00,$FF,$00
		.BYTE	$00,$26,$00,$00,$00,$00,$00,$00,$00,$1F,$00
		.BYTE	$14,$14,$80,$80,$88,$18

i_UnholySword:
		Item	$03,$00,$20,$19,"Unholy Sword"		
		.BYTE	$88,$FF,$A5,$FF,$01,$00,$0D,$00,$00,$92,$45,$00,$01,$00,$01,$00
		.BYTE	$00,$FF,$00
		.BYTE	$13,$28,$00,$00,$00,$00,$00,$12,$00,$14,$00
		.BYTE	$30,$20,$80,$80,$C0,$15
:
M41_AACE:
		JSR	$7707
		LDA	RANDOM
		CMP	#$E8
		BCS	:+
		JMP	$76FB
:		JSR	$7761
		LDA	#$06
		STA	$96
		LDA	$78
		BMI	:++
		BNE	:+
		LSR	$96
:		LSR	$96
:		CLC
		LDA	byte_638E
		ADC	$96
		STA	$96
		ldxy	M41_AAFB
		JMP	$770A

M41_AAFB:
		.BYTE	$AC
		.WORD	$7653
		.BYTE	"charms you",$0D
		.BYTE	$A5,"with a look.",$0D,$FF

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST42"

	.BYTE	$08,$61,$aa,$6b,$aa,$76,$aa,$9d,$aa,$9d,$aa ; |ok....a.k.v.....|
	.BYTE	$00,$80,$01,$01,$14,$1a,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$14,$01,$02,$02,$a0,$00,$07,$14,$14,$14,$00,$00,$0a,$14 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$01,$01,$00,$01,$01,$01,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$68,$61,$73,$20,$66,$6c,$61,$70,$70 ; |.......has flapp|
	.BYTE	$65,$64,$0d,$a5,$66,$6f,$72,$20,$74,$68,$65,$20,$6c,$61,$73,$74 ; |ed..for the last|
	.BYTE	$20,$74,$69,$6d,$65,$ae,$67,$72,$65,$61,$74,$20,$62,$61,$74,$00 ; | time.great bat.|
	.BYTE	$67,$72,$65,$61,$74,$20,$62,$61,$74,$73,$00,$ff,$27,$00,$00,$00 ; |great bats..'...|
	.BYTE	$13,$79,$65,$6c,$6c,$6f,$77,$20,$66,$61,$6e,$67,$73,$00,$00,$ff ; |.yellow fangs...|
	.BYTE	$00,$00,$13,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$02,$00,$ff,$26,$00,$00,$00,$12,$73,$68,$61,$72,$70,$20,$63,$6c ; |...&....sharp cl|
	.BYTE	$61,$77,$73,$00,$00,$ff,$00,$00,$12,$00,$00,$00,$00,$00,$00,$00 ; |aws.............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST43"

	.BYTE	$03,$6e,$aa,$78,$aa,$83,$aa,$ab ; |.........n.x....|
	.BYTE	$aa,$ab,$aa,$22,$00,$03,$03,$17,$1e,$00,$00,$00,$00,$00,$00,$00 ; |..."............|
	.BYTE	$00,$03,$00,$00,$00,$1d,$01,$00,$00,$a8,$00,$1e,$14,$14,$14,$14 ; |................|
	.BYTE	$14,$32,$28,$00,$00,$00,$00,$00,$07,$03,$01,$00,$00,$00,$00,$11 ; |.2(.............|
	.BYTE	$11,$00,$00,$ff,$00,$00,$00,$00,$00,$00,$69,$73,$20,$63,$6f,$6e ; |..........is con|
	.BYTE	$73,$75,$6d,$65,$64,$20,$69,$6e,$20,$61,$0d,$a5,$73,$75,$6c,$70 ; |sumed in a..sulp|
	.BYTE	$68,$75,$72,$6f,$75,$73,$20,$63,$6c,$6f,$75,$64,$20,$6f,$66,$20 ; |hurous cloud of |
	.BYTE	$73,$6d,$6f,$6b,$65,$ae,$68,$65,$6c,$6c,$68,$6f,$75,$6e,$64,$00 ; |smoke.hellhound.|
	.BYTE	$68,$65,$6c,$6c,$68,$6f,$75,$6e,$64,$73,$00,$ff,$28,$00,$00,$00 ; |hellhounds..(...|
	.BYTE	$14,$70,$6f,$77,$65,$72,$66,$75,$6c,$20,$6a,$61,$77,$73,$00,$00 ; |.powerful jaws..|
	.BYTE	$ff,$00,$14,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$02,$00,$ff,$2b,$00,$00,$00,$17,$73,$63,$6f,$72,$63,$68,$69 ; |....+....scorchi|
	.BYTE	$6e,$67,$20,$62,$72,$65,$61,$74,$68,$00,$00,$ff,$00,$00,$00,$00 ; |ng breath.......|
	.BYTE	$00,$26,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$00

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST44"

	.BYTE	$05,$6a ; |.&.............j|
	.BYTE	$aa,$70,$aa,$99,$aa,$78,$aa,$78,$aa,$24,$00,$01,$02,$14,$14,$00 ; |.p...x.x.$......|
	.BYTE	$00,$00,$00,$00,$00,$01,$00,$03,$00,$00,$00,$1e,$01,$14,$02,$90 ; |................|
	.BYTE	$00,$1b,$14,$03,$14,$08,$14,$46,$14,$01,$01,$00,$00,$00,$00,$00 ; |.......F........|
	.BYTE	$00,$00,$0c,$1e,$63,$13,$13,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |....c...........|
	.BYTE	$66,$61,$6c,$6c,$73,$20,$74,$6f,$20,$74,$68,$65,$0d,$a5,$67,$72 ; |falls to the..gr|
	.BYTE	$6f,$75,$6e,$64,$20,$69,$6e,$20,$61,$20,$63,$72,$75,$6d,$70,$6c ; |ound in a crumpl|
	.BYTE	$65,$64,$20,$68,$65,$61,$70,$ae,$68,$61,$72,$70,$79,$00,$68,$61 ; |ed heap.harpy.ha|
	.BYTE	$72,$70,$69,$65,$73,$00,$03,$21,$00,$00,$07,$0d,$53,$69,$63,$6b ; |rpies..!....Sick|
	.BYTE	$6c,$65,$00,$00,$ff,$00,$00,$23,$00,$00,$00,$00,$00,$00,$00,$00 ; |le.....#........|
	.BYTE	$00,$0a,$0a,$14,$14,$80,$04,$ff,$21,$00,$00,$00,$0d,$74,$61,$6c ; |........!....tal|
	.BYTE	$6f,$6e,$73,$00,$00,$ff,$00,$00,$13,$00,$00,$00,$00,$00,$00,$00 ; |ons.............|
	.BYTE	$00,$00,$00,$00,$00,$00,$03,$00,$00,$21,$00,$00,$00,$0d,$73,$68 ; |.........!....sh|
	.BYTE	$72,$69,$65,$6b,$00,$00,$ff,$00,$00,$00,$00,$00,$00,$00,$00,$15 ; |riek............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$07,$00

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST45"

	.BYTE	$01,$67,$aa,$6e,$aa,$6f,$aa ; |..........g.n.o.|
	.BYTE	$93,$aa,$6f,$aa,$66,$00,$03,$04,$0a,$1e,$00,$00,$00,$00,$00,$00 ; |..o.f...........|
	.BYTE	$00,$00,$01,$00,$00,$00,$1f,$01,$00,$82,$a0,$00,$0e,$14,$14,$14 ; |................|
	.BYTE	$14,$14,$14,$14,$01,$01,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$12,$12,$00,$00,$ff,$0f,$00,$00,$00,$00,$14,$6d,$65,$6c,$74,$73 ; |...........melts|
	.BYTE	$20,$69,$6e,$74,$6f,$20,$61,$20,$70,$75,$64,$64,$6c,$65,$0d,$a5 ; | into a puddle..|
	.BYTE	$6f,$66,$20,$62,$75,$62,$62,$6c,$69,$6e,$67,$20,$67,$6f,$6f,$ae ; |of bubbling goo.|
	.BYTE	$67,$72,$65,$6d,$6c,$69,$6e,$00,$ff,$24,$00,$00,$00,$10,$62,$6f ; |gremlin..$....bo|
	.BYTE	$6e,$79,$20,$63,$6c,$61,$77,$00,$00,$ff,$00,$00,$14,$00,$00,$00 ; |ny claw.........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$ff,$2b,$00,$00 ; |.............+..|
	.BYTE	$00,$17,$72,$61,$7a,$6f,$72,$2d,$6c,$69,$6b,$65,$20,$74,$65,$65 ; |..razor-like tee|
	.BYTE	$74,$68,$00,$00,$ff,$00,$00,$16,$00,$00,$00,$00,$00,$00,$00,$00 ; |th..............|
	.BYTE	$00,$00,$00,$00,$00,$02,$00

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST46"

	.BYTE	$01,$5b,$aa,$5e,$aa,$5f,$aa,$7e,$aa ; |........[.^._.~.|
	.BYTE	$5f,$aa,$46,$00,$04,$04,$14,$1e,$00,$00,$00,$00,$00,$00,$00,$00 ; |_.F.............|
	.BYTE	$03,$00,$00,$00,$1f,$02,$05,$02,$20,$00,$0e,$14,$14,$14,$14,$14 ; |........ .......|
	.BYTE	$14,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$37,$00,$00,$13,$13 ; |...........7....|
	.BYTE	$00,$00,$ff,$00,$00,$00,$00,$00,$12,$6c,$65,$61,$76,$65,$73,$20 ; |.........leaves |
	.BYTE	$74,$68,$69,$73,$20,$6d,$6f,$72,$74,$61,$6c,$20,$70,$6c,$61,$6e ; |this mortal plan|
	.BYTE	$65,$ae,$69,$6d,$70,$00,$ff,$1f,$00,$00,$00,$0b,$63,$6c,$61,$77 ; |e.imp.......claw|
	.BYTE	$00,$00,$ff,$00,$00,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$03,$00,$ff,$48,$01,$00,$00,$14,$70,$6f,$69,$73,$6f ; |......H....poiso|
	.BYTE	$6e,$65,$64,$20,$74,$61,$69,$6c,$00,$88,$ff,$01,$01,$01,$00,$01 ; |ned tail........|
	.BYTE	$00,$00,$01,$02,$80,$01,$00,$10,$00,$82,$ff,$c1,$ff,$01,$00,$12 ; |................|
	.BYTE	$00,$15,$92,$45,$00,$01,$00,$01,$ff,$00,$ff,$00,$00,$15,$00,$00 ; |...E............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$00

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST47"

		.BYTE	$04
		.WORD	$AA60,$AA6C,$AAB3,$AA79,$AA79
		.BYTE	$31,$00,$03,$08,$1e,$1e,$00,$00 ; |l...y.y.1.......|
		.BYTE	$00,$00,$00,$00,$00,$00,$df,$aa,$00,$00,$20,$02,$00,$80,$a0,$00 ; |.......... .....|
		.BYTE	$2e,$17,$17,$1e,$14,$14,$14,$23,$00,$00,$00,$00,$00,$00,$00,$00 ; |.......#........|
		.BYTE	$00,$ff,$ff,$00
		.BYTE	$33,$33,$33,$33,$f0,$0f,$33,$33,$33,$33,$0f

		.BYTE	"is consumed",$0D
		.BYTE	$A5,"in its own blaze",$AE
		.BYTE	"flame demon",$00
		.BYTE	"flame demons",$00

		Item	$03,$00,$00,$10,"Sword of Demons"
		.BYTE	$88,$ff,$81,$00,$3c,$00,$3c,$00,$00,$01,$20,$00,$01,$00,$34,$00
		.BYTE	$00,$ff,$00
		.BYTE	$12,$18,$00,$00,$00,$00,$00,$00,$00,$24,$00
		.BYTE	$18,$18,$24,$24,$80,$15

		Item	$03,$00,$00,$12,"Flaming Pitchfork"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$19,$00,$00,$13,$00,$00,$00,$00,$00,$00
		.BYTE	$20,$20,$20,$20,$c3,$20
:
		LDA	$AA00
		CMP	#$08
		BCS	:+++
		LDA	RANDOM
		CMP	#$40
		BCS	:+++
		dldi	$76D9, $76DF
		ldxy	$AB45
		JSR	$7728
		dldi	$76D9, $AB5F
		LDX	#$28
:		JSR	$7737
		DEX
		BNE	:-
		LDA	RANDOM
		CMP	#$40
		BCS	:+
		dldi	$76D9, $AB6F
		LDA	$AA00
		ASL	A
		TAX
		LDA	$AA22
		STA	$B2,X
		LDA	$AA23
		STA	$B3,X
		LDA	#$00
		STA	$C2,X
		STA	$C3,X
		INC	$AA00
		INC	$8A
:		ldxy	$AB45
		JMP	$770A
:		JMP	$76F8

		.BYTE	$AC
		.WORD	$7665
		.BYTE	"summons help...",$0D
		.BYTE	$A5
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	$1E
		.BYTE	$0D,$FF
	
		.BYTE	"but none comes.",$00
		.BYTE	"and another arrives!",$00

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST48"

	.BYTE	$01,$58,$aa,$64,$aa,$65,$aa,$91,$aa,$65,$aa,$35,$00,$06,$02 ; |..X.d.e...e.5...|
	.BYTE	$14,$1e,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$17,$02 ; |................|
	.BYTE	$00,$00,$a8,$00,$1f,$14,$14,$14,$14,$14,$14,$14,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$01,$01,$01,$01,$01,$01,$18,$18,$11,$11,$ff,$11,$11,$11 ; |................|
	.BYTE	$11,$11,$11,$67,$6f,$65,$73,$20,$6f,$75,$74,$20,$77,$69,$74,$68 ; |...goes out with|
	.BYTE	$20,$61,$20,$66,$6c,$61,$73,$68,$ae,$73,$74,$6f,$72,$6d,$20,$64 ; | a flash.storm d|
	.BYTE	$65,$76,$69,$6c,$00,$00,$ff,$2c,$00,$00,$00,$18,$62,$6f,$6c,$74 ; |evil...,....bolt|
	.BYTE	$20,$6f,$66,$20,$6c,$69,$67,$68,$74,$6e,$69,$6e,$67,$00,$00,$ff ; | of lightning...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$17,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$05,$00,$00,$21,$00,$00,$00,$0d,$4e,$61,$74,$75,$72,$65,$00,$00 ; |...!....Nature..|
	.BYTE	$ff,$00,$11,$11,$12,$12,$12,$12,$12,$00,$00,$00,$12,$00,$00,$00 ; |................|
	.BYTE	$00,$07,$00

; ----------------------------------------------------------------------------
	.SEGMENT	"MONST49"

	.BYTE	$03,$47,$aa,$52,$aa,$5f,$aa,$5f,$aa,$5f,$aa,$00,$80 ; |....G.R._._._...|
	.BYTE	$01,$03,$14,$1e,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$1d,$01,$28,$00,$a0,$00,$0f,$14,$14,$14,$14,$14,$1e,$28,$00,$00 ; |..(..........(..|
	.BYTE	$00,$00,$00,$02,$00,$00,$00,$00,$0c,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$64,$69,$65,$73,$ae,$67,$69,$61,$6e,$74,$20 ; |.....dies.giant |
	.BYTE	$77,$6f,$6c,$66,$00,$67,$69,$61,$6e,$74,$20,$77,$6f,$6c,$76,$65 ; |wolf.giant wolve|
	.BYTE	$73,$00,$ff,$2b,$00,$00,$00,$17,$64,$72,$69,$70,$70,$69,$6e,$67 ; |s..+....dripping|
	.BYTE	$20,$63,$61,$6e,$69,$6e,$65,$73,$00,$00,$ff,$00,$00,$16,$00,$00 ; | canines........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST50"

		.BYTE	$01
		.WORD	$AA71,$AA7A,$AAEB,$AA7B,$AA7B
		.BYTE	$16,$00,$05,$03,$14,$3c,$00,$00 ; |z...{.{......<..|
		.BYTE	$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$1d,$01,$28,$80,$a0,$00 ; |............(...|
		.BYTE	$21,$32,$14,$3c,$14,$14,$1e,$28,$03,$03,$00,$00,$00,$00,$00,$00 ; |!2.<...(........|
		.BYTE	$00,$63,$00,$63
		.BYTE	$11,$11,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	"appears human for an",$0D
		.BYTE	$A5,"instant and then expires",$AE
		.BYTE	"werewolf",$00
		.BYTE	$00

		Item	$FF,$01,$00,$00,"fangs"
		.BYTE	$88,$ff,$01,$01,$01,$00,$01,$00,$00,$01,$02,$80,$01,$00,$10,$00
		.BYTE	$c1,$ff,$c1,$00,$f3,$00,$dd,$02,$00,$91,$85,$00,$02,$01,$01,$ff
		.BYTE	$81,$00,$c1,$00,$f3,$00,$dd,$02,$00,$91,$62,$00,$03,$08,$01,$ff
		.BYTE	$81,$00,$41,$00,$f3,$00,$dd,$02,$00,$81,$4a,$00,$02,$10,$01,$ff
		ItemDisease "Lycanthropy"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$16,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$02,$00

		Item	$FF,$00,$00,$00,"claws"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$00,$00
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST51"

		.BYTE	$01
		.WORD	$AA4D,$AA54,$AA55,$AA78,$AA9B
		.BYTE	$45,$80,$02,$08,$14,$1e,$02,$00,$00,$00,$00,$00,$06 ; |...E............|
		.BYTE	$00,$00,$00,$00,$00,$2a,$01,$28,$00,$00,$00,$0d,$14,$14,$2f,$14 ; |.....*.(....../.|
		.BYTE	$14,$1d,$14,$04,$05,$02,$00,$00,$00,$00,$00,$00,$05,$0a,$14 ; |...............#|
		.BYTE	$23,$23,$00,$00,$13,$00,$00,$00,$00,$00,$00
		.BYTE	"has fallen",$AE
		.BYTE	"warrior",$00

		Item	$03,$00,$00,$03,"Baselard"
		.BYTE	$00,$ff,$00 ; |...Baselard.....|
		.BYTE	$00,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$04,$10,$18,$18,$80,$08 ; |$...............|

		Item	$03,$00,$00,$10,"Falchion"
		.BYTE	$00,$FF,$00 ; |.#....Falchion..|
		.BYTE	$00,$19,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$18,$28,$28,$80,$15

		Item	$03,$00,$00,$14,"Jade Lance"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$1a,$00,$00,$00,$00,$00,$00,$00,$00,$18
		.BYTE	$18,$18,$e0,$e0,$eb,$10
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST52"

		.BYTE	$01
		.WORD	$AA47,$AA54,$AA55,$AA75,$AA9A
		.BYTE	$35
		.BYTE	$ff,$09,$08,$46,$46,$c1,$aa,$00,$00,$00,$00,$06 ; |...5...FF.......|
		.BYTE	$00,$00,$00,$00,$00,$21,$01,$28,$00,$09,$00,$2b,$50,$14,$1e,$14 ; |.....!.(...+P...|
		.BYTE	$14,$50,$2d,$00,$01,$00,$00,$00,$03,$00,$00,$00,$14,$14,$00 ; |.P-............#|
		.BYTE	$23,$23,$22,$22,$33,$22,$22,$22,$22,$22,$22
		.BYTE	"dies",$AE
		.BYTE	"weapon master",$00

		Item	$03,$00,$00,$10,"Daito"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$27,$00,$00 ; |...Daito.....'..|
		.BYTE	$00,$00,$00,$00,$00,$00,$00
		.BYTE	$20,$28,$20,$20,$c8,$20

		Item	$03,$00,$00,$10,"Kusarikama"
		.BYTE	$00,$FF,$00
		.BYTE	$00,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$18,$24,$24,$E8,$30 ; |..............$$|

		Item	$03,$00,$00,$0F,"Triple Irons"
		.BYTE	$00,$ff,$00
		.BYTE	$34,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$30,$24,$24,$c2,$38
:
		LDA	RANDOM
		BMI	:+
		LDA	#$0C
		STA	$A6
:		JMP	$7719

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST53"

		.BYTE	$01
		.WORD	$AA54,$AA5C,$AA5D,$AA5D,$AA5D
		.BYTE	$24,$ff,$0a,$08,$63,$46,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |$...cF..........|
		.BYTE	$00,$00,$22,$04,$00,$82,$a8,$00,$32,$14,$14,$3c,$14,$14,$1e,$46 ; |..".....2..<...F|
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$ff,$00,$00
		.BYTE	$24,$24,$00,$00,$ff,$00,$00,$00,$ff,$ff,$00
		.BYTE	"slowly fades away",$AE
		.BYTE	"valkyrie",$00

		Item	$03,$00,$00,$0A,"Golden Spear"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$16,$1a,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$14,$1e,$28,$28,$c3,$30
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST54"

		.BYTE	$01
		.WORD	$AA5B,$AA64,$AA65,$AA65,$AA65
		.BYTE	$33,$00,$01,$08,$14,$1e,$00,$00,$00,$00,$00,$00 ; |e.e.3...........|
		.BYTE	$00,$00,$00,$00,$00,$00,$2a,$01,$28,$00,$a8,$00,$09,$14,$14,$14 ; |......*.(.......|
		.BYTE	$14,$14,$1e,$14,$02,$02,$01,$00,$00,$00,$00,$00,$00,$0d,$00,$00 ; |................|
		.BYTE	$13,$13,$00,$00,$13,$00,$00,$00,$00,$00,$00
		.BYTE	"lies in",$0D
		.BYTE	$A5,"agony of defeat",$AE
		.BYTE	"gladiator",$00

		Item	$03,$00,$00,$12,"Trident"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$10,$20,$20,$c3,$20
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST55"

		.BYTE	$04
		.WORD	$AA47,$AA51,$AA5D,$AA5D,$AA5D
		.BYTE	$51
		.BYTE	$00,$01,$08,$14 ; |.G.Q.].].].Q....|
		.BYTE	$1e,$7e,$aa,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$06,$01,$28 ; |.~.............(|
		.BYTE	$00,$90,$00,$09,$14,$14,$14,$14,$14,$14,$14,$03,$03,$04,$01,$01 ; |................|
		.BYTE	$04,$00,$00,$00,$00,$42,$63
		.BYTE	$22,$22,$00,$00,$14,$00,$00,$00,$00,$00,$00
		.BYTE	"dies",$AE
		.BYTE	"mercenary",$00
		.BYTE	"mercenaries",$00

		Item	$03,$00,$00,$0E,"Glaive"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$25,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$14,$16,$24,$24,$c0,$25
:
		LDA	RANDOM
		CMP	#$40
		BCS	:+
		LDA	#$0D
		STA	$A6
:		JMP	$7719

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST56"

		.BYTE	$01
		.WORD	$AA5D,$AA69,$AABE,$AABE,$AABE
		.BYTE	$00
		.BYTE	$00,$00,$00,$ff,$32,$6a,$aa,$00 ; |............2j..|
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$23,$03,$00,$00,$a8,$00,$00 ; |.........#......|
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
		.BYTE	$00,$00,$00
		.BYTE	$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE	"merges back",$0D
		.BYTE	$A5,"into the wall",$AE
		.BYTE	"doppleganger",$00

		LDA	$639C
		BPL	:+
		LDA	$639D
		BMI	:+++
:		STA	$4B
		JSR	$1887
		LDY	#$01
		LDA	(off_41),Y
		TAY
		LDA	$AA05
		STA	off_9
		LDA	$AA06
		STA	off_9+1
:		LDA	(off_41),Y
		STA	(off_9),Y
		DEY
		BNE	:-
:		LDA	$6345
		STA	$AA22
		LDA	$6346
		STA	$AA23
		LDX	#$00
		LDY	#$00
:		LDA	$6349,Y
		STA	$AA24,X
		TYA
		CLC
		ADC	#$08
		TAY
		INX
		CPX	#$07
		BNE	:-
		BIT	$633B
		BMI	:+
		LDA	#$2B
		STA	$AA1D
:		INC	$63
		JMP	$7719
		Item	$00,$00,$00,$00,"bare hand"
		.BYTE	$00,$ff,$00
		.BYTE	$14,$00,$00 ; |bare hand.......|
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$06,$00
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST57"

		.BYTE	$01
		.WORD	$AA56,$AA60,$AA84,$AA61,$AA61
		.BYTE	$16
		.BYTE	$80,$0c,$08,$14,$1e,$02 ; |.`...a.a........|
		.BYTE	$00,$00,$00,$00,$00,$05,$00,$04,$00,$00,$00,$24,$02,$28,$00,$00 ; |...........$.(..|
		.BYTE	$00,$17,$0f,$0f,$0f,$42,$2c,$2d,$23,$08,$07,$09,$01,$01,$01,$00 ; |.....B,-#.......|
		.BYTE	$00,$00,$00,$2f,$17
		.BYTE	$23,$23,$13,$13,$33,$13,$13,$13,$13,$13,$33

		.BYTE	"is no longer joined",$AE
		.BYTE	"adventurer",$00

		;	this is really an item but there is no ASCII for $7F (the lightning bolt)

:		.BYTE	$03,:++-:-,$00,$00,$0C,:+-:-,$7F," Rapier",$00
:		.BYTE	$00,$ff,$00 ; |#..... Rapier...|
		.BYTE	$00,$24,$00,$15,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$1e,$1c,$30,$30,$80,$19

		Item	$03,$00,$00,$10,"War Scythe"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$20,$20,$24,$24,$c0,$20
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST58"

		.BYTE	$01
		.WORD	$AA47,$AA53,$AA54,$AA54,$AA54
		.BYTE	$26
		.BYTE	$80,$01,$04,$14,$1e,$00,$00,$00,$00,$00,$00,$00,$00 ; |T.&.............|
		.BYTE	$00,$00,$00,$00,$25,$01,$14,$00,$20,$00,$04,$14,$14,$14,$14,$14 ; |....%... .......|
		.BYTE	$c8,$14,$00,$03,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00
		.BYTE	$22,$22,$00,$00,$00,$ff,$00,$00,$00,$00,$00
		.BYTE	"dies",$AE
		.BYTE	"water sprite",$00

		Item	$03,$00,$00,$12,"Trident"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$10,$20,$20,$eb,$20
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST59"

		.BYTE	$01
		.WORD	$AA61,$AA6E,$AA6F,$AA9A,$AA9A
		.BYTE	$11
		.BYTE	$00,$0b,$04,$c8,$5a,$00,$00 ; |n.o..........Z..|
		.BYTE	$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$26,$02,$00,$00,$a0,$00 ; |..........&.....|
		.BYTE	$25,$14,$14,$14,$14,$14,$14,$c7,$00,$00,$00,$00,$00,$00,$00,$00 ; |%...............|
		.BYTE	$07,$c8,$00,$00
		.BYTE	$12,$12,$00,$00,$00,$00,$00,$ff,$00,$00,$00
		.BYTE	"dissipates",$0D
		.BYTE	$A5,"in a puff of smoke",$AE
		.BYTE	"night stalker",$00

		Item	$FF,$00,$00,$00,"sucking tentacle"
		.BYTE	$00,$ff,$00
		.BYTE	$17,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |le..............|
		.BYTE	$00,$00,$00,$00,$05,$00

		Item	$00,$00,$00,$00,"mind blast"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$00,$00,$00,$00 ; |d blast.........|
		.BYTE	$00,$00,$1e,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$07,$00
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST60"

		.BYTE	$01
		.WORD	$AA47,$AA51,$AA52,$AA7D,$AA9D
		.BYTE	$12
		.BYTE	$80,$05,$04,$14,$1e,$00,$00,$00 ; |.R.}............|
		.BYTE	$00,$00,$00,$00,$00,$03,$00,$00,$00,$19,$01,$46,$01,$a0,$00,$17 ; |...........F....|
		.BYTE	$28,$28,$28,$00,$00,$28,$28,$00,$00,$00,$00,$00,$00,$00,$05,$05 ; |(((..((.........|
		.BYTE	$32,$63,$c8
		.BYTE	$22,$22,$00,$00,$ff,$00,$00,$00,$00,$00,$00
		.BYTE	"dies",$AE
		.BYTE	"salamander",$00

		Item	$FF,$00,$00,$00,"scorching breath"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$00,$00,$00,$26,$00,$00,$00,$00,$00,$00 ; |eath........&...|
		.BYTE	$00,$00,$00,$00,$06,$00

		Item	$FF,$00,$00,$00,"teeth"
		.BYTE	$00,$ff,$00
		.BYTE	$13,$1a,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |eeth............|
		.BYTE	$00,$00,$00,$00,$02,$00

		Item	$FF,$00,$00,$00,"claw"
		.BYTE	$00,$ff,$00	
		.BYTE	$12,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |law.....$.......|
		.BYTE	$00,$00,$00,$00,$03,$00
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST61"

		.BYTE	$03
		.WORD	$AA47,$AA47,$AA4D,$AA6E,$AA91
		.BYTE	$36
		.BYTE	$80,$03,$06,$14,$3c,$07,$00,$00,$00,$b4,$aa,$00 ; |...6....<.......|
		.BYTE	$00,$00,$00,$00,$00,$21,$01,$28,$00,$09,$00,$26,$14,$14,$1d,$14 ; |.....!.(...&....|
		.BYTE	$14,$50,$28,$03,$03,$03,$00,$00,$00,$00,$00,$00,$32,$00,$16
		.BYTE	$23,$23,$00,$00,$42,$00,$00,$00,$00,$00,$00
		.BYTE	"dies",$AE
		.BYTE	"ronin",$00

		Item	$03,$00,$00,$0C,"Katana"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$25,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |a.....%.........|
		.BYTE	$0e,$18,$20,$20,$88,$15

		Item	$03,$00,$00,$10,"Naginata"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$26,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$18,$24,$24,$c8,$48

		Item	$03,$00,$00,$02,"Nunchaku"
		.BYTE	$00,$ff,$00
		.BYTE	$25,$00,$00,$00,$00 ; |unchaku....%....|
		.BYTE	$00,$00,$00,$00,$00,$00
		.BYTE	$06,$20,$13,$13,$aa,$70
:
		JSR	$7731
		BCC	:++
		dldi	$76D9, $AAF6
		LDA	$AA00
		CMP	#$01
		BEQ	:+
		dldi	$76D9, $AAFE
:		ldxy	$AADC
		JSR	$770A
:		RTS

		STRSUB	$7653
		PRINTSTRP $76D9, 10
		.BYTE	" like your looks.",$0D,$FF
		.BYTE	"doesn't",$00
		.BYTE	"don't",$00

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST62"

		.BYTE	$03
		.WORD	$AA5B,$AA66,$AA71,$AA9B,$AA9B
		.BYTE	$44
		.BYTE	$00,$01,$08,$14,$1e,$00,$00,$00 ; |.q.....D........|
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$27,$01,$21,$00,$a0,$00,$0b ; |.........'.!....|
		.BYTE	$14,$14,$14,$14,$14,$14,$14,$02,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
		.BYTE	$28,$0a,$00
		.BYTE	$12,$12,$00,$00,$00,$00,$00,$00,$00,$00,$00

		.BYTE	"lets out one",$0D
		.BYTE	$A5,"final hiss",$AE
		.BYTE	"serpentman",$00
		.BYTE	"serpentmen",$00

		Item	$03,$00,$00,$0A,"Sawtoothed Club"
		.BYTE	$00,$ff,$00
		.BYTE	$18,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$20,$0c,$18,$18,$82,$08

		Item	$03,$00,$00,$0A,"Spear"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$16,$1a,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$14,$1e,$28,$28,$c3,$30
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST63"

		.BYTE	$01
		.WORD	$AA52,$AA5B,$AA5C,$AA5C,$AA5C
		.BYTE	$21,$80,$01,$08,$14,$25,$00,$00,$00,$00,$00,$00,$00,$00 ; |\.!....%........|
		.BYTE	$00,$00,$00,$00,$28,$01,$46,$01,$a0,$00,$1c,$14,$14,$14,$14,$14 ; |....(.F.........|
		.BYTE	$28,$3c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$21,$42,$63
		.BYTE	$13,$13,$00,$00,$11,$00,$00,$00,$00,$00,$13
		.BYTE	"lays motionless",$AE
		.BYTE	"big snake",$00
		Item	$FF,$01,$00,$00,"poisonous fangs"
		.BYTE	$88,$ff,$01,$01,$01,$00,$01,$00,$00,$01,$02,$80,$01,$00,$10,$00
		.BYTE	$82,$ff,$c1,$ff,$01,$00,$0a,$00,$11,$92,$45,$00,$01,$00,$01,$ff
		.BYTE	$00,$ff,$00
		.BYTE	$00,$19,$00,$00,$00,$16,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$02,$00
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST64"

		.BYTE	$01
		.WORD	$AA4F,$AA59,$AA5A,$AA5A,$AA5A
		.BYTE	$21
		.BYTE	$80,$07,$04,$14,$28,$00,$00 ; |Y.Z.Z.Z.!....(..|
		.BYTE	$00,$00,$00,$00,$02,$00,$05,$00,$00,$00,$28,$02,$00,$83,$a0,$00 ; |..........(.....|
		.BYTE	$37,$14,$14,$14,$50,$50,$28,$3c,$00,$00,$00,$00,$00,$00,$04,$05 ; |7...PP(<........|
		.BYTE	$01,$21,$42,$63
		.BYTE	$23,$23,$11,$11,$11,$11,$11,$11,$11,$11,$11
		.BYTE	"has vanished",$AE
		.BYTE	"Great Naga",$00
		Item	$00,$00,$00,$00,"dripping fangs"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$19,$00,$00,$00,$16,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$00,$00 ; |................|
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST65"

		.BYTE	$08
		.WORD	$AA5E,$AA68,$AA73,$AA93,$AA93
		.BYTE	$43
		.BYTE	$00,$01,$04,$0a ; |.^.h.s.....C....|
		.BYTE	$46,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2a,$01,$28 ; |F............*.(|
		.BYTE	$00,$a8,$00,$11,$14,$14,$14,$14,$14,$14,$14,$00,$00,$00,$00,$00 ; |................|
		.BYTE	$00,$00,$00,$00,$00,$00,$00
		.BYTE	$12,$12,$00,$00,$12,$00,$00,$00,$00,$00,$00
		.BYTE	"gives one",$0D
		.BYTE	$A5,"final battle cry",$AE
		.BYTE	"berserker",$00
		.BYTE	"berserkers",$00
	
		Item	$03,$00,$00,$04,"Kukri"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$17,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$18,$18,$18,$80,$04

		Item	$03,$00,$00,$04,"Kukri"
		.BYTE	$83,$ff,$c1,$ff,$05,$00,$11,$00,$00,$92,$45,$00,$01,$00,$03,$00
		ItemCurse "Slow Death"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$17,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$18,$18,$18,$80,$04
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST66"

		.BYTE	$01
		.WORD	$AA4B,$AA53,$AA54,$AA7E,$AA9E
		.BYTE	$00,$00 ; |....K.S.T.~.....|
		.BYTE	$0f,$01,$c8,$3c,$00,$00,$00,$00,$00,$00,$00,$00,$bd,$aa,$fc,$ab ; |...<............|
		.BYTE	$19,$07,$63,$21,$a8,$00,$3f,$14,$14,$46,$14,$14,$14,$46,$00,$00 ; |..c!..?..F...F..|
		.BYTE	$00,$00,$00,$00,$00,$09,$05,$c8,$ff,$00
		.BYTE	$00,$ff,$00,$00,$41,$00,$00,$00,$00,$00,$00
		.BYTE	"has died",$AE
		.BYTE	"basilisk",$00


		Item	$00,$00,$00,$00,"freezing breath"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3a
		.BYTE	$00,$00,$00,$00,$07,$00


		Item	$FF,$00,$00,$00,"teeth"
		.BYTE	$00,$ff,$00
		.BYTE	$23,$27,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$02,$00
		

		Item	$FF,$00,$00,$00,"claw"
		.BYTE	$00,$FF,$00
		.BYTE	$22,$26,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$03,$00
:
		JSR	$7707	
		LDA	RANDOM
		CMP	#$33
		BCC	:+
		JMP	$76FE
:		dldi	$76D9, $76DF
		ldxy	$AB69
		JSR	$7728
		LDX	#$1E
:		JSR	$7737
		DEX
		BNE	:-
		LDA	#$01
		STA	$8B
:		LDX	$8B
		LDA	$639C,X
		BMI	:++++
		JSR	$1887
		LDA	$41
		CLC
		ADC	#$06
		STA	$41
		BCC	:+
		INC	$42
:		LDY	#$00
		LDA	(off_41),Y
		CMP	#$7F
		BNE	:+
		LDA	$41
		CLC
		ADC	#$02
		STA	$41
		BCC	:+
		INC	$42
:		LDY	#$0E
:		LDA	$ABED,Y
		CMP	(off_41),Y
		BNE	:+
		DEY
		BPL	:-
		dldi	$76D9, $ABA5
		JMP	$AB52
:		DEC	$8B
		BPL	:-----
		dldi	$76D9, $AB94
		LDA	$6369
		LDX	#$07
		JSR	$775E
		BPL	:+
		LDA	#$00
		STA	$6347
		STA	$6348
		dldi	$76D9, $ABBE
:		ldxy	$AB69
		JSR	$770A
		LDA	$6345
		ORA	$6346
		BNE	:+
		ldxy	$ABCE
		JSR	$770A
:		RTS

		.BYTE	$AC
		.WORD	$7653
		.BYTE	"gives you",$0D
		.BYTE	$A5,"a petrifying stare...",$0D
		.BYTE	$A5
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	$28
		.BYTE	$0D,$FF
		
		.BYTE	"which you avoid.",$00
		.BYTE	"which is reflected away.",$00
		.BYTE	"which you meet!",$00

		MOVEXY	0,3
		.BYTE	$A5,"You have turned to stone.",$0D,$FF
		.BYTE	"Mirrored Shield"
M66_ABFC:
		ldxy	$7508
		LDA	#$16
		SEC
		JSR	$1860
		LDA	#$87
		STA	$758A
		JMP	$773A

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST67"

		.BYTE	$01
		.WORD	aGreatWyrm,M67_null,i_FieryBreath,i_Teeth,i_Claw
		.BYTE	$12,$80,$fe,$00 ; |w.f.p.q.........|
		.BYTE	$de,$46,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$19,$08 ; |.F..............|
		.BYTE	$ff,$43,$a8,$07,$cf,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$00,$00,$00,$00 ; |.C..............|
		.BYTE	$00,$ff,$ff,$ff,$ff,$ff,$ff,$ff
		.BYTE	$34,$34,$18,$18,$ff,$18,$18,$18,$18,$18,$18
		.BYTE	"dies, totally",$0D
		.BYTE	$A5,"shocked and appalled",$AE
aGreatWyrm:	.BYTE	"Great Wyrm"
M67_null:	.BYTE	$00

i_FieryBreath:
		Item	$FF,$00,$00,$00,"fiery breath"
		.BYTE	$00,$ff,$00
		.BYTE	$00,$00,$00,$00,$4f,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$06,$00

i_Teeth:
		Item	$FF,$00,$00,$00,"teeth"
		.BYTE	$00,$ff,$00
		.BYTE	$23,$3a,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$02,$00

i_Claw:
		Item	$FF,$00,$00,$00,"claw"
		.BYTE	$00,$ff,$00
		.BYTE	$33,$34,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$00,$00,$03,$00
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST68"

		.BYTE	$01
		.WORD	aGoblinLord,M68_null,M68_i_SceptreOfEvil,M68_i_SceptreOfEvil,M68_i_SceptreOfEvil
		.BYTE	$00,$00,$0b,$04,$28,$26,$00,$00,$00,$00,$00,$00,$00 ; |.s.....(&.......|
		.BYTE	$00,$00,$00
		.WORD	M68_AAAD
		.BYTE	$03,$04,$1e,$00,$a8,$00,$49,$14,$14,$32,$14 ; |...........I..2.|
		.BYTE	$14,$46,$32,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |.F2............3|
		.BYTE	$33,$33,$33,$33,$33,$33,$33,$33,$33,$33,$33
		.BYTE	"dies snarling:",$0D,$0D
		.BYTE	$A5,$22,"Guards, kill him!",$22,$AE
aGoblinLord:	.BYTE	"Goblin Lord"
M68_null:	.BYTE	$00

M68_i_SceptreOfEvil:
		Item	$03,$00,$40,$0A,"Sceptre of Evil"
		.BYTE	$88,$ff,$25,$01,$01,$00,$00,$00,$00,$92,$45,$00,$01,$00,$14,$00
		.BYTE	$00,$ff,$00
		.BYTE	$2a,$00,$00,$00,$00,$00,$00,$00,$00,$26,$00
		.BYTE	$10,$28,$50,$50,$8a,$0a
:
M68_AAAD:
		LDA	#$06
		STA	$6320
		ldxy	$7508
		LDA	#$0C
		SEC
		JSR	$1860
		ldxy	$7508
		LDA	#$0E
		JSR	$1863
		BCC	:+
		ldxy	$7508
		LDA	#$17
		SEC
		JSR	$1860
		LDA	#$86
		BNE	:++
:		LDA	#$81
:		STA	$758A
		RTS

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST69"

		.BYTE	$01
		.WORD	aTrollTyrant,M69_null,i_SceptreOfEvil,i_SceptreOfEvil,i_SceptreOfEvil
		.BYTE	$00,$00 ; |.u`.\.h.i.i.i...|
		.BYTE	$0b,$04,$28,$1e,$00,$00,$00,$00,$00,$00,$00,$00
		.WORD	M69_AAA3,M69_AAB7
		.BYTE	$04,$04,$28,$00,$a8,$00,$50,$14,$14,$32,$14,$14,$32,$32,$00,$00 ; |..(...P..2..22..|
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$33,$33,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE	"has given his",$0D
		.BYTE	$A5,"last order",$AE
aTrollTyrant:	.BYTE	"Troll Tyrant"
M69_null:	.BYTE	$00

i_SceptreOfEvil:
		Item	$03,$00,$40,$0A,"Sceptre of Evil"
		.BYTE	$88,$ff,$25,$01,$01,$00,$00,$00,$00,$92,$45,$00,$01,$00,$14,$00
		.BYTE	$00,$ff,$00
		.BYTE	$28,$00,$00,$00,$00,$00,$00,$00,$00,$24,$00
		.BYTE	$10,$28,$50,$50,$8a,$0a
:
M69_AAA3:
		LDA	#$02
		JSR	j_RND_A
		CLC
		ADC	$B3
		STA	$B3
		BCC	:+
		INC	$B2
:		JSR	$7734
		JMP	$76F8

M69_AAB7:
		LDA	#$07
		STA	$6320
		ldxy	$7508
		LDA	#$0B
		SEC	
		JSR	$1860
		ldxy	$7508
		LDA	#$0D
		JSR	$1863
		BCC	:+
		ldxy	$7508
		LDA	#$17
		SEC
		JSR	$1860
		LDA	#$86
		BNE	:++
:		LDA	#$82
:		STA	$758A
		RTS

; ----------------------------------------------------------------------------
		.SEGMENT	"MONST70"

		.BYTE	$03
		.WORD	aIceDemon,aIceDemons,i_IceAxe,i_IceAxe,i_IceAxe ; |......u`.K.U.`.`|
		.BYTE	$61,$00,$04,$07,$14,$1e,$00,$00,$00,$00,$00,$00,$00 ; |.`.a............|
		.BYTE	$00,$00,$00,$00,$00,$29,$01,$00,$00,$a0,$00,$23,$14,$14,$1e,$14 ; |.....).....#....|
		.BYTE	$14,$28,$32,$00,$00,$00,$00,$00,$00,$02,$02,$02,$00,$00,$00,$33 ; |.(2............3|
		.BYTE	$33,$22,$22,$33,$22,$22,$22,$22,$22,$ff
		.BYTE	"shatters",$AE
aIceDemon:	.BYTE	"ice demon",0
aIceDemons:	.BYTE	"ice demons",0

i_IceAxe:
		Item	$03,$00,$00,$14,"Ice Axe"
		.BYTE	$00,$ff,$00,$00,$27,$00,$00,$00,$00,$00 ; |e Axe.....'.....|
		.BYTE	$00,$00,$00,$18,$28,$18,$28,$28,$80,$12
:
; ----------------------------------------------------------------------------
		.SEGMENT	"MONST71"

		.BYTE	$01
		.WORD	aHornedDevil,M71_null,M71_i_StealerOfSouls,M71_i_StealerOfSouls,M71_i_StealerOfSouls
		.BYTE	$22,$00,$0f,$08,$14,$1e,$00,$00,$00,$00,$00 ; |.y.y."..........|
		.BYTE	$00,$00,$00,$04,$00,$00,$00,$29,$03,$00,$02,$a0,$00,$45,$14,$14 ; |.......).....E..|
		.BYTE	$32,$50,$50,$50,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |2PPP(...........|
		.BYTE	$33,$33,$ff,$ff,$ff,$ff,$11,$ff,$00,$ff,$ff ; |.33.........|
		.BYTE	"is consumed in a",$0D
		.BYTE	$A5,"huge red cloud of smoke",$AE
aHornedDevil:	.BYTE	"horned devil"
M71_null:	.BYTE	$00

M71_i_StealerOfSouls:
		Item	$03,$00,$20,$15,"Stealer of Souls"
		.BYTE	$88,$ff,$25,$01,$01,$00 ; | of Souls...%...|
		.BYTE	$00,$00,$00,$92,$45,$00,$01,$00,$19,$00,$00,$ff,$00,$00,$26,$00 ; |....E.........&.|
		.BYTE	$00,$00,$00,$00,$00,$00,$1f,$00,$14,$14,$80,$80,$80,$18
:
; ----------------------------------------------------------------------------
	.SEGMENT	"REST"

	.BYTE	$42,$4f ; |..............BO|
	.BYTE	$0c,$04,$48,$44,$00,$0c,$01,$0c,$02,$0c,$40,$04,$70,$f8,$f8,$f8 ; |..HD......@.p...|
	.BYTE	$70,$20,$20,$60,$c0,$80,$80,$c7,$6f,$3f,$38,$30,$77,$67,$6f,$6d ; |p  `....o?80wgom|
	.BYTE	$68,$6d,$6f,$67,$77,$30,$38,$7f,$cf,$87,$c0,$40,$60,$38,$0c,$04 ; |hmogw08....@`8..|
	.BYTE	$04,$0c,$38,$7c,$6c,$7c,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |..8|l|8.........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$70,$20,$00,$10,$10,$10 ; |......... p ....|
	.BYTE	$30,$60,$60,$30,$10,$00,$07,$0f,$08,$18,$12,$17,$17,$17,$12,$18 ; |0``0............|
	.BYTE	$08,$0f,$07,$00,$30,$60,$20,$30,$1c,$06,$02,$02,$02,$02,$06,$10 ; |....0` 0........|
	.BYTE	$38,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |8...............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$38,$7c,$6c,$7c,$38,$10,$18,$08,$18 ; |.......8|l|8....|
	.BYTE	$f0,$c0,$e0,$60,$70,$30,$b0,$b0,$b0,$b0,$b0,$30,$70,$60,$e0,$f0 ; |...`p0.....0p`..|
	.BYTE	$98,$08,$08,$18,$10,$30,$20,$20,$70,$f8,$f8,$f8,$70,$00,$00,$00 ; |.....0  p...p...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$10,$38,$10,$00,$0c,$04,$04,$04,$0c,$38,$00,$80 ; |.....8.......8..|
	.BYTE	$80,$c0,$40,$40,$40,$40,$40,$c0,$80,$80,$18,$0c,$04,$04,$04,$04 ; |..@@@@@.........|
	.BYTE	$0c,$08,$18,$10,$00,$20,$70,$20,$00,$00,$00,$00,$00,$00,$00,$00 ; |..... p ........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1c,$3e,$36,$3e ; |.............>6>|
	.BYTE	$1c,$79,$41,$c1,$80,$c0,$40,$63,$37,$1f,$1c,$18,$3b,$33,$36,$35 ; |.yA...@c7...;365|
	.BYTE	$37,$35,$36,$33,$3b,$18,$1c,$3f,$67,$43,$60,$30,$1e,$03,$01,$03 ; |7563;..?gC`0....|
	.BYTE	$76,$fc,$f8,$f8,$70,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |v...p...........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$1c,$08,$00,$04,$38,$20 ; |..............8 |
	.BYTE	$60,$20,$30,$18,$08,$00,$03,$07,$04,$0c,$09,$0b,$0b,$0b,$09,$0c ; |` 0.............|
	.BYTE	$04,$07,$03,$00,$18,$30,$18,$0f,$01,$00,$00,$00,$01,$23,$76,$20 ; |.....0.......#v |
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$e0,$f0,$fc,$f4,$e4,$04,$0c,$98 ; |................|
	.BYTE	$f0,$e0,$70,$30,$b8,$98,$d8,$58,$d8,$58,$d8,$98,$b8,$30,$70,$f8 ; |..p0...X.X...0p.|
	.BYTE	$cc,$84,$04,$1c,$30,$20,$20,$20,$70,$f8,$d8,$f8,$70,$00,$00,$00 ; |....0   p...p...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$4e,$e2,$42,$02,$02,$02,$06,$0c,$18,$80,$c0 ; |.....N.B........|
	.BYTE	$40,$60,$20,$a0,$a0,$a0,$20,$60,$40,$c0,$8c,$06,$02,$02,$02,$02 ; |@` ... `@.......|
	.BYTE	$8e,$98,$90,$90,$80,$20,$70,$20,$00,$00,$00,$00,$00,$00,$00,$00 ; |..... p ........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$07,$1f,$37 ; |...............7|
	.BYTE	$23,$60,$41,$43,$c3,$83,$81,$c0,$41,$73,$1f,$0e,$0c,$1d,$19,$1b ; |#`AC....As......|
	.BYTE	$1b,$1a,$1b,$1b,$19,$1d,$0c,$0e,$3f,$63,$41,$60,$30,$1c,$06,$03 ; |........?cA`0...|
	.BYTE	$71,$fb,$de,$f8,$70,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |q...p...........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$09,$18,$10,$30,$20 ; |..............0 |
	.BYTE	$21,$60,$60,$20,$38,$0c,$00,$01,$03,$02,$06,$04,$05,$05,$05,$04 ; |!`` 8...........|
	.BYTE	$06,$02,$03,$01,$00,$1c,$30,$18,$0e,$03,$01,$00,$00,$20,$71,$27 ; |......0...... q'|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$80,$c0,$c0,$c0,$80,$00,$c0,$e0,$7c,$e6,$c2,$06 ; |............|...|
	.BYTE	$cc,$f8,$f0,$38,$18,$dc,$cc,$ec,$6c,$2c,$6c,$ec,$cc,$dc,$18,$38 ; |...8....l,l....8|
	.BYTE	$f8,$ec,$c4,$0c,$18,$30,$20,$30,$1c,$04,$0e,$1f,$1f,$1f,$0e,$00 ; |.....0 0........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$80,$00,$00,$00,$00,$9e,$c3,$81,$01,$01,$03,$06,$0c,$c0 ; |................|
	.BYTE	$e0,$20,$30,$90,$d0,$d0,$d0,$90,$30,$20,$e0,$c0,$06,$02,$02,$02 ; |. 0.....0 ......|
	.BYTE	$06,$0c,$98,$8e,$82,$82,$80,$04,$0e,$04,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0c,$08,$e4,$28 ; |...............(|
	.BYTE	$01,$00,$40,$04,$00,$00,$40,$08,$00,$00,$00,$00,$00,$00,$00,$00 ; |..@...@.........|
	.BYTE	$00,$00,$00,$03,$07,$07,$0c,$0b,$08,$09,$00,$00,$00,$00,$1c,$0e ; |................|
	.BYTE	$0e,$0e,$0e,$1e,$1f,$1f,$1f,$0f,$0f,$07,$23,$31,$0d,$3e,$3f,$3f ; |..........#1.>??|
	.BYTE	$1d,$1c,$1e,$1e,$0e,$0e,$0e,$0c,$1c,$00,$00,$00,$00,$20,$20,$18 ; |.............  .|
	.BYTE	$1c,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$03,$05,$07,$06,$07,$03,$03,$03,$03,$31,$31,$71,$71,$61 ; |...........11qqa|
	.BYTE	$e0,$e0,$e0,$70,$74,$3e,$1e,$0e,$3e,$1f,$1e,$0c,$00,$00,$00,$00 ; |...pt>..>.......|
	.BYTE	$00,$00,$00,$00,$00,$1c,$18,$18,$18,$18,$18,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0,$e0,$20,$30,$70 ; |............. 0p|
	.BYTE	$10,$90,$00,$00,$00,$00,$00,$60,$e2,$c2,$c3,$c3,$c3,$c3,$c3,$82 ; |.......`........|
	.BYTE	$82,$80,$80,$86,$c0,$00,$c0,$c0,$e0,$e0,$f0,$70,$70,$30,$30,$70 ; |...........pp00p|
	.BYTE	$70,$00,$00,$00,$00,$00,$80,$80,$60,$70,$18,$00,$00,$00,$00,$00 ; |p.......`p......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0,$c0,$a0,$e0,$60,$e0,$c0 ; |.............`..|
	.BYTE	$80,$80,$80,$80,$12,$32,$33,$3b,$3b,$1b,$1b,$1a,$1c,$0e,$06,$00 ; |.....23;;.......|
	.BYTE	$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$60,$60 ; |.............```|
	.BYTE	$60,$60,$60,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |````............|
	.BYTE	$00,$00,$00,$03,$03,$03,$06,$06,$04,$04,$00,$00,$00,$00,$1c,$0e ; |................|
	.BYTE	$0e,$0e,$0e,$1e,$1f,$1f,$1f,$0f,$07,$21,$3f,$3f,$1f,$3e,$2d,$37 ; |.........!??.>-7|
	.BYTE	$19,$1c,$1e,$1e,$0e,$0e,$0e,$0c,$1c,$00,$00,$00,$00,$20,$20,$18 ; |.............  .|
	.BYTE	$1c,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$01,$01,$03,$03,$07,$03,$03,$03,$03,$31,$31,$31,$71,$61 ; |...........111qa|
	.BYTE	$60,$e0,$e0,$f4,$7e,$1e,$0c,$1e,$3e,$0d,$12,$08,$04,$00,$00,$00 ; |`...~...>.......|
	.BYTE	$00,$00,$00,$00,$00,$1c,$18,$18,$18,$18,$18,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0,$e0,$60,$00,$60 ; |.............`.`|
	.BYTE	$00,$00,$40,$00,$00,$00,$00,$62,$e2,$c3,$c3,$c3,$c3,$c3,$c3,$83 ; |..@....b........|
	.BYTE	$82,$82,$80,$80,$c6,$00,$c0,$c0,$e0,$e0,$f0,$70,$70,$30,$30,$70 ; |...........pp00p|
	.BYTE	$70,$00,$00,$00,$00,$00,$80,$80,$60,$70,$18,$00,$00,$00,$00,$00 ; |p.......`p......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$e0,$80,$e0,$c0,$80,$c0 ; |................|
	.BYTE	$80,$80,$80,$82,$12,$33,$33,$3b,$3b,$1b,$1b,$1b,$1e,$0c,$0e,$06 ; |.....33;;.......|
	.BYTE	$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$60,$60 ; |.............```|
	.BYTE	$60,$60,$60,$60,$00,$00,$00,$00,$0a,$04,$50,$26,$00,$6f,$01,$6f ; |````......P&.o.o|
	.BYTE	$40,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$03,$07 ; |@...............|
	.BYTE	$04,$07,$04,$07,$07,$03,$03,$0f,$1f,$0f,$0f,$0f,$0f,$1f,$1f,$1f ; |................|
	.BYTE	$1f,$0f,$0f,$07,$03,$23,$33,$3f,$3f,$3d,$1d,$1c,$1e,$1e,$0e,$0e ; |.....#3??=......|
	.BYTE	$0e,$0c,$1c,$1c,$18,$18,$18,$38,$38,$18,$1c,$06,$00,$00,$00,$00 ; |.......88.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$01,$03,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$30,$70,$70,$70,$e0,$e0,$e0,$e0,$70,$70,$38 ; |.....0ppp....pp8|
	.BYTE	$3e,$1e,$0e,$0f,$03,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |>...............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$c0,$c0,$c0,$00,$c0,$00,$c0,$c2,$c2,$83,$83 ; |................|
	.BYTE	$c3,$e3,$e3,$c3,$c3,$c2,$c0,$c0,$c0,$80,$80,$80,$80,$80,$c0,$c0 ; |................|
	.BYTE	$c0,$c0,$e0,$e0,$f0,$70,$70,$30,$30,$70,$70,$60,$60,$60,$60,$60 ; |.....pp00pp`````|
	.BYTE	$e0,$e0,$60,$70,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |..`p............|
	.BYTE	$00,$00,$00,$00,$c0,$40,$c0,$00,$02,$02,$03,$03,$03,$03,$03,$33 ; |.....@.........3|
	.BYTE	$32,$31,$3b,$3f,$1e,$1e,$0c,$08,$00,$00,$00,$00,$00,$80,$80,$00 ; |21;?............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$03,$07 ; |................|
	.BYTE	$04,$07,$04,$07,$07,$03,$03,$0f,$1f,$0f,$0f,$0f,$0f,$1f,$1f,$1f ; |................|
	.BYTE	$1f,$0f,$0f,$2f,$3f,$3f,$3f,$3f,$3f,$3f,$1d,$1c,$1e,$1e,$0e,$0e ; |.../??????......|
	.BYTE	$0e,$0c,$1c,$1c,$18,$18,$18,$38,$38,$18,$1c,$06,$00,$00,$00,$00 ; |.......88.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$01,$03,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$30,$30,$30,$70,$60,$60,$e0,$e0,$fc,$7e,$1f ; |.....000p``...~.|
	.BYTE	$1c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$c0,$c0,$c0,$00,$c0,$00,$c0,$c0,$c0,$80,$80 ; |................|
	.BYTE	$c0,$e0,$e2,$c2,$c3,$c3,$c3,$c3,$c3,$83,$82,$82,$80,$80,$c6,$c0 ; |................|
	.BYTE	$c0,$c0,$e0,$e0,$f0,$70,$70,$30,$30,$70,$70,$60,$60,$60,$60,$60 ; |.....pp00pp`````|
	.BYTE	$e0,$e0,$60,$70,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |..`p............|
	.BYTE	$00,$00,$00,$00,$c0,$40,$c0,$00,$00,$00,$00,$00,$00,$00,$02,$32 ; |.....@.........2|
	.BYTE	$33,$33,$33,$3b,$1b,$1b,$1e,$8c,$0e,$06,$00,$00,$00,$00,$00,$00 ; |333;............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$0e,$08,$f4,$f8,$01,$00,$40,$04,$00,$64,$01,$64,$40,$08 ; |........@..d.d@.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0f ; |................|
	.BYTE	$0f,$0f,$1e,$04,$04,$04,$04,$05,$0d,$0b,$0b,$08,$09,$09,$00,$00 ; |................|
	.BYTE	$00,$00,$02,$07,$07,$07,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03 ; |................|
	.BYTE	$03,$07,$07,$07,$07,$07,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3e,$7f,$7f,$7f,$3e,$0c ; |..........>...>.|
	.BYTE	$0c,$0c,$0c,$0d,$1d,$1a,$18,$1f,$1e,$1f,$3f,$3b,$7b,$73,$73,$77 ; |..........?;{ssw|
	.BYTE	$7f,$7f,$7f,$7b,$3b,$32,$02,$02,$02,$02,$00,$01,$01,$00,$00,$00 ; |...{;2..........|
	.BYTE	$00,$00,$05,$07,$0f,$1f,$1e,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$f0 ; |................|
	.BYTE	$f0,$f8,$f8,$00,$b0,$b0,$00,$e0,$e0,$e0,$0c,$fe,$fe,$fc,$fc,$fe ; |................|
	.BYTE	$fe,$ff,$ff,$ff,$ff,$ff,$fe,$fe,$fe,$fc,$fc,$fc,$bc,$bc,$a8,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$f0,$f0,$a8,$03,$fe ; |................|
	.BYTE	$ee,$fc,$fc,$f8,$f8,$f8,$fc,$fe,$fe,$c6,$82,$00,$00,$00,$00,$08 ; |................|
	.BYTE	$09,$31,$00,$02,$02,$84,$78,$00,$00,$00,$14,$1c,$1e,$1f,$0f,$00 ; |.1....x.........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$01,$01,$03,$03,$00,$01,$01,$00,$00 ; |................|
	.BYTE	$00,$00,$06,$0f,$0f,$07,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03 ; |................|
	.BYTE	$03,$17,$17,$17,$17,$17,$12,$10,$3c,$1e,$1e,$3c,$00,$00,$00,$00 ; |........<..<....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$01,$01,$02,$18,$0f,$0e,$07,$07,$03,$03,$03,$07,$0f ; |................|
	.BYTE	$0f,$0f,$0f,$1f,$1f,$1a,$1a,$1a,$3a,$3a,$38,$31,$31,$10,$10,$10 ; |........::811...|
	.BYTE	$10,$10,$15,$17,$7f,$ff,$fe,$7c,$00,$00,$00,$00,$00,$00,$00,$00 ; |.......|........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$f0 ; |................|
	.BYTE	$f0,$f8,$f8,$00,$b0,$b0,$00,$e0,$e0,$e0,$0c,$fe,$fe,$fc,$fc,$fe ; |................|
	.BYTE	$fe,$ff,$ff,$ff,$ff,$ff,$fe,$fe,$fe,$fc,$fc,$fc,$bc,$bc,$a8,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$f0,$f0,$a8,$03,$fe ; |................|
	.BYTE	$ee,$fc,$fc,$f8,$f8,$f8,$fc,$fe,$fe,$c6,$82,$00,$00,$00,$00,$08 ; |................|
	.BYTE	$09,$31,$00,$02,$02,$84,$78,$00,$00,$00,$14,$1c,$1e,$1f,$0f,$00 ; |.1....x.........|
	.BYTE	$0e,$08,$28,$f4,$01,$00,$40,$04,$00,$28,$01,$28,$40,$08,$00,$02 ; |..(...@..(.(@...|
	.BYTE	$5a,$4a,$3f,$0f,$1f,$70,$5a,$1f,$0f,$0d,$04,$07,$26,$65,$c2,$c2 ; |ZJ?..pZ.....&e..|
	.BYTE	$c4,$e0,$c8,$e0,$f1,$e3,$fc,$78,$30,$00,$00,$04,$0d,$0d,$1f,$1f ; |.......x0.......|
	.BYTE	$1f,$1f,$3f,$3f,$3d,$3d,$3c,$3c,$38,$38,$38,$38,$38,$38,$38,$38 ; |..??==<<88888888|
	.BYTE	$3c,$3c,$1c,$1c,$3c,$3c,$7c,$fc,$f8,$00,$00,$02,$5a,$4a,$3f,$0b ; |<<..<<|.....ZJ?.|
	.BYTE	$10,$7f,$55,$10,$30,$72,$7b,$f8,$d9,$9b,$3f,$3f,$3f,$1f,$3f,$1f ; |..U.0r{...???.?.|
	.BYTE	$1e,$1e,$03,$07,$4f,$6f,$4f,$0b,$03,$0f,$1f,$1f,$1f,$1f,$3f,$3f ; |....OoO.......??|
	.BYTE	$3d,$3d,$3c,$3c,$18,$18,$08,$08,$08,$08,$08,$18,$3c,$3c,$1c,$1c ; |==<<........<<..|
	.BYTE	$3c,$38,$60,$00,$00,$00,$00,$00,$e0,$80,$90,$e0,$f0,$40,$c0,$80 ; |<8`..........@..|
	.BYTE	$80,$80,$00,$00,$e0,$10,$14,$1c,$2e,$3e,$4e,$c6,$07,$0f,$0e,$1e ; |.........>N.....|
	.BYTE	$1c,$3c,$8c,$8c,$8c,$8c,$c0,$c0,$c0,$c0,$c0,$e0,$e0,$e0,$f0,$f0 ; |.<..............|
	.BYTE	$f0,$70,$70,$70,$70,$70,$70,$70,$f0,$f0,$f0,$f0,$70,$70,$38,$3c ; |.ppppppp....pp8<|
	.BYTE	$1c,$00,$00,$00,$e0,$80,$90,$60,$70,$c0,$40,$00,$30,$38,$78,$7c ; |.......`p.@.08x||
	.BYTE	$fc,$fc,$f8,$f0,$f0,$e0,$e0,$a0,$c0,$c0,$c0,$c0,$c0,$c0,$40,$40 ; |..............@@|
	.BYTE	$c0,$c0,$c0,$c0,$c0,$c0,$c0,$e0,$e0,$e0,$f0,$f0,$f0,$70,$70,$70 ; |.............ppp|
	.BYTE	$70,$70,$70,$70,$f0,$e0,$a0,$80,$00,$00,$00,$00,$00,$00,$00,$02 ; |pppp............|
	.BYTE	$5a,$4a,$3f,$0f,$1f,$70,$5a,$1f,$0f,$0c,$04,$04,$27,$66,$c0,$c0 ; |ZJ?..pZ.....'f..|
	.BYTE	$c0,$e1,$e1,$e1,$e1,$e1,$f1,$76,$78,$30,$30,$24,$0d,$0d,$1f,$1f ; |.......vx00$....|
	.BYTE	$1f,$1f,$3f,$3f,$3d,$3d,$3c,$3c,$38,$38,$38,$38,$38,$38,$38,$38 ; |..??==<<88888888|
	.BYTE	$3c,$3c,$1c,$1c,$3c,$3c,$7c,$fc,$f8,$00,$00,$02,$5a,$4a,$3f,$0b ; |<<..<<|.....ZJ?.|
	.BYTE	$10,$7f,$55,$10,$30,$73,$7b,$fb,$d8,$99,$3f,$3f,$3f,$1e,$1e,$1e ; |..U.0s{...???...|
	.BYTE	$1e,$1e,$0f,$0f,$0f,$cf,$df,$4b,$03,$0f,$1f,$1f,$1f,$1f,$3f,$3f ; |.......K......??|
	.BYTE	$3d,$3d,$3c,$3c,$18,$18,$08,$08,$08,$08,$08,$18,$3c,$3c,$1c,$1c ; |==<<........<<..|
	.BYTE	$3c,$38,$60,$00,$00,$00,$00,$00,$e0,$80,$90,$e0,$f0,$40,$c0,$80 ; |<8`..........@..|
	.BYTE	$80,$80,$00,$10,$0c,$04,$4c,$cc,$8c,$9c,$9c,$0e,$0e,$4e,$86,$06 ; |......L......N..|
	.BYTE	$04,$0c,$38,$80,$80,$80,$c0,$c0,$c0,$c0,$c0,$e0,$e0,$e0,$f0,$f0 ; |..8.............|
	.BYTE	$f0,$70,$70,$70,$70,$70,$70,$70,$f0,$f0,$f0,$f0,$70,$70,$38,$3c ; |.ppppppp....pp8<|
	.BYTE	$1c,$00,$00,$00,$e0,$80,$90,$60,$70,$c0,$40,$00,$30,$38,$78,$6c ; |.......`p.@.08xl|
	.BYTE	$f0,$f8,$b0,$30,$70,$60,$60,$e0,$c0,$f0,$f8,$f8,$f8,$f0,$c0,$40 ; |...0p``........@|
	.BYTE	$c0,$c0,$c0,$c0,$c0,$c0,$c0,$e0,$e0,$e0,$f0,$f0,$f0,$70,$70,$70 ; |.............ppp|
	.BYTE	$70,$70,$70,$70,$f0,$e0,$a0,$80,$00,$00,$00,$00,$00,$00,$0a,$04 ; |pppp............|
	.BYTE	$42,$b8,$00,$24,$01,$24,$40,$04,$00,$00,$00,$00,$00,$00,$00,$00 ; |B..$.$@.........|
	.BYTE	$00,$00,$00,$00,$01,$00,$80,$c0,$c1,$f0,$f0,$74,$7e,$3e,$3e,$3f ; |...........t~>>?|
	.BYTE	$1f,$1f,$1f,$0f,$0f,$0f,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07 ; |................|
	.BYTE	$07,$07,$07,$07,$07,$05,$05,$05,$05,$07,$07,$07,$07,$07,$07,$04 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$81,$a3 ; |.............@..|
	.BYTE	$c2,$c3,$e1,$c1,$c0,$f0,$f3,$77,$7f,$3f,$3f,$3f,$1f,$1f,$1f,$0f ; |.......w.???....|
	.BYTE	$0f,$0f,$07,$07,$07,$07,$07,$07,$07,$06,$06,$04,$04,$04,$00,$00 ; |................|
	.BYTE	$00,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$03,$07,$1e,$1c,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$00,$40,$01,$83,$03 ; |..........@.@...|
	.BYTE	$87,$07,$07,$07,$1f,$1f,$3e,$3e,$3c,$3c,$78,$78,$78,$78,$78,$70 ; |......>><<xxxxxp|
	.BYTE	$70,$70,$70,$70,$70,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$70,$70,$70,$70 ; |ppppp.......pppp|
	.BYTE	$30,$10,$10,$10,$10,$10,$10,$70,$00,$00,$00,$00,$00,$00,$00,$00 ; |0......p........|
	.BYTE	$00,$00,$00,$00,$02,$c1,$a5,$e3,$a3,$e7,$63,$c3,$47,$c7,$e7,$f7 ; |..........c.G...|
	.BYTE	$ff,$ff,$fe,$fe,$fc,$fc,$f8,$f8,$f8,$f8,$f8,$f0,$f0,$f0,$f0,$f0 ; |................|
	.BYTE	$f0,$30,$30,$30,$10,$10,$10,$00,$00,$00,$00,$00,$40,$60,$60,$60 ; |.000........@```|
	.BYTE	$60,$60,$60,$00,$70,$3c,$1c,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |```.p<..........|
	.BYTE	$00,$00,$00,$00,$01,$00,$80,$c0,$c1,$f0,$f0,$74,$7e,$3e,$3e,$3f ; |...........t~>>?|
	.BYTE	$1f,$1f,$1f,$0f,$0f,$0f,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07 ; |................|
	.BYTE	$07,$07,$07,$07,$07,$05,$05,$05,$05,$07,$07,$07,$07,$07,$07,$04 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$c3 ; |................|
	.BYTE	$e2,$e3,$e1,$c1,$c0,$f0,$f3,$77,$7f,$3f,$3f,$3f,$1f,$1f,$1f,$0f ; |.......w.???....|
	.BYTE	$0f,$0f,$07,$07,$07,$07,$07,$07,$07,$06,$06,$04,$04,$04,$00,$00 ; |................|
	.BYTE	$00,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$03,$07,$1e,$1c,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$00,$40,$01,$83,$03 ; |..........@.@...|
	.BYTE	$87,$07,$07,$07,$1f,$1f,$3e,$3e,$3c,$3c,$78,$78,$78,$78,$78,$70 ; |......>><<xxxxxp|
	.BYTE	$70,$70,$70,$70,$70,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$70,$70,$70,$70 ; |ppppp.......pppp|
	.BYTE	$30,$10,$10,$10,$10,$10,$10,$70,$00,$00,$00,$00,$00,$00,$00,$00 ; |0......p........|
	.BYTE	$00,$00,$00,$00,$00,$c0,$a3,$e3,$a7,$e7,$63,$c3,$47,$c7,$e7,$f7 ; |..........c.G...|
	.BYTE	$ff,$ff,$fe,$fe,$fc,$fc,$f8,$f8,$f8,$f8,$f8,$f0,$f0,$f0,$f0,$f0 ; |................|
	.BYTE	$f0,$30,$30,$30,$10,$10,$10,$00,$00,$00,$00,$00,$40,$60,$60,$60 ; |.000........@```|
	.BYTE	$60,$60,$60,$00,$70,$3c,$1c,$00,$0e,$08,$0a,$04,$00,$00,$40,$04 ; |```.p<........@.|
	.BYTE	$00,$64,$01,$32,$40,$08,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10 ; |.d.2@...........|
	.BYTE	$10,$10,$13,$11,$10,$10,$11,$11,$11,$10,$10,$14,$12,$12,$11,$13 ; |................|
	.BYTE	$07,$1b,$1b,$1b,$03,$03,$03,$03,$03,$01,$01,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$02,$01,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$11,$13,$13,$13,$13 ; |................|
	.BYTE	$13,$13,$17,$11,$11,$11,$13,$17,$17,$17,$17,$17,$1b,$1b,$1b,$1b ; |................|
	.BYTE	$13,$13,$03,$01,$01,$02,$02,$03,$03,$03,$03,$03,$03,$03,$07,$07 ; |................|
	.BYTE	$07,$07,$03,$03,$03,$03,$03,$03,$06,$0e,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$40,$e0 ; |..............@.|
	.BYTE	$80,$18,$24,$20,$10,$e0,$f0,$f8,$b8,$18,$18,$18,$18,$1c,$bc,$f8 ; |..$ ............|
	.BYTE	$f8,$f8,$f0,$e0,$80,$80,$c0,$00,$20,$04,$18,$00,$00,$00,$00,$00 ; |........ .......|
	.BYTE	$00,$00,$00,$00,$00,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$c0,$e0,$e0,$e0,$e0,$e0,$e0,$f0,$e0,$f0,$f8,$fc,$fc ; |................|
	.BYTE	$ec,$fc,$fe,$fe,$fe,$fe,$fc,$fc,$fc,$f8,$f8,$f0,$f0,$e0,$48,$18 ; |..............H.|
	.BYTE	$f8,$fc,$fc,$bc,$bc,$9c,$18,$18,$3c,$3c,$3c,$38,$18,$18,$18,$18 ; |........<<<8....|
	.BYTE	$18,$18,$18,$1c,$0e,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$03,$01,$00,$00,$01,$01,$01,$00,$00,$00,$01,$03,$0f ; |................|
	.BYTE	$0e,$6d,$e5,$72,$36,$06,$06,$07,$03,$03,$03,$03,$01,$00,$00,$00 ; |.m.r6...........|
	.BYTE	$00,$00,$00,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$03,$03 ; |................|
	.BYTE	$03,$03,$03,$06,$00,$00,$01,$03,$07,$07,$0f,$0f,$3f,$7f,$ff,$ff ; |............?...|
	.BYTE	$ff,$0f,$0f,$0f,$07,$07,$01,$00,$02,$03,$03,$03,$03,$03,$03,$03 ; |................|
	.BYTE	$07,$07,$07,$07,$03,$03,$03,$03,$03,$03,$03,$07,$0e,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$01,$43 ; |...............C|
	.BYTE	$e6,$8c,$38,$78,$f0,$e0,$80,$60,$f8,$b8,$38,$38,$38,$38,$38,$78 ; |..8x...`..88888x|
	.BYTE	$f8,$f0,$f0,$e0,$c0,$80,$80,$c0,$00,$20,$04,$18,$00,$00,$00,$00 ; |......... ......|
	.BYTE	$00,$00,$00,$00,$00,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$c0,$e0,$e0,$e0,$e0,$e0,$e1,$b3,$06,$6c,$f8,$fc ; |.............l..|
	.BYTE	$fc,$fc,$fc,$fe,$f6,$f6,$f6,$f4,$f4,$f0,$f0,$f0,$e0,$e8,$c8,$98 ; |................|
	.BYTE	$38,$f8,$fc,$fc,$bc,$bc,$9c,$18,$3c,$3c,$3c,$38,$18,$18,$18,$18 ; |8.......<<<8....|
	.BYTE	$18,$18,$18,$1c,$0e,$00,$0a,$04,$54,$2c,$00,$30,$01,$30,$40,$04 ; |........T,.0.0@.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$03,$03,$03,$00,$01,$00 ; |................|
	.BYTE	$00,$0c,$1e,$1f,$1f,$1f,$1f,$3f,$3e,$3c,$76,$63,$73,$7f,$33,$01 ; |.......?><vcs.3.|
	.BYTE	$01,$01,$05,$07,$07,$07,$07,$07,$07,$07,$0f,$0f,$0f,$0f,$0f,$0f ; |................|
	.BYTE	$0f,$0f,$0f,$0f,$0f,$0f,$1f,$1f,$1f,$1f,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$01,$03,$03,$03,$01,$03,$02,$03,$01,$01,$01,$18 ; |................|
	.BYTE	$1f,$0f,$0f,$0f,$0b,$0b,$19,$1c,$0e,$07,$07,$07,$06,$06,$06,$06 ; |................|
	.BYTE	$07,$07,$07,$07,$07,$07,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f ; |................|
	.BYTE	$0f,$0f,$1f,$1f,$1f,$07,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80 ; |................|
	.BYTE	$c0,$e0,$e0,$e0,$e0,$20,$20,$00,$00,$18,$38,$70,$e0,$c4,$8e,$1e ; |.....  ...8p....|
	.BYTE	$3e,$7e,$ff,$f7,$f7,$f7,$e7,$c7,$c6,$46,$5e,$fe,$fe,$f0,$f0,$f0 ; |>~.......F^.....|
	.BYTE	$f0,$f0,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$fc ; |................|
	.BYTE	$fc,$fc,$0e,$00,$00,$00,$00,$00,$00,$00,$80,$80,$c0,$e0,$e0,$e0 ; |................|
	.BYTE	$20,$e0,$e0,$e0,$c0,$c0,$c0,$8c,$7c,$f8,$f0,$f8,$f8,$f8,$f8,$f0 ; | .......|.......|
	.BYTE	$f0,$f0,$f0,$f0,$30,$b0,$b0,$30,$f0,$f6,$fe,$fe,$f0,$f0,$f8,$f8 ; |....0..0........|
	.BYTE	$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$fc,$fc,$e0,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$03,$03,$03,$00,$01,$00 ; |................|
	.BYTE	$00,$0c,$1e,$1f,$1f,$1f,$1f,$3f,$3e,$3c,$76,$63,$73,$7f,$33,$01 ; |.......?><vcs.3.|
	.BYTE	$01,$01,$05,$07,$07,$07,$07,$07,$07,$07,$0f,$0f,$0f,$0f,$0f,$0f ; |................|
	.BYTE	$0f,$0f,$0f,$0f,$0f,$0f,$1f,$1f,$1f,$1f,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$01,$03,$03,$03,$01,$03,$02,$03,$01,$01,$01,$18 ; |................|
	.BYTE	$1f,$0f,$0f,$0f,$0b,$0b,$19,$1c,$0e,$07,$07,$07,$06,$06,$06,$06 ; |................|
	.BYTE	$07,$07,$07,$07,$07,$07,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f ; |................|
	.BYTE	$0f,$0f,$1f,$1f,$1f,$07,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80 ; |................|
	.BYTE	$c0,$e0,$e0,$e0,$e0,$20,$20,$00,$00,$18,$38,$70,$e0,$c4,$8e,$1e ; |.....  ...8p....|
	.BYTE	$3e,$7e,$ff,$f7,$f7,$f3,$e3,$c3,$c3,$43,$57,$f7,$f7,$f0,$f0,$f0 ; |>~.......CW.....|
	.BYTE	$f0,$f0,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$fc ; |................|
	.BYTE	$fc,$fc,$0e,$00,$00,$00,$00,$00,$00,$00,$80,$80,$c0,$e0,$e0,$e0 ; |................|
	.BYTE	$20,$e0,$e0,$e0,$c0,$c0,$c0,$8c,$7c,$f8,$f0,$f8,$f8,$f8,$f8,$f0 ; | .......|.......|
	.BYTE	$f0,$f0,$f0,$f0,$30,$b0,$b0,$30,$f0,$f3,$f7,$f7,$f0,$f0,$f8,$f8 ; |....0..0........|
	.BYTE	$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$fc,$fc,$e0,$00,$00 ; |................|
	.BYTE	$0a,$04,$02,$f8,$00,$c8,$01,$c8,$40,$04,$00,$00,$00,$00,$00,$00 ; |........@.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03 ; |................|
	.BYTE	$07,$07,$07,$0f,$0f,$0f,$1f,$1b,$1b,$1b,$3b,$37,$07,$97,$97,$f7 ; |..........;7....|
	.BYTE	$b7,$d7,$f7,$03,$03,$03,$01,$01,$01,$01,$01,$03,$03,$03,$03,$07 ; |................|
	.BYTE	$07,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$30,$70,$61,$64,$00,$60,$60,$00,$00 ; |.......0pad.``..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$03,$01,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$fc,$9c ; |.............8..|
	.BYTE	$00,$fc,$d8,$00,$00,$00,$00,$f8,$fc,$fe,$fe,$fe,$fe,$fe,$fe,$fe ; |................|
	.BYTE	$f6,$f6,$f7,$f3,$fa,$f8,$f0,$f8,$f8,$f8,$bc,$bc,$de,$de,$de,$ce ; |................|
	.BYTE	$ce,$ce,$ce,$8e,$8e,$8e,$8e,$8e,$1e,$1c,$8c,$ce,$03,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$fc,$00,$24,$fc ; |...........`..$.|
	.BYTE	$fc,$78,$70,$70,$50,$50,$50,$50,$40,$20,$20,$20,$00,$00,$40,$83 ; |.xppPPPP@   ..@.|
	.BYTE	$83,$c1,$21,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |..!.............|
	.BYTE	$00,$00,$00,$08,$0c,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01 ; |................|
	.BYTE	$03,$07,$07,$07,$0f,$0f,$0f,$1f,$1f,$1f,$0f,$07,$07,$07,$0f,$0f ; |................|
	.BYTE	$07,$07,$07,$03,$03,$03,$01,$01,$01,$01,$03,$03,$03,$03,$03,$07 ; |................|
	.BYTE	$07,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01 ; |................|
	.BYTE	$01,$02,$02,$00,$02,$01,$01,$03,$02,$00,$00,$01,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$03,$01,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3c,$7c ; |..............<||
	.BYTE	$e0,$9c,$c0,$c0,$c0,$40,$00,$c0,$fc,$fe,$fe,$fe,$fe,$fe,$fe,$f6 ; |.....@..........|
	.BYTE	$f6,$f6,$f7,$33,$13,$f3,$f1,$f0,$f0,$f8,$b8,$b8,$dc,$dc,$dc,$dc ; |...3............|
	.BYTE	$ce,$ce,$ce,$8e,$8e,$8e,$8e,$8e,$1e,$1c,$8c,$ce,$03,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1c,$60,$3c,$38 ; |.............`<8|
	.BYTE	$38,$38,$70,$70,$50,$50,$50,$50,$40,$40,$20,$20,$40,$00,$80,$c0 ; |88ppPPPP@@  @...|
	.BYTE	$e0,$00,$83,$e1,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$08,$0c,$04,$00,$00,$00,$00,$12,$08,$32,$0c,$00,$00 ; |............2...|
	.BYTE	$40,$04,$01,$1e,$02,$34,$01,$18,$00,$14,$40,$08,$00,$00,$00,$00 ; |@....4....@.....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$03,$01,$00,$00,$02,$03,$03,$04 ; |................|
	.BYTE	$09,$08,$08,$09,$11,$11,$03,$03,$01,$61,$00,$00,$00,$00,$00,$08 ; |.........a......|
	.BYTE	$24,$63,$60,$60,$60,$60,$00,$00,$00,$00,$0c,$00,$00,$00,$00,$00 ; |$c````..........|
	.BYTE	$00,$00,$00,$00,$0c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$03,$07,$07,$07,$07,$07,$07,$0f,$03,$0d,$1b,$36,$37,$77,$76 ; |............67wv|
	.BYTE	$6e,$6e,$6d,$6d,$6e,$06,$77,$77,$67,$6f,$6f,$67,$4b,$2c,$6e,$5e ; |nnmmn.wwgoogK,n^|
	.BYTE	$1e,$1e,$5e,$4e,$4e,$4c,$40,$4c,$5e,$5e,$5e,$5e,$5c,$5c,$4c,$4c ; |..^NNL@L^^^^\\LL|
	.BYTE	$40,$1c,$7c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |@.|.............|
	.BYTE	$80,$00,$00,$00,$80,$80,$80,$40,$20,$fc,$fc,$fe,$fe,$fe,$ff,$ff ; |.......@ .......|
	.BYTE	$ff,$ff,$ff,$ff,$7f,$3f,$1f,$20,$40,$80,$00,$00,$00,$00,$00,$00 ; |.....?. @.......|
	.BYTE	$00,$00,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$00,$00,$00 ; |..`.........`...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$c0,$c0,$c0,$c0,$c0,$c0 ; |................|
	.BYTE	$e0,$80,$60,$b0,$d8,$00,$78,$fc,$fc,$dc,$ca,$e2,$e6,$c2,$52,$7a ; |..`...x.......Rz|
	.BYTE	$be,$de,$e0,$c0,$a0,$60,$e0,$f0,$f0,$f0,$f0,$e0,$e0,$60,$00,$60 ; |.....`.......`.`|
	.BYTE	$f0,$f0,$f0,$f0,$70,$60,$60,$60,$00,$70,$7c,$00,$00,$00,$00,$00 ; |....p```.p|.....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$03,$01,$00,$00,$01,$01,$01,$00 ; |................|
	.BYTE	$00,$00,$01,$02,$0c,$21,$73,$fb,$ff,$ff,$0f,$0f,$0f,$07,$07,$03 ; |.....!s.........|
	.BYTE	$03,$01,$00,$00,$00,$00,$00,$00,$02,$01,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$01,$03,$03,$03,$03,$03,$03,$07,$01,$01,$01,$03,$07,$06,$0d ; |................|
	.BYTE	$03,$1f,$6f,$e7,$74,$37,$07,$07,$07,$03,$03,$01,$00,$02,$03,$03 ; |..o.t7..........|
	.BYTE	$03,$03,$03,$03,$01,$06,$07,$07,$07,$03,$03,$03,$03,$03,$00,$03 ; |................|
	.BYTE	$07,$0e,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$80,$00,$00,$00,$40,$e0,$80,$20,$48,$90,$20,$60,$f0,$f8,$f8,$f8 ; |....@.. H. `....|
	.BYTE	$f8,$f8,$f8,$f8,$f8,$f8,$f0,$f0,$e0,$c0,$80,$80,$c0,$00,$20,$04 ; |.............. .|
	.BYTE	$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0,$e0,$e0,$e0,$e0,$e0,$e1 ; |................|
	.BYTE	$f3,$e6,$ec,$d8,$b4,$6c,$dc,$dc,$ee,$76,$76,$76,$14,$74,$70,$70 ; |.....l...vvv.tpp|
	.BYTE	$70,$60,$e8,$c8,$98,$38,$78,$7c,$3c,$bc,$9c,$98,$00,$18,$3c,$3c ; |p`...8x|<.....<<|
	.BYTE	$3c,$38,$18,$18,$18,$18,$18,$00,$18,$1c,$1e,$00,$00,$00,$00,$00 ; |<8..............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$07,$02,$00,$00,$02,$03,$03,$00 ; |................|
	.BYTE	$00,$08,$05,$07,$07,$07,$ff,$77,$77,$77,$27,$27,$07,$07,$07,$03 ; |.......www''....|
	.BYTE	$03,$01,$01,$01,$01,$00,$00,$00,$04,$02,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$20,$20,$20,$20 ; |...........     |
	.BYTE	$20,$23,$27,$27,$27,$27,$27,$27,$2f,$23,$23,$23,$27,$27,$2a,$29 ; | #''''''/###''*)|
	.BYTE	$2b,$2f,$07,$77,$74,$77,$07,$07,$07,$03,$03,$05,$04,$06,$06,$06 ; |+/.wtw..........|
	.BYTE	$06,$07,$07,$07,$02,$0c,$0e,$0e,$0e,$06,$06,$06,$00,$06,$0c,$1c ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$80,$c0,$00,$30,$48,$40,$e0,$e0,$f0,$f8,$f8,$f8 ; |.......0H@......|
	.BYTE	$f8,$f8,$f8,$f8,$f8,$f0,$f0,$f0,$e0,$c0,$00,$00,$80,$00,$40,$08 ; |..............@.|
	.BYTE	$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$00,$00,$00,$00 ; |0..........0....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$c0,$c0,$c0,$c0,$c0,$c0 ; |................|
	.BYTE	$e0,$c0,$e0,$c0,$b0,$b8,$18,$d8,$ec,$74,$74,$74,$10,$70,$70,$70 ; |.........ttt.ppp|
	.BYTE	$70,$60,$e0,$c0,$90,$30,$f0,$f8,$78,$78,$38,$30,$00,$30,$78,$78 ; |p`...0..xx80.0xx|
	.BYTE	$78,$70,$30,$30,$30,$30,$30,$00,$30,$38,$1c,$00,$10,$08,$3a,$04 ; |xp00000.08....:.|
	.BYTE	$00,$00,$40,$04,$00,$5a,$01,$14,$02,$3c,$40,$08,$00,$00,$00,$00 ; |..@..Z...<@.....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$0f,$1f,$3d,$1f ; |..............=.|
	.BYTE	$0f,$06,$0f,$0f,$0f,$07,$07,$03,$02,$02,$00,$00,$e0,$e0,$e0,$67 ; |...............g|
	.BYTE	$47,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |G...............|
	.BYTE	$00,$00,$00,$00,$00,$0e,$0c,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$07,$0c,$18,$3a,$18,$0c,$05,$0e,$0f ; |..........:.....|
	.BYTE	$1f,$1f,$3f,$3f,$7f,$7f,$7f,$f7,$17,$37,$77,$f7,$f7,$ef,$6f,$0f ; |..??.....7w...o.|
	.BYTE	$0f,$0f,$0f,$0f,$0f,$1f,$1f,$1f,$1f,$1f,$1f,$3f,$3f,$3f,$3f,$3f ; |...........?????|
	.BYTE	$3f,$0e,$0c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |?...............|
	.BYTE	$00,$00,$00,$c0,$e0,$f0,$78,$f0,$e0,$c0,$e0,$e0,$e0,$c0,$c0,$80 ; |......x.........|
	.BYTE	$80,$80,$00,$00,$0e,$0e,$0e,$cc,$c4,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$60,$00 ; |..............`.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0 ; |................|
	.BYTE	$60,$30,$b8,$30,$60,$40,$e0,$e0,$f0,$f0,$f8,$f8,$fc,$fc,$fc,$de ; |`0.0`@..........|
	.BYTE	$d0,$d8,$dc,$de,$de,$ee,$ec,$e0,$e0,$e0,$e0,$e0,$f0,$f0,$f0,$f0 ; |................|
	.BYTE	$f0,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$e0,$60,$00,$00,$00,$00,$00 ; |..........`.....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$0f,$1f,$3d,$1f ; |..............=.|
	.BYTE	$0f,$06,$0f,$cf,$cf,$c7,$e7,$e3,$02,$02,$00,$00,$00,$00,$00,$07 ; |................|
	.BYTE	$07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$0e,$0c,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$07,$0c,$18,$3a,$18,$0c,$05,$0e,$0f ; |..........:.....|
	.BYTE	$1f,$1f,$1f,$1f,$ff,$ff,$ff,$f7,$f7,$f7,$e7,$67,$07,$0f,$0f,$0f ; |...........g....|
	.BYTE	$0f,$0f,$0f,$0f,$0f,$1f,$1f,$1f,$1f,$1f,$1f,$3f,$3f,$3f,$3f,$3f ; |...........?????|
	.BYTE	$3f,$0e,$0c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |?...............|
	.BYTE	$00,$00,$00,$c0,$e0,$f0,$78,$f0,$e0,$c0,$e0,$e6,$e6,$c6,$ce,$8e ; |......x.........|
	.BYTE	$80,$80,$00,$00,$00,$00,$00,$c0,$c0,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$60,$00 ; |..............`.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0 ; |................|
	.BYTE	$60,$30,$b8,$30,$60,$40,$e0,$e0,$f0,$f0,$f0,$f0,$fe,$fe,$fe,$de ; |`0.0`@..........|
	.BYTE	$de,$de,$ce,$cc,$c0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$f0,$f0,$f0,$f0 ; |................|
	.BYTE	$f0,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$e0,$60,$00,$00,$00,$00,$00 ; |..........`.....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0,$c0,$c7,$ef,$ff,$1d,$1f ; |................|
	.BYTE	$0f,$06,$0f,$0f,$0f,$07,$07,$03,$02,$02,$00,$00,$00,$00,$00,$07 ; |................|
	.BYTE	$07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$0e,$0c,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$07,$0c,$18,$fa,$f8,$ec,$e5,$7e,$7f ; |..............~.|
	.BYTE	$7f,$3f,$3f,$1f,$1f,$0f,$07,$07,$07,$07,$07,$07,$07,$0f,$0f,$0f ; |.??.............|
	.BYTE	$0f,$0f,$0f,$0f,$0f,$1f,$1f,$1f,$1f,$1f,$1f,$3f,$3f,$3f,$3f,$3f ; |...........?????|
	.BYTE	$3f,$0e,$0c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |?...............|
	.BYTE	$00,$06,$06,$c6,$ee,$fe,$70,$f0,$e0,$c0,$e0,$e0,$e0,$c0,$c0,$80 ; |......p.........|
	.BYTE	$80,$80,$00,$00,$00,$00,$00,$c0,$c0,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$60,$00 ; |..............`.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0 ; |................|
	.BYTE	$60,$30,$be,$3e,$6e,$4e,$fc,$fc,$fc,$f8,$f8,$f0,$f0,$e0,$c0,$c0 ; |`0.>nN..........|
	.BYTE	$c0,$c0,$c0,$c0,$c0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$f0,$f0,$f0,$f0 ; |................|
	.BYTE	$f0,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$e0,$60,$00,$0a,$04,$34,$fa ; |..........`...4.|
	.BYTE	$00,$90,$01,$90,$40,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |....@...........|
	.BYTE	$00,$00,$00,$00,$00,$1c,$02,$3e,$02,$10,$00,$00,$00,$62,$66,$76 ; |.......>.....bfv|
	.BYTE	$76,$6e,$6c,$7c,$78,$30,$80,$88,$f8,$f8,$f8,$f8,$f8,$fc,$fc,$ee ; |vnl|x0..........|
	.BYTE	$66,$77,$33,$33,$71,$71,$03,$03,$03,$03,$00,$00,$00,$00,$00,$00 ; |fw33qq..........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$3c,$14,$3c,$3c,$3c,$38,$18,$7e,$ff,$ff,$ff,$ff,$ff,$fe ; |..<.<<<8.~......|
	.BYTE	$fe,$fc,$f8,$f8,$f8,$f8,$f8,$38,$00,$00,$00,$00,$00,$00,$00,$00 ; |.......8........|
	.BYTE	$00,$00,$20,$60,$60,$40,$42,$42,$c2,$c6,$46,$63,$31,$00,$00,$00 ; |.. ``@BB..Fc1...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$0e,$18,$12,$30,$20,$20,$20,$00,$60,$63,$76 ; |........0   .`cv|
	.BYTE	$76,$76,$6e,$3c,$bc,$9c,$c8,$e0,$f0,$f8,$f8,$f8,$f8,$fc,$fc,$ee ; |vvn<............|
	.BYTE	$66,$77,$33,$33,$71,$71,$03,$03,$03,$03,$00,$00,$00,$00,$00,$00 ; |fw33qq..........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$06,$0e,$0e,$1c,$1c,$1c,$18,$78,$ff,$ff,$ff,$ff,$ff,$fd ; |.........x......|
	.BYTE	$fd,$ff,$fa,$fe,$fe,$f8,$f8,$38,$00,$00,$00,$00,$00,$00,$00,$00 ; |.......8........|
	.BYTE	$00,$00,$20,$60,$60,$40,$42,$42,$c2,$c6,$46,$63,$31,$00,$00,$00 ; |.. ``@BB..Fc1...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$80,$00,$08,$04,$52,$28,$00,$00,$40,$04,$00,$00 ; |........R(..@...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$0f,$0f,$0e,$18,$16,$10,$13 ; |................|
	.BYTE	$00,$00,$30,$18,$3c,$7f,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$7f ; |..0.<...........|
	.BYTE	$7f,$71,$71,$7f,$7f,$7f,$3b,$39,$3d,$3d,$1c,$1c,$1c,$18,$38,$38 ; |.qq...;9==....88|
	.BYTE	$30,$30,$30,$70,$71,$31,$38,$0c,$00,$00,$00,$00,$00,$00,$00,$00 ; |000pq18.........|
	.BYTE	$00,$00,$00,$0b,$0f,$00,$0f,$0f,$1f,$1b,$1f,$1c,$0f,$07,$37,$1f ; |..............7.|
	.BYTE	$0f,$67,$e3,$e0,$e3,$c0,$c0,$c3,$c0,$e0,$e6,$70,$38,$1e,$0e,$00 ; |.g.........p8...|
	.BYTE	$7f,$7f,$3b,$39,$39,$3d,$1c,$1c,$18,$18,$38,$30,$30,$30,$20,$30 ; |..;99=....8000 0|
	.BYTE	$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |0...............|
	.BYTE	$00,$c4,$c4,$44,$66,$e6,$26,$26,$06,$06,$06,$66,$c6,$e6,$e6,$e6 ; |...Df.&&...f....|
	.BYTE	$e6,$f6,$f6,$b6,$b6,$b4,$3c,$10,$00,$8c,$80,$80,$80,$80,$c0,$c0 ; |......<.........|
	.BYTE	$c0,$e0,$e0,$e0,$60,$60,$e0,$e0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$e0 ; |....``..........|
	.BYTE	$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$c0,$04,$c4,$c4 ; |0..........@....|
	.BYTE	$e6,$66,$e6,$e6,$c6,$86,$06,$66,$c6,$86,$26,$66,$66,$66,$76,$26 ; |.f.....f..&fffv&|
	.BYTE	$36,$24,$38,$1c,$0c,$00,$00,$00,$80,$80,$80,$c0,$c0,$c0,$e0,$e0 ; |6$8.............|
	.BYTE	$40,$60,$e0,$c0,$c0,$c0,$80,$c0,$c0,$c0,$00,$00,$00,$00,$0a,$04 ; |@`..............|
	.BYTE	$e6,$28,$00,$58,$01,$58,$40,$04,$00,$01,$02,$0d,$05,$08,$35,$04 ; |.(.X.X@.......5.|
	.BYTE	$02,$03,$24,$28,$14,$1c,$0f,$0f,$07,$07,$07,$03,$03,$03,$1f,$1f ; |..$(............|
	.BYTE	$3f,$3f,$77,$67,$e7,$c7,$c7,$c7,$c7,$c7,$c7,$e7,$6b,$5d,$6b,$77 ; |??wg........k]kw|
	.BYTE	$3f,$1f,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07 ; |?...............|
	.BYTE	$07,$0d,$1d,$39,$00,$02,$0d,$12,$1a,$37,$0a,$3b,$3d,$3c,$1b,$17 ; |...9.....7.;=<..|
	.BYTE	$0b,$03,$08,$01,$00,$00,$00,$00,$01,$00,$1c,$0e,$0e,$07,$06,$06 ; |................|
	.BYTE	$06,$06,$06,$07,$07,$07,$07,$0f,$1f,$3f,$1d,$09,$03,$07,$06,$06 ; |.........?......|
	.BYTE	$06,$07,$07,$06,$07,$07,$05,$06,$05,$05,$07,$07,$07,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$10,$20,$20,$cc,$30,$20,$60,$c0,$24,$24,$1c,$78,$f0,$f0 ; |...  .0 `.$$.x..|
	.BYTE	$e0,$e0,$e0,$c0,$c0,$c0,$f8,$f8,$f8,$fc,$fc,$ec,$ee,$e6,$e6,$e7 ; |................|
	.BYTE	$e3,$e3,$e3,$e3,$e3,$e3,$e3,$e3,$e7,$e7,$f5,$f5,$f1,$e0,$e0,$e0 ; |................|
	.BYTE	$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$b0,$b8,$9c,$00,$c0,$e0,$d8 ; |................|
	.BYTE	$dc,$30,$cc,$dc,$9c,$3c,$d8,$d8,$e0,$80,$20,$00,$00,$00,$00,$00 ; |.0...<.... .....|
	.BYTE	$80,$00,$38,$70,$70,$e0,$60,$60,$60,$60,$20,$20,$20,$20,$20,$00 ; |..8pp.````     .|
	.BYTE	$80,$80,$80,$80,$80,$00,$00,$a0,$a0,$e0,$e0,$e0,$60,$40,$40,$a0 ; |............`@@.|
	.BYTE	$40,$60,$60,$a0,$e0,$00,$00,$00,$00,$01,$02,$0d,$05,$08,$35,$04 ; |@``...........5.|
	.BYTE	$02,$03,$24,$28,$14,$1c,$0f,$0f,$07,$07,$07,$03,$03,$03,$1f,$1f ; |..$(............|
	.BYTE	$3f,$3f,$77,$67,$e7,$c7,$c7,$c7,$c7,$c7,$e7,$67,$67,$67,$67,$57 ; |??wg.......ggggW|
	.BYTE	$2f,$57,$6f,$37,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07 ; |/Wo7............|
	.BYTE	$07,$0d,$1d,$39,$00,$02,$0d,$12,$1a,$37,$0a,$3b,$3d,$3c,$1b,$17 ; |...9.....7.;=<..|
	.BYTE	$0b,$03,$08,$01,$00,$00,$00,$00,$01,$00,$1c,$0e,$0e,$07,$06,$06 ; |................|
	.BYTE	$06,$04,$04,$04,$04,$04,$04,$04,$06,$06,$16,$2e,$47,$2f,$16,$06 ; |............G/..|
	.BYTE	$07,$07,$07,$06,$07,$07,$05,$06,$05,$05,$07,$07,$07,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$10,$20,$20,$cc,$30,$20,$60,$c0,$24,$24,$1c,$78,$f0,$f0 ; |...  .0 `.$$.x..|
	.BYTE	$e0,$e0,$e0,$c0,$c0,$c0,$f8,$f8,$f8,$fc,$fc,$ec,$ee,$e6,$e6,$e6 ; |................|
	.BYTE	$ee,$ec,$ec,$ec,$fc,$f8,$f8,$f0,$e0,$e0,$e0,$f0,$e0,$e0,$e0,$e0 ; |................|
	.BYTE	$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$b0,$b8,$9c,$00,$c0,$e0,$d8 ; |................|
	.BYTE	$dc,$30,$cc,$dc,$9c,$3c,$d8,$d8,$e0,$80,$20,$00,$00,$00,$00,$00 ; |.0...<.... .....|
	.BYTE	$80,$00,$38,$70,$70,$e0,$60,$60,$60,$60,$e0,$e0,$e0,$40,$00,$20 ; |..8pp.````...@. |
	.BYTE	$60,$20,$00,$00,$20,$00,$00,$40,$20,$e0,$e0,$e0,$60,$40,$40,$a0 ; |` .. ..@ ...`@@.|
	.BYTE	$40,$60,$60,$a0,$e0,$00,$00,$00,$10,$04,$0a,$07,$00,$20,$01,$10 ; |@``.......... ..|
	.BYTE	$02,$10,$03,$10,$04,$10,$40,$04,$00,$00,$00,$00,$00,$00,$00,$00 ; |......@.........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$03,$00,$00,$07,$07,$00,$0f,$1f,$00,$0d,$0d,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$1f,$3f,$00,$00,$3f,$7f,$00,$00,$00 ; |........?..?....|
	.BYTE	$39,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |9...............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$03 ; |................|
	.BYTE	$03,$07,$00,$0f,$0f,$00,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f ; |................|
	.BYTE	$1f,$1f,$1f,$1f,$00,$3f,$3f,$3f,$00,$7f,$7f,$7f,$39,$39,$10,$00 ; |.....???....99..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$c0,$80,$80,$e0,$f0,$40 ; |...............@|
	.BYTE	$f0,$f8,$20,$a8,$a8,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$f8 ; |.. ..          .|
	.BYTE	$fc,$10,$10,$fc,$fe,$08,$08,$08,$ce,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$40,$a0,$80,$80,$00,$40,$40,$e0,$00,$b0,$f0,$00,$d8,$d8 ; |..@....@@.......|
	.BYTE	$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$f8,$00,$ec,$ec,$fc ; |................|
	.BYTE	$00,$f6,$f6,$f6,$ce,$ce,$84,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$02 ; |................|
	.BYTE	$00,$00,$e3,$fc,$c0,$07,$0f,$00,$0f,$1f,$00,$0d,$0d,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$1f,$3f,$00,$00,$3f,$7f,$00,$00,$00 ; |........?..?....|
	.BYTE	$39,$00,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |9...............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$c3 ; |................|
	.BYTE	$ff,$e7,$00,$0f,$0f,$00,$1f,$13,$13,$1f,$1f,$1f,$1f,$1f,$1f,$1f ; |................|
	.BYTE	$1f,$1f,$1f,$1f,$00,$3f,$3f,$3f,$00,$7f,$7f,$7f,$39,$39,$00,$00 ; |.....???....99..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$20,$00,$20,$00,$00,$c0,$80,$80,$e0,$f0,$40 ; |..... . .......@|
	.BYTE	$f0,$f8,$20,$a8,$a8,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$f8 ; |.. ..          .|
	.BYTE	$fc,$10,$10,$fc,$fe,$08,$08,$08,$ce,$00,$84,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$a0,$40,$a0,$80,$80,$00,$40,$40,$e0,$00,$b0,$f0,$00,$d8,$d0 ; |..@....@@.......|
	.BYTE	$d0,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$f8,$00,$ec,$ec,$fc ; |................|
	.BYTE	$00,$f6,$f6,$f6,$ce,$ce,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$03,$01,$0e,$0c,$0d,$00,$0f,$1f,$00,$0d,$0d,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$1f,$3f,$00,$00,$3f,$7f,$00,$00,$00 ; |........?..?....|
	.BYTE	$39,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |9...............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$02 ; |................|
	.BYTE	$01,$0f,$0e,$0f,$0f,$00,$1f,$1e,$1e,$1f,$1f,$1f,$1f,$1f,$1f,$1f ; |................|
	.BYTE	$1f,$1f,$1f,$1f,$00,$3f,$3f,$3f,$00,$7f,$7f,$7f,$39,$39,$10,$00 ; |.....???....99..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$c0,$80,$80,$e0,$f0,$40 ; |...............@|
	.BYTE	$f0,$f8,$20,$a8,$a8,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$f8 ; |.. ..          .|
	.BYTE	$fc,$10,$10,$fc,$fe,$08,$08,$08,$ce,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$40,$20,$80,$80,$00,$40,$40,$e0,$00,$b0,$f0,$00,$d8,$58 ; |..@ ...@@......X|
	.BYTE	$58,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$f8,$00,$ec,$ec,$fc ; |X...............|
	.BYTE	$00,$f6,$f6,$f6,$ce,$ce,$84,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02 ; |................|
	.BYTE	$00,$00,$03,$00,$00,$07,$0f,$00,$0f,$1f,$00,$0d,$0d,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$1f,$3f,$00,$00,$3f,$7f,$00,$00,$00 ; |........?..?....|
	.BYTE	$39,$00,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |9...............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$03 ; |................|
	.BYTE	$03,$07,$00,$0f,$0f,$00,$1f,$13,$13,$1f,$1f,$1f,$1f,$1f,$1f,$1f ; |................|
	.BYTE	$1f,$1f,$1f,$1f,$00,$3f,$3f,$3f,$00,$7f,$7f,$7f,$39,$39,$00,$00 ; |.....???....99..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$20,$00,$00,$c0,$80,$70,$30,$b0,$00 ; |....... ....p0..|
	.BYTE	$f0,$f8,$20,$a8,$a8,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$f8 ; |.. ..          .|
	.BYTE	$fc,$10,$10,$fc,$fe,$08,$08,$08,$ce,$00,$84,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$40,$80,$80,$80,$00,$40,$80,$f0,$70,$f0,$f0,$00,$d8,$d0 ; |..@....@..p.....|
	.BYTE	$d0,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$f8,$00,$ec,$ec,$fc ; |................|
	.BYTE	$00,$f6,$f6,$f6,$ce,$ce,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$03,$00,$00,$07,$0f,$00,$0f,$1f,$00,$0d,$0d,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$1f,$3f,$00,$00,$3f,$7f,$00,$00,$00 ; |........?..?....|
	.BYTE	$39,$00,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |9...............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$03 ; |................|
	.BYTE	$03,$07,$00,$0f,$0f,$00,$1f,$1e,$1e,$1f,$1f,$1f,$1f,$1f,$1f,$1f ; |................|
	.BYTE	$1f,$1f,$1f,$1f,$00,$3f,$3f,$3f,$00,$7f,$7f,$7f,$39,$39,$10,$00 ; |.....???....99..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$c7,$bf,$83,$e0,$f0,$40 ; |...............@|
	.BYTE	$f0,$f8,$20,$a8,$a8,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$f8 ; |.. ..          .|
	.BYTE	$fc,$10,$10,$fc,$fe,$08,$08,$08,$ce,$00,$84,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$40,$a0,$80,$80,$00,$43,$7f,$e7,$00,$b0,$f0,$00,$d8,$58 ; |..@....C.......X|
	.BYTE	$58,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$d8,$f8,$00,$ec,$ec,$fc ; |X...............|
	.BYTE	$00,$f6,$f6,$f6,$ce,$ce,$84,$00,$08,$04,$b6,$3a,$00,$00,$40,$04 ; |...........:..@.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$01,$01,$01,$02,$03,$02,$02,$03,$01,$03,$03,$0f,$1f,$3f,$3f,$3f ; |.............???|
	.BYTE	$3f,$1f,$1f,$0f,$0f,$0f,$03,$03,$07,$07,$07,$07,$07,$07,$07,$07 ; |?...............|
	.BYTE	$07,$0f,$0f,$0f,$0f,$0f,$1f,$1f,$1f,$1c,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$03 ; |................|
	.BYTE	$02,$03,$03,$03,$01,$03,$03,$0f,$1f,$3f,$33,$39,$38,$1c,$1e,$0e ; |.........?398...|
	.BYTE	$0e,$0e,$02,$02,$04,$07,$07,$07,$07,$07,$07,$07,$07,$0f,$0f,$0f ; |................|
	.BYTE	$0f,$0f,$1f,$1f,$1f,$1f,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$c0,$e0,$f0,$f8,$38,$58,$1c,$1c,$24 ; |...........8X..$|
	.BYTE	$e0,$f0,$f8,$fe,$ff,$ff,$3f,$3f,$3f,$3e,$3e,$3e,$3c,$f8,$f8,$f8 ; |......???>>><...|
	.BYTE	$f8,$f8,$f8,$f8,$f8,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fe ; |................|
	.BYTE	$fe,$e6,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$c0,$e0,$f0,$f8,$f8,$b8,$fc,$fc,$e4,$e0,$f0,$f8,$fe ; |................|
	.BYTE	$e7,$f3,$f3,$e7,$ef,$de,$de,$de,$dc,$d8,$d8,$d0,$e8,$f8,$f8,$f8 ; |................|
	.BYTE	$f8,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fe,$fe,$fe,$b8,$00 ; |................|
	.BYTE	$10,$08,$82,$59,$00,$00,$40,$04,$00,$b4,$01,$28,$02,$40,$40,$08 ; |...Y..@....(.@@.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$01,$01,$03,$03,$06,$05,$04,$05,$06 ; |................|
	.BYTE	$03,$03,$03,$07,$07,$07,$0f,$0f,$0f,$1f,$1f,$1f,$1f,$1f,$1f,$1f ; |................|
	.BYTE	$1e,$1e,$1e,$0f,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$0f,$0f ; |................|
	.BYTE	$0f,$0f,$0f,$0f,$0f,$1f,$1f,$1f,$1f,$1f,$0f,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$01,$00,$01,$02,$07,$07,$07,$03,$03,$03,$03 ; |................|
	.BYTE	$01,$01,$01,$01,$01,$00,$00,$04,$04,$04,$04,$02,$01,$01,$01,$01 ; |................|
	.BYTE	$01,$05,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$18,$38,$70,$f0,$f0,$e0 ; |...........8p...|
	.BYTE	$e0,$e0,$e0,$30,$50,$10,$d0,$30,$60,$e0,$e0,$f0,$f0,$f0,$f8,$f8 ; |...0P..0`.......|
	.BYTE	$f8,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$3c,$3c,$3c,$f8,$f0,$f0,$f0,$f0 ; |........<<<.....|
	.BYTE	$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$fc ; |................|
	.BYTE	$fc,$fc,$fe,$00,$00,$04,$00,$10,$00,$20,$00,$80,$00,$40,$00,$c0 ; |......... ...@..|
	.BYTE	$a0,$f0,$f0,$f0,$e0,$e0,$e0,$e0,$e0,$e0,$c0,$c0,$c0,$c0,$80,$90 ; |................|
	.BYTE	$90,$90,$90,$20,$c0,$c0,$c0,$40,$40,$50,$20,$00,$00,$00,$00,$00 ; |... ...@@P .....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$01,$01,$03,$03,$06,$05,$04,$05,$06 ; |................|
	.BYTE	$03,$03,$1b,$1f,$1f,$1f,$07,$07,$07,$3f,$3f,$3f,$37,$37,$37,$27 ; |.........???777'|
	.BYTE	$27,$07,$07,$07,$07,$07,$07,$07,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f ; |'...............|
	.BYTE	$0f,$1f,$1f,$1f,$1f,$1f,$3f,$3f,$3f,$3f,$1f,$00,$00,$00,$00,$00 ; |......????......|
	.BYTE	$00,$00,$00,$00,$00,$01,$00,$01,$02,$07,$07,$07,$03,$03,$03,$03 ; |................|
	.BYTE	$01,$01,$39,$39,$39,$08,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |..999...........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$18,$38,$70,$f0,$f0,$e0 ; |...........8p...|
	.BYTE	$e0,$e0,$e0,$30,$50,$10,$d0,$30,$60,$e0,$ec,$fc,$fc,$fc,$f0,$f0 ; |...0P..0`.......|
	.BYTE	$f0,$fe,$fe,$fe,$f6,$f6,$f6,$f2,$f2,$f0,$f0,$f0,$f0,$f0,$f0,$f0 ; |................|
	.BYTE	$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$fc,$fc,$fc,$fc,$fc,$fe ; |................|
	.BYTE	$fe,$fe,$ff,$00,$00,$04,$00,$10,$00,$20,$00,$80,$00,$40,$00,$c0 ; |......... ...@..|
	.BYTE	$a0,$f0,$f0,$f0,$e0,$e0,$e0,$e0,$e0,$e0,$ce,$ce,$ce,$c8,$88,$80 ; |................|
	.BYTE	$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$01,$01,$01,$01,$03,$03,$03,$03,$06,$05,$f4,$65,$f6 ; |..............e.|
	.BYTE	$73,$fb,$7b,$3f,$7f,$3f,$3f,$3f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f ; |s.{?.???........|
	.BYTE	$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f ; |................|
	.BYTE	$1f,$1f,$1f,$1f,$1f,$1f,$1f,$3f,$3f,$3f,$3f,$00,$00,$00,$00,$00 ; |.......????.....|
	.BYTE	$00,$30,$78,$78,$78,$69,$60,$61,$62,$07,$07,$07,$03,$03,$03,$03 ; |.0xxxi`ab.......|
	.BYTE	$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$c0,$c0,$c0,$c0,$e0 ; |................|
	.BYTE	$e0,$e0,$e0,$30,$50,$17,$d3,$37,$67,$ef,$ef,$fe,$ff,$fe,$fe,$fe ; |...0P..7g.......|
	.BYTE	$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8 ; |................|
	.BYTE	$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fe ; |................|
	.BYTE	$fe,$fe,$ff,$00,$80,$00,$00,$00,$80,$06,$0f,$8f,$0f,$4b,$03,$c3 ; |.............K..|
	.BYTE	$a3,$f0,$f0,$f0,$e0,$e0,$e0,$e0,$e0,$e0,$c0,$c0,$c0,$c0,$80,$80 ; |................|
	.BYTE	$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$08,$04,$28,$53,$00,$00,$40,$04,$28,$48,$48,$48,$68,$6b,$37,$34 ; |..(S..@.(HHHhk74|
	.BYTE	$15,$06,$0a,$0a,$0b,$0b,$6b,$79,$78,$68,$e8,$ed,$fc,$fc,$fc,$f8 ; |......kyxh......|
	.BYTE	$f8,$e8,$09,$08,$08,$08,$08,$08,$08,$08,$09,$07,$07,$07,$07,$07 ; |................|
	.BYTE	$07,$07,$06,$06,$06,$06,$06,$06,$06,$07,$07,$07,$07,$07,$07,$17 ; |................|
	.BYTE	$37,$77,$76,$00,$00,$00,$00,$00,$00,$00,$0b,$0f,$0f,$0f,$03,$37 ; |7wv............7|
	.BYTE	$76,$76,$17,$47,$67,$77,$f7,$fe,$ff,$ff,$ff,$f7,$f7,$e7,$06,$07 ; |vv.Ggw..........|
	.BYTE	$07,$07,$07,$17,$17,$17,$16,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; |................|
	.BYTE	$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$3c,$7e,$7e,$00 ; |............<~~.|
	.BYTE	$02,$01,$01,$81,$83,$e3,$fe,$9e,$dc,$38,$20,$20,$e0,$e0,$e6,$ce ; |.........8  ....|
	.BYTE	$0e,$06,$86,$c7,$87,$03,$03,$03,$03,$83,$c3,$83,$07,$07,$07,$06 ; |................|
	.BYTE	$16,$76,$f6,$f0,$f0,$f8,$f8,$f8,$78,$78,$38,$38,$38,$38,$38,$38 ; |.v......xx888888|
	.BYTE	$38,$78,$78,$70,$70,$78,$78,$7c,$7c,$7f,$3f,$00,$00,$00,$00,$00 ; |8xxppxx||.?.....|
	.BYTE	$00,$00,$e0,$f0,$f0,$f0,$e0,$fc,$be,$3e,$f8,$f2,$f6,$fe,$7e,$3f ; |.........>....~?|
	.BYTE	$7f,$fb,$fb,$fb,$fb,$7b,$3b,$7b,$ff,$ff,$ff,$fe,$ee,$8e,$06,$00 ; |.....{;{........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$0c,$3f,$3f,$00,$12,$08,$4c,$24,$02,$00,$40,$04 ; |.....??...L$..@.|
	.BYTE	$00,$10,$01,$0c,$02,$12,$01,$0c,$40,$08,$00,$00,$00,$00,$00,$00 ; |........@.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$10,$38,$39,$7b,$72,$60,$c1,$81,$81,$00,$00,$30,$70,$70,$62 ; |..89{r`.....0ppb|
	.BYTE	$6d,$6e,$6e,$7e,$7e,$7a,$32,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |mnn~~z2.........|
	.BYTE	$03,$01,$01,$03,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$38,$39 ; |..............89|
	.BYTE	$7b,$73,$73,$f6,$b6,$b6,$37,$33,$03,$07,$03,$17,$7f,$7f,$7f,$7f ; |{ss...73........|
	.BYTE	$7f,$7b,$33,$03,$03,$07,$07,$07,$07,$07,$07,$03,$03,$01,$01,$03 ; |.{3.............|
	.BYTE	$07,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$f0,$f8,$0c,$e4,$f0 ; |................|
	.BYTE	$50,$f0,$40,$e0,$00,$00,$00,$08,$16,$ae,$ef,$ef,$ef,$eb,$eb,$0f ; |P.@.............|
	.BYTE	$1f,$1e,$00,$00,$00,$00,$00,$00,$b8,$b0,$b0,$b8,$3c,$00,$00,$00 ; |............<...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$f0,$f8,$fc,$1c,$0c,$ac,$0c,$bc,$18 ; |................|
	.BYTE	$f8,$fc,$f8,$fc,$fe,$fe,$ff,$ff,$ff,$fb,$fb,$f7,$e7,$e2,$fc,$bc ; |................|
	.BYTE	$3c,$3c,$bc,$b8,$b8,$b0,$b0,$b8,$3c,$00,$00,$00,$00,$00,$00,$00 ; |<<......<.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$03,$07,$04,$01,$03,$0e,$1f,$07,$07,$07,$03,$02,$00 ; |................|
	.BYTE	$18,$39,$79,$7f,$ff,$f9,$f1,$64,$04,$00,$00,$00,$00,$00,$00,$00 ; |.9y....d........|
	.BYTE	$0e,$06,$06,$0e,$1c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03 ; |................|
	.BYTE	$07,$07,$06,$0c,$1f,$1f,$0f,$07,$07,$0f,$07,$0f,$1f,$3f,$7f,$71 ; |.............?.q|
	.BYTE	$f1,$ff,$f7,$67,$07,$07,$0f,$0f,$1e,$1c,$1e,$0e,$0e,$06,$06,$0e ; |...g............|
	.BYTE	$1c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$f0,$18,$c8,$e0 ; |................|
	.BYTE	$a0,$e0,$80,$c0,$00,$00,$00,$10,$2c,$5c,$de,$de,$df,$d7,$d7,$0f ; |........,\......|
	.BYTE	$0e,$1e,$0c,$0c,$00,$00,$00,$00,$60,$60,$60,$70,$78,$00,$00,$00 ; |........```px...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$e0,$f0,$f8,$38,$18,$58,$18,$f8,$b0 ; |..........8.X...|
	.BYTE	$f0,$f8,$f0,$f8,$fc,$fc,$fe,$fe,$ff,$f7,$f7,$ff,$fe,$e6,$f0,$70 ; |...............p|
	.BYTE	$3c,$3c,$78,$70,$60,$60,$60,$70,$78,$00,$00,$00,$00,$00,$00,$00 ; |<<xp```px.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$03,$07,$04,$01,$03,$02,$03,$00,$01,$00,$00,$00,$04 ; |................|
	.BYTE	$0a,$1d,$3d,$3d,$7f,$7f,$39,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |..==..9.........|
	.BYTE	$07,$03,$03,$07,$0f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03 ; |................|
	.BYTE	$07,$07,$06,$0c,$0d,$0c,$0f,$06,$07,$0f,$07,$0f,$0f,$1f,$3f,$3f ; |..............??|
	.BYTE	$7c,$78,$3f,$0f,$07,$0f,$0f,$1f,$1e,$1e,$0f,$07,$07,$03,$03,$07 ; ||x?.............|
	.BYTE	$0f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$f0,$18,$c8,$e0 ; |................|
	.BYTE	$a0,$e0,$80,$c0,$00,$00,$00,$e0,$70,$7c,$ba,$1c,$5d,$db,$c7,$07 ; |........p|..]...|
	.BYTE	$07,$07,$07,$03,$00,$00,$00,$00,$38,$30,$30,$38,$1c,$00,$00,$00 ; |........8008....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$e0,$f0,$f8,$38,$18,$58,$18,$78,$30 ; |..........8.X.x0|
	.BYTE	$f0,$f8,$f0,$f0,$f8,$fc,$fe,$fe,$ff,$ff,$f7,$f7,$f7,$f7,$f8,$78 ; |...............x|
	.BYTE	$3c,$1c,$3c,$38,$38,$30,$30,$38,$1c,$00,$0e,$04,$c4,$c8,$00,$14 ; |<.<88008........|
	.BYTE	$01,$12,$02,$12,$03,$12,$40,$04,$00,$00,$00,$00,$00,$00,$00,$00 ; |......@.........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$07,$1f ; |................|
	.BYTE	$00,$00,$0c,$3f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |...?............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$3f,$ff,$0f,$3f ; |............?..?|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$e0,$f8,$10,$00,$78,$c0,$00,$00,$00,$00 ; |..........x.....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$40,$00,$e0,$ff,$f8,$c0,$00,$00,$00,$00,$00,$00,$00,$00 ; |..@.............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$0f ; |................|
	.BYTE	$38,$01,$0e,$3f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |8..?............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$0f,$3f,$ff,$0f,$3f ; |............?..?|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$e0,$f8,$10,$87,$38,$c0,$00,$00,$00,$00 ; |..........8.....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$e0,$f8,$f0,$ff,$f8,$c0,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01 ; |................|
	.BYTE	$02,$00,$0e,$3f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |...?............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$0f,$3f,$ff,$0f,$3f ; |............?..?|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$80,$40,$07,$38,$c0,$00,$00,$00,$00 ; |........@.8.....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$e0,$f8,$f0,$ff,$f8,$c0,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$02,$0f ; |................|
	.BYTE	$38,$ff,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |8...............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$02,$0f,$3f,$ff,$0f,$1f ; |............?...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$20,$00,$60,$f8,$10,$ff,$80,$00,$00,$00,$00,$00 ; |.... .`.........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$20,$00,$60,$f8,$f0,$ff,$f8,$c0,$26,$04,$a4,$d2,$9a,$09,$00,$14 ; | .`.....&.......|
	.BYTE	$96,$0b,$01,$18,$99,$0d,$00,$14,$9c,$0b,$01,$18,$9d,$0a,$00,$14 ; |................|
	.BYTE	$a0,$09,$01,$18,$9f,$0b,$00,$14,$9d,$0c,$01,$18,$40,$04,$00,$00 ; |............@...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$e0,$7c,$3f,$1f,$0f ; |............|?..|
	.BYTE	$03,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$80,$60,$1c,$03,$06,$00,$00,$00,$00,$02,$00 ; |......`.........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$01,$0f,$7e,$fc,$f8,$e0,$80,$80,$00,$00,$00,$00,$00,$00 ; |....~...........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$0e,$70 ; |...............p|
	.BYTE	$80,$c0,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$33,$7f,$ff,$c7 ; |............3...|
	.BYTE	$82,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$33,$4c,$86,$00,$00,$00,$02,$00,$00 ; |.......3L.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$98,$fc,$fe,$c6,$82,$02,$02,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$98 ; |................|
	.BYTE	$64,$c2,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |d...............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$26,$04 ; |..............&.|
	.BYTE	$ea,$35,$9a,$09,$00,$14,$96,$0b,$01,$18,$99,$0d,$00,$14,$9c,$0b ; |.5..............|
	.BYTE	$01,$18,$9d,$0a,$00,$14,$a0,$09,$01,$18,$9f,$0b,$00,$14,$9d,$0c ; |................|
	.BYTE	$01,$18,$40,$04,$00,$80,$40,$e0,$40,$e0,$40,$e0,$40,$e0,$40,$e0 ; |..@...@.@.@.@.@.|
	.BYTE	$40,$e0,$43,$e2,$43,$e3,$41,$e0,$41,$e1,$41,$70,$39,$7c,$3d,$1f ; |@.C.C.A.A.Ap9|=.|
	.BYTE	$0f,$07,$0e,$02,$00,$02,$06,$04,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$60,$f0,$78,$f8,$78,$fc,$7c,$fc,$7c,$fc,$7c,$fc,$7c,$fd,$7f,$ff ; |`.x.x.|.|.|.|...|
	.BYTE	$7f,$ff,$7d,$fd,$7d,$ff,$7f,$7f,$3f,$7f,$3f,$1f,$0f,$07,$0e,$02 ; |..}.}...?.?.....|
	.BYTE	$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$07 ; |................|
	.BYTE	$02,$07,$02,$07,$02,$07,$02,$07,$02,$07,$c2,$47,$c2,$c7,$c2,$07 ; |...........G....|
	.BYTE	$82,$87,$82,$8e,$9c,$3e,$bc,$f8,$f0,$e0,$70,$40,$00,$40,$60,$20 ; |.....>....p@.@` |
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$06,$0f,$1e,$1f,$1e,$3f,$3e,$3f ; |.............?>?|
	.BYTE	$3e,$3f,$3e,$3f,$3e,$bf,$fe,$ff,$7e,$7f,$fe,$bf,$be,$ff,$fe,$fe ; |>?>?>...~.......|
	.BYTE	$fc,$fe,$fc,$f8,$f0,$e0,$70,$40,$40,$00,$00,$00,$00,$00,$00,$00 ; |......p@@.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$03,$00,$03,$03,$03,$03,$00,$01,$01,$01,$01,$07,$0f,$0f ; |................|
	.BYTE	$1b,$1a,$32,$10,$32,$16,$34,$10,$30,$18,$30,$18,$30,$18,$10,$1c ; |..2.2.4.0.0.0...|
	.BYTE	$18,$1c,$18,$1c,$18,$0c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$03,$03 ; |................|
	.BYTE	$02,$02,$03,$03,$01,$01,$01,$0f,$3f,$3f,$7f,$7f,$7b,$fa,$f2,$f2 ; |........??..{...|
	.BYTE	$f0,$f0,$f0,$f0,$f0,$f8,$f0,$f8,$f0,$f8,$70,$7c,$78,$3c,$38,$3c ; |..........p|x<8<|
	.BYTE	$18,$0c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0,$40,$c0,$c0,$c0,$80 ; |...........@....|
	.BYTE	$00,$80,$80,$80,$80,$e0,$f0,$f0,$d8,$58,$4c,$08,$4c,$68,$2c,$08 ; |.........XL.Lh,.|
	.BYTE	$0c,$18,$0c,$18,$0c,$18,$08,$38,$18,$38,$18,$38,$18,$30,$00,$00 ; |.......8.8.8.0..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$80,$c0,$c0,$c0,$c0,$c0,$80,$80,$80,$80,$f0 ; |................|
	.BYTE	$fc,$fc,$fe,$fe,$de,$5f,$4f,$4f,$0f,$0f,$0f,$0f,$0f,$1f,$0f,$1f ; |....._OO........|
	.BYTE	$0f,$1f,$0e,$3e,$1e,$3c,$1c,$3c,$18,$30,$00,$00,$00,$00,$00,$00 ; |...>.<.<.0......|
	.BYTE	$00,$00,$00,$00,$0e,$08,$28,$54,$00,$64,$40,$04,$01,$32,$00,$64 ; |......(T.d@..2.d|
	.BYTE	$40,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |@...............|
	.BYTE	$00,$00,$01,$20,$06,$0f,$1f,$1d,$1f,$3f,$3c,$3f,$1f,$0d,$0e,$47 ; |... .....?<?...G|
	.BYTE	$63,$61,$60,$e1,$e0,$e0,$e0,$a4,$a2,$01,$c1,$c1,$81,$00,$08,$08 ; |ca`.............|
	.BYTE	$08,$0c,$0c,$0c,$1c,$1a,$16,$1a,$1c,$1c,$1a,$16,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$11,$1b,$0f,$3f ; |...............?|
	.BYTE	$1f,$1c,$18,$1a,$18,$38,$3b,$38,$1c,$4e,$71,$78,$7c,$7e,$7f,$ff ; |.....8;8.Nqx|~..|
	.BYTE	$ef,$ef,$e7,$e7,$ef,$ef,$1f,$1f,$3f,$3f,$3f,$3f,$3f,$3f,$3f,$3f ; |........????????|
	.BYTE	$7f,$7f,$7f,$7f,$7f,$7f,$7f,$7f,$7f,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$c0,$e0,$f0,$70 ; |...............p|
	.BYTE	$f0,$f8,$78,$f8,$f0,$60,$e0,$c4,$8c,$0c,$0c,$0e,$0e,$0e,$0e,$4a ; |..x..`.........J|
	.BYTE	$8a,$00,$06,$06,$02,$00,$20,$20,$20,$60,$60,$60,$70,$b0,$d0,$b0 ; |......   ```p...|
	.BYTE	$70,$70,$b0,$d0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |pp..............|
	.BYTE	$00,$00,$00,$00,$10,$b0,$e0,$f8,$f0,$70,$30,$b0,$30,$38,$b8,$38 ; |.........p0.08.8|
	.BYTE	$70,$e4,$1c,$3c,$7c,$fc,$fc,$fe,$ee,$ee,$ce,$ce,$ee,$ee,$f0,$f0 ; |p..<|...........|
	.BYTE	$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc ; |................|
	.BYTE	$fc,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$01,$20,$06,$0f,$1f,$1d,$1f,$3f,$3e,$3e,$1f,$0d,$0e,$47 ; |... .....?>>...G|
	.BYTE	$63,$61,$e0,$b1,$10,$60,$40,$04,$02,$01,$01,$01,$01,$00,$08,$08 ; |ca...`@.........|
	.BYTE	$08,$0c,$0c,$0c,$1c,$1a,$16,$1a,$1c,$1c,$1a,$16,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$11,$1b,$0f,$3f ; |...............?|
	.BYTE	$1f,$1c,$18,$1a,$18,$38,$39,$39,$1c,$4e,$71,$78,$7c,$7e,$ff,$ff ; |.....899.Nqx|~..|
	.BYTE	$ff,$9f,$b7,$e7,$6f,$0f,$1f,$1f,$3f,$3f,$3f,$3f,$3f,$3f,$3f,$3f ; |....o...????????|
	.BYTE	$7f,$7f,$7f,$7f,$7f,$7f,$7f,$7f,$7f,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$c0,$e0,$f0,$70 ; |...............p|
	.BYTE	$f0,$f8,$f8,$f8,$f0,$60,$e0,$c4,$8c,$0c,$0e,$0e,$1a,$10,$0c,$44 ; |.....`.........D|
	.BYTE	$80,$00,$00,$00,$00,$00,$20,$20,$20,$60,$60,$60,$70,$b0,$d0,$b0 ; |......   ```p...|
	.BYTE	$70,$70,$b0,$d0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |pp..............|
	.BYTE	$00,$00,$00,$00,$10,$b0,$e0,$f8,$f0,$70,$30,$b0,$30,$38,$38,$38 ; |.........p0.0888|
	.BYTE	$70,$e4,$1c,$3c,$7c,$fc,$fe,$fe,$fe,$fe,$d2,$da,$ee,$ec,$f0,$f0 ; |p..<|...........|
	.BYTE	$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc ; |................|
	.BYTE	$fc,$00,$12,$04,$0c,$06,$00,$13,$9d,$0b,$01,$12,$02,$13,$9c,$0b ; |................|
	.BYTE	$03,$13,$40,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |..@.............|
	.BYTE	$00,$00,$00,$03,$0f,$3c,$60,$cf,$9f,$a1,$80,$c0,$b1,$5f,$60,$1c ; |.....<`......_`.|
	.BYTE	$07,$00,$0c,$07,$01,$04,$02,$03,$01,$00,$02,$03,$07,$0c,$09,$08 ; |................|
	.BYTE	$0e,$07,$01,$06,$03,$01,$00,$00,$00,$00,$00,$00,$01,$01,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$03,$1f,$30,$60,$5e,$7f,$3f,$4e,$20,$1f,$23,$18,$0f,$03,$00 ; |...0`^.?N .#....|
	.BYTE	$06,$03,$01,$00,$02,$03,$01,$00,$00,$03,$06,$07,$01,$08,$06,$01 ; |................|
	.BYTE	$00,$00,$01,$00,$00,$01,$01,$03,$02,$02,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$9c,$c2,$f1,$3d,$0f ; |..............=.|
	.BYTE	$8e,$c6,$c4,$cc,$ba,$02,$04,$39,$e5,$0a,$36,$e4,$cc,$18,$38,$f0 ; |.......9..6...8.|
	.BYTE	$c0,$08,$30,$e0,$80,$20,$c0,$80,$00,$80,$c0,$40,$00,$c0,$60,$20 ; |..0.. .....@..` |
	.BYTE	$20,$40,$c0,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; | @..............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$3c,$0e,$c2,$f0,$70,$38,$38,$32 ; |........<...p882|
	.BYTE	$45,$fd,$fb,$c6,$1a,$f4,$c8,$18,$30,$e4,$c4,$0c,$38,$f0,$c0,$00 ; |E.......0...8...|
	.BYTE	$60,$c0,$00,$00,$c0,$40,$00,$80,$e0,$20,$80,$c0,$c0,$80,$00,$00 ; |`....@... ......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$03,$0f,$3c,$60,$cf,$9f,$a1,$80,$c0,$b1,$5f,$5f ; |......<`......__|
	.BYTE	$20,$18,$1f,$13,$30,$36,$33,$21,$20,$22,$03,$01,$00,$00,$03,$06 ; | ...063! "......|
	.BYTE	$07,$01,$08,$06,$01,$00,$00,$01,$00,$00,$01,$01,$03,$02,$02,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$03,$1f,$30,$60,$5e,$7f,$3f,$4e,$20,$20,$1f,$07,$10,$1c ; |....0`^.?N  ....|
	.BYTE	$37,$31,$34,$22,$23,$21,$00,$02,$03,$07,$0c,$09,$08,$0e,$07,$01 ; |714"#!..........|
	.BYTE	$06,$03,$01,$00,$00,$00,$00,$00,$00,$01,$01,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$9c,$c2,$f1,$3d ; |...............=|
	.BYTE	$0f,$8e,$c6,$c4,$ce,$bd,$1d,$f3,$06,$1a,$f4,$c8,$18,$30,$e4,$c4 ; |.............0..|
	.BYTE	$0c,$38,$f0,$c8,$08,$6c,$cc,$0c,$06,$c6,$46,$02,$82,$e0,$20,$80 ; |.8...l....F... .|
	.BYTE	$c0,$c0,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$3c,$0e,$c2,$f0,$70,$38,$38 ; |.........<...p88|
	.BYTE	$30,$42,$e2,$0c,$f9,$e5,$0a,$36,$e4,$cc,$18,$38,$f0,$c0,$08,$38 ; |0B.....6...8...8|
	.BYTE	$e8,$8c,$2c,$cc,$86,$06,$86,$c2,$42,$00,$c0,$60,$20,$20,$40,$c0 ; |..,.....B..`  @.|
	.BYTE	$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$03,$0f,$3c,$60,$cf,$9f,$a1,$80,$c0,$71,$1f,$60 ; |......<`.....q.`|
	.BYTE	$1c,$07,$00,$1c,$0f,$03,$0c,$06,$03,$03,$04,$06,$07,$0f,$0c,$19 ; |................|
	.BYTE	$19,$0c,$07,$11,$0c,$06,$03,$00,$00,$00,$00,$01,$01,$02,$02,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$03,$1f,$30,$60,$5e,$7f,$3f,$8e,$e0,$1f,$63,$38,$1f,$03 ; |....0`^.?...c8..|
	.BYTE	$00,$0c,$03,$01,$04,$04,$03,$01,$00,$00,$03,$06,$06,$13,$18,$0e ; |................|
	.BYTE	$03,$01,$00,$03,$01,$01,$03,$02,$06,$04,$04,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$9c,$c2,$f1,$3d ; |...............=|
	.BYTE	$0f,$8e,$c6,$c4,$cc,$ba,$04,$08,$72,$ea,$14,$6c,$c8,$98,$30,$60 ; |........r..l..0`|
	.BYTE	$e0,$80,$10,$60,$c0,$00,$40,$80,$00,$00,$00,$80,$40,$00,$80,$c0 ; |...`..@.....@...|
	.BYTE	$40,$40,$80,$90,$08,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |@@..............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$3c,$0e,$c2,$f0,$70,$38,$38 ; |.........<...p88|
	.BYTE	$30,$44,$fa,$f6,$8c,$14,$e8,$90,$30,$60,$c8,$98,$10,$70,$e0,$80 ; |0D......0`...p..|
	.BYTE	$00,$c0,$80,$00,$00,$00,$00,$00,$80,$c0,$40,$00,$80,$80,$00,$00 ; |..........@.....|
	.BYTE	$30,$70,$b0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |0p..............|
	.BYTE	$00,$00,$00,$00,$03,$0f,$3c,$60,$cf,$9f,$a1,$80,$c0,$71,$1f,$1c ; |......<`.....q..|
	.BYTE	$67,$38,$1f,$03,$00,$0c,$03,$01,$04,$04,$03,$01,$00,$00,$03,$06 ; |g8..............|
	.BYTE	$06,$13,$18,$0e,$03,$01,$00,$03,$01,$01,$03,$02,$06,$04,$04,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$03,$1f,$30,$60,$5e,$7f,$3f,$8e,$e0,$63,$18,$07,$00,$1c ; |....0`^.?..c....|
	.BYTE	$0f,$03,$0c,$06,$03,$03,$04,$06,$07,$0f,$0c,$19,$19,$0c,$07,$11 ; |................|
	.BYTE	$0c,$06,$03,$00,$00,$00,$00,$01,$01,$02,$02,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$9c,$c2,$f1,$3d ; |...............=|
	.BYTE	$0f,$8e,$c6,$c4,$cc,$ba,$1a,$f6,$8c,$14,$e8,$90,$30,$60,$c8,$98 ; |............0`..|
	.BYTE	$10,$70,$e0,$80,$00,$c0,$80,$00,$00,$00,$00,$00,$80,$c0,$40,$00 ; |.p............@.|
	.BYTE	$80,$80,$00,$10,$08,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$3c,$0e,$c2,$f0,$70,$38,$38 ; |.........<...p88|
	.BYTE	$30,$44,$e4,$08,$72,$ea,$14,$6c,$c8,$98,$30,$60,$e0,$80,$10,$60 ; |0D..r..l..0`...`|
	.BYTE	$c0,$00,$40,$80,$00,$00,$00,$80,$40,$00,$80,$c0,$40,$40,$80,$80 ; |..@.....@...@@..|
	.BYTE	$30,$70,$b0,$00,$0a,$04,$a2,$64,$00,$2a,$01,$2a,$40,$04,$00,$00 ; |0p.....d.*.*@...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$20 ; |..............@ |
	.BYTE	$20,$3b,$1b,$1b,$0a,$00,$1b,$1f,$1f,$35,$20,$31,$20,$3b,$2a,$2a ; | ;.......5 1 ;**|
	.BYTE	$2e,$7f,$ee,$a0,$00,$00,$00,$40,$38,$07,$00,$00,$00,$00,$00,$00 ; |.......@8.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1f,$1f,$15,$04 ; |................|
	.BYTE	$04,$0e,$0e,$0a,$00,$0a,$1f,$0e,$1f,$04,$15,$15,$11,$71,$e0,$a0 ; |.............q..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$40,$80,$80,$80,$00,$00,$00,$00,$00,$00 ; |......@.........|
	.BYTE	$00,$80,$80,$80,$80,$80,$80,$80,$e0,$d0,$e8,$a8,$04,$04,$04,$08 ; |................|
	.BYTE	$70,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |p...............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$c0,$e0,$a0,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$20 ; |..............@ |
	.BYTE	$20,$3b,$1b,$1b,$0a,$0a,$11,$1b,$1f,$35,$20,$31,$20,$3b,$2a,$2a ; | ;.......5 1 ;**|
	.BYTE	$2e,$7f,$ee,$a0,$00,$00,$00,$01,$1e,$20,$00,$00,$00,$00,$00,$00 ; |......... ......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1f,$1f,$15,$04 ; |................|
	.BYTE	$04,$04,$0e,$0e,$0a,$0a,$1f,$0e,$1f,$04,$15,$15,$11,$71,$e0,$a0 ; |.............q..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$40,$80,$80,$80,$00,$00,$00,$00,$00,$00 ; |......@.........|
	.BYTE	$00,$80,$80,$80,$80,$80,$80,$80,$e0,$d0,$e8,$a8,$04,$04,$08,$f0 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$c0,$e0,$a0,$00,$00,$00,$00,$00,$00,$0e,$04 ; |................|
	.BYTE	$0f,$84,$00,$16,$01,$16,$02,$16,$03,$16,$40,$04,$00,$00,$00,$00 ; |..........@.....|
	.BYTE	$00,$00,$02,$02,$00,$02,$00,$02,$00,$05,$05,$85,$80,$87,$87,$c7 ; |................|
	.BYTE	$c7,$c7,$c7,$c2,$c0,$c0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$f0 ; |................|
	.BYTE	$f0,$f0,$f0,$f0,$f8,$f8,$f8,$f0,$f0,$f0,$e0,$e0,$e0,$c0,$80,$10 ; |................|
	.BYTE	$20,$50,$28,$50,$20,$f8,$a8,$00,$00,$00,$00,$00,$00,$00,$02,$02 ; | P(P ...........|
	.BYTE	$02,$02,$32,$12,$17,$1a,$1f,$9f,$8f,$88,$82,$c2,$c7,$c2,$c2,$c5 ; |..2.............|
	.BYTE	$c7,$c3,$e3,$e1,$e1,$e1,$e1,$e1,$e3,$e3,$e3,$f3,$f3,$f7,$f7,$f7 ; |................|
	.BYTE	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$df,$9f,$3f,$7f,$7f,$7f,$77 ; |...........?...w|
	.BYTE	$77,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |w...............|
	.BYTE	$00,$00,$00,$02,$02,$02,$02,$06,$06,$06,$06,$06,$06,$06,$0e,$0e ; |................|
	.BYTE	$0e,$0e,$0e,$0e,$0e,$0e,$0e,$1e,$1e,$1e,$1e,$1e,$3e,$3e,$3e,$1e ; |............>>>.|
	.BYTE	$1e,$1e,$0e,$0e,$0e,$06,$02,$10,$08,$14,$28,$14,$08,$3e,$2a,$00 ; |..........(..>*.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$40,$40,$c0,$c0,$c2 ; |..........`@@...|
	.BYTE	$82,$82,$02,$06,$06,$06,$86,$86,$86,$c6,$ce,$ce,$ce,$ce,$ce,$ce ; |................|
	.BYTE	$ce,$ce,$8e,$9e,$9e,$9e,$9e,$de,$fe,$fe,$fe,$fe,$fe,$fe,$fe,$fe ; |................|
	.BYTE	$fe,$f6,$f2,$f8,$fc,$fc,$fc,$dc,$dc,$80,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$81,$80,$81,$81,$c1 ; |................|
	.BYTE	$c1,$c1,$c1,$c0,$c0,$c0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$f0 ; |................|
	.BYTE	$f0,$f0,$f0,$f0,$f8,$f8,$f8,$f0,$f0,$f0,$e0,$e0,$e0,$c0,$80,$10 ; |................|
	.BYTE	$20,$50,$28,$50,$20,$f8,$a8,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; | P(P ...........|
	.BYTE	$00,$00,$0c,$04,$05,$06,$07,$87,$83,$82,$80,$c0,$c1,$c0,$c2,$c3 ; |................|
	.BYTE	$c3,$c7,$e7,$e7,$e7,$e7,$e7,$e7,$e7,$e7,$e3,$f3,$f3,$f3,$f3,$f7 ; |................|
	.BYTE	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$df,$9f,$3f,$7f,$7f,$7f,$77 ; |...........?...w|
	.BYTE	$77,$03,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$00,$80,$00,$80 ; |w...............|
	.BYTE	$00,$40,$40,$42,$02,$c2,$c2,$c6,$c6,$c6,$c6,$86,$06,$06,$0e,$0e ; |.@@B............|
	.BYTE	$0e,$0e,$0e,$0e,$0e,$0e,$0e,$1e,$1e,$1e,$1e,$1e,$3e,$3e,$3e,$1e ; |............>>>.|
	.BYTE	$1e,$1e,$0e,$0e,$0e,$06,$02,$10,$08,$14,$28,$14,$08,$3e,$2a,$00 ; |..........(..>*.|
	.BYTE	$00,$00,$00,$00,$00,$00,$80,$80,$80,$80,$98,$90,$d0,$b0,$f0,$f2 ; |................|
	.BYTE	$e2,$22,$82,$86,$c6,$86,$86,$46,$c6,$86,$8e,$0e,$0e,$0e,$0e,$0e ; |.".....F........|
	.BYTE	$8e,$8e,$8e,$9e,$9e,$de,$de,$de,$fe,$fe,$fe,$fe,$fe,$fe,$fe,$fe ; |................|
	.BYTE	$fe,$f6,$f2,$f8,$fc,$fc,$fc,$dc,$dc,$80,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$00,$11,$11,$11,$11,$11 ; |................|
	.BYTE	$11,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$18 ; |................|
	.BYTE	$18,$18,$18,$18,$18,$18,$18,$10,$10,$10,$00,$00,$00,$00,$00,$10 ; |................|
	.BYTE	$20,$50,$28,$50,$20,$f8,$a8,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; | P(P ...........|
	.BYTE	$0c,$04,$05,$06,$07,$07,$03,$12,$10,$10,$11,$10,$12,$13,$13,$13 ; |................|
	.BYTE	$13,$17,$17,$17,$17,$17,$17,$17,$17,$17,$13,$1b,$1b,$1b,$1b,$1f ; |................|
	.BYTE	$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$3f,$7f,$7f,$7f,$77 ; |...........?...w|
	.BYTE	$77,$03,$00,$00,$00,$00,$00,$00,$80,$80,$00,$80,$00,$80,$00,$40 ; |w..............@|
	.BYTE	$40,$40,$00,$d0,$d0,$d0,$d0,$d0,$d0,$90,$10,$10,$10,$10,$10,$10 ; |@@..............|
	.BYTE	$10,$10,$10,$10,$10,$10,$10,$30,$30,$30,$30,$30,$30,$30,$30,$10 ; |.......00000000.|
	.BYTE	$10,$10,$00,$00,$00,$00,$00,$10,$08,$14,$28,$14,$08,$3e,$2a,$00 ; |..........(..>*.|
	.BYTE	$00,$00,$00,$00,$80,$80,$80,$80,$98,$90,$d0,$b0,$f0,$f0,$e0,$30 ; |...............0|
	.BYTE	$90,$90,$d0,$90,$90,$50,$d0,$90,$90,$90,$90,$10,$10,$10,$10,$10 ; |.....P..........|
	.BYTE	$90,$90,$90,$b0,$b0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0 ; |................|
	.BYTE	$f0,$f0,$f0,$f8,$fc,$fc,$fc,$dc,$dc,$80,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$02,$02,$00,$02,$00,$02,$00,$05,$05,$05,$00,$17,$17,$17,$17,$17 ; |................|
	.BYTE	$17,$12,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$18 ; |................|
	.BYTE	$18,$18,$18,$18,$18,$18,$18,$10,$10,$10,$00,$00,$00,$00,$00,$10 ; |................|
	.BYTE	$20,$50,$28,$50,$20,$f8,$a8,$00,$00,$00,$00,$00,$02,$02,$02,$02 ; | P(P ...........|
	.BYTE	$32,$12,$17,$1a,$1f,$1f,$0f,$18,$12,$12,$17,$12,$12,$15,$17,$13 ; |2...............|
	.BYTE	$13,$13,$13,$11,$11,$11,$11,$11,$13,$13,$13,$1b,$1b,$1f,$1f,$1f ; |................|
	.BYTE	$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$3f,$7f,$7f,$7f,$77 ; |...........?...w|
	.BYTE	$77,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |w...............|
	.BYTE	$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10 ; |................|
	.BYTE	$10,$10,$10,$10,$10,$10,$10,$30,$30,$30,$30,$30,$30,$30,$30,$10 ; |.......00000000.|
	.BYTE	$10,$10,$00,$00,$00,$00,$00,$10,$08,$14,$28,$14,$08,$3e,$2a,$00 ; |..........(..>*.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$60,$40,$40,$c0,$c0,$c0,$80,$90 ; |........`@@.....|
	.BYTE	$10,$10,$10,$10,$90,$90,$90,$90,$90,$d0,$d0,$d0,$d0,$d0,$d0,$d0 ; |................|
	.BYTE	$d0,$d0,$90,$b0,$b0,$b0,$b0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0 ; |................|
	.BYTE	$f0,$f0,$f0,$f8,$fc,$fc,$fc,$dc,$dc,$80,$00,$00,$12,$04,$32,$0a ; |..............2.|
	.BYTE	$00,$30,$01,$30,$00,$30,$01,$30,$02,$30,$01,$30,$40,$04,$00,$00 ; |.0.0.0.0.0.0@...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$00,$02,$00,$01,$00 ; |................|
	.BYTE	$01,$00,$02,$00,$01,$0b,$07,$5f,$3f,$3f,$1f,$8f,$0f,$1f,$1f,$0f ; |......._??......|
	.BYTE	$0f,$07,$07,$03,$00,$00,$00,$00,$00,$00,$02,$00,$00,$02,$00,$00 ; |................|
	.BYTE	$00,$00,$02,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$03,$07,$02,$02,$07,$05,$07,$00,$01,$00,$03,$05,$0d ; |................|
	.BYTE	$09,$13,$16,$2d,$1a,$ca,$e6,$6e,$09,$0e,$0e,$07,$06,$03,$01,$00 ; |...-...n........|
	.BYTE	$02,$02,$02,$02,$02,$02,$00,$03,$03,$00,$02,$02,$02,$02,$00,$02 ; |................|
	.BYTE	$05,$0c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$02,$06,$0c,$18,$30,$70,$e0,$c0,$80,$c0,$e0 ; |.........0p.....|
	.BYTE	$e0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$e0,$e0,$c0,$80,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$20,$00,$00,$00,$20,$00,$00,$00,$00,$00,$20,$00,$00 ; |... ... ..... ..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$c0,$c0,$c0,$80 ; |................|
	.BYTE	$00,$02,$06,$0c,$18,$f0,$60,$c0,$a0,$20,$e0,$e0,$e0,$e0,$e0,$e0 ; |......`.. ......|
	.BYTE	$20,$e0,$60,$40,$40,$80,$00,$40,$40,$60,$20,$20,$20,$20,$20,$00 ; | .`@@..@@`     .|
	.BYTE	$70,$70,$30,$00,$20,$20,$20,$20,$20,$00,$30,$38,$18,$00,$00,$00 ; |pp0.     .08....|
	.BYTE	$00,$40,$40,$40,$60,$60,$60,$60,$60,$6a,$6a,$60,$64,$60,$62,$60 ; |.@@@`````jj`d`b`|
	.BYTE	$62,$60,$61,$60,$60,$63,$67,$6f,$ff,$0f,$0f,$6f,$0f,$1f,$1f,$0f ; |b`a``cgo...o....|
	.BYTE	$0f,$07,$03,$01,$00,$00,$00,$00,$00,$00,$02,$00,$00,$02,$00,$00 ; |................|
	.BYTE	$00,$00,$02,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$40,$40,$40 ; |.............@@@|
	.BYTE	$60,$60,$60,$67,$6f,$65,$65,$6f,$6a,$6e,$60,$62,$60,$67,$6a,$6b ; |```goeeojn`b`gjk|
	.BYTE	$77,$74,$73,$76,$0e,$6e,$6e,$09,$0e,$0e,$0f,$06,$07,$03,$01,$02 ; |wtsv.nn.........|
	.BYTE	$02,$02,$02,$02,$02,$02,$00,$03,$03,$00,$02,$02,$02,$02,$00,$02 ; |................|
	.BYTE	$05,$0c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$00,$80,$c0,$f0 ; |........... ....|
	.BYTE	$f0,$f0,$f0,$f0,$f0,$f0,$f0,$e0,$e0,$c0,$80,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$20,$00,$00,$00,$20,$00,$00,$00,$00,$00,$20,$00,$00 ; |... ... ..... ..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$80,$40,$40,$a0,$20,$a0,$c0,$e0,$e0,$e0,$20 ; |......@@. ..... |
	.BYTE	$e0,$60,$60,$40,$c0,$80,$40,$40,$40,$60,$20,$20,$20,$20,$20,$00 ; |.``@..@@@`     .|
	.BYTE	$70,$70,$30,$00,$20,$20,$20,$20,$20,$00,$30,$38,$18,$00,$00,$00 ; |pp0.     .08....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$02,$02,$00,$01,$01,$00,$00,$00 ; |................|
	.BYTE	$04,$00,$10,$00,$01,$01,$01,$03,$03,$11,$01,$00,$10,$00,$00,$00 ; |................|
	.BYTE	$00,$04,$20,$30,$18,$3c,$10,$10,$18,$1c,$18,$18,$18,$1c,$18,$18 ; |.. 0.<..........|
	.BYTE	$18,$18,$18,$18,$18,$1c,$10,$10,$10,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$03,$07,$05,$05,$07,$02,$02,$01,$03,$0d,$1b,$16,$04,$17 ; |................|
	.BYTE	$14,$16,$14,$15,$15,$00,$38,$39,$03,$17,$15,$15,$17,$13,$14,$04 ; |......89........|
	.BYTE	$04,$00,$14,$14,$1c,$18,$1e,$1e,$1e,$18,$1c,$1c,$1c,$1c,$1c,$1c ; |................|
	.BYTE	$1c,$18,$1e,$3a,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |...:............|
	.BYTE	$80,$80,$00,$00,$00,$00,$00,$00,$40,$00,$fc,$fc,$fe,$fe,$fe,$ff ; |........@.......|
	.BYTE	$ff,$ff,$ff,$ff,$ff,$7f,$3f,$1f,$00,$40,$00,$00,$00,$00,$00,$00 ; |......?..@......|
	.BYTE	$00,$40,$00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00,$40,$00,$00 ; |.@...@.......@..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$c0,$40,$40,$c0,$80 ; |............@@..|
	.BYTE	$80,$00,$80,$60,$b0,$d8,$00,$78,$fc,$bc,$d8,$e6,$e6,$d0,$bc,$78 ; |...`...x.......x|
	.BYTE	$7e,$be,$5e,$40,$c0,$80,$40,$40,$40,$40,$40,$40,$40,$00,$c0,$c0 ; |~.^@..@@@@@@@...|
	.BYTE	$c0,$00,$40,$40,$40,$40,$40,$40,$40,$00,$70,$5c,$00,$00,$1a,$04 ; |..@@@@@@@.p\....|
	.BYTE	$04,$02,$9c,$0b,$00,$2a,$9b,$0a,$00,$2a,$9b,$09,$00,$2a,$9c,$0a ; |.....*...*...*..|
	.BYTE	$00,$2a,$9d,$0b,$00,$2a,$40,$04,$f0,$7f,$7d,$78,$38,$38,$38,$31 ; |.*...*@...}x8881|
	.BYTE	$31,$33,$3f,$3f,$3f,$3f,$3f,$7f,$7f,$7f,$7f,$ff,$ff,$ff,$ff,$ff ; |13?????.........|
	.BYTE	$ff,$ff,$ff,$7f,$7b,$73,$73,$37,$37,$37,$37,$3f,$3f,$1f,$1f,$3f ; |....{ss7777??..?|
	.BYTE	$3f,$3e,$3e,$7c,$78,$e0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |?>>|x...........|
	.BYTE	$00,$00,$00,$00,$f0,$78,$72,$77,$37,$37,$27,$2e,$2e,$2c,$01,$03 ; |.....xrw77'..,..|
	.BYTE	$0f,$0f,$07,$01,$00,$00,$00,$01,$21,$23,$33,$1f,$0f,$0f,$07,$03 ; |........!#3.....|
	.BYTE	$07,$4f,$4d,$29,$29,$19,$09,$01,$01,$03,$03,$03,$07,$06,$0e,$1c ; |.OM))...........|
	.BYTE	$38,$e0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |8...............|
	.BYTE	$00,$00,$80,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$80,$80,$80 ; |................|
	.BYTE	$80,$c0,$c0,$c0,$c0,$e0,$e0,$f0,$70,$78,$78,$30,$b0,$a0,$a0,$80 ; |........pxx0....|
	.BYTE	$c0,$c0,$c0,$c0,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$80,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$80,$c0,$40,$40,$60,$08,$88,$90,$90,$80,$c0,$c0,$c0,$c0 ; |....@@`.........|
	.BYTE	$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$12,$04,$02,$a4,$00,$64,$01,$18 ; |.............d..|
	.BYTE	$02,$18,$03,$28,$02,$14,$01,$18,$40,$04,$00,$00,$00,$00,$00,$00 ; |...(....@.......|
	.BYTE	$00,$00,$00,$00,$00,$07,$0a,$02,$0d,$00,$07,$05,$00,$00,$0d,$0f ; |................|
	.BYTE	$1f,$3f,$3f,$3f,$3f,$7f,$7f,$6f,$6f,$67,$e7,$03,$1b,$13,$37,$27 ; |.????..oog....7'|
	.BYTE	$2f,$0f,$1f,$1e,$3c,$39,$79,$75,$75,$74,$72,$3a,$3a,$3b,$1b,$19 ; |/...<9yuutr::;..|
	.BYTE	$1d,$1c,$18,$39,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |...9`...........|
	.BYTE	$10,$10,$15,$1d,$1b,$1f,$0f,$0f,$07,$07,$07,$07,$07,$0a,$1d,$3f ; |...............?|
	.BYTE	$3f,$7f,$7f,$6f,$6f,$67,$e7,$c3,$c3,$80,$00,$00,$00,$00,$00,$00 ; |?..oog..........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00 ; |................|
	.BYTE	$80,$00,$00,$00,$00,$00,$c0,$f0,$f8,$f8,$f8,$f8,$f8,$f8,$fc,$fc ; |................|
	.BYTE	$fc,$fc,$fc,$fc,$fc,$fc,$fc,$f8,$f8,$e0,$e0,$e0,$ec,$e8,$c8,$d8 ; |................|
	.BYTE	$d8,$c8,$ec,$ec,$6c,$6e,$66,$76,$76,$67,$e0,$80,$00,$00,$00,$00 ; |....lnfvvg......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$40,$40,$40,$c0,$40,$c0,$80,$80 ; |........@@@.@...|
	.BYTE	$00,$00,$00,$00,$40,$f0,$b0,$f8,$f8,$d8,$fc,$ec,$fc,$ec,$fc,$ec ; |....@...........|
	.BYTE	$fc,$0c,$1c,$18,$18,$1c,$1c,$1c,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$07,$0a,$02,$0d,$00,$07,$05,$00,$00,$0d,$0f ; |................|
	.BYTE	$1f,$3f,$3f,$3f,$3f,$7f,$7f,$6f,$6f,$67,$e7,$03,$1a,$12,$16,$06 ; |.????..oog......|
	.BYTE	$0e,$0e,$1e,$1e,$3c,$39,$79,$75,$75,$74,$72,$3a,$3a,$3a,$18,$18 ; |....<9yuutr:::..|
	.BYTE	$1c,$1c,$18,$39,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |...9`...........|
	.BYTE	$10,$10,$15,$1d,$1b,$1f,$0f,$0f,$07,$07,$07,$07,$07,$0a,$1d,$3f ; |...............?|
	.BYTE	$3f,$7f,$7f,$6f,$6f,$67,$e7,$c3,$c3,$81,$01,$00,$00,$00,$00,$00 ; |?..oog..........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00 ; |................|
	.BYTE	$80,$00,$00,$00,$00,$00,$c0,$f0,$f0,$f8,$f8,$fc,$fc,$fc,$fc,$fc ; |................|
	.BYTE	$fc,$fc,$fc,$fc,$7c,$7c,$fc,$fc,$fc,$fc,$fc,$fc,$7c,$78,$b8,$b8 ; |....||......|x..|
	.BYTE	$d8,$d8,$e8,$e0,$60,$60,$60,$70,$70,$60,$e0,$80,$00,$00,$00,$00 ; |....```pp`......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$40,$40,$40,$c0,$40,$c0,$80,$80 ; |........@@@.@...|
	.BYTE	$00,$00,$00,$00,$40,$e0,$a0,$f0,$f0,$d0,$f0,$d0,$f0,$d0,$a0,$40 ; |....@..........@|
	.BYTE	$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$07,$0a,$02,$0d,$00,$7c,$3f,$3f,$3f,$3f,$3f ; |..........|?????|
	.BYTE	$1f,$1f,$1f,$3f,$3f,$7f,$7f,$6f,$6f,$67,$e7,$07,$03,$03,$0b,$0d ; |...??..oog......|
	.BYTE	$0d,$1d,$1e,$3e,$3d,$79,$79,$71,$75,$74,$72,$38,$38,$38,$18,$18 ; |...>=yyqutr888..|
	.BYTE	$1c,$1c,$18,$39,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |...9`...........|
	.BYTE	$10,$10,$15,$1d,$1b,$1f,$83,$c0,$c0,$00,$00,$00,$00,$00,$00,$20 ; |............... |
	.BYTE	$30,$70,$70,$60,$68,$60,$e0,$c0,$c0,$80,$00,$00,$00,$00,$00,$00 ; |0pp`h`..........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00 ; |................|
	.BYTE	$80,$00,$00,$80,$e0,$f0,$f0,$f0,$f8,$f8,$f8,$f8,$f8,$fc,$fc,$fc ; |................|
	.BYTE	$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$78,$78,$b8,$b8 ; |............xx..|
	.BYTE	$d8,$d8,$e8,$e8,$60,$60,$60,$70,$70,$60,$e0,$80,$00,$00,$00,$00 ; |....```pp`......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$40,$40,$40,$c0,$40,$c0,$80,$00 ; |........@@@.@...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$07,$0a,$02,$0d,$00,$7c,$3f,$3f,$3f,$3f,$3f ; |..........|?????|
	.BYTE	$1f,$1f,$1f,$3f,$3f,$7f,$7f,$6f,$6f,$67,$e7,$07,$03,$03,$0b,$0d ; |...??..oog......|
	.BYTE	$0d,$1d,$1e,$3e,$3d,$79,$79,$71,$75,$74,$72,$38,$38,$38,$18,$18 ; |...>=yyqutr888..|
	.BYTE	$1c,$1c,$18,$39,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |...9`...........|
	.BYTE	$10,$10,$15,$1d,$16,$1f,$83,$c0,$c0,$00,$00,$00,$00,$00,$00,$20 ; |............... |
	.BYTE	$30,$70,$70,$60,$68,$60,$e0,$c0,$c0,$80,$00,$00,$00,$00,$00,$00 ; |0pp`h`..........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00 ; |................|
	.BYTE	$80,$00,$00,$80,$e0,$f0,$f0,$f0,$f8,$f8,$f8,$f8,$f8,$fc,$fc,$fc ; |................|
	.BYTE	$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$fc,$78,$78,$b8,$b8 ; |............xx..|
	.BYTE	$d8,$d8,$e8,$e8,$60,$60,$60,$70,$70,$60,$e0,$80,$00,$00,$00,$00 ; |....```pp`......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$40,$40,$40,$c0,$c0,$c0,$80,$00 ; |........@@@.....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0a,$04,$22,$24,$00,$28 ; |............"$.(|
	.BYTE	$01,$0a,$40,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |..@.............|
	.BYTE	$00,$00,$10,$04,$05,$01,$00,$00,$01,$03,$07,$17,$17,$17,$0b,$09 ; |................|
	.BYTE	$08,$04,$04,$03,$00,$00,$00,$00,$10,$10,$18,$08,$04,$0b,$08,$01 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0c,$00,$e0,$c0,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$30,$38,$38,$3b,$2f,$1b ; |.........`088;/.|
	.BYTE	$1e,$1e,$1f,$1f,$0f,$0f,$0a,$2a,$28,$2a,$37,$37,$37,$3b,$3b,$3c ; |.......*(*777;;<|
	.BYTE	$3f,$1f,$1f,$3f,$2f,$2f,$27,$37,$3b,$74,$77,$76,$76,$6e,$6e,$6e ; |?..?//'7;twvvnnn|
	.BYTE	$6e,$6c,$6c,$6c,$6c,$6c,$ec,$e0,$e0,$00,$00,$00,$00,$00,$00,$00 ; |nlllll..........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$40,$40,$00,$00,$00 ; |...........@@...|
	.BYTE	$00,$80,$c0,$d0,$d0,$d0,$a0,$20,$20,$40,$40,$80,$00,$00,$00,$00 ; |.......  @@.....|
	.BYTE	$10,$10,$20,$20,$40,$a0,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |..  @. .........|
	.BYTE	$00,$00,$00,$60,$00,$0e,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |...`............|
	.BYTE	$00,$0c,$18,$38,$38,$b8,$e8,$b0,$f0,$f0,$f0,$f0,$e0,$e0,$a0,$a8 ; |...88...........|
	.BYTE	$28,$a8,$d8,$d8,$d8,$b8,$b8,$78,$f8,$f0,$f0,$f8,$e8,$e8,$d8,$d8 ; |(......x........|
	.BYTE	$bc,$5c,$dc,$dc,$dc,$ec,$ec,$ec,$ec,$6c,$6c,$6c,$6c,$6c,$6c,$0e ; |.\.......llllll.|
	.BYTE	$0e,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$10,$04,$05,$01,$00,$01,$03,$03,$07,$17,$17,$17,$0b,$09,$08 ; |................|
	.BYTE	$04,$04,$03,$00,$00,$00,$00,$10,$10,$08,$08,$04,$0b,$08,$08,$01 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0c,$00,$e0,$c0,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$60,$30,$38,$38,$3b,$2f,$1b,$1e ; |........`088;/..|
	.BYTE	$1e,$1f,$1f,$0f,$0e,$0a,$28,$28,$2a,$37,$37,$37,$3b,$3b,$3c,$3f ; |......((*777;;<?|
	.BYTE	$1f,$1f,$1f,$2f,$2f,$37,$37,$3b,$74,$77,$77,$76,$76,$6e,$6e,$6e ; |...//77;twwvvnnn|
	.BYTE	$6e,$6c,$6c,$6c,$6c,$6c,$ec,$e0,$e0,$00,$00,$00,$00,$00,$00,$00 ; |nlllll..........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$40,$40,$00,$00,$00,$80 ; |..........@@....|
	.BYTE	$80,$c0,$d0,$d0,$d0,$a0,$20,$20,$40,$40,$80,$00,$00,$00,$00,$10 ; |......  @@......|
	.BYTE	$10,$20,$20,$40,$a0,$20,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |.  @.  .........|
	.BYTE	$00,$00,$00,$60,$00,$0e,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |...`............|
	.BYTE	$0c,$18,$38,$38,$b8,$e8,$b0,$f0,$f0,$f0,$f0,$e0,$e0,$a0,$28,$28 ; |..88..........((|
	.BYTE	$a8,$d8,$d8,$d8,$b8,$b8,$78,$f8,$f0,$f0,$f0,$e8,$e8,$d8,$d8,$b8 ; |......x.........|
	.BYTE	$5c,$dc,$dc,$dc,$dc,$ec,$ec,$ec,$ec,$6c,$6c,$6c,$6c,$6c,$6c,$0e ; |\........llllll.|
	.BYTE	$0e,$00,$00,$00,$0a,$04,$14,$f8,$00,$1c,$01,$1c,$40,$04,$00,$00 ; |............@...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$46,$4c ; |..............FL|
	.BYTE	$48,$42,$c7,$87,$87,$84,$86,$86,$c3,$43,$67,$27,$37,$33,$31,$30 ; |HB.......Cg'7310|
	.BYTE	$38,$30,$70,$e0,$a0,$20,$00,$08,$08,$0c,$1f,$1f,$3e,$3a,$3a,$1a ; |80p.. ......>::.|
	.BYTE	$1a,$18,$18,$18,$18,$0c,$18,$70,$50,$00,$00,$00,$00,$00,$00,$00 ; |.......pP.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$47,$6f,$6f,$6d,$e8,$ea ; |..........Goom..|
	.BYTE	$e8,$e3,$f1,$f1,$f0,$78,$7c,$38,$08,$0c,$0e,$0f,$0f,$07,$07,$03 ; |.....x|8........|
	.BYTE	$03,$07,$07,$0f,$0f,$07,$03,$01,$03,$03,$03,$03,$03,$01,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$40,$c4,$64,$24,$84,$c6,$c2,$c2,$42,$c2,$c2 ; |.....@.d$....B..|
	.BYTE	$86,$84,$cc,$c8,$d8,$98,$18,$18,$38,$18,$1c,$0e,$0a,$08,$00,$20 ; |........8...... |
	.BYTE	$20,$60,$f0,$f0,$f8,$b8,$b8,$b0,$b0,$30,$30,$30,$30,$60,$30,$1c ; | `.......0000`0.|
	.BYTE	$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$40,$c4,$ec,$ec,$6c,$2e,$ae,$2e,$8e,$1e,$1e,$1e,$3c,$7c,$38 ; |.@...l.......<|8|
	.BYTE	$20,$60,$e0,$e0,$e0,$c0,$c0,$80,$80,$c0,$c0,$e0,$e0,$c0,$80,$00 ; | `..............|
	.BYTE	$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$44,$46,$4c ; |............@DFL|
	.BYTE	$48,$c2,$87,$87,$87,$84,$85,$c6,$43,$63,$27,$27,$37,$33,$71,$60 ; |H.......Cc''73q`|
	.BYTE	$78,$38,$1e,$0a,$0c,$00,$00,$08,$08,$0c,$1f,$1f,$3e,$3a,$3a,$1a ; |x8..........>::.|
	.BYTE	$1a,$18,$18,$18,$18,$0c,$18,$70,$50,$00,$00,$00,$00,$00,$00,$00 ; |.......pP.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$40,$65,$67,$6f,$6f,$ed,$e8,$ea ; |........@egoo...|
	.BYTE	$e8,$f3,$f2,$f1,$78,$78,$3c,$38,$08,$0c,$0e,$0f,$0f,$07,$01,$01 ; |....xx<8........|
	.BYTE	$03,$07,$07,$0f,$0f,$07,$03,$01,$03,$03,$03,$03,$03,$01,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$04,$44,$c4,$64,$24,$86,$c2,$c2,$c2,$42,$42,$c6 ; |.....D.d$....BB.|
	.BYTE	$84,$8c,$c8,$c8,$d8,$98,$18,$18,$38,$18,$38,$70,$50,$30,$00,$20 ; |........8.8pP0. |
	.BYTE	$20,$60,$f0,$f0,$f8,$b8,$b8,$b0,$b0,$30,$30,$30,$30,$60,$30,$1c ; | `.......0000`0.|
	.BYTE	$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$04,$4c,$cc,$ec,$ec,$6e,$2e,$ae,$2e,$9e,$9e,$1e,$3c,$3c,$78,$38 ; |.L...n......<<x8|
	.BYTE	$20,$60,$e0,$e0,$e0,$c0,$c0,$80,$80,$c0,$c0,$e0,$e0,$c0,$80,$00 ; | `..............|
	.BYTE	$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0a,$04 ; |................|
	.BYTE	$b2,$c6,$00,$28,$01,$28,$40,$04,$00,$00,$00,$00,$00,$00,$00,$00 ; |...(.(@.........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$0c,$0f,$07,$03,$03 ; |................|
	.BYTE	$03,$01,$00,$00,$01,$03,$0e,$0f,$1a,$19,$12,$13,$32,$37,$16,$17 ; |............27..|
	.BYTE	$03,$0b,$09,$1d,$0f,$1f,$06,$16,$27,$03,$23,$03,$23,$43,$02,$46 ; |........'.#.#C.F|
	.BYTE	$06,$47,$07,$00,$00,$00,$00,$00,$c0,$c4,$74,$7c,$3e,$be,$fe,$fe ; |.G........t|>...|
	.BYTE	$7f,$7f,$7f,$7f,$ff,$ff,$77,$73,$70,$79,$7d,$7c,$7c,$fe,$3f,$3f ; |......wspy}||.??|
	.BYTE	$3e,$3c,$71,$10,$05,$06,$0d,$0c,$0d,$08,$01,$08,$0c,$04,$06,$02 ; |><q.............|
	.BYTE	$10,$00,$10,$20,$00,$20,$00,$20,$00,$20,$40,$00,$40,$00,$40,$00 ; |... . . . @.@.@.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$02,$e6,$fe,$fc,$f8,$f0,$f0,$e0,$40,$00,$e0,$70,$b0,$70 ; |..........@..p.p|
	.BYTE	$f0,$12,$92,$13,$93,$13,$93,$1a,$08,$0e,$84,$84,$c0,$c0,$c0,$f0 ; |................|
	.BYTE	$70,$70,$30,$30,$10,$10,$30,$30,$20,$78,$38,$00,$00,$00,$01,$03 ; |pp00..00 x8.....|
	.BYTE	$06,$16,$1c,$0c,$0c,$0c,$1d,$1f,$1f,$1e,$1e,$1e,$be,$be,$fc,$18 ; |................|
	.BYTE	$00,$b2,$b6,$0e,$ee,$5e,$bc,$fc,$1c,$8c,$4c,$88,$08,$ea,$62,$c3 ; |.....^....L...b.|
	.BYTE	$03,$83,$03,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$0c,$0c,$07,$07,$03,$03 ; |................|
	.BYTE	$01,$00,$00,$00,$01,$03,$0e,$0f,$1a,$19,$12,$13,$36,$37,$16,$17 ; |............67..|
	.BYTE	$03,$0b,$09,$1d,$0f,$1f,$06,$16,$27,$03,$23,$03,$23,$43,$02,$46 ; |........'.#.#C.F|
	.BYTE	$06,$47,$07,$00,$01,$01,$01,$01,$03,$03,$03,$03,$03,$03,$03,$03 ; |.G..............|
	.BYTE	$03,$03,$03,$03,$03,$03,$03,$03,$00,$01,$01,$00,$00,$01,$00,$00 ; |................|
	.BYTE	$00,$00,$01,$00,$01,$02,$01,$00,$01,$00,$01,$08,$0c,$04,$06,$02 ; |................|
	.BYTE	$10,$00,$10,$20,$00,$20,$00,$20,$00,$20,$40,$00,$40,$00,$40,$00 ; |... . . . @.@.@.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$02,$02,$e6,$fc,$fc,$f8,$f8,$f0,$e0,$40,$e0,$e0,$70,$b0,$70 ; |..........@..p.p|
	.BYTE	$f0,$52,$92,$13,$93,$13,$93,$1a,$08,$0e,$84,$84,$c0,$c0,$c0,$f0 ; |.R..............|
	.BYTE	$70,$70,$30,$30,$10,$10,$30,$30,$20,$78,$38,$00,$10,$10,$10,$10 ; |pp00..00 x8.....|
	.BYTE	$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$b8,$b8,$b8,$18 ; |................|
	.BYTE	$00,$b0,$b0,$00,$e0,$50,$a0,$00,$00,$80,$40,$88,$08,$8a,$02,$83 ; |.....P....@.....|
	.BYTE	$03,$83,$03,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$12,$04,$32,$f8,$00,$0a,$01,$0a ; |..........2.....|
	.BYTE	$02,$0a,$03,$0a,$04,$0a,$05,$0a,$40,$04,$00,$00,$00,$00,$00,$00 ; |........@.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$10 ; |................|
	.BYTE	$19,$1f,$0f,$0f,$07,$07,$03,$03,$01,$01,$01,$01,$03,$47,$4f,$4d ; |.............GOM|
	.BYTE	$3a,$39,$3a,$39,$1a,$13,$17,$37,$37,$37,$37,$17,$17,$1b,$3b,$23 ; |:9:9...7777...;#|
	.BYTE	$13,$07,$07,$0e,$1c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$08,$18,$18,$18,$18,$38,$38,$38,$3a,$3a,$2a,$2a,$22,$20,$33,$31 ; |.....888::**" 31|
	.BYTE	$38,$19,$1d,$1c,$1e,$1e,$0e,$0e,$0c,$40,$40,$42,$21,$22,$21,$22 ; |8........@@B!"!"|
	.BYTE	$01,$00,$00,$00,$00,$00,$00,$00,$04,$08,$08,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$40,$00,$00,$00 ; |...........@@...|
	.BYTE	$00,$00,$00,$00,$00,$00,$04,$04,$cc,$fc,$f8,$f8,$f0,$f0,$e0,$e0 ; |................|
	.BYTE	$c0,$c0,$40,$c0,$e0,$f0,$f8,$d8,$ac,$cd,$ad,$cd,$ad,$e6,$f6,$76 ; |..@............v|
	.BYTE	$76,$76,$76,$74,$74,$74,$76,$6a,$64,$70,$70,$38,$1c,$00,$00,$00 ; |vvvtttvjdpp8....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$40,$48,$0c,$0c,$0c,$0c,$0e,$0e,$0e ; |.......@H.......|
	.BYTE	$2e,$2e,$2a,$2a,$22,$02,$66,$26,$0e,$cc,$5c,$1c,$3c,$3c,$b8,$38 ; |..**".f&..\.<<.8|
	.BYTE	$18,$00,$00,$20,$40,$21,$41,$21,$41,$02,$02,$00,$00,$00,$00,$00 ; |... @!A!A.......|
	.BYTE	$10,$10,$10,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$30 ; |.............. 0|
	.BYTE	$19,$1f,$0f,$0f,$07,$07,$03,$03,$01,$01,$21,$21,$23,$47,$4f,$4d ; |..........!!#GOM|
	.BYTE	$3a,$19,$1a,$19,$1a,$13,$17,$37,$37,$3f,$3f,$1f,$13,$13,$33,$23 ; |:......77??...3#|
	.BYTE	$13,$07,$07,$0e,$1c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08 ; |................|
	.BYTE	$08,$08,$08,$08,$08,$08,$18,$18,$1a,$1a,$1a,$0a,$02,$00,$13,$11 ; |................|
	.BYTE	$18,$19,$1d,$0c,$0e,$0e,$2e,$26,$24,$40,$40,$42,$21,$02,$01,$02 ; |.......&$@@B!...|
	.BYTE	$01,$00,$00,$00,$00,$08,$08,$08,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$80,$80,$82,$06,$cc,$fc,$f8,$f8,$f0,$f0,$e0,$e0 ; |................|
	.BYTE	$c0,$c0,$40,$c0,$e2,$f1,$f9,$d9,$ae,$ce,$ac,$cc,$ac,$e4,$f4,$76 ; |..@............v|
	.BYTE	$7e,$7e,$7e,$7c,$64,$64,$66,$62,$64,$70,$70,$38,$1c,$00,$00,$00 ; |~~~|ddfbdpp8....|
	.BYTE	$00,$00,$00,$00,$00,$80,$00,$08,$08,$08,$08,$08,$08,$08,$0c,$0c ; |................|
	.BYTE	$ac,$ac,$ac,$28,$20,$00,$64,$24,$0c,$cc,$5c,$18,$38,$38,$b8,$30 ; |...( .d$..\.88.0|
	.BYTE	$12,$01,$01,$21,$42,$22,$40,$20,$40,$00,$00,$00,$08,$08,$08,$08 ; |...!B"@ @.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$30 ; |.............. 0|
	.BYTE	$19,$1f,$0f,$0f,$07,$07,$03,$03,$41,$41,$21,$21,$23,$47,$0f,$0d ; |........AA!!#G..|
	.BYTE	$1a,$19,$1a,$19,$1a,$13,$1f,$3f,$37,$37,$37,$17,$13,$13,$33,$23 ; |.......?777...3#|
	.BYTE	$13,$07,$07,$0e,$1c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04 ; |................|
	.BYTE	$04,$04,$04,$04,$04,$04,$04,$04,$06,$06,$06,$0a,$02,$00,$03,$01 ; |................|
	.BYTE	$08,$09,$0d,$0c,$4e,$46,$26,$26,$24,$40,$00,$02,$01,$02,$01,$02 ; |....NF&&$@......|
	.BYTE	$01,$00,$08,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$40,$40,$40,$80,$80,$82,$06,$cc,$fc,$f8,$f8,$f0,$f0,$e0,$e0 ; |.@@@............|
	.BYTE	$c1,$c1,$41,$c2,$e2,$f1,$f8,$d8,$ac,$cc,$ac,$cc,$ac,$e4,$f4,$76 ; |..A............v|
	.BYTE	$7e,$76,$76,$74,$64,$64,$66,$62,$64,$70,$70,$38,$1c,$00,$00,$00 ; |~vvtddfbdpp8....|
	.BYTE	$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$50,$50,$50 ; |.............PPP|
	.BYTE	$b0,$b0,$b0,$28,$20,$00,$60,$20,$08,$c8,$58,$18,$39,$31,$b1,$32 ; |...( .` ..X.91.2|
	.BYTE	$12,$01,$00,$20,$40,$20,$40,$20,$40,$00,$00,$00,$08,$00,$00,$00 ; |... @ @ @.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$30 ; |.............. 0|
	.BYTE	$19,$1f,$0f,$0f,$07,$27,$23,$43,$41,$01,$01,$01,$03,$07,$0f,$0d ; |.....'#CA.......|
	.BYTE	$1a,$19,$1a,$19,$1e,$17,$17,$37,$37,$37,$37,$17,$13,$13,$33,$23 ; |.......7777...3#|
	.BYTE	$13,$07,$07,$0e,$1c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08 ; |................|
	.BYTE	$08,$08,$08,$08,$08,$08,$08,$08,$0a,$0a,$0a,$0a,$02,$00,$03,$02 ; |................|
	.BYTE	$08,$29,$2d,$4c,$4e,$06,$06,$06,$04,$00,$00,$02,$01,$02,$01,$02 ; |.)-LN...........|
	.BYTE	$05,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80 ; |................|
	.BYTE	$80,$40,$40,$40,$80,$00,$02,$06,$cc,$fc,$f8,$f8,$f0,$f0,$e0,$e2 ; |.@@@............|
	.BYTE	$c1,$c1,$40,$c0,$e0,$f0,$f8,$d8,$ac,$cc,$ac,$cc,$ac,$f4,$f4,$76 ; |..@............v|
	.BYTE	$76,$76,$76,$74,$64,$64,$66,$62,$64,$70,$70,$38,$1c,$00,$00,$00 ; |vvvtddfbdpp8....|
	.BYTE	$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08,$88,$88,$48,$48,$48 ; |.............HHH|
	.BYTE	$a8,$28,$28,$28,$20,$00,$60,$40,$08,$c8,$58,$1a,$39,$31,$b0,$30 ; |.((( .`@..X.91.0|
	.BYTE	$10,$00,$00,$20,$40,$20,$40,$20,$40,$10,$00,$00,$00,$00,$00,$00 ; |... @ @ @.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$30 ; |.............. 0|
	.BYTE	$19,$1f,$0f,$0f,$07,$07,$03,$03,$01,$01,$01,$01,$03,$07,$0f,$0d ; |................|
	.BYTE	$1a,$19,$1a,$19,$1a,$13,$17,$37,$37,$37,$37,$17,$13,$13,$33,$23 ; |.......7777...3#|
	.BYTE	$13,$07,$07,$0e,$1c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08 ; |................|
	.BYTE	$08,$08,$08,$08,$08,$08,$18,$18,$1a,$1a,$1a,$0a,$02,$00,$13,$11 ; |................|
	.BYTE	$18,$19,$1d,$0c,$0e,$0e,$0e,$06,$04,$00,$00,$02,$01,$02,$01,$02 ; |................|
	.BYTE	$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$80 ; |..............@.|
	.BYTE	$80,$40,$00,$00,$00,$00,$02,$06,$cc,$fc,$f8,$f9,$f1,$f0,$e0,$e0 ; |.@..............|
	.BYTE	$c0,$c0,$40,$c0,$e0,$f0,$f8,$d8,$ac,$cc,$ac,$cc,$ac,$e4,$f4,$76 ; |..@............v|
	.BYTE	$76,$76,$76,$74,$64,$64,$66,$62,$64,$70,$70,$38,$1c,$00,$00,$00 ; |vvvtddfbdpp8....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$08,$08,$08,$48,$88,$88,$48,$0c,$0c ; |..........H..H..|
	.BYTE	$2c,$2c,$2c,$28,$20,$00,$64,$25,$0d,$cc,$5c,$18,$38,$38,$b8,$30 ; |,,,( .d%..\.88.0|
	.BYTE	$10,$00,$00,$20,$40,$20,$40,$20,$40,$00,$00,$00,$00,$00,$00,$00 ; |... @ @ @.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$10 ; |................|
	.BYTE	$19,$1f,$0f,$0f,$07,$07,$03,$03,$01,$01,$01,$01,$03,$07,$0f,$0d ; |................|
	.BYTE	$1a,$19,$3a,$39,$3a,$13,$17,$37,$37,$37,$37,$17,$13,$13,$33,$2b ; |..:9:..7777...3+|
	.BYTE	$1b,$07,$07,$0e,$1c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10 ; |................|
	.BYTE	$10,$10,$10,$30,$30,$38,$78,$78,$7a,$7a,$6e,$6e,$66,$60,$33,$31 ; |...008xxzznnf`31|
	.BYTE	$38,$39,$1d,$1c,$1e,$1e,$0e,$0e,$0c,$00,$00,$02,$01,$02,$21,$22 ; |89............!"|
	.BYTE	$21,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$00,$00,$00 ; |!...............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$40,$80 ; |.............@@.|
	.BYTE	$00,$00,$00,$00,$00,$00,$04,$04,$cc,$fc,$f8,$f8,$f0,$f0,$e0,$e0 ; |................|
	.BYTE	$c0,$c0,$40,$c0,$e0,$f0,$f8,$d8,$ac,$cc,$ac,$cd,$ae,$e6,$f4,$76 ; |..@............v|
	.BYTE	$76,$76,$76,$74,$64,$64,$66,$62,$6c,$78,$70,$38,$1c,$00,$00,$00 ; |vvvtddfblxp8....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$04,$04,$44,$44,$86,$06,$0e,$0f,$0f ; |.........DD.....|
	.BYTE	$2f,$2f,$3b,$3b,$33,$03,$66,$26,$0e,$ce,$5c,$1c,$3c,$3c,$b8,$38 ; |//;;3.f&..\.<<.8|
	.BYTE	$18,$00,$00,$20,$40,$20,$40,$21,$42,$02,$00,$00,$00,$00,$00,$00 ; |... @ @!B.......|
	.BYTE	$00,$00,$00,$00,$08,$08,$00,$00,$00,$00,$0e,$08,$f6,$29,$00,$64 ; |.............).d|
	.BYTE	$40,$04,$01,$64,$00,$64,$40,$08,$00,$00,$00,$00,$00,$00,$00,$00 ; |@..d.d@.........|
	.BYTE	$00,$00,$00,$00,$00,$13,$0b,$07,$02,$c1,$c0,$c1,$c1,$61,$65,$65 ; |.............aee|
	.BYTE	$64,$30,$30,$30,$30,$30,$18,$1b,$07,$02,$01,$00,$00,$00,$00,$00 ; |d00000..........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$06,$06,$06,$0c,$1c ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$07,$1f ; |................|
	.BYTE	$3f,$01,$03,$03,$03,$01,$00,$03,$07,$0f,$0b,$0b,$0b,$0f,$3f,$37 ; |?.............?7|
	.BYTE	$37,$27,$07,$00,$00,$01,$02,$03,$03,$03,$03,$07,$07,$07,$07,$07 ; |7'..............|
	.BYTE	$07,$0f,$0f,$0f,$0f,$0f,$06,$06,$06,$06,$0c,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$e3,$e3,$c3 ; |................|
	.BYTE	$c3,$83,$83,$83,$83,$83,$b3,$b7,$93,$83,$03,$02,$1c,$78,$f0,$c0 ; |.............x..|
	.BYTE	$00,$f8,$f8,$38,$68,$50,$50,$50,$50,$00,$00,$00,$00,$00,$00,$00 ; |...8hPPPP.......|
	.BYTE	$00,$00,$30,$30,$30,$30,$30,$30,$30,$38,$1c,$00,$00,$00,$00,$00 ; |..00000008......|
	.BYTE	$00,$00,$00,$00,$00,$80,$c0,$f0,$f8,$00,$80,$c0,$80,$80,$e0,$f0 ; |................|
	.BYTE	$fb,$fb,$cb,$cf,$ec,$fc,$fc,$f8,$e0,$80,$08,$38,$f8,$00,$00,$c0 ; |...........8....|
	.BYTE	$90,$a8,$a8,$a8,$a8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$30,$30 ; |..............00|
	.BYTE	$30,$30,$30,$30,$30,$18,$00,$00,$00,$0f,$0f,$0f,$60,$60,$60,$60 ; |00000.......````|
	.BYTE	$60,$60,$e0,$e0,$c0,$f3,$eb,$e7,$e2,$c1,$c0,$41,$01,$01,$05,$05 ; |``.........A....|
	.BYTE	$04,$00,$00,$00,$00,$00,$00,$03,$03,$02,$01,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$06,$06,$06,$0e,$0c ; |................|
	.BYTE	$1c,$00,$00,$00,$00,$00,$10,$20,$00,$00,$00,$00,$00,$03,$07,$1f ; |....... ........|
	.BYTE	$ff,$e1,$63,$63,$23,$21,$30,$33,$37,$3f,$3b,$1b,$0b,$0f,$0f,$07 ; |..cc#!037?;.....|
	.BYTE	$07,$07,$07,$00,$00,$01,$02,$03,$03,$03,$03,$07,$07,$07,$07,$07 ; |................|
	.BYTE	$07,$0f,$0f,$0f,$0f,$0f,$06,$06,$06,$06,$0e,$0c,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$80,$f8,$f8,$78,$00,$03,$03,$03,$03,$03,$03,$03,$e3,$e3,$c3 ; |....x...........|
	.BYTE	$c3,$83,$83,$81,$80,$80,$b0,$b0,$90,$80,$00,$00,$18,$78,$f0,$c0 ; |.............x..|
	.BYTE	$00,$f8,$f8,$38,$68,$50,$50,$48,$20,$00,$00,$00,$00,$00,$00,$00 ; |...8hPPH .......|
	.BYTE	$00,$00,$30,$30,$30,$30,$30,$30,$38,$1c,$00,$00,$00,$00,$00,$04 ; |..0000008.......|
	.BYTE	$02,$00,$00,$00,$00,$80,$c0,$f0,$fb,$03,$83,$c3,$82,$80,$e0,$f6 ; |................|
	.BYTE	$fe,$fe,$ce,$ce,$ec,$fc,$fc,$f8,$e0,$80,$08,$38,$f8,$00,$00,$c0 ; |...........8....|
	.BYTE	$90,$a8,$a8,$b0,$d8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$30,$30 ; |..............00|
	.BYTE	$30,$30,$30,$30,$18,$00,$00,$00,$0a,$04,$fa,$f6,$00,$64,$01,$64 ; |0000.........d.d|
	.BYTE	$40,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$78 ; |@..............x|
	.BYTE	$18,$00,$0f,$0f,$0f,$0d,$0f,$0f,$1e,$1b,$31,$41,$05,$0d,$1c,$18 ; |..........1A....|
	.BYTE	$38,$30,$61,$63,$63,$73,$71,$0c,$06,$0b,$0d,$0e,$0e,$0e,$0e,$0e ; |80accsq.........|
	.BYTE	$0e,$06,$06,$06,$06,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$7b,$1f,$0f,$0f,$0e ; |...........{....|
	.BYTE	$0c,$0a,$08,$08,$19,$18,$30,$40,$02,$02,$03,$07,$07,$07,$02,$00 ; |......0@........|
	.BYTE	$00,$80,$0e,$3f,$0f,$07,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |...?............|
	.BYTE	$00,$00,$06,$06,$06,$06,$06,$0e,$1c,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$1e,$18,$00,$e0,$e0,$e0,$a0,$e0,$f0 ; |................|
	.BYTE	$70,$d8,$8c,$86,$d0,$d8,$98,$08,$08,$98,$98,$fc,$cc,$cc,$8e,$06 ; |p...............|
	.BYTE	$06,$10,$b0,$f0,$70,$70,$78,$7c,$76,$60,$60,$60,$60,$60,$00,$00 ; |....ppx|v`````..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$80,$de,$f8,$f0,$e0,$60,$20,$40,$00,$10,$90,$18,$0c,$06 ; |.......` @......|
	.BYTE	$20,$20,$60,$f0,$f0,$60,$60,$00,$00,$00,$60,$f0,$f0,$e0,$c0,$c0 ; |  `..``...`.....|
	.BYTE	$60,$30,$18,$0c,$06,$00,$00,$00,$00,$00,$60,$60,$60,$60,$60,$70 ; |`0........`````p|
	.BYTE	$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$78 ; |8..............x|
	.BYTE	$18,$00,$0f,$0f,$0f,$0d,$0f,$0f,$1e,$db,$71,$01,$0d,$1d,$1d,$38 ; |..........q....8|
	.BYTE	$38,$30,$65,$67,$73,$39,$1d,$00,$00,$08,$0c,$0e,$0e,$0e,$0e,$0e ; |80egs9..........|
	.BYTE	$0e,$06,$06,$06,$06,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$7b,$1f,$0f,$0f,$0e ; |...........{....|
	.BYTE	$0c,$0a,$08,$08,$19,$d8,$70,$00,$02,$02,$02,$07,$07,$07,$03,$03 ; |......p.........|
	.BYTE	$0e,$06,$02,$3f,$2f,$07,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |...?/...........|
	.BYTE	$00,$00,$06,$06,$06,$06,$06,$0e,$1c,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$1e,$18,$00,$e0,$e0,$e0,$a0,$e0,$f0 ; |................|
	.BYTE	$70,$d8,$8c,$87,$de,$dc,$9c,$bc,$6c,$ce,$86,$c6,$c6,$c6,$87,$03 ; |p.......l.......|
	.BYTE	$03,$10,$30,$70,$70,$70,$70,$70,$70,$60,$60,$60,$60,$60,$00,$00 ; |..0pppppp`````..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$80,$de,$f8,$f0,$e0,$60,$20,$40,$00,$10,$90,$18,$0c,$07 ; |.......` @......|
	.BYTE	$26,$2c,$78,$70,$f0,$e0,$e0,$00,$00,$00,$60,$f0,$f0,$e0,$c0,$00 ; |&,xp......`.....|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$60,$60,$60,$60,$70 ; |..........`````p|
	.BYTE	$38,$00,$08,$04,$fa,$f4,$00,$00,$40,$04,$00,$00,$00,$00,$00,$00 ; |8.......@.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$07,$07,$0f ; |................|
	.BYTE	$0f,$0f,$07,$07,$0f,$0f,$0f,$1c,$18,$18,$39,$33,$32,$38,$1c,$00 ; |..........9328..|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$06,$06,$06,$06,$06,$06,$06,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$03,$07,$07,$0e,$0c,$08,$08,$08,$08,$0c,$06,$06 ; |................|
	.BYTE	$0e,$06,$07,$07,$07,$07,$07,$07,$0f,$07,$03,$3f,$27,$07,$07,$07 ; |...........?'...|
	.BYTE	$0f,$0f,$0f,$00,$00,$00,$00,$00,$00,$00,$06,$06,$06,$06,$0e,$0c ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$80,$c0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$f0,$f0,$90,$b0 ; |................|
	.BYTE	$70,$d0,$90,$38,$38,$18,$08,$00,$04,$06,$02,$03,$01,$00,$00,$c0 ; |p..88...........|
	.BYTE	$c0,$c0,$c0,$c0,$c0,$c0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0,$e0,$e0,$70 ; |...............p|
	.BYTE	$30,$10,$00,$00,$00,$20,$60,$60,$70,$20,$60,$40,$e0,$e0,$e0,$c0 ; |0.... ``p `@....|
	.BYTE	$c0,$c2,$c6,$cc,$dc,$d6,$e2,$e3,$f1,$f0,$f0,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$c0,$c0,$c0,$c0,$c0,$e0,$e0,$00,$0c,$04,$34,$c8,$00,$11 ; |............4...|
	.BYTE	$01,$11,$02,$11,$40,$04,$04,$08,$18,$18,$18,$18,$30,$30,$30,$30 ; |....@.......0000|
	.BYTE	$30,$30,$70,$60,$67,$6f,$6f,$ff,$ff,$6d,$6f,$6f,$67,$67,$63,$01 ; |00p`goo..mooggc.|
	.BYTE	$01,$01,$00,$01,$00,$00,$01,$10,$30,$3f,$3f,$3f,$30,$30,$30,$70 ; |........0???000p|
	.BYTE	$70,$71,$71,$71,$71,$71,$71,$71,$71,$71,$70,$00,$00,$00,$0e,$0e ; |pqqqqqqqqqp.....|
	.BYTE	$1c,$00,$04,$08,$18,$18,$18,$18,$30,$30,$30,$30,$30,$30,$70,$60 ; |........000000p`|
	.BYTE	$60,$60,$60,$03,$07,$67,$67,$60,$11,$08,$0c,$67,$7f,$7f,$7f,$7e ; |```..gg`...g...~|
	.BYTE	$3f,$3f,$1e,$0f,$0f,$00,$01,$00,$0f,$0f,$0f,$0f,$0f,$0e,$0e,$0e ; |??..............|
	.BYTE	$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0,$e0,$e0,$e0 ; |................|
	.BYTE	$e2,$62,$e6,$e7,$c7,$c7,$82,$00,$06,$06,$06,$07,$07,$07,$06,$10 ; |.b..............|
	.BYTE	$10,$f0,$f8,$f8,$1c,$1c,$1c,$1c,$1e,$1e,$1e,$1e,$1e,$1e,$1e,$1e ; |................|
	.BYTE	$1e,$1e,$00,$00,$00,$00,$e0,$e0,$70,$00,$00,$00,$00,$00,$00,$00 ; |........p.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$c2,$c0,$c0,$02 ; |................|
	.BYTE	$12,$20,$60,$c0,$f0,$f8,$fc,$ff,$ff,$ff,$f8,$ee,$ee,$0c,$00,$00 ; |. `.............|
	.BYTE	$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0 ; |................|
	.BYTE	$e0,$e0,$00,$00,$00,$00,$04,$08,$18,$18,$18,$18,$30,$30,$30,$30 ; |............0000|
	.BYTE	$30,$30,$70,$60,$67,$6f,$6f,$ff,$ff,$6d,$6f,$6f,$67,$67,$63,$01 ; |00p`goo..mooggc.|
	.BYTE	$01,$01,$00,$01,$00,$00,$01,$10,$30,$3f,$3f,$3f,$30,$30,$30,$70 ; |........0???000p|
	.BYTE	$70,$71,$71,$71,$71,$71,$71,$71,$71,$71,$70,$00,$00,$00,$0e,$0e ; |pqqqqqqqqqp.....|
	.BYTE	$1c,$00,$04,$08,$18,$18,$18,$18,$30,$30,$30,$30,$30,$30,$70,$60 ; |........000000p`|
	.BYTE	$60,$60,$60,$03,$07,$67,$67,$60,$11,$08,$0c,$67,$7f,$7f,$7f,$7e ; |```..gg`...g...~|
	.BYTE	$3f,$3f,$1e,$0f,$0f,$00,$01,$00,$0f,$0f,$0f,$0f,$0f,$0e,$0e,$0e ; |??..............|
	.BYTE	$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0,$e4,$e4,$e2 ; |................|
	.BYTE	$e0,$62,$e6,$e7,$c7,$c7,$82,$00,$06,$06,$06,$07,$07,$07,$06,$10 ; |.b..............|
	.BYTE	$10,$f0,$f8,$f8,$1c,$1c,$1c,$1c,$1e,$1e,$1e,$1e,$1e,$1e,$1e,$1e ; |................|
	.BYTE	$1e,$1e,$00,$00,$00,$00,$e0,$e0,$70,$00,$00,$00,$00,$00,$00,$00 ; |........p.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$82,$c0,$c0,$c0,$04 ; |................|
	.BYTE	$12,$20,$60,$c0,$f0,$f8,$fc,$ff,$ff,$ff,$f8,$ee,$ee,$0c,$00,$00 ; |. `.............|
	.BYTE	$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0 ; |................|
	.BYTE	$e0,$e0,$00,$00,$00,$00,$04,$08,$18,$18,$18,$18,$30,$30,$30,$30 ; |............0000|
	.BYTE	$30,$30,$70,$60,$67,$6f,$6f,$ff,$ff,$6d,$6f,$6f,$67,$67,$63,$01 ; |00p`goo..mooggc.|
	.BYTE	$01,$01,$00,$01,$00,$00,$01,$10,$30,$3f,$3f,$3f,$30,$30,$30,$70 ; |........0???000p|
	.BYTE	$70,$71,$71,$71,$71,$71,$71,$71,$71,$71,$00,$00,$00,$00,$0e,$0e ; |pqqqqqqqqq......|
	.BYTE	$1c,$00,$04,$08,$18,$18,$18,$18,$30,$30,$30,$30,$30,$30,$70,$60 ; |........000000p`|
	.BYTE	$60,$60,$60,$03,$07,$67,$67,$60,$11,$08,$0c,$67,$7f,$7f,$7f,$7e ; |```..gg`...g...~|
	.BYTE	$3f,$3f,$1e,$0f,$0f,$00,$01,$00,$0f,$0f,$0f,$0f,$0f,$0e,$0e,$0e ; |??..............|
	.BYTE	$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$c2,$e0,$e0,$e0 ; |................|
	.BYTE	$e0,$64,$e6,$e6,$c6,$c6,$82,$00,$06,$06,$06,$07,$07,$07,$06,$10 ; |.d..............|
	.BYTE	$10,$f0,$f0,$f0,$18,$18,$18,$18,$1c,$1c,$1c,$1c,$1c,$1c,$1c,$1c ; |................|
	.BYTE	$1c,$1c,$1c,$00,$00,$00,$e0,$e0,$70,$00,$00,$00,$00,$00,$00,$00 ; |........p.......|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$02,$02,$00,$00,$80,$c0,$c0,$c0,$02 ; |................|
	.BYTE	$12,$20,$60,$c0,$f0,$f8,$fc,$ff,$ff,$ff,$f8,$ee,$ee,$0c,$00,$00 ; |. `.............|
	.BYTE	$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0 ; |................|
	.BYTE	$e0,$e0,$00,$00,$00,$00,$0a,$04,$c2,$a8,$00,$1c,$01,$1c,$40,$04 ; |..............@.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$09,$1f,$0f,$39,$19 ; |..............9.|
	.BYTE	$36,$10,$10,$36,$31,$39,$39,$38,$31,$39,$39,$19,$1d,$0f,$07,$07 ; |6..61998199.....|
	.BYTE	$00,$00,$10,$17,$1f,$7f,$7e,$5e,$5f,$77,$74,$50,$40,$00,$00,$00 ; |......~^_wtP@...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$09,$1f,$0f,$3f,$1f,$3f,$1f,$1f,$3f ; |..........?.?..?|
	.BYTE	$3f,$3f,$3f,$3f,$3e,$37,$77,$77,$53,$c1,$d8,$98,$9e,$de,$ce,$68 ; |????>7wwS......h|
	.BYTE	$60,$00,$01,$21,$20,$08,$09,$2c,$1c,$1c,$1c,$18,$38,$38,$30,$30 ; |`..! ..,....8800|
	.BYTE	$30,$60,$71,$31,$38,$7c,$00,$00,$00,$00,$00,$08,$08,$2a,$2a,$2a ; |0`q18|.......***|
	.BYTE	$2a,$2a,$3e,$1c,$88,$08,$c8,$88,$88,$c8,$88,$c8,$88,$c8,$c8,$c8 ; |**>.............|
	.BYTE	$c8,$88,$88,$88,$88,$88,$88,$08,$08,$00,$00,$08,$08,$88,$88,$c8 ; |................|
	.BYTE	$48,$48,$48,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; |HHH.............|
	.BYTE	$08,$08,$08,$00,$00,$00,$00,$08,$08,$2a,$2a,$2a,$2a,$2a,$3e,$1c ; |.........*****>.|
	.BYTE	$88,$08,$c8,$80,$80,$c0,$80,$c0,$80,$c0,$c0,$c0,$c0,$80,$c0,$c0 ; |................|
	.BYTE	$60,$60,$30,$30,$10,$1c,$0c,$00,$00,$00,$00,$00,$80,$80,$80,$e0 ; |``00............|
	.BYTE	$e0,$60,$60,$e0,$e0,$c0,$c0,$c0,$c0,$c0,$80,$c0,$c0,$e0,$f0,$00 ; |.``.............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$09,$1f,$0f,$39,$19 ; |..............9.|
	.BYTE	$36,$10,$10,$36,$31,$39,$39,$38,$31,$39,$39,$19,$1d,$0f,$07,$07 ; |6..61998199.....|
	.BYTE	$00,$00,$10,$17,$1f,$7f,$7e,$5e,$5f,$77,$74,$50,$40,$00,$00,$00 ; |......~^_wtP@...|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$09,$1f,$0f,$3f,$1f,$3f,$1f,$1f,$3f ; |..........?.?..?|
	.BYTE	$3f,$3f,$3f,$3f,$3e,$37,$77,$77,$53,$c1,$d8,$98,$9e,$de,$ce,$68 ; |????>7wwS......h|
	.BYTE	$60,$00,$01,$21,$20,$08,$09,$2c,$1c,$1c,$1c,$18,$38,$38,$30,$30 ; |`..! ..,....8800|
	.BYTE	$30,$60,$71,$31,$38,$7c,$00,$00,$08,$2a,$2a,$2a,$2a,$2a,$3e,$1c ; |0`q18|...*****>.|
	.BYTE	$08,$08,$08,$08,$88,$08,$c8,$88,$88,$c8,$88,$c8,$88,$c8,$c8,$c8 ; |................|
	.BYTE	$c8,$88,$88,$88,$88,$80,$80,$08,$08,$08,$08,$08,$08,$88,$88,$c8 ; |................|
	.BYTE	$48,$48,$48,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00 ; |HHH.............|
	.BYTE	$00,$00,$00,$00,$08,$2a,$2a,$2a,$2a,$2a,$3e,$1c,$08,$08,$08,$00 ; |.....*****>.....|
	.BYTE	$80,$00,$c0,$80,$80,$c0,$80,$c0,$80,$c0,$c0,$c0,$c0,$80,$c0,$e0 ; |................|
	.BYTE	$70,$3c,$1c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$e0 ; |p<..............|
	.BYTE	$e0,$60,$60,$e0,$e0,$c0,$c0,$c0,$c0,$c0,$80,$c0,$c0,$e0,$f0,$00 ; |.``.............|
	.BYTE	$0a,$04,$47,$72,$00,$21,$01,$21,$40,$04,$00,$00,$00,$00,$00,$05 ; |..Gr.!.!@.......|
	.BYTE	$05,$05,$00,$00,$00,$02,$0a,$0a,$12,$16,$27,$2f,$2f,$7f,$7f,$ff ; |..........'//...|
	.BYTE	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$7f,$7b,$79,$78,$3a,$39,$3c,$3e,$3f ; |........{yx:9<>?|
	.BYTE	$3f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$3f,$3f,$3f,$3f,$7f,$7f ; |?.........????..|
	.BYTE	$7f,$7f,$ff,$ff,$c0,$00,$00,$00,$00,$07,$0f,$0a,$0a,$0a,$0f,$1f ; |................|
	.BYTE	$1f,$3f,$37,$25,$6d,$49,$d8,$90,$10,$00,$00,$01,$21,$23,$33,$1f ; |.?7%mI......!#3.|
	.BYTE	$8f,$0f,$87,$07,$0f,$4f,$0f,$2d,$0e,$1b,$09,$00,$00,$00,$00,$00 ; |.....O.-........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$03,$03,$07,$3f ; |...............?|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$80,$00,$00,$40,$40,$40,$c0,$c0,$c0,$e0,$e0,$f0,$70,$70,$70,$38 ; |...@@@......ppp8|
	.BYTE	$b8,$bc,$b8,$98,$d8,$d8,$d8,$c8,$c8,$c8,$e0,$e0,$e0,$e0,$e0,$e0 ; |................|
	.BYTE	$e0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f8,$f8,$1c,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$80,$80,$80,$80,$80,$80,$c0,$40,$60,$20,$30,$90,$90,$90 ; |.........@` 0...|
	.BYTE	$90,$80,$00,$00,$00,$00,$80,$c0,$40,$40,$60,$20,$a0,$a0,$b6,$97 ; |........@@` ....|
	.BYTE	$d5,$56,$5b,$49,$48,$48,$60,$60,$60,$e0,$e0,$e0,$e0,$f0,$f0,$f0 ; |.V[IHH```.......|
	.BYTE	$f0,$f0,$f0,$f0,$f0,$f8,$f8,$1c,$00,$00,$00,$00,$00,$00,$00,$05 ; |................|
	.BYTE	$05,$05,$00,$00,$00,$02,$0a,$0a,$0a,$1a,$13,$37,$36,$7e,$7f,$ff ; |...........76~..|
	.BYTE	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$7f,$7b,$79,$78,$3a,$39,$3c,$3e,$3f ; |........{yx:9<>?|
	.BYTE	$3f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$3f,$3f,$3f,$3f,$7f,$7f ; |?.........????..|
	.BYTE	$7f,$7f,$ff,$ff,$c0,$00,$00,$00,$00,$07,$0f,$0a,$0a,$0a,$0f,$0f ; |................|
	.BYTE	$1f,$1f,$17,$15,$35,$25,$6c,$48,$49,$01,$00,$01,$21,$33,$33,$1f ; |....5%lHI...!33.|
	.BYTE	$8f,$0f,$87,$07,$0f,$4f,$0f,$2d,$0e,$1b,$09,$00,$00,$00,$00,$00 ; |.....O.-........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$03,$07,$3f ; |...............?|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80 ; |................|
	.BYTE	$80,$00,$00,$40,$40,$c0,$c0,$c0,$c0,$e0,$e0,$f0,$70,$70,$70,$38 ; |...@@.......ppp8|
	.BYTE	$b8,$bc,$b8,$98,$d8,$d8,$d8,$c8,$c8,$c8,$e0,$e0,$e0,$e0,$e0,$e0 ; |................|
	.BYTE	$e0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f8,$f8,$1c,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$80,$80,$80,$80,$80,$80,$c0,$60,$20,$30,$10,$90,$90,$b0 ; |.........` 0....|
	.BYTE	$a0,$20,$00,$00,$00,$00,$80,$c0,$40,$60,$60,$20,$a0,$b0,$b6,$17 ; |. ......@`` ....|
	.BYTE	$55,$5e,$5b,$49,$48,$48,$60,$60,$60,$60,$60,$60,$60,$70,$70,$70 ; |U^[IHH```````ppp|
	.BYTE	$f0,$f0,$f0,$f0,$f0,$f8,$f8,$1c,$00,$00,$0a,$04,$c4,$ca,$00,$40 ; |...............@|
	.BYTE	$01,$40,$40,$04,$00,$00,$00,$00,$20,$11,$0b,$04,$05,$f8,$08,$18 ; |.@@..... .......|
	.BYTE	$fc,$1f,$3f,$4f,$87,$07,$0f,$1d,$3d,$3b,$71,$79,$67,$f3,$cb,$c7 ; |..?O....=;qyg...|
	.BYTE	$fc,$e6,$fd,$bc,$9b,$ec,$df,$f9,$77,$73,$73,$71,$71,$78,$78,$78 ; |........wssqqxxx|
	.BYTE	$38,$38,$38,$38,$38,$38,$30,$30,$70,$70,$60,$60,$e1,$e1,$f1,$00 ; |88888800pp``....|
	.BYTE	$00,$00,$00,$00,$20,$1f,$1f,$3b,$7a,$f7,$77,$e7,$e3,$e0,$e0,$f0 ; |.... ..;z.w.....|
	.BYTE	$f8,$00,$01,$03,$07,$07,$0f,$0f,$1f,$1f,$3f,$3f,$1f,$1f,$0f,$43 ; |..........??...C|
	.BYTE	$65,$37,$3a,$1e,$0c,$0c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |e7:.............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80 ; |................|
	.BYTE	$80,$00,$80,$00,$80,$00,$01,$79,$29,$c1,$81,$81,$c5,$c5,$e5,$67 ; |.......y)......g|
	.BYTE	$67,$e7,$23,$21,$a1,$71,$7f,$ff,$bf,$03,$01,$81,$81,$c1,$c1,$c1 ; |g.#!.q..........|
	.BYTE	$e1,$e1,$e1,$f1,$f9,$f9,$f9,$79,$39,$79,$71,$71,$71,$61,$e1,$e1 ; |.......y9yqqqa..|
	.BYTE	$e1,$e1,$c1,$c1,$c1,$c1,$e1,$00,$00,$00,$00,$80,$80,$80,$80,$c0 ; |................|
	.BYTE	$70,$f8,$f9,$a9,$f9,$01,$01,$01,$05,$05,$05,$87,$87,$c7,$c3,$c1 ; |p...............|
	.BYTE	$c0,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$20,$11,$0b,$04,$05,$f8,$08,$18 ; |........ .......|
	.BYTE	$fc,$1f,$3f,$4f,$87,$07,$0f,$1d,$3d,$3b,$71,$79,$67,$f3,$cb,$c7 ; |..?O....=;qyg...|
	.BYTE	$fc,$e6,$fd,$bc,$9b,$ec,$df,$f9,$77,$73,$73,$71,$71,$78,$78,$78 ; |........wssqqxxx|
	.BYTE	$38,$38,$38,$38,$38,$38,$30,$30,$70,$70,$60,$60,$e1,$e1,$f1,$00 ; |88888800pp``....|
	.BYTE	$00,$00,$00,$00,$20,$1f,$1f,$3b,$7a,$f7,$77,$e7,$e3,$e0,$e0,$f0 ; |.... ..;z.w.....|
	.BYTE	$f8,$00,$01,$03,$07,$07,$0f,$0f,$1f,$1f,$3f,$3f,$1f,$1f,$0f,$43 ; |..........??...C|
	.BYTE	$65,$37,$3a,$1e,$0c,$0c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |e7:.............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80 ; |................|
	.BYTE	$80,$00,$80,$00,$80,$00,$01,$29,$69,$21,$99,$91,$c5,$c5,$e5,$67 ; |.......)i!.....g|
	.BYTE	$67,$e7,$23,$21,$a1,$71,$7f,$ff,$bf,$03,$01,$81,$81,$c1,$c1,$c1 ; |g.#!.q..........|
	.BYTE	$e1,$e1,$e1,$f1,$f9,$f9,$f9,$79,$39,$79,$71,$71,$71,$61,$e1,$e1 ; |.......y9yqqqa..|
	.BYTE	$e1,$e1,$c1,$c1,$c1,$c1,$e1,$00,$00,$00,$00,$80,$80,$80,$80,$c0 ; |................|
	.BYTE	$70,$f8,$f9,$b9,$a9,$c1,$41,$01,$05,$05,$05,$87,$87,$c7,$c3,$c1 ; |p.....A.........|
	.BYTE	$c0,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$0e,$04,$c3,$46,$00,$12,$01,$12,$02,$0a,$03,$0e ; |.......F........|
	.BYTE	$40,$04,$00,$00,$00,$00,$0c,$1e,$3f,$3f,$7e,$7e,$7f,$7f,$7f,$7f ; |@.......??~~....|
	.BYTE	$3f,$3e,$3e,$18,$1d,$0f,$0f,$0f,$07,$07,$07,$0f,$0f,$0f,$1f,$1f ; |?>>.............|
	.BYTE	$1f,$3f,$3e,$3e,$7e,$7e,$7c,$fc,$fc,$fc,$fc,$fc,$f8,$f8,$f9,$f9 ; |.?>>~~|.........|
	.BYTE	$f8,$f8,$f8,$fc,$fc,$7e,$7f,$7f,$3f,$3f,$1f,$0f,$07,$00,$00,$00 ; |.....~..??......|
	.BYTE	$00,$06,$03,$01,$04,$0e,$1d,$19,$30,$35,$38,$18,$18,$19,$0f,$0f ; |........058.....|
	.BYTE	$0e,$06,$07,$03,$03,$03,$03,$03,$07,$07,$07,$0e,$0e,$1e,$1c,$1c ; |................|
	.BYTE	$3c,$38,$38,$78,$78,$70,$f0,$f0,$f1,$e1,$e0,$e0,$e0,$e4,$f4,$f2 ; |<88xxp..........|
	.BYTE	$f2,$71,$78,$78,$3c,$3c,$1e,$0f,$07,$00,$00,$00,$00,$00,$00,$00 ; |.qxx<<..........|
	.BYTE	$00,$20,$60,$f0,$f0,$f0,$f0,$a0,$20,$40,$40,$c0,$00,$00,$80,$80 ; |. `..... @@.....|
	.BYTE	$80,$c0,$c0,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$08,$10,$20,$40,$00,$00,$80,$c0,$60,$20,$20,$08,$18,$30,$f0 ; |... @....`  ..0.|
	.BYTE	$e0,$e0,$c0,$c0,$80,$00,$00,$00,$00,$00,$00,$80,$c0,$c0,$80,$00 ; |................|
	.BYTE	$00,$80,$00,$40,$c0,$80,$80,$00,$00,$00,$00,$00,$00,$80,$80,$00 ; |...@............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$30,$60,$c0 ; |.............0`.|
	.BYTE	$80,$80,$c0,$60,$30,$18,$18,$18,$30,$60,$c0,$00,$00,$00,$00,$c0 ; |...`0...0`......|
	.BYTE	$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$09,$3b ; |...............;|
	.BYTE	$3f,$1f,$1f,$1e,$1c,$19,$01,$02,$00,$00,$00,$01,$01,$03,$03,$07 ; |?...............|
	.BYTE	$07,$0f,$1f,$1f,$3f,$3e,$7e,$7c,$7c,$fc,$f8,$f8,$f8,$f8,$f9,$f9 ; |....?>~||.......|
	.BYTE	$f8,$f8,$f8,$fc,$fc,$7e,$7f,$7f,$3f,$3f,$1f,$0f,$03,$00,$00,$00 ; |.....~..??......|
	.BYTE	$00,$00,$00,$00,$00,$00,$01,$03,$03,$06,$06,$04,$00,$16,$00,$01 ; |................|
	.BYTE	$03,$06,$06,$0c,$04,$00,$00,$01,$01,$03,$03,$07,$07,$0e,$1e,$1c ; |................|
	.BYTE	$3c,$38,$78,$70,$70,$f0,$e0,$e0,$e1,$e1,$e0,$e0,$e4,$e4,$e4,$f2 ; |<8xpp...........|
	.BYTE	$f2,$71,$78,$78,$3c,$3e,$1f,$0f,$03,$00,$00,$00,$00,$00,$00,$00 ; |.qxx<>..........|
	.BYTE	$00,$30,$78,$f8,$fc,$fc,$fc,$fc,$fc,$fc,$bc,$bc,$bc,$7c,$7c,$78 ; |.0x..........||x|
	.BYTE	$f8,$f8,$f0,$f0,$f0,$e0,$e0,$c0,$c0,$80,$80,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$10,$60,$00,$00,$80,$c0,$60,$20,$20,$20,$08,$10,$f0 ; |....`....`   ...|
	.BYTE	$e0,$e0,$c0,$c0,$80,$00,$00,$00,$00,$00,$00,$00,$60,$c0,$80,$30 ; |............`..0|
	.BYTE	$30,$78,$78,$38,$38,$38,$38,$38,$38,$70,$70,$70,$e0,$e0,$e0,$c0 ; |0xx888888ppp....|
	.BYTE	$c0,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$e0 ; |..............0.|
	.BYTE	$80,$80,$c0,$60,$30,$18,$18,$18,$18,$b0,$e0,$00,$00,$00,$00,$c0 ; |...`0...........|
	.BYTE	$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$01,$03,$13,$77,$7f,$3f,$3f,$3d,$39,$32,$02,$04,$00,$00 ; |.....w.??=92....|
	.BYTE	$00,$00,$01,$03,$07,$0f,$1f,$1f,$3f,$3e,$7e,$7c,$7c,$fc,$fc,$fc ; |........?>~||...|
	.BYTE	$fc,$7c,$7c,$7e,$7e,$3f,$3f,$1f,$1f,$0f,$0f,$07,$01,$00,$00,$00 ; |.||~~??.........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$06,$0c ; |................|
	.BYTE	$0c,$08,$00,$2c,$00,$02,$06,$0c,$0c,$18,$10,$20,$60,$a0,$21,$03 ; |...,....... `.!.|
	.BYTE	$07,$0e,$1c,$1c,$38,$38,$70,$70,$70,$e0,$e0,$e0,$e2,$72,$72,$71 ; |....88ppp....rrq|
	.BYTE	$79,$38,$38,$1c,$1c,$0e,$0f,$07,$01,$00,$00,$00,$00,$00,$00,$00 ; |y88.............|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$f0,$f8,$fc,$fc,$be,$be,$9f ; |................|
	.BYTE	$1f,$0f,$0f,$0f,$0f,$1f,$1e,$3e,$7c,$fc,$f8,$f0,$e0,$c0,$80,$00 ; |.......>|.......|
	.BYTE	$00,$00,$00,$00,$00,$10,$00,$40,$60,$30,$18,$0c,$04,$04,$84,$c9 ; |.......@`0......|
	.BYTE	$e3,$fe,$fe,$fc,$f8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$e0,$00,$00,$40,$e0,$30,$30,$18,$18,$0c,$0c,$0c ; |.......@.00.....|
	.BYTE	$0c,$18,$18,$30,$70,$e0,$c0,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; |...0p...........|
	.BYTE	$30,$60,$60,$30,$18,$0c,$06,$03,$03,$83,$43,$26,$1c,$00,$00,$80 ; |0``0......C&....|
	.BYTE	$e0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$17,$27,$ef ; |..............'.|
	.BYTE	$ff,$7f,$7e,$7a,$72,$64,$04,$08,$01,$01,$01,$03,$03,$03,$07,$07 ; |..~zrd..........|
	.BYTE	$07,$0f,$0f,$0f,$1f,$1f,$1f,$3f,$3f,$3f,$3f,$3f,$3f,$3f,$3f,$3f ; |.......?????????|
	.BYTE	$3f,$3f,$3f,$3f,$3f,$1f,$1f,$1f,$0f,$0f,$07,$03,$01,$00,$00,$00 ; |?????...........|
	.BYTE	$00,$00,$00,$00,$00,$01,$03,$06,$0c,$08,$19,$10,$00,$48,$00,$04 ; |.............H..|
	.BYTE	$0c,$18,$18,$30,$20,$e0,$20,$01,$01,$01,$03,$03,$03,$07,$07,$07 ; |...0 . .........|
	.BYTE	$0f,$0e,$0e,$1e,$1e,$3c,$3c,$3c,$3c,$3c,$3c,$3c,$3c,$3c,$3c,$3e ; |.....<<<<<<<<<<>|
	.BYTE	$3e,$1e,$1f,$1f,$0f,$0f,$07,$03,$01,$00,$00,$00,$00,$00,$00,$00 ; |>...............|
	.BYTE	$30,$78,$fc,$fc,$fe,$be,$3e,$3e,$3e,$7c,$7c,$7c,$f8,$f8,$f8,$f8 ; |0x....>>>|||....|
	.BYTE	$f0,$f0,$f0,$f0,$e0,$e0,$e0,$c0,$c0,$c0,$80,$80,$80,$80,$00,$00 ; |................|
	.BYTE	$02,$06,$04,$2c,$4c,$58,$58,$48,$64,$b2,$ba,$d2,$e6,$fe,$fe,$fc ; |...,LXXHd.......|
	.BYTE	$fc,$f8,$f8,$f0,$e0,$00,$00,$00,$00,$00,$00,$70,$c0,$80,$00,$00 ; |...........p....|
	.BYTE	$60,$b0,$18,$18,$18,$38,$30,$30,$70,$70,$60,$60,$e0,$e0,$e0,$c0 ; |`....800pp``....|
	.BYTE	$c0,$c0,$80,$80,$80,$00,$00,$00,$00,$00,$00,$02,$04,$08,$18,$10 ; |................|
	.BYTE	$30,$a0,$a0,$b0,$98,$4c,$44,$2c,$18,$00,$00,$00,$80,$80,$c0,$f0 ; |0....LD,........|
	.BYTE	$e0,$00,$0a,$04,$78,$54,$00,$20,$01,$20,$40,$04,$00,$00,$00,$00 ; |....xT. . @.....|
	.BYTE	$00,$06,$6c,$6c,$36,$3e,$38,$1c,$1e,$1e,$0e,$0f,$0f,$07,$07,$03 ; |..ll6>8.........|
	.BYTE	$03,$03,$43,$c3,$e0,$e6,$c0,$c3,$e0,$43,$40,$43,$00,$07,$10,$10 ; |..C......C@C....|
	.BYTE	$04,$04,$04,$0c,$0c,$0c,$0e,$0e,$0a,$00,$0a,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$3c,$28,$00,$00,$00,$00,$00,$00,$00,$60,$60 ; |.....<(.......``|
	.BYTE	$39,$39,$1f,$0f,$0d,$07,$07,$03,$03,$01,$01,$20,$30,$3c,$3c,$3c ; |99......... 0<<<|
	.BYTE	$1f,$09,$0f,$0c,$0f,$24,$27,$34,$37,$3f,$2f,$2f,$0f,$0b,$0b,$03 ; |.....$'47?//....|
	.BYTE	$03,$03,$00,$00,$04,$0e,$24,$3e,$0e,$0e,$06,$06,$06,$06,$06,$0e ; |......$>........|
	.BYTE	$1e,$02,$14,$00,$00,$00,$00,$00,$00,$c0,$60,$60,$c0,$c8,$08,$18 ; |..........``....|
	.BYTE	$90,$d0,$c0,$c0,$e0,$c0,$c0,$c0,$c0,$e0,$e4,$b6,$36,$c6,$06,$82 ; |............6...|
	.BYTE	$02,$81,$01,$81,$00,$c0,$00,$00,$40,$40,$40,$60,$60,$60,$e0,$e0 ; |........@@@```..|
	.BYTE	$a0,$00,$a0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$78,$28,$00 ; |.............x(.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$30,$20,$e0,$e0,$e0,$20,$20,$20 ; |........0 ...   |
	.BYTE	$00,$80,$84,$cc,$dc,$7c,$78,$78,$f0,$38,$f8,$7c,$ec,$4e,$c6,$46 ; |.....|xx.8.|.N.F|
	.BYTE	$c3,$c0,$e0,$e0,$e0,$a0,$a0,$80,$80,$80,$00,$00,$40,$e0,$48,$f8 ; |............@.H.|
	.BYTE	$e0,$e0,$c0,$c0,$c0,$c0,$c0,$e0,$f0,$80,$50,$00,$00,$00,$00,$00 ; |..........P.....|
	.BYTE	$00,$06,$0c,$0c,$06,$26,$20,$30,$12,$16,$06,$07,$0f,$07,$c7,$e3 ; |.....& 0........|
	.BYTE	$73,$3b,$5f,$4f,$67,$67,$e1,$c3,$c0,$63,$00,$03,$30,$07,$00,$00 ; |s;_Ogg...c..0...|
	.BYTE	$04,$04,$04,$0c,$0c,$0c,$0e,$0e,$0a,$00,$0a,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$3c,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |.....<(.........|
	.BYTE	$19,$09,$0f,$0f,$0f,$09,$09,$08,$01,$01,$c0,$e0,$70,$7c,$3c,$3e ; |............p|<>|
	.BYTE	$1f,$0b,$0f,$0c,$0f,$84,$e7,$f4,$47,$77,$0f,$0f,$0f,$0b,$0b,$03 ; |........Gw......|
	.BYTE	$03,$03,$00,$00,$04,$0e,$24,$3e,$0e,$0e,$06,$06,$06,$06,$06,$0e ; |......$>........|
	.BYTE	$1e,$02,$14,$00,$00,$00,$00,$00,$00,$c0,$60,$60,$c0,$c8,$08,$18 ; |..........``....|
	.BYTE	$90,$d0,$c0,$c0,$e0,$c0,$c0,$80,$80,$80,$84,$86,$06,$c6,$c7,$e3 ; |................|
	.BYTE	$73,$b1,$02,$84,$00,$c0,$00,$00,$40,$40,$40,$60,$60,$60,$e0,$e0 ; |s.......@@@```..|
	.BYTE	$a0,$00,$a0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$78,$28,$00 ; |.............x(.|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$30,$20,$e0,$e0,$e0,$20,$20,$20 ; |........0 ...   |
	.BYTE	$00,$00,$04,$0c,$1c,$7c,$78,$78,$f0,$a0,$e0,$e0,$f0,$7e,$fd,$4b ; |.....|xx.....~.K|
	.BYTE	$c6,$c3,$e0,$e0,$e0,$a0,$a0,$80,$80,$80,$00,$00,$40,$e0,$48,$f8 ; |............@.H.|
	.BYTE	$e0,$e0,$c0,$c0,$c0,$c0,$c0,$e0,$f0,$80,$50,$00,$0e,$08,$f8,$34 ; |..........P....4|
	.BYTE	$00,$3c,$40,$04,$01,$3c,$00,$3c,$40,$08,$02,$02,$07,$07,$0f,$0f ; |.<@..<.<@.......|
	.BYTE	$0f,$0a,$0f,$0f,$0f,$0f,$07,$07,$0f,$12,$18,$0f,$0f,$1f,$1f,$1f ; |................|
	.BYTE	$1f,$1f,$3f,$3f,$3f,$3f,$3f,$3f,$3f,$3f,$1f,$1f,$0f,$00,$00,$00 ; |..????????......|
	.BYTE	$00,$00,$00,$00,$00,$0c,$1c,$3c,$3c,$38,$38,$38,$78,$10,$40,$70 ; |.......<<888x.@p|
	.BYTE	$70,$60,$60,$70,$78,$3c,$02,$02,$07,$07,$0f,$0f,$08,$0d,$08,$00 ; |p``px<..........|
	.BYTE	$00,$02,$00,$00,$00,$1d,$3f,$3f,$7f,$7f,$7f,$f0,$e0,$e0,$c6,$c6 ; |......??........|
	.BYTE	$cf,$4f,$0f,$0f,$06,$06,$00,$00,$10,$3f,$3f,$3f,$7f,$7f,$7f,$7f ; |.O.......???....|
	.BYTE	$7e,$70,$00,$00,$00,$00,$00,$00,$00,$60,$70,$70,$70,$60,$60,$70 ; |~p.......`ppp``p|
	.BYTE	$78,$3c,$00,$04,$04,$06,$86,$86,$86,$86,$86,$86,$86,$86,$0e,$0e ; |x<..............|
	.BYTE	$8e,$4c,$cc,$8c,$8c,$cc,$cc,$dc,$dc,$dc,$c0,$c0,$c0,$c0,$c0,$c0 ; |.L..............|
	.BYTE	$c0,$c0,$80,$80,$00,$00,$00,$00,$00,$00,$00,$78,$38,$38,$78,$78 ; |...........x88xx|
	.BYTE	$70,$70,$f0,$20,$80,$e0,$e0,$c0,$c0,$e0,$f0,$78,$00,$00,$00,$04 ; |pp. .......x....|
	.BYTE	$04,$06,$86,$86,$86,$86,$86,$06,$06,$06,$0e,$0e,$0e,$cc,$ec,$ec ; |................|
	.BYTE	$ec,$ec,$ec,$e0,$60,$60,$38,$38,$10,$00,$00,$00,$00,$00,$40,$60 ; |....``88......@`|
	.BYTE	$e0,$e0,$f0,$f0,$f0,$f8,$f8,$80,$00,$00,$00,$00,$00,$00,$00,$c0 ; |................|
	.BYTE	$e0,$e0,$e0,$c0,$c0,$e0,$f0,$78,$00,$00,$02,$02,$07,$07,$0f,$0f ; |.......x........|
	.BYTE	$0f,$0a,$0f,$0f,$0f,$0f,$07,$07,$0f,$12,$18,$0f,$0f,$1f,$1f,$17 ; |................|
	.BYTE	$0f,$0f,$1f,$1f,$1f,$1f,$1f,$1f,$1f,$0f,$0f,$07,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$0c,$1c,$3c,$3c,$38,$38,$38,$78,$10,$40,$70 ; |.......<<888x.@p|
	.BYTE	$70,$60,$60,$70,$78,$3c,$02,$02,$07,$07,$0f,$0f,$08,$0d,$08,$00 ; |p``px<..........|
	.BYTE	$00,$02,$00,$00,$00,$1d,$1f,$3f,$3f,$7f,$78,$78,$70,$73,$63,$67 ; |.......??.xxpscg|
	.BYTE	$67,$67,$27,$27,$03,$13,$10,$18,$1f,$3f,$3f,$3f,$7f,$7f,$7f,$7f ; |gg''.....???....|
	.BYTE	$7e,$70,$00,$00,$00,$00,$00,$00,$00,$60,$70,$70,$70,$60,$60,$70 ; |~p.......`ppp``p|
	.BYTE	$78,$3c,$00,$04,$04,$06,$86,$86,$86,$86,$86,$86,$86,$86,$0e,$0e ; |x<..............|
	.BYTE	$8e,$4c,$cc,$8c,$8c,$cc,$cc,$dc,$dc,$dc,$e0,$e0,$e0,$e0,$e0,$e0 ; |.L..............|
	.BYTE	$e0,$c0,$c0,$80,$00,$00,$00,$00,$00,$00,$00,$78,$38,$38,$78,$78 ; |...........x88xx|
	.BYTE	$70,$70,$f0,$20,$80,$e0,$e0,$c0,$c0,$e0,$f0,$78,$00,$00,$00,$04 ; |pp. .......x....|
	.BYTE	$04,$06,$86,$86,$86,$86,$86,$06,$06,$06,$0e,$0e,$0e,$cc,$ec,$ec ; |................|
	.BYTE	$ec,$ec,$6c,$60,$20,$20,$18,$98,$90,$80,$80,$80,$00,$00,$00,$60 ; |..l`  .........`|
	.BYTE	$e0,$e0,$f0,$f0,$f0,$f8,$f8,$80,$00,$00,$00,$00,$00,$00,$00,$c0 ; |................|
	.BYTE	$e0,$e0,$e0,$c0,$c0,$e0,$f0,$78,$00,$00,$08,$04,$fa,$f4,$00,$00 ; |.......x........|
	.BYTE	$40,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |@...............|
	.BYTE	$00,$00,$00,$00,$03,$07,$07,$07,$07,$07,$03,$03,$01,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$01,$03,$72,$78,$3c,$00,$00,$00,$00,$00,$00,$00,$00 ; |.....rx<........|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$07,$07 ; |................|
	.BYTE	$04,$00,$00,$00,$00,$00,$00,$04,$1e,$3f,$3f,$3f,$3f,$7f,$7f,$7f ; |.........????...|
	.BYTE	$77,$0f,$07,$03,$3f,$27,$07,$07,$0f,$0f,$0f,$0f,$0f,$0f,$0e,$0e ; |w...?'..........|
	.BYTE	$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$1c,$18,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$c0,$c0,$c0,$c0 ; |................|
	.BYTE	$e0,$e0,$c0,$80,$00,$00,$00,$00,$00,$60,$c0,$80,$00,$38,$18,$18 ; |.........`...8..|
	.BYTE	$18,$10,$06,$06,$03,$03,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; |................|
	.BYTE	$00,$00,$00,$00,$00,$c0,$e0,$e0,$20,$20,$20,$20,$00,$00,$00,$60 ; |........    ...`|
	.BYTE	$e0,$f8,$f8,$f8,$fc,$fc,$fc,$fc,$fc,$c0,$c0,$c2,$c6,$cc,$de,$f6 ; |................|
	.BYTE	$e3,$e3,$e1,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0 ; |................|
	.BYTE	$f0,$70,$54,$43,$48,$e0,$95,$88,$53,$4b,$49,$50,$4c,$4f,$41,$44 ; |.pTCH...SKIPLOAD|
	.BYTE	$ed,$95,$87,$53,$4b,$49,$50,$4c,$31,$30,$fd,$95,$88,$53,$4b,$49 ; |...SKIPL10...SKI|
	.BYTE	$50,$4c,$4f,$4f,$50,$ff,$95,$87,$53,$4b,$49,$50,$4c,$32,$30,$03 ; |PLOOP...SKIPL20.|
	.BYTE	$96,$87,$53,$4b,$49,$50,$4c,$33,$30,$0e,$96,$87,$53,$4b,$49,$50 ; |..SKIPL30...SKIP|
