		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;
; note: this macro must have a ":" label afterwards
; if it is not followed by another Item
;

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

.macro	ItemMagic Magic
		.BYTE	$ec,$00,$44
		.BYTE	Magic
		.RES	(13-.strlen(Magic)),$00
.endmacro

; what a difference a bit makes

.macro	ItemMagic2 Magic
		.BYTE	$ec,$00,$04
		.BYTE	Magic
		.RES	(13-.strlen(Magic)),$00
.endmacro

;		.ORG	$7600
		.BYTE 2
; ---------------------------------------------------------------------------
		JMP	loc_7608
; ---------------------------------------------------------------------------
		JMP	locret_7607

locret_7607:
		RTS
; ---------------------------------------------------------------------------

loc_7608:				; CODE XREF: RAM:7601j
		DEC	$1937
		dldi	off_16, byte_9561
		JSR	$184B
		LDX	$1933
		STX	byte_78DF
		dldi	off_1977, loc_763B
		RTS
; ---------------------------------------------------------------------------

loc_7627:				; CODE XREF: RAM:7659j	RAM:7664j ...
		INC	$1937
		JSR	$184E
		LDA	#$FF
		STA	byte_1959
		STA	a_Cloak+5
		DEC	$197B
		JMP	$180C
; ---------------------------------------------------------------------------

loc_763B:
		LDA	byte_1959
		CMP	#1
		BNE	loc_7667
		LDX	byte_195A
		LDA	unk_9E2E,X
		STA	off_16
		LDA	unk_9E4E,X
		STA	off_16+1
		LDY	unk_9486,X
		LDA	unk_94A6,X
		TAX
		JSR	sub_76D3
		BMI	loc_7627
		LDX	byte_78DF
		JSR	$1851
		JSR	$183C
		JMP	loc_7627
; ---------------------------------------------------------------------------

loc_7667:				; CODE XREF: RAM:7640j
		BIT	$758A
		BPL	loc_768C
		BVC	loc_7673
		JSR	sub_773A
		BMI	loc_768C

loc_7673:				; CODE XREF: RAM:766Cj
		LDA	$758A
		AND	#$7F ; ''
		CMP	#8
		BCS	loc_768C
		TAX
		LDY	unk_954F,X
		LDA	unk_9557,X
		TAX
		JSR	sub_76D3
		LDA	#0
		STA	$758A

loc_768C:				; CODE XREF: RAM:766Aj	RAM:7671j ...
		LDA	$758A
		JSR	sub_769B
		LDA	$758B
		JSR	sub_769B
		JMP	loc_7627

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_769B:				; CODE XREF: RAM:768Fp	RAM:7695p
		AND	#7
		BNE	loc_76A0
		RTS
; ---------------------------------------------------------------------------

loc_76A0:				; CODE XREF: sub_769B+2j
		TAX
		DEX
		LDA	unk_9543,X
		STA	off_7
		LDA	unk_9549,X
		STA	off_7+1
		LDA	RANDOM
		STA	byte_78DE
		LDY	#0

loc_76B4:				; CODE XREF: sub_769B+21j
		LDA	(off_7),Y
		CMP	byte_78DE
		BCS	loc_76BE
		INY
		BNE	loc_76B4

loc_76BE:				; CODE XREF: sub_769B+1Ej
		TYA
		ASL	A
		TAY
		INY
		LDA	unk_947A,X
		STA	off_7
		LDA	unk_9480,X
		STA	off_7+1
		LDA	(off_7),Y
		TAX
		DEY
		LDA	(off_7),Y
		TAY
; End of function sub_769B


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_76D3:				; CODE XREF: RAM:7656p	RAM:7684p
		JSR	$1884
		BMI	locret_7739
		LDY	#0
		LDA	(off_41),Y
		AND	#7
		CMP	#6
		BNE	loc_76F8
		LDA	RANDOM
		CMP	#$40 ; '@'
		BCC	loc_76F8
		LDA	RANDOM
		LSR	A
		CMP	$6369
		BCC	loc_76F8
		LDY	#$C
		LDA	#0
		STA	(off_41),Y

loc_76F8:				; CODE XREF: sub_76D3+Dj sub_76D3+14j	...
		LDX	$6493
		LDA	$6494,X
		AND	#$7F ; ''
		BEQ	loc_770E
		LDA	$4B
		PHA
		LDA	$64D4,X
		JSR	$188A
		PLA
		STA	$4B

loc_770E:				; CODE XREF: sub_76D3+2Dj
		LDA	$4B
		JSR	$1887
		LDX	$6493
		LDA	$6313
		STA	$64A4,X
		LDA	$6314
		STA	$64B4,X
		LDA	$6315
		STA	$64C4,X
		LDA	#2
		STA	$6494,X
		LDA	$4B
		STA	$64D4,X
		INX
		TXA
		AND	#$F
		STA	$6493

locret_7739:				; CODE XREF: sub_76D3+3j
		RTS
; End of function sub_76D3


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_773A:				; CODE XREF: RAM:766Ep
		LDA	#$82 ; 'Ç'
		STA	$758A
		LDA	#1
		STA	$758B
		LDA	#$13
		JSR	sub_78A1
		BCS	loc_775A
		LDA	#7
		JSR	sub_78A8
		BCS	loc_775A
		LDA	#0
		STA	$758A
		JMP	loc_789D
; ---------------------------------------------------------------------------

loc_775A:				; CODE XREF: sub_773A+Fj sub_773A+16j
		LDA	#$18
		JSR	sub_78A1
		BCC	loc_7770
		LDA	#1
		JSR	sub_78A8
		BCS	loc_77C7
		LDA	#4
		STA	$758A
		JMP	loc_789D
; ---------------------------------------------------------------------------

loc_7770:				; CODE XREF: sub_773A+25j
		LDA	#$13
		STA	byte_78E5
		LDA	#3
		STA	byte_78E4

loc_777A:				; CODE XREF: sub_773A+51j
		LDA	byte_78E5
		JSR	sub_78A1
		BCC	loc_7785
		INC	byte_78E2

loc_7785:				; CODE XREF: sub_773A+46j
		INC	byte_78E5
		DEC	byte_78E4
		BNE	loc_777A
		LDA	byte_78E2
		BNE	loc_7795
		JMP	loc_77C7
; ---------------------------------------------------------------------------

loc_7795:				; CODE XREF: sub_773A+56j
		LDA	#3
		STA	byte_78E4
		LDA	#$40 ; '@'
		STA	byte_78E1
		LDA	#6
		STA	byte_78E0

loc_77A4:				; CODE XREF: sub_773A+75j
		JSR	sub_78D5
		BCC	loc_77B1
		INC	byte_78E3
		DEC	byte_78E4
		BNE	loc_77A4

loc_77B1:				; CODE XREF: sub_773A+6Dj
		SEC
		LDA	byte_78E2
		SBC	$7589
		BEQ	loc_77C7
		SBC	byte_78E3
		BEQ	loc_77C7
		LDA	#3
		STA	$758A
		JMP	loc_789D
; ---------------------------------------------------------------------------

loc_77C7:				; CODE XREF: sub_773A+2Cj sub_773A+58j ...
		LDA	#1
		JSR	sub_78A1
		BCS	loc_77D1
		JMP	loc_7824
; ---------------------------------------------------------------------------

loc_77D1:				; CODE XREF: sub_773A+92j
		LDA	#$3F ; '?'
		STA	byte_78E1

loc_77D6:				; CODE XREF: sub_773A+E0j
		LDA	byte_78E1
		JSR	$1887
		BEQ	loc_7817
		LDY	#0
		LDA	(off_41),Y
		AND	#$7F ; ''
		CMP	#3
		BNE	loc_7817
		CLC
		LDA	off_41
		ADC	#6
		STA	off_7
		LDA	off_41+1
		ADC	#0
		STA	off_7+1
		LDY	#0
		LDA	(off_7),Y
		CMP	#$7F ; ''
		BNE	loc_7808
		LDA	7
		CLC
		ADC	#2
		STA	off_7
		BCC	loc_7808
		INC	off_7+1

loc_7808:				; CODE XREF: sub_773A+C1j sub_773A+CAj
		LDY	#$E

loc_780A:				; CODE XREF: sub_773A+D8j
		LDA	(off_7),Y
		CMP	i_MirroredShield+6,Y ; "Mirrored Shield"
		BNE	loc_7817
		DEY
		BPL	loc_780A
		JMP	loc_7824
; ---------------------------------------------------------------------------

loc_7817:				; CODE XREF: sub_773A+A2j sub_773A+ACj ...
		DEC	byte_78E1
		BPL	loc_77D6
		LDA	#5
		STA	$758A
		JMP	loc_789D
; ---------------------------------------------------------------------------

loc_7824:				; CODE XREF: sub_773A+94j sub_773A+DAj
		LDA	RANDOM
		CMP	$6385
		BCS	loc_7849
		LDA	#$15
		JSR	sub_78A1
		BCS	loc_7849
		LDA	#$16
		JSR	sub_78A1
		BCC	loc_7849
		LDA	#8
		JSR	sub_78A8
		BCS	loc_7849
		LDA	#7
		STA	$758A
		JMP	loc_789D
; ---------------------------------------------------------------------------

loc_7849:				; CODE XREF: sub_773A+F0j sub_773A+F7j ...
		LDA	#0
		JSR	sub_78A1
		BCS	loc_789D
		LDA	#$17
		JSR	sub_78A1
		BCC	loc_7866
		LDA	#2
		JSR	sub_78A8
		BCS	loc_789D
		LDA	#6
		STA	$758A
		JMP	loc_789D
; ---------------------------------------------------------------------------

loc_7866:				; CODE XREF: sub_773A+11Bj
		LDA	#$D
		JSR	sub_78A1
		BCS	loc_789D
		LDA	#$E
		JSR	sub_78A1
		BCS	loc_789D
		LDA	#$B
		JSR	sub_78A1
		BCC	loc_788A
		LDA	#4
		JSR	sub_78A8
		BCS	loc_788A
		LDA	#2
		STA	$758A
		JMP	loc_789D
; ---------------------------------------------------------------------------

loc_788A:				; CODE XREF: sub_773A+13Fj
					; sub_773A+146j
		LDA	#$C
		JSR	sub_78A1
		BCC	loc_789D
		LDA	#3
		JSR	sub_78A8
		BCS	loc_789D
		LDA	#1
		STA	$758A

loc_789D:				; CODE XREF: sub_773A+1Dj sub_773A+33j ...
		LDA	$758A
		RTS
; End of function sub_773A


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_78A1:				; CODE XREF: sub_773A+Cp sub_773A+22p	...
		ldxy	$7508
		JMP	j_TESTBIT
; End of function sub_78A1


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_78A8:				; CODE XREF: sub_773A+13p sub_773A+29p ...

; FUNCTION CHUNK AT 78DC SIZE 00000002 BYTES

		STA	byte_78E0
		LDA	#$3F ; '?'
		STA	byte_78E1

loc_78B0:				; CODE XREF: sub_78D5+3j
		LDA	byte_78E1
		STA	$4B
		JSR	$1887
		BEQ	sub_78D5
		JSR	$1896
		LDY	#0
		LDA	(off_41),Y
		AND	#$7F ; ''
		CMP	#7
		BNE	sub_78D5
		LDA	(off_43),Y
		CMP	#2
		BNE	sub_78D5
		INY
		LDA	(off_43),Y
		CMP	byte_78E0
		BEQ	loc_78DC
; End of function sub_78A8


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_78D5:				; CODE XREF: sub_773A:loc_77A4p
					; sub_78A8+10j	...
		DEC	byte_78E1
		BPL	loc_78B0
		CLC
		RTS
; End of function sub_78D5

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_78A8

loc_78DC:				; CODE XREF: sub_78A8+2Bj
		SEC
		RTS
; END OF FUNCTION CHUNK	FOR sub_78A8
; ---------------------------------------------------------------------------
byte_78DE:	.BYTE 0			; DATA XREF: sub_769B+14w sub_769B+1Br
byte_78DF:	.BYTE 0			; DATA XREF: RAM:7619w	RAM:765Br
byte_78E0:	.BYTE 0			; DATA XREF: sub_773A+67w sub_78A8w ...
byte_78E1:	.BYTE 0			; DATA XREF: sub_773A+62w sub_773A+99w ...
byte_78E2:	.BYTE 0			; DATA XREF: sub_773A+48w sub_773A+53r ...
byte_78E3:	.BYTE 0			; DATA XREF: sub_773A+6Fw sub_773A+80r
byte_78E4:	.BYTE 0			; DATA XREF: sub_773A+3Dw sub_773A+4Ew ...
byte_78E5:	.BYTE 0			; DATA XREF: sub_773A+38w
					; sub_773A:loc_777Ar ...
i_TheStarCard:
		Item	$10,$00,$00,$00,"The Star (card)"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$81,$BE,$00,$01,$00,$19,$00
		.BYTE	$00,$01

i_TheFoolCard:
		Item	$10,$00,$00,$00,"The Fool (card)"
		.BYTE	$88,$FF,$C4,$01,$D2,$02,$0D,$F0,$00,$91,$84,$00,$01,$00,$01,$00
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$81,$84,$00,$01,$00,$01,$00
		ItemMagic "Luck"
		.BYTE	$00,$01

i_TheHeirophantCard:
		Item	$10,$00,$00,$00,"The Heirophant (card)"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$20,$00,$01,$00,$0F,$00
		.BYTE	$00,$01

i_DeathCard:
		Item	$10,$00,$00,$00,"Death (card)"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$02,$DD,$00,$02,$08,$F8,$00
		.BYTE	$00,$01

i_AceOfCupsCard:
		Item	$10,$00,$00,$00,"Ace of Cups"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$D1,$C2,$00,$10,$01,$8F,$00
		.BYTE	$00,$01

i_TheChariotCard:
		Item	$10,$00,$00,$00,"The Chariot (card)"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$81,$72,$00,$01,$00,$01,$00
		.BYTE	$00,$01

i_StrengthCard:
		Item	$10,$00,$00,$00,"Strength (card)"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$81,$5A,$00,$01,$00,$01,$00
		.BYTE	$00,$01

i_AceOfWandsCard:
		Item	$10,$00,$00,$00,"Ace of Wands"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$9B,$00,$01,$00,$FF,$00
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$4F,$00,$07,$08,$00,$00
		.BYTE	$00,$01

i_TemperanceCard:
		Item	$10,$00,$00,$00,"Temperance (card)"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$02,$96,$00,$01,$00,$00,$00
		.BYTE	$00,$01

i_KingOfWandsCard:
		Item	$10,$00,$00,$00,"King of Wands"
		.BYTE	$88,$FF,$C4,$01,$B9,$00,$19,$11,$00,$01,$AA,$00,$01,$00,$00,$00
		.BYTE	$88,$00,$44,$01,$01,$00,$00,$00,$00,$01,$AA,$00,$01,$00,$80,$00
		ItemMagic "Fire Invuln."
		.BYTE	$00,$01

i_PageOfCupsCard:
		Item	$10,$00,$00,$00,"Page of Cups (card)"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$99,$00,$02,$01,$FF,$00
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$02,$4D,$00,$07,$08,$00,$00
		.BYTE	$00,$01

i_AceOfPentaclesCard:
		Item	$10,$00,$00,$00,"Ace of Pentacles"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$82,$B1,$00,$01,$00,$64,$00
		.BYTE	$00,$01

i_HighPriestessCard:
		Item	$10,$00,$00,$00,"High Priestess (card)"
		.BYTE	$88,$FF,$C4,$01,$F5,$00,$99,$64,$00,$91,$A6,$00,$0B,$01,$06,$00
		.BYTE	$88,$00,$44,$01,$01,$00,$00,$00,$00,$81,$A6,$00,$0B,$01,$06,$00
		ItemMagic "Protection"
		.BYTE	$00,$01

i_ColdWand:
		Item	$08,$00,$00,$00,"Cold Wand"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$E7,$00,$02,$01,$66,$00
		.BYTE	$00

i_FireWand:
		Item	$08,$00,$00,$00,"Fire Wand"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$E1,$00,$02,$07,$66,$00
		.BYTE	$00

i_ParalysisWand:
		Item	$08,$00,$00,$00,"Paralysis Wand"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$F0,$00,$01,$00,$05,$00
		.BYTE	$00

i_EyeOfVulnerability:
		Item	$10,$00,$00,$01,"Eye of Vulnerabilty" ; [sic]
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$F0,$00,$01,$00,$09,$00
		.BYTE	$00,$03

i_LightWand:
		Item	$08,$00,$00,$00,"Light Wand"
		.BYTE	$88,$FF,$C4,$01,$D2,$02,$AD,$DE,$00,$91,$90,$00,$01,$00,$01,$00
		ItemMagic "Light"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$81,$90,$00,$01,$00,$01,$00
		.BYTE	$00

i_HealingWand:
		Item	$08,$00,$00,$00,"Healing Wand"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$82,$45,$00,$01,$00,$32,$00
		.BYTE	$00

i_FrostbladeScroll:
		Item	$10,$00,$00,$00,"Frostblade Scroll"
		.BYTE	$87,$FF,$C4,$01,$3D,$00,$00,$00,$00,$01,$DC,$00,$01,$00,$00,$00
		.BYTE	$84,$00,$44,$01,$01,$00,$00,$00,$00,$01,$DC,$00,$01,$00,$24,$00
		ItemMagic "Frostblade"
		.BYTE	$00,$01

i_FirebladeScroll:
		Item	$10,$00,$00,$00,"Fireblade Scroll"
		.BYTE	$87,$FF,$C4,$01,$3D,$00,$00,$00,$00,$01,$D5,$00,$01,$00,$00,$00
		.BYTE	$84,$00,$44,$01,$01,$00,$00,$00,$00,$01,$D5,$00,$01,$00,$24,$00
		ItemMagic "Fireblade"
		.BYTE	$00,$01

i_CloutScroll:
		Item	$10,$00,$00,$00,"Clout Scroll"
		.BYTE	$87,$FF,$C4,$01,$3E,$00,$00,$00,$00,$01,$D2,$00,$01,$00,$00,$00
		.BYTE	$84,$00,$44,$01,$01,$00,$00,$00,$00,$01,$D2,$00,$01,$00,$24,$00
		ItemMagic "Clout"
		.BYTE	$00,$01

i_RenewScroll:
		Item	$18,$00,$00,$00,"Renew Scroll"
		.BYTE	$00,$00,$01,$01,$10

i_RemoveCurseScroll:
		Item	$18,$00,$00,$00,"Remove Curse Scroll"
		.BYTE	$00,$83,$01,$06,$08

i_WizardEyeScroll:
		Item	$10,$00,$00,$00,"Wizard Eye Scroll"
		.BYTE	$84,$FF,$C4,$01,$F1,$00,$0D,$F0,$00,$91,$90,$00,$01,$00,$01,$00
		.BYTE	$84,$00,$44,$01,$01,$00,$00,$00,$00,$81,$90,$00,$01,$00,$01,$00
		.BYTE	$84,$00,$44,$01,$01,$00,$00,$00,$00,$81,$8B,$00,$01,$00,$01,$00
		.BYTE	$84,$FF,$C4,$01,$F1,$00,$0D,$F0,$00,$91,$8B,$00,$01,$00,$01,$00
		ItemMagic2 "Wizard Eye"
		.BYTE	$00,$01

i_RubyEye:
		Item	$10,$00,$00,$00,"Ruby Eye"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$E1,$00,$02,$07,$F6,$00
		.BYTE	$00,$03

i_EmeraldEye:
		Item	$10,$00,$00,$00,"Emerald Eye"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$E2,$00,$02,$06,$F6,$00
		.BYTE	$00,$03

i_SapphireEye:
		Item	$10,$00,$00,$00,"Sapphire Eye"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$E0,$00,$02,$08,$F6,$00
		.BYTE	$00,$03

i_AmberEye:
		Item	$10,$00,$00,$00,"Amber Eye"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$DF,$00,$02,$09,$F6,$00
		.BYTE	$00,$03

i_WizardsEye:
		Item	$10,$00,$00,$00,"Wizard's Eye"
		.BYTE	$84,$FF,$C4,$01,$75,$01,$5C,$00,$00,$91,$8B,$00,$02,$05,$01,$00
		.BYTE	$84,$00,$44,$01,$01,$00,$00,$00,$00,$81,$8B,$00,$02,$05,$01,$00
		ItemMagic "Wizard Eye"
		.BYTE	$00,$03

i_HypnoticEye:
		Item	$10,$00,$00,$00,"Hypnotic Eye"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$F0,$00,$01,$00,$03,$00
		.BYTE	$00,$03

i_TomeOfKnowledge:
		Item	$10,$00,$00,$00,"Tome of Knowledge"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$81,$62,$00,$01,$00,$01,$00
		.BYTE	$00,$01

i_TomeOfUnderstanding:
		Item	$10,$00,$00,$00,"Tome of Understanding"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$81,$6A,$00,$01,$00,$01,$00
		.BYTE	$00,$01

i_TomeOfLeadership:
		Item	$10,$00,$00,$00,"Tome of Leadership"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$81,$52,$00,$01,$00,$01,$00
		.BYTE	$00,$01

i_BronzeHorn:
		Item	$10,$00,$00,$00,"Bronze Horn"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$81,$BB,$00,$02,$01,$05,$00
		.BYTE	$00,$07

i_SilverHorn:
		Item	$10,$00,$00,$00,"Silver Horn"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$E5,$00,$02,$03,$F4,$00
		.BYTE	$00,$07

i_GoldHorn:
		Item	$10,$00,$00,$00,"Gold Horn"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$02,$45,$00,$01,$00,$FF,$00
		.BYTE	$00,$07

i_GoldHorn2:
		Item	$10,$00,$00,$00,"Gold Horn"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$20,$00,$01,$00,$46,$00
		.BYTE	$00,$01

i_PotionOfFleetness:
		Item	$06,$00,$00,$01,"Potion of Fleetness"
		.BYTE	$84,$FF,$C4,$01,$E0,$01,$ED,$FE,$00,$91,$7B,$00,$01,$00,$64,$00
		.BYTE	$84,$00,$44,$01,$01,$00,$ED,$FE,$00,$81,$7B,$00,$01,$00,$64,$00
		.BYTE	$EC,$00,$44,"Fleetness",$00,$20,$73,$6D
		.BYTE	0

i_PotionOfStrength:
		Item	$06,$00,$00,$01,"Potion of Strength"
		.BYTE	$84,$FF,$C4,$01,$E0,$01,$ED,$FE,$00,$91,$5B,$00,$01,$00,$14,$00
		.BYTE	$84,$00,$44,$01,$01,$00,$ED,$FE,$00,$81,$5B,$00,$01,$00,$14,$00
		.BYTE	$EC,$00,$44,"Strength",$00,$65,$20,$63,$72
		.BYTE	$00

i_PotionOfIntelligence:
		Item	$06,$00,$00,$01,"Potion of Intelligence"
		.BYTE	$84,$FF,$C4,$01,$E0,$01,$ED,$FE,$00,$91,$63,$00,$01,$00,$14,$00
		.BYTE	$84,$00,$44,$01,$01,$00,$ED,$FE,$00,$81,$63,$00,$01,$00,$14,$00
		.BYTE	$EC,$00,$44,"Intelligence",$00
		.BYTE	0

i_PotionOfCharisma:
:		.BYTE	6		; DATA XREF: RAM:9450o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfCharis:.BYTE "Potion of Charisma",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $53 ; S
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $53 ; S
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aCharisma:	.BYTE "Charisma",0
		.BYTE $74 ; t
		.BYTE $6F ; o
		.BYTE $20
		.BYTE $61 ; a
		.BYTE	0

i_PotionOfEndurance:
:		.BYTE	6		; DATA XREF: RAM:9452o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfEndura:.BYTE "Potion of Endurance",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $9B ; õ
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0

i_PotionOfInvBlunt:
:		.BYTE	6		; DATA XREF: RAM:9454o	RAM:9E6Eo
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfInv_Bl:.BYTE "Potion of Inv. Blunt",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Blunt:	.BYTE "Inv. Blunt",0
		.BYTE $2C ; ,
		.BYTE $20
		.BYTE	0

i_PotionOfInvSharp:
:		.BYTE	6		; DATA XREF: RAM:9456o	RAM:9E70o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfInv_Sh:.BYTE "Potion of Inv. Sharp",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $A7 ; ß
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $A7 ; ß
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Sharp:	.BYTE "Inv. Sharp",0
		.BYTE $69 ; i
		.BYTE $6F ; o
		.BYTE	0

i_PotionOfInvEarth:
:		.BYTE	6		; DATA XREF: RAM:9458o	RAM:9E72o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfInv_Ea:.BYTE "Potion of Inv. Earth",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Earth:	.BYTE "Inv. Earth",0
		.BYTE $61 ; a
		.BYTE $6C ; l
		.BYTE	0

i_PotionOfInvAir:
:		.BYTE	6		; DATA XREF: RAM:945Ao	RAM:9E74o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfInv_Ai:.BYTE "Potion of Inv. Air",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Air:	.BYTE "Inv. Air",0
		.BYTE $6C ; l
		.BYTE $65 ; e
		.BYTE $64 ; d
		.BYTE $20
		.BYTE	0

i_PotionOfInvFire:
:		.BYTE	6		; DATA XREF: RAM:945Co	RAM:9E76o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfInv_Fi:.BYTE "Potion of Inv. Fire",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Fire:	.BYTE "Inv. Fire",0
		.BYTE $6C ; l
		.BYTE $61 ; a
		.BYTE $63 ; c
		.BYTE	0

i_PotionOfInvWater:
:		.BYTE	6		; DATA XREF: RAM:945Eo	RAM:9E78o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfInv_Wa:.BYTE "Potion of Inv. Water",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $AB ; ´
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $AB ; ´
		.BYTE $C6 ; ∆
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Water:	.BYTE "Inv. Water",0
		.BYTE $74 ; t
		.BYTE $20
		.BYTE	0

i_PotionOfRegeneration:
:		.BYTE	6		; DATA XREF: RAM:9460o	RAM:9E7Ao
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfRegene:.BYTE "Potion of Regeneration",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE $3C ; <
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aRegeneration:	.BYTE "Regeneration",0
		.BYTE	0

i_PotionOfInvMental:
:		.BYTE	6		; DATA XREF: RAM:9462o	RAM:9E7Co
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfInv_Me:.BYTE "Potion of Inv. Mental",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $AD ; ≠
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $AD ; ≠
		.BYTE $C6 ; ∆
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Mental:	.BYTE "Inv. Mental",0
		.BYTE $67 ; g
		.BYTE	0

i_PotionOfInvCold:
:		.BYTE	6		; DATA XREF: RAM:9464o	RAM:9E7Eo
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfInv_Co:.BYTE "Potion of Inv. Cold",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $B0 ; ∞
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $B0 ; ∞
		.BYTE $C6 ; ∆
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInv_Cold:	.BYTE "Inv. Cold",0
		.BYTE $72 ; r
		.BYTE $73 ; s
		.BYTE $61 ; a
		.BYTE	0

i_PotionOfFruitJuice:
:		.BYTE	6		; DATA XREF: RAM:9466o	RAM:9E80o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfFruitJ:.BYTE "Potion of Fruit Juice",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $99 ; ô
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	8
		.BYTE	0
		.BYTE	0

i_PotionOfWizardEye:
:		.BYTE	6		; DATA XREF: RAM:9468o	RAM:9E82o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfWizard:.BYTE "Potion of Wizard Eye",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $75 ; u
		.BYTE	1
		.BYTE $5C ; \
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE $74 ; t
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $8B ; ã
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $8B ; ã
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aWizardEye_1:	.BYTE "Wizard Eye",0
		.BYTE	0
		.BYTE	0
		.BYTE	0

i_PotionOfDexterity:
:		.BYTE	6		; DATA XREF: RAM:946Ao	RAM:9E84o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfDexter:.BYTE "Potion of Dexterity",0
:		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $73 ; s
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $73 ; s
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aDexterity:	.BYTE "Dexterity",0
		.BYTE $72 ; r
		.BYTE $65 ; e
		.BYTE $72 ; r
		.BYTE	0

unk_84C7:
:		.BYTE	6		; DATA XREF: RAM:946Co	RAM:9E86o
		.BYTE $4E ; N
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1D
aPotionOfInfraV:.BYTE "Potion of Infra-Vision",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aInfraVision:	.BYTE "Infra-Vision",0
		.BYTE	0
unk_8515:	.BYTE  $E		; DATA XREF: RAM:946Eo	RAM:9E88o
		.BYTE $1C
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotionOfCleans:.BYTE "Potion of Cleansing",0
		.BYTE	0
		.BYTE $81 ; Å
unk_8531:	.BYTE	6		; DATA XREF: RAM:9470o	RAM:9E8Ao
		.BYTE $1B
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $19
aPotionOfAntido:.BYTE "Potion of Antidote",0
		.BYTE	0
		.BYTE $82 ; Ç
i_PotionOfRestoration:
		.BYTE $16		; DATA XREF: RAM:9472o	RAM:9E8Co
		.BYTE $2D ; -
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aPotionOfRestor:.BYTE "Potion of Restoration",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE	1
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE $FF
		.BYTE	0
		.BYTE	0
unk_8579:	.BYTE $16		; DATA XREF: RAM:9474o	RAM:9E8Eo
		.BYTE $29 ; )
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $18
aPotionOfHealin:.BYTE "Potion of Healing",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE	0
unk_85A2:	.BYTE	6		; DATA XREF: RAM:9476o	RAM:9E90o
		.BYTE $39 ; 9
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $18
aPotionOfHemloc:.BYTE "Potion of Hemlock",0
		.BYTE $82 ; Ç
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	2
		.BYTE $92 ; í
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $3C ; <
		.BYTE	0
		.BYTE	0
		.BYTE $92 ; í
		.BYTE $47 ; G
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
unk_85DB:	.BYTE	6		; DATA XREF: RAM:9478o	RAM:9E92o
		.BYTE $2D ; -
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aPotionOfInebri:.BYTE "Potion of Inebriation",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; Ì
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE	1
		.BYTE $97 ; ó
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0

i_CrystalShield:
		.BYTE	3		; DATA XREF: RAM:93ECo
		.BYTE $49 ; I
		.BYTE	0
		.BYTE	0
		.BYTE	6
		.BYTE $15
aCrystalShield:	.BYTE "Crystal Shield",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $B0 ; ∞
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $B0 ; ∞
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $15
		.BYTE $12
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $13
		.BYTE $10
		.BYTE $10
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $60 ; `

i_ShieldOfGalahad:
		.BYTE	3		; DATA XREF: RAM:93EEo
		.BYTE $5C ; \
		.BYTE	0
		.BYTE $90 ; ê
		.BYTE  $F
		.BYTE $18
aShieldOfGalaha:.BYTE "Shield of Galahad",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE  $B
		.BYTE	1
		.BYTE	2
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE  $B
		.BYTE	1
		.BYTE	2
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $25 ; %
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $92 ; í
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $17
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE $20
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $70 ; p

i_SpikedShield:
		.BYTE	3		; DATA XREF: RAM:93F0o
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $14
aSpikedShield:	.BYTE "Spiked Shield",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $15
		.BYTE $12
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $12
		.BYTE $12
		.BYTE $32 ; 2
		.BYTE $32 ; 2
		.BYTE $AA ; ™
		.BYTE $60 ; `

i_ShieldOfMordred:
		.BYTE	3		; DATA XREF: RAM:93F2o
		.BYTE $5C ; \
		.BYTE	0
		.BYTE $70 ; p
		.BYTE  $F
		.BYTE $18
aShieldOfMordre:.BYTE "Shield of Mordred",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE  $B
		.BYTE	1
		.BYTE	2
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE  $B
		.BYTE	1
		.BYTE	2
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $25 ; %
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $92 ; í
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $17
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE $10
		.BYTE $10
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $60 ; `

i_SpiritShield:
		.BYTE	3		; DATA XREF: RAM:93F4o
		.BYTE $48 ; H
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $14
aSpiritShield:	.BYTE "Spirit Shield",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $AD ; ≠
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $AD ; ≠
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
		.BYTE $10
		.BYTE $FF
		.BYTE $FF
		.BYTE $82 ; Ç
		.BYTE $70 ; p

i_IronwoodBoken:
		.BYTE	3		; DATA XREF: RAM:93F6o
		.BYTE $49 ; I
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE $15
aIronwoodBoken:	.BYTE "Ironwood Boken",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $5B ; [
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $5B ; [
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $35 ; 5
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE $16
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE $82 ; Ç
		.BYTE $30 ; 0

i_IronFan:
		.BYTE	3		; DATA XREF: RAM:93F8o
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE  $F
aIronFan:	.BYTE "Iron Fan",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $23 ; #
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
		.BYTE $32 ; 2
		.BYTE $20
		.BYTE $20
		.BYTE $8A ; ä
		.BYTE $58 ; X

i_TowerShield:
		Item	$03,$00,$00,$14,"Tower Shield"
		.BYTE	$00,$FF,$00
		.BYTE	$17,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$19,$10,$80,$80,$AA,$80

i_Crossbow:
		Item	$03,$00,$00,$03,"Crossbow [03]"
		.BYTE	$00,$03,$03
		.BYTE	$00,$2A,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$10,$40,$40,$1F,$00

i_Quarrels:
		Item	$02,$00,$00,$01,"Quarrels [10]"
		.BYTE	$00,$03,$0A
		.BYTE	$00,$2A,$00,$00,$00,$00,$00,$00,$00,$00,$00
i_ChaosClub:
		Item	$03,$00,$7F,$0A,"Chaos Club"
		.BYTE	$88,$FF,$A5,$00,$01,$00,$1F,$00,$00,$92,$45,$00,$01,$DA,$01,$00
		.BYTE	$00,$FF,$00
		.BYTE	$24,$00,$00,$00,$00,$00,$00,$00,$00,$18,$00
		.BYTE	$14,$10,$80,$80,$AA,$80

i_ShortSword:
		Item	$03,$00,$00,$0A,"Short Sword"
		.BYTE	$00,$FF,$00
		.BYTE	$00,$23,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$08,$08,$18,$18,$80,$10

i_HolyHandGrenade:
		Item	$10,$00,$80,$02,"Holy Hand Grenade"
		.BYTE	$88,$FF,$44,$01,$01,$00,$01,$00,$00,$01,$DD,$00,$03,$04,$54,$00
		.BYTE	$88,$FF,$44,$01,$01,$00,$01,$00,$00,$01,$E8,$00,$01,$00,$FF,$00
		.BYTE	$88,$FF,$64,$01,$01,$00,$01,$00,$00,$92,$45,$00,$01,$00,$14,$00
		.BYTE	$00,$01

i_Pike:
		Item	$03,$00,$00,$0A,"Pike"
		.BYTE	$00,$FF,$00
		.BYTE	$22,$1A,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$14,$08,$30,$30,$C3,$23

i_Dirk:
		Item	$03,$00,$00,$0A,"Dirk"
		.BYTE	$00,$FF,$00
		.BYTE	$00,$23,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$04,$10,$10,$10,$81,$F4

i_PantherGloves:
		Item	$04,$00,$00,$02,"Panther Gloves"
		.BYTE	$88,$FF,$04,$01,$01,$00,$AF,$DE,$00,$81,$00,$01,$02,$01,$22,$00
		.BYTE	$88,$FF,$08,$01,$01,$00,$AF,$DE,$00,$91,$00,$01,$02,$01,$22,$00
		.BYTE	$00,$02
		.BYTE	$22,$23,$00,$00,$11,$00,$00,$00,$00,$00,$11
		.BYTE	$40,$40

i_HelmOfLight:
		Item	$04,$00,$00,$02,"Helm of Light"
		.BYTE	$88,$FF,$04,$01,$01,$00,$AF,$DE,$00,$81,$90,$00,$01,$00,$01,$00
		.BYTE	$88,$FF,$08,$01,$01,$00,$AF,$DE,$00,$91,$90,$00,$01,$00,$01,$00
		.BYTE	$00,$00
		.BYTE	$23,$24,$00,$00,$11,$00,$00,$00,$00,$00,$00
		.BYTE	$60,$60

i_DragonskinHauberk:
		Item	$04,$00,$00,$0A,"Dragonskin Hauberk"
		.BYTE	$00,$01
		.BYTE	$34,$34,$00,$00,$34,$00,$00,$00,$00,$00,$00
		.BYTE	$FE,$FE

i_GoldenGreaves:
		Item	$04,$00,$00,$04,"Golden Greaves"
		.BYTE	$88,$FF,$04,$01,$01,$00,$AF,$DE,$00,$81,$4B,$00,$01,$00,$19,$00
		.BYTE	$88,$FF,$08,$01,$01,$00,$AF,$DE,$00,$91,$4B,$00,$01,$00,$19,$00
		.BYTE	$00,$03
		.BYTE	$32,$42,$11,$11,$11,$11,$11,$11,$11,$11,$22
		.BYTE	$50,$50
i_PlateHelm:
		Item	$04,$00,$00,$06,"Plate Helm"
		.BYTE	$00,$00
		.BYTE	$25,$33,$00,$00,$11,$00,$00,$00,$00,$00,$00
		.BYTE	$60,$60

i_PlateGauntlets:
		Item	$04,$00,$00,$06,"Plate Gauntlets"
		.BYTE	$00,$02
		.BYTE	$25,$33,$00,$00,$11,$00,$00,$00,$00,$00,$00
		.BYTE	$80,$80

i_PlateLeggings:
		Item	$04,$00,$00,$02,"Plate Leggings"
		.BYTE	$00,$03
		.BYTE	$25,$33,$00,$00,$11,$00,$00,$00,$00,$00,$00
		.BYTE	$80,$80

i_PlateArmor:
		Item	$04,$00,$00,$10,"Plate Armor"
		.BYTE	$00,$01
		.BYTE	$25,$33,$00,$00,$11,$00,$00,$00,$00,$00,$00
		.BYTE	$80,$80

i_ScaleArmor:
		Item	$04,$00,$00,$02,"Scale armor"
		.BYTE	$00,$01
		.BYTE	$32,$32,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$70,$70

i_TruesilverHelm:
		Item	$04,$00,$00,$02,"Truesilver helm"
		.BYTE	$00,$00
		.BYTE	$33,$33,$11,$11,$11,$11,$11,$22,$22,$22,$21
		.BYTE	$F0,$F0

i_TruesilverCoat:
		Item	$04,$00,$00,$05,"Truesilver coat"
		.BYTE	$00,$01
		.BYTE	$33,$33,$11,$11,$11,$11,$11,$22,$22,$22,$11
		.BYTE	$F0,$F0

i_TruesilverGauntlets:
		Item	$04,$00,$00,$03,"Truesilver guantlets"
		.BYTE	$00,$02
		.BYTE	$33,$33,$11,$11,$11,$11,$11,$22,$22,$22,$11
		.BYTE	$F0,$F0

i_TruesilverLeggings:
		Item	$04,$00,$00,$04,"Truesilver leggings"
		.BYTE	$00,$03
		.BYTE	$33,$33,$11,$11,$11,$11,$11,$22,$22,$22,$11
		.BYTE	$F0,$F0

i_CuirbouilliHelm:
		Item	$04,$00,$00,$03,"Cuirbouilli Helm"
		.BYTE	$00,$00
		.BYTE	$23,$23,$00,$00,$11,$00,$00,$00,$00,$00,$00
		.BYTE	$40,$40

i_BronzeBreastplate:
		Item	$04,$00,$00,$0C,"Bronze Breastplate"
		.BYTE	$00,$01
		.BYTE	$24,$24,$00,$00,$11,$00,$00,$00,$00,$00,$00
		.BYTE	$50,$50

i_BronzeBracers:
		Item	$04,$00,$00,$04,"Bronze Bracers"
		.BYTE	$00,$02
		.BYTE	$24,$24,$00,$00,$11,$00,$00,$00,$00,$00,$00
		.BYTE	$40,$40

i_WhiteLinenShirt:
		Item	$05,$00,$00,$01,"White Linen Shirt"
		.BYTE	$00,$01,$01

i_BlackSilkKimono:
		Item	$05,$00,$00,$01,"Black Silk Kimono"
		.BYTE	$00,$02,$FF

i_CheapRobe:
		Item	$05,$00,$00,$01,"Cheap Robe"
		.BYTE	$00,$00,$01

i_ElvenCloak:
		Item	$05,$00,$00,$01,"Elven Cloak"
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$91,$82,$00,$01,$00,$04,$00
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$81,$8D,$00,$01,$00,$01,$00
		.BYTE	$88,$FF,$08,$01,$01,$00,$00,$00,$00,$81,$82,$00,$01,$00,$04,$00
		.BYTE	$88,$FF,$08,$01,$01,$00,$00,$00,$00,$91,$8D,$00,$01,$00,$01,$00
		.BYTE	$00,$00,$01

i_ElvenBoots:
		Item	$05,$00,$00,$01,"Elven Boots"
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$81,$7B,$00,$01,$00,$20,$00
		.BYTE	$88,$FF,$08,$01,$01,$00,$00,$00,$00,$91,$7B,$00,$01,$00,$20,$00
		.BYTE	$00,$01,$01

i_CrystalBelt:
		Item	$05,$00,$00,$01,"Crystal Belt"
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$81,$4B,$00,$01,$00,$14,$00
		.BYTE	$88,$FF,$08,$01,$01,$00,$00,$00,$00,$91,$4B,$00,$01,$00,$14,$00
		.BYTE	$00,$03,$01

i_BlueSuedeShoes:
		Item	$05,$00,$00,$01,"Blue Suede Shoes"
		.BYTE	$00,$04,$01

i_BlackWoolenBreeches:
		Item	$05,$00,$00,$01,"Black Woolen Breeches"
		.BYTE	$00,$02,$02

i_SilverBrocadedBodice:
		Item	$05,$00,$00,$01,"Silver Brocaded Bodice"
		.BYTE	$00,$02,$01

i_RedPlaidKilt:
		Item	$05,$00,$00,$01,"Red Plaid Kilt"
		.BYTE	$00,$03,$01

i_GoldSilkPantaloons:
		Item	$05,$00,$00,$01,"Gold Silk Pantaloons"
		.BYTE	$00,$03,$00

i_LeatherJerkin:
		Item	$05,$00,$00,$01,"Leather Jerkin"
		.BYTE	$00,$01,$01

i_FloppyLeatherHat:
		Item	$05,$00,$00,$01,"Floppy Leather Hat"
		.BYTE	$00,$01,$01

i_BlackCottonPartlet:
		Item	$05,$00,$00,$01,"Black Cotton Partlet"
		.BYTE	$00,$01,$02

i_SilverSash:
		Item	$05,$00,$00,$01,"Silver Sash"
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$81,$73,$00,$01,$00,$10,$00
		.BYTE	$88,$FF,$08,$01,$01,$00,$00,$00,$00,$91,$73,$00,$01,$00,$10,$00
		.BYTE	$00,$04,$00

i_StealthSuit:
		Item	$05,$00,$00,$01,"Stealth Suit"
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$81,$81,$00,$01,$00,$40,$00
		.BYTE	$88,$FF,$08,$01,$01,$00,$00,$00,$00,$91,$81,$00,$01,$00,$40,$00
		.BYTE	$00,$F1,$03

i_SilverKey:
		Item	$07,$00,$00,$00,"Silver Key"
		.BYTE	$00,$02,$07

i_GoblinRingHalf:
		Item	$07,$00,$00,$00,"Goblin Ring Half"
		.BYTE	$00,$02,$03

i_TrollRingHalf:
		Item	$07,$00,$00,$00,"Troll Ring Half"
		.BYTE	$00,$02,$04

i_StaffPiece:
		Item	$07,$00,$00,$00,"Staff Piece"
		.BYTE	$00,$02,$06

i_PacCard:
		Item	$07,$00,$00,$00,"PAC card"
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$E1,$88,$00,$01,$00,$01,$00
		.BYTE	$00,$02,$01

i_MirroredShield:
		Item	$03,$00,$00,$0A,"Mirrored Shield"
		.BYTE	$88,$FF,$04,$01,$01,$00,$01,$00,$00,$81,$AC,$00,$01,$00,$0A,$00
		.BYTE	$88,$FF,$08,$01,$01,$00,$01,$00,$00,$91,$AC,$00,$01,$00,$0A,$00
		.BYTE	$00,$FF,$00
		.BYTE	$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$10,$FF,$FF,$82,$60

i_ReforgedRing:
		Item	$07,$00,$00,$00,"Reforged Ring"
		.BYTE	$88,$FF,$01,$00,$EE,$02,$EE,$02,$00,$03,$99,$00,$01,$00,$FF,$00
		.BYTE	$88,$00,$01,$00,$D0,$02,$DC,$05,$00,$91,$85,$00,$01,$00,$01,$00
		.BYTE	$88,$FF,$01,$00,$EE,$02,$EE,$02,$00,$03,$4D,$00,$07,$08,$00,$00
		.BYTE	$00,$02,$02

i_Bloodstone:
		Item	$07,$00,$00,$00,"Bloodstone"
		.BYTE	$88,$FF,$01,$00,$DC,$05,$DC,$05,$00,$02,$45,$00,$01,$00,$FF,$00
		.BYTE	$00,$02,$08

i_WingedSandals:
		Item	$05,$00,$00,$01,"Winged Sandals"
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$81,$73,$00,$02,$08,$32,$00
		.BYTE	$88,$FF,$08,$01,$01,$00,$00,$00,$00,$91,$73,$00,$02,$08,$32,$00
		.BYTE	$00,$08,$00

i_MorganasTiara:
		Item	$05,$00,$00,$01,"Morgana's Tiara"
		.BYTE	$88,$FF,$84,$00,$01,$00,$11,$00,$00,$82,$45,$00,$01,$00,$01,$00
		.BYTE	$00,$0B,$01

i_CloakOfLevitation:
		Item	$05,$00,$00,$01,"Cloak of Levitation"
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$81,$7B,$00,$01,$00,$60,$00
		.BYTE	$88,$FF,$08,$01,$01,$00,$00,$00,$00,$91,$7B,$00,$01,$00,$60,$00
		.BYTE	$00,$04,$01

i_CrystalBreastplate:
		Item	$04,$00,$00,$12,"Crystal Breastplate"
		.BYTE	$00,$01
		.BYTE	$34,$34,$12,$12,$12,$12,$11,$12,$12,$12,$34
		.BYTE	$FF,$FF

i_JunaisSword:
		Item	$03,$00,$7F,$0C,"Junai's Sword"
		.BYTE	$88,$FF,$A1,$FF,$01,$00,$1A,$00,$00,$92,$45,$00,$01,$00,$01,$00
		.BYTE	$00,$FF,$00
		.BYTE	$00,$2A,$00,$00,$00,$00,$00,$00,$22,$22,$00
		.BYTE	$10,$10,$FF,$FF,$90,$24

i_Loadstone:
		Item	$07,$01,$00,$FF,"Loadstone"
		.BYTE	$88,$FF,$02,$01,$01,$00,$00,$00,$00,$01,$02,$80,$01,$00,$01,$00
		.BYTE	$00

i_IronPalmSalve:
		Item	$10,$00,$00,$00,"Iron Palm Salve"
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$81,$00,$01,$01,$00,$20,$00
		.BYTE	$00,$01

i_SwordOfTheAdept:
		Item	$03,$00,$00,$0A,"Sword of The Adept"
		.BYTE	$00,$FF,$00
		.BYTE	$00,$27,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$10,$10,$FF,$FF,$98,$50

i_RazorIce:
		Item	$03,$00,$00,$07,"Razor Ice"
		.BYTE	$00,$FF,$00
		.BYTE	$00,$27,$00,$00,$00,$00,$00,$00,$00,$00,$18
		.BYTE	$00,$00,$20,$20,$90,$50

i_Whetstone:
		Item	$18,$00,$00,$00,"Whetstone"
		.BYTE	$00,$00,$00,$01,$10

i_SaurianBrandy:
		Item	$10,$00,$00,$02,"Saurian Brandy"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$97,$00,$01,$00,$FF,$00
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$81,$4A,$00,$01,$00,$01,$00
		.BYTE	$00,$0A

i_BluePearlDagger:
		Item	$03,$00,$7F,$02,"Blue Pearl Dagger"
		.BYTE	$00,$FF,$00
		.BYTE	$00,$33,$00,$00,$00,$00,$00,$00,$00,$16,$00
		.BYTE	$10,$10,$20,$20,$12,$08

i_SixPack:
		Item	$10,$00,$00,$04,"Six pack [6]"
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$81,$96,$00,$03,$02,$08,$00
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$91,$10,$80,$01,$00,$01,$00
		.BYTE	$00,$06

i_MelvinsHelm:
		Item	$04,$00,$00,$12,"Melvin's Helm"
		.BYTE	$00,$00
		.BYTE	$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
		.BYTE	$FF,$FF

i_AmethystRod:
		Item	$07,$00,$00,$01,"Amethyst Rod"
		.BYTE	$88,$FF,$44,$01,$04,$00,$DD,$FA,$00,$D1,$88,$00,$01,$00,$FD,$00
		.BYTE	$88,$00,$04,$01,$01,$00,$00,$00,$00,$E1,$88,$00,$01,$00,$02,$00
		.BYTE	$00,$02,$FF

i_MapStone:
		Item	$18,$00,$00,$00,"Map Stone"
		.BYTE	$00,$00,$00,$01,$08

i_FlameQuarrels:
		Item	$02,$00,$00,$01,"Flame Quarrels [10]"
		.BYTE	$00,$03,$0A
		.BYTE	$00,$2A,$00,$00,$24,$00,$00,$00,$00,$00,$00

i_ThunderQuarrels:
		Item	$02,$00,$00,$01,"Thunder Quarrels [10]"
		.BYTE	$00,$03,$0A
		.BYTE	$00,$2A,$00,$00,$00,$00,$18,$00,$00,$00,$00

i_StaffOfAmber:
		Item	$03,$00,$00,$07,"Staff of Amber"
		.BYTE	$00,$FF,$00
		.BYTE	$24,$00,$24,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$00,$00,$FF,$FF,$DA,$FF

i_RobinsHood:
		Item	$05,$00,$00,$01,"Robin's Hood"
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$81,$84,$00,$02,$09,$01,$00
		.BYTE	$88,$FF,$08,$01,$01,$00,$00,$00,$00,$91,$84,$00,$02,$09,$01,$00
		.BYTE	$00,$06,$01

i_GoldenApple:
		Item	$07,$00,$00,$07,"Golden Apple"
		.BYTE	$88,$FF,$01,$FF,$01,$00,$00,$00,$00,$01,$02,$80,$01,$00,$10,$00
		.BYTE	$88,$FF,$41,$01,$01,$00,$00,$00,$00,$82,$45,$00,$02,$02,$0F,$00
		.BYTE	$00,$02,$FF

i_GaussRifle:
		Item	$03,$00,$00,$07,"Gauss Rifle [95]"
		.BYTE	$00,$06,$5F
		.BYTE	$48,$48,$00,$00,$00,$00,$00,$00,$00,$00,$00
		.BYTE	$18,$18,$30,$30,$45,$00

i_SolarSuit:
		Item	$04,$00,$00,$12,"Solar Suit"
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$E1,$88,$00,$01,$00,$04,$00
		.BYTE	$88,$FF,$04,$01,$01,$00,$00,$00,$00,$D1,$88,$00,$01,$00,$FB,$00
		.BYTE	$00,$01
		.BYTE	$00,$00,$00,$00,$F0,$00,$FF,$00,$00,$00,$00
		.BYTE	$20,$20

i_BeamWeapon:
		Item	$03,$00,$00,$07,"Beam Weapon [25]"
		.BYTE	$00,$05,$19
		.BYTE	$00,$00,$00,$00,$18,$00,$58,$00,$00,$00,$00
		.BYTE	$08,$0C,$30,$30,$05,$FF
:
off_93A0:
		.WORD	i_FrostbladeScroll
		.WORD	i_FirebladeScroll
		.WORD	i_CloutScroll
		.WORD	i_RenewScroll
		.WORD	i_RemoveCurseScroll
		.WORD	i_WizardEyeScroll
		.WORD	i_TheStarCard
		.WORD	i_TheFoolCard
		.WORD	i_TheHeirophantCard
		.WORD	i_DeathCard
		.WORD	i_AceOfCupsCard
		.WORD	i_TheChariotCard
		.WORD	i_StrengthCard
		.WORD	i_AceOfWandsCard
		.WORD	i_TemperanceCard
		.WORD	i_KingOfWandsCard
		.WORD	i_PageOfCupsCard
		.WORD	i_AceOfPentaclesCard
		.WORD	i_HighPriestessCard
		.WORD	i_TomeOfKnowledge
		.WORD	i_TomeOfUnderstanding
		.WORD	i_TomeOfLeadership

off_93CC:
		.WORD	i_ColdWand
		.WORD	i_FireWand
		.WORD	i_ParalysisWand
		.WORD	i_EyeOfVulnerability
		.WORD	i_LightWand
		.WORD	i_HealingWand
		.WORD	i_RubyEye
		.WORD	i_EmeraldEye
		.WORD	i_SapphireEye
		.WORD	i_AmberEye
		.WORD	i_WizardsEye
		.WORD	i_HypnoticEye
		.WORD	i_BronzeHorn
		.WORD	i_SilverHorn
		.WORD	i_GoldHorn
		.WORD	i_GoldHorn2

off_93EC:
		.WORD	i_CrystalShield
		.WORD	i_ShieldOfGalahad
		.WORD	i_SpikedShield
		.WORD	i_ShieldOfMordred
		.WORD	i_SpiritShield
		.WORD	i_IronwoodBoken
		.WORD	i_IronFan
		.WORD	i_TowerShield
		.WORD	i_Crossbow
		.WORD	i_Quarrels
		.WORD	i_ChaosClub
		.WORD	i_ShortSword
		.WORD	i_HolyHandGrenade
		.WORD	i_Pike
		.WORD	i_Dirk

off_940A:
		.WORD	i_PantherGloves
		.WORD	i_HelmOfLight
		.WORD	i_DragonskinHauberk
		.WORD	i_GoldenGreaves
		.WORD	i_PlateHelm
		.WORD	i_PlateGauntlets
		.WORD	i_PlateLeggings
		.WORD	i_PlateArmor
		.WORD	i_ScaleArmor
		.WORD	i_TruesilverHelm
		.WORD	i_TruesilverCoat
		.WORD	i_TruesilverGauntlets
		.WORD	i_TruesilverLeggings
		.WORD	i_CuirbouilliHelm
		.WORD	i_BronzeBreastplate
		.WORD	i_BronzeBracers

off_942A:
		.WORD	i_WhiteLinenShirt
		.WORD	i_BlackSilkKimono
		.WORD	i_CheapRobe
		.WORD	i_ElvenCloak
		.WORD	i_ElvenBoots
		.WORD	i_CrystalBelt
		.WORD	i_BlueSuedeShoes
		.WORD	i_BlackWoolenBreeches
		.WORD	i_SilverBrocadedBodice
		.WORD	i_RedPlaidKilt
		.WORD	i_GoldSilkPantaloons
		.WORD	i_LeatherJerkin
		.WORD	i_FloppyLeatherHat
		.WORD	i_BlackCottonPartlet
		.WORD	i_SilverSash
		.WORD	i_StealthSuit

off_944A:
		.WORD	i_PotionOfFleetness
		.WORD	i_PotionOfStrength
		.WORD	i_PotionOfIntelligence
		.WORD	i_PotionOfCharisma
		.WORD	i_PotionOfEndurance
		.WORD	i_PotionOfInvBlunt
		.WORD	i_PotionOfInvSharp
		.WORD	i_PotionOfInvEarth
		.WORD	i_PotionOfInvAir
		.WORD	i_PotionOfInvFire
		.WORD	i_PotionOfInvWater
		.WORD	i_PotionOfRegeneration
		.WORD	i_PotionOfInvMental
		.WORD	i_PotionOfInvCold
		.WORD	i_PotionOfFruitJuice
		.WORD	i_PotionOfWizardEye
		.WORD	i_PotionOfDexterity
		.WORD unk_84C7
		.WORD unk_8515
		.WORD unk_8531
		.WORD	i_PotionOfRestoration
		.WORD unk_8579
		.WORD unk_85A2
		.WORD unk_85DB
unk_947A:	.BYTE	<off_93A0	; DATA XREF: sub_769B+27r
		.BYTE 	<off_93CC
		.BYTE	<off_93EC
		.BYTE	<off_940A
		.BYTE	<off_942A
		.BYTE	<off_944A
unk_9480:	.BYTE	>off_93A0	; DATA XREF: sub_769B+2Cr
		.BYTE	>off_93CC
		.BYTE	>off_93EC
		.BYTE	>off_940A
		.BYTE	>off_942A
		.BYTE	>off_944A
unk_9486:	.BYTE	<i_TheStarCard	; DATA XREF: RAM:764Fr
		.BYTE	<i_WingedSandals
		.BYTE	<i_PotionOfRestoration
		.BYTE	<i_MorganasTiara
		.BYTE	<i_HelmOfLight
		.BYTE	<i_TruesilverCoat
		.BYTE	<i_CloakOfLevitation
		.BYTE	<i_CrystalBreastplate
		.BYTE	<i_PageOfCupsCard
		.BYTE 	<i_JunaisSword
		.BYTE	<i_RobinsHood
		.BYTE	<i_DeathCard
		.BYTE	<i_IronPalmSalve
		.BYTE	<i_DeathCard
		.BYTE	<i_SwordOfTheAdept
		.BYTE	<i_RazorIce
		.BYTE	<i_Whetstone
		.BYTE	<i_SaurianBrandy
		.BYTE	<i_BluePearlDagger
		.BYTE	<i_SixPack
		.BYTE	<i_MelvinsHelm
		.BYTE	<i_Crossbow
		.BYTE	<i_AmethystRod
		.BYTE	<i_MapStone
		.BYTE	<i_FlameQuarrels
		.BYTE	<i_ThunderQuarrels
		.BYTE	<i_StaffOfAmber
		.BYTE	<i_Loadstone
		.BYTE	<i_GoldenApple
		.BYTE	<i_GaussRifle
		.BYTE	<i_SolarSuit
		.BYTE	<i_BeamWeapon
unk_94A6:	.BYTE	>i_TheStarCard	; DATA XREF: RAM:7652r
		.BYTE	>i_WingedSandals
		.BYTE	>i_PotionOfRestoration
		.BYTE	>i_MorganasTiara
		.BYTE	>i_HelmOfLight
		.BYTE	>i_TruesilverCoat
		.BYTE	>i_CloakOfLevitation
		.BYTE	>i_CrystalBreastplate
		.BYTE	>i_PageOfCupsCard
		.BYTE	>i_JunaisSword
		.BYTE	>i_RobinsHood
		.BYTE	>i_DeathCard
		.BYTE	>i_IronPalmSalve
		.BYTE	>i_DeathCard
		.BYTE	>i_SwordOfTheAdept
		.BYTE	>i_RazorIce
		.BYTE	>i_Whetstone
		.BYTE	>i_SaurianBrandy
		.BYTE	>i_BluePearlDagger
		.BYTE	>i_SixPack
		.BYTE	>i_MelvinsHelm
		.BYTE	>i_Crossbow
		.BYTE	>i_AmethystRod
		.BYTE	>i_MapStone
		.BYTE	>i_FlameQuarrels
		.BYTE	>i_ThunderQuarrels
		.BYTE	>i_StaffOfAmber
		.BYTE	>i_Loadstone
		.BYTE	>i_GoldenApple
		.BYTE	>i_GaussRifle
		.BYTE	>i_SolarSuit
		.BYTE	>i_BeamWeapon
		.BYTE	<i_SilverKey
		.BYTE	<i_GoblinRingHalf
		.BYTE $6A ; j
		.BYTE $83 ; É
		.BYTE $98 ; ò
		.BYTE $BA ; ∫
		.BYTE	4
		.BYTE $4B ; K
		.BYTE	>i_SilverKey
		.BYTE	>i_GoblinRingHalf
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE $10
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE $40 ; @
		.BYTE $58 ; X
		.BYTE $70 ; p
		.BYTE $7A ; z
		.BYTE $84 ; Ñ
		.BYTE $8E ; é
		.BYTE $92 ; í
		.BYTE $96 ; ñ
		.BYTE $9A ; ö
		.BYTE $9E ; û
		.BYTE $A6 ; ¶
		.BYTE $B6 ; ∂
		.BYTE $BA ; ∫
		.BYTE $CA ;  
		.BYTE $E0 ; ‡
		.BYTE $F0 ; 
		.BYTE $F4 ; Ù
		.BYTE $F8 ; ¯
		.BYTE $FF
		.BYTE	8
		.BYTE $18
		.BYTE $28 ; (
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $68 ; h
		.BYTE $70 ; p
		.BYTE $78 ; x
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE $98 ; ò
		.BYTE $A8 ; ®
		.BYTE $B4 ; ¥
		.BYTE $C0 ; ¿
		.BYTE $E0 ; ‡
		.BYTE $FF
		.BYTE	4
		.BYTE	8
		.BYTE $20
		.BYTE $24 ; $
		.BYTE $28 ; (
		.BYTE $38 ; 8
		.BYTE $40 ; @
		.BYTE $60 ; `
		.BYTE $70 ; p
		.BYTE $80 ; Ä
		.BYTE $90 ; ê
		.BYTE $A8 ; ®
		.BYTE $C0 ; ¿
		.BYTE $D8 ; ÿ
		.BYTE $FF
		.BYTE	4
		.BYTE	8
		.BYTE  $C
		.BYTE $10
		.BYTE $30 ; 0
		.BYTE $50 ; P
		.BYTE $70 ; p
		.BYTE $90 ; ê
		.BYTE $B0 ; ∞
		.BYTE $B4 ; ¥
		.BYTE $B8 ; ∏
		.BYTE $BC ; º
		.BYTE $C0 ; ¿
		.BYTE $E0 ; ‡
		.BYTE $F0 ; 
		.BYTE $FF
		.BYTE $10
		.BYTE $20
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $5C ; \
		.BYTE $60 ; `
		.BYTE $68 ; h
		.BYTE $78 ; x
		.BYTE $88 ; à
		.BYTE $9C ; ú
		.BYTE $AC ; ¨
		.BYTE $C4 ; -
		.BYTE $DC ; ‹
		.BYTE $F4 ; Ù
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $10
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $52 ; R
		.BYTE $54 ; T
		.BYTE $56 ; V
		.BYTE $58 ; X
		.BYTE $5A ; Z
		.BYTE $5C ; \
		.BYTE $64 ; d
		.BYTE $66 ; f
		.BYTE $68 ; h
		.BYTE $88 ; à
		.BYTE $90 ; ê
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $AC ; ¨
		.BYTE $B0 ; ∞
		.BYTE $C0 ; ¿
		.BYTE $E0 ; ‡
		.BYTE $F0 ; 
		.BYTE $FF
unk_9543:	.BYTE $D6 ; ÷		; DATA XREF: sub_769B+7r
		.BYTE $EC ; Ï
		.BYTE $FC ; ¸
		.BYTE  $B
		.BYTE $1B
		.BYTE $2B ; +
unk_9549:	.BYTE $94 ; î		; DATA XREF: sub_769B+Cr
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
unk_954F:	.BYTE $3C ; <		; DATA XREF: RAM:767Dr
		.BYTE $50 ; P
		.BYTE $6A ; j
		.BYTE $83 ; É
		.BYTE $98 ; ò
		.BYTE $BA ; ∫
		.BYTE	4
		.BYTE $4B ; K
unk_9557:	.BYTE $8E ; é		; DATA XREF: RAM:7680r
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8F ; è
		.BYTE $8F ; è
off_955F:	.WORD	0		; DATA XREF: RAM:9C35o	RAM:9C5Cw ...

byte_9561:
		.BYTE $A8,$FF

a_TrumpCard:
		MOVEXY	0,2
		.BYTE	$A5,"Sealed in an envelope is a trump card.",$D,$FF

a_Sandals:
		MOVEXY	0,1
		.BYTE	$A5,"A powerful but feminine voice says:",$D,$D
		.BYTE	$A5,$22,"For thy victory I give thee these",$D
		.BYTE	$A5,"sandals to make thee quick and agile.",$22,$D,$FF

a_Potion:
		MOVEXY	0,2
		.BYTE	$A5,"After some prying, a small chest",$D
		.BYTE	$A5,"opens to reveal a potion vial.",$D,$FF

a_Crown:
		MOVEXY	0,2
		.BYTE	$A5,"You find a dainty little crown.",$D,$FF

a_Helm:
		MOVEXY	0,2
		.BYTE	$A5,"A helm glowing with runes floats",$D
		.BYTE	$A5,"in midair before you.",$D,$FF

a_Chainmail:
		MOVEXY	0,2
		.BYTE	$A5,"A chain-mail coat gleems with an",$D
		.BYTE	$A5,"almost magical lustre.",$D,$FF

a_Cloak:
		MOVEXY	0,3
		.BYTE	$A5,"A cloak dances to and fro before you.",$D,$FF

a_Breastplate:
		MOVEXY	0,2
		.BYTE	$A5,"There is a glistening breastplate that",$D
		.BYTE	$A5,"looks as if it was made just for you.",$D,$FF

a_Sword:
		MOVEXY	0,2
		.BYTE	$A5,"A straight, single-edged, evil-looking",$D
		.BYTE	$A5,"sword of oriental design lies here.",$D,$FF

a_Stone:
		MOVEXY	0,2
		.BYTE $A5,"A curious-looking stone fastens",$D
		.BYTE $A5,"itself around your neck.",$D,$FF

a_Vial:
		MOVEXY	0,1
		.BYTE	$A5,"Directions on a small vial here read:",$D,$D
		.BYTE	$A5,"1. Pour over hands. ",$D
		.BYTE	"2. Rub hands firmly.",$D,$FF

a_TrumpCard2:
		MOVEXY	0,2
		.BYTE	$A5,"Sealed in an envelope is a trump card.",$D,$FF

a_Sword2:
		MOVEXY	0,2
		.BYTE	$A5,"A sword protrudes from a slab",$D
		.BYTE	$A5,"of black marble.",$D,$FF

a_Katana:
		MOVEXY	0,1
		.BYTE	$A5,"A katana in a ribbed black lacquered",$D
		.BYTE	$A5,"scabbard rests against a wall.",$D,$D
		.BYTE	$A5,"A pattern of snowflakes has been",$D
		.BYTE	$A5,"honed along its single edge.",$D,$FF

a_Whetstone:
		MOVEXY	0,2
		.BYTE	$A5,"There is a small rectangular",$D
		.BYTE	$A5,"sharpening stone here.",$D,$FF

a_Brandy:
		MOVEXY	0,0
		.BYTE	$A5,"Signs of a great battle between a",$D
		.BYTE	$A5,"single warrior and a dozen or more",$D
		.BYTE	$A5,"adversaries litter this room.",$D
		.BYTE	$A5,"Clutched tightly to the warrior's",$D
		.BYTE	$A5,"remains is a bottle filled with",$D
		.BYTE	$A5,"green liquid.",$D,$FF

a_BluePearl:
		MOVEXY	0,1
		.BYTE	$A5,"Inscribed on the blade of a dagger",$D
		.BYTE	$A5,"are the words:",$D,$D
		.BYTE	$A5,$22,"Fear not The Reaper",$22,$D,$FF

a_SixPack:
		MOVEXY	0,1
		.BYTE	$A5,"The decaying remains of an adventurer",$D
		.BYTE	$A5,"sporting a bush hat and a very nasty",$D
		.BYTE	$A5,"knife are here. Inscribed on the broken",$D
		.BYTE	$A5,"blade is the word ",$22,"G'day",$22,".  Lying next",$D
		.BYTE	$A5,"to him are six tall metal cylinders.",$D,$FF

a_MelvinsHelm:
		MOVEXY	0,2
		.BYTE	$A5,"There is golden helm with",$D
		.BYTE	$A5,"thirteen jewels here.",$D,$FF

a_Crossbow:
		MOVEXY	0,2
		.BYTE	$A5,"A crossbow of incredibly fine",$D
		.BYTE	$A5,"mechanical workmanship lies here.",$D,$FF

a_AmethystRod:
		MOVEXY	0,2
		.BYTE	$A5,"A blue-violet quartz rod lies",$D
		.BYTE	$A5,"on a purple dais.",$D,$FF

a_MapStone:
		STRJSR	loc_9C5A
		MOVEXY	0,0
		.BYTE	$A5,"A note reads:",$D
		PRINTSTR $6321,25
		.BYTE	",",$D,$D
		.BYTE	"   Congratulations my good "
		PRINTSTRP off_955F,5
		.BYTE	" on",$D
		.BYTE	"getting this far.",$D,$D
		.BYTE	$A7
		.BYTE	"A friend",$D,$FF
; ---------------------------------------------------------------------------

loc_9C5A:				; DATA XREF: RAM:9BFEo
		dldi	off_955F, aMan
		BIT	$633B
		BPL	locret_9C73
		dldi	off_955F, aWoman

locret_9C73:				; CODE XREF: RAM:9C67j
		RTS
; ---------------------------------------------------------------------------
aMan:		.BYTE "man",0
aWoman:		.BYTE "woman",0

a_Quarrels:
		MOVEXY	0,2
		.BYTE	$A5,"There are 10 quarrels in",$D
		.BYTE	$A5,"a metallic clip here.",$D,$FF

a_StaffOfAmber:
		MOVEXY	0,2
		.BYTE	$A5,"There is a long electrum rod here.",$D,$FF

a_Cowl:
		MOVEXY	0,0
		.BYTE	$A5,"There is a dark cowl here.",$D,$FF

a_GoldenApple:
		MOVEXY	0,0
		.BYTE	$A5,"A golden apple rests on a golden",$D
		.BYTE	$A5,"pillow.  Inscribed on the apple",$D
		.BYTE	$A5,"are the words:",$D,$D
		.BYTE	$A5,$22,"For the pretty one.",$22,$D,$FF

a_GaussRifle:
		MOVEXY	0,2
		.BYTE	$A5,"There is evidence of small",$D
		.BYTE	$A5,"weapons fire here.",$D,$FF

a_SolarSuit:
		MOVEXY	0,2
		.BYTE	$A5,"There are some disgusting stains",$D
		.BYTE	$A5,"on the floor and an odd looking",$D
		.BYTE	$A5,"silvery quilted vest.",$D,$FF

a_BeamWeapon:
		MOVEXY	0,2
		.BYTE	$A5,"An energy pistol is hanging",$D
		.BYTE	$A5,"on a wall rack.",$D,$FF

unk_9E2E:	.BYTE	<a_TrumpCard	; DATA XREF: RAM:7645r
		.BYTE	<a_Sandals
		.BYTE	<a_Potion
		.BYTE	<a_Crown
		.BYTE	<a_Helm
		.BYTE	<a_Chainmail
		.BYTE	<a_Cloak
		.BYTE	<a_Breastplate
		.BYTE	<a_TrumpCard
		.BYTE	<a_Sword
		.BYTE	<a_Cowl
		.BYTE	<a_TrumpCard
		.BYTE	<a_Vial
		.BYTE	<a_TrumpCard2
		.BYTE	<a_Sword2
		.BYTE	<a_Katana
		.BYTE	<a_Whetstone
		.BYTE	<a_Brandy
		.BYTE	<a_BluePearl
		.BYTE	<a_SixPack
		.BYTE	<a_MelvinsHelm
		.BYTE	<a_Crossbow
		.BYTE	<a_AmethystRod
		.BYTE	<a_MapStone
		.BYTE	<a_Quarrels
		.BYTE	<a_Quarrels
		.BYTE	<a_StaffOfAmber
		.BYTE	<a_Stone
		.BYTE	<a_GoldenApple
		.BYTE	<a_GaussRifle
		.BYTE	<a_SolarSuit
		.BYTE	<a_BeamWeapon
unk_9E4E:	.BYTE	>a_TrumpCard	; DATA XREF: RAM:764Ar
		.BYTE	>a_Sandals
		.BYTE	>a_Potion
		.BYTE	>a_Crown
		.BYTE	>a_Helm
		.BYTE	>a_Chainmail
		.BYTE	>a_Cloak
		.BYTE	>a_Breastplate
		.BYTE	>a_TrumpCard
		.BYTE	>a_Sword
		.BYTE	>a_Cowl
		.BYTE	>a_TrumpCard
		.BYTE	>a_Vial
		.BYTE	>a_TrumpCard2
		.BYTE	>a_Sword2
		.BYTE	>a_Katana
		.BYTE	>a_Whetstone
		.BYTE	>a_Brandy
		.BYTE	>a_BluePearl
		.BYTE	>a_SixPack
		.BYTE	>a_MelvinsHelm
		.BYTE	>a_Crossbow
		.BYTE	>a_AmethystRod
		.BYTE	>a_MapStone
		.BYTE	>a_Quarrels
		.BYTE	>a_Quarrels
		.BYTE	>a_StaffOfAmber
		.BYTE	>a_Stone
		.BYTE	>a_GoldenApple
		.BYTE	>a_GaussRifle
		.BYTE	>a_SolarSuit
		.BYTE	>a_BeamWeapon
		.WORD	i_PotionOfInvBlunt
		.WORD	i_PotionOfInvSharp
		.WORD	i_PotionOfInvEarth
		.WORD	i_PotionOfInvAir
		.WORD	i_PotionOfInvFire
		.WORD	i_PotionOfInvWater
		.WORD	i_PotionOfRegeneration
		.WORD	i_PotionOfInvMental
		.WORD	i_PotionOfInvCold
		.WORD	i_PotionOfFruitJuice
		.WORD	i_PotionOfWizardEye
		.WORD	i_PotionOfDexterity
		.WORD unk_84C7
		.WORD unk_8515
		.WORD unk_8531
		.WORD 	i_PotionOfRestoration
		.WORD unk_8579
		.WORD unk_85A2
		.WORD unk_85DB
		.BYTE $A0 ; †
		.BYTE $CC ; Ã
		.BYTE $EC ; Ï
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $4A ; J
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $E6 ; Ê
		.BYTE $6F ; o
		.BYTE $4C ; L
		.BYTE $A7 ; ß
		.BYTE $7D ; }
		.BYTE $FC ; ¸
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $C5 ; ≈
		.BYTE $36 ; 6
		.BYTE $9E ; û
		.BYTE $84 ; Ñ
		.BYTE $8F ; è
		.BYTE $84 ; Ñ
		.BYTE $B7 ; ∑
		.BYTE $E4 ; ‰
		.BYTE	8
		.BYTE $1D
		.BYTE $54 ; T
		.BYTE $80 ; Ä
		.BYTE $B5 ; µ
		.BYTE  $C
		.BYTE $D8 ; ÿ
		.BYTE  $E
		.BYTE $23 ; #
		.BYTE $4B ; K
		.BYTE $75 ; u
		.BYTE $6E ; n
		.BYTE $D4 ; ‘
		.BYTE  $A
		.BYTE $35 ; 5
		.BYTE $75 ; u
		.BYTE $78 ; x
		.BYTE $8F ; è
		.BYTE $85 ; Ö
		.BYTE $8F ; è
		.BYTE $89 ; â
		.BYTE $8A ; ä
		.BYTE $8F ; è
		.BYTE $90 ; ê
		.BYTE $7A ; z
		.BYTE $90 ; ê
		.BYTE $92 ; í
		.BYTE $79 ; y
		.BYTE $90 ; ê
		.BYTE $79 ; y
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $91 ; ë
		.BYTE $88 ; à
		.BYTE $91 ; ë
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $92 ; í
		.BYTE $90 ; ê
		.BYTE $92 ; í
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $93 ; ì
		.BYTE $3C ; <
		.BYTE $50 ; P
		.BYTE $6A ; j
		.BYTE $83 ; É
		.BYTE $98 ; ò
		.BYTE $BA ; ∫
		.BYTE	4
		.BYTE $4B ; K
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE $10
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE $40 ; @
		.BYTE $58 ; X
		.BYTE $70 ; p
		.BYTE $7A ; z
		.BYTE $84 ; Ñ
		.BYTE $8E ; é
		.BYTE $92 ; í
		.BYTE $96 ; ñ
		.BYTE $9A ; ö
		.BYTE $9E ; û
		.BYTE $A6 ; ¶
		.BYTE $B6 ; ∂
		.BYTE $BA ; ∫
		.BYTE $CA ;  
		.BYTE $E0 ; ‡
		.BYTE $F0 ; 
		.BYTE $F4 ; Ù
		.BYTE $F8 ; ¯
		.BYTE $FF
		.BYTE	8
		.BYTE $18
		.BYTE $28 ; (
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $68 ; h
		.BYTE $70 ; p
		.BYTE $78 ; x
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE $98 ; ò
		.BYTE $A8 ; ®
		.BYTE $B4 ; ¥
		.BYTE $C0 ; ¿
		.BYTE $E0 ; ‡
		.BYTE $FF
		.BYTE	4
		.BYTE	8
		.BYTE $20
		.BYTE $24 ; $
		.BYTE $28 ; (
		.BYTE $38 ; 8
		.BYTE $40 ; @
		.BYTE $60 ; `
		.BYTE $70 ; p
		.BYTE $80 ; Ä
		.BYTE $90 ; ê
		.BYTE $A8 ; ®
		.BYTE $C0 ; ¿
		.BYTE $D8 ; ÿ
		.BYTE $FF
		.BYTE	4
		.BYTE	8
		.BYTE  $C
		.BYTE $10
		.BYTE $30 ; 0
		.BYTE $50 ; P
		.BYTE $70 ; p
		.BYTE $90 ; ê
		.BYTE $B0 ; ∞
		.BYTE $B4 ; ¥
		.BYTE $B8 ; ∏
		.BYTE $BC ; º
		.BYTE $C0 ; ¿
		.BYTE $E0 ; ‡
		.BYTE $F0 ; 
		.BYTE $FF
		.BYTE $10
		.BYTE $20
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $5C ; \
		.BYTE $60 ; `
		.BYTE $68 ; h
		.BYTE $78 ; x
		.BYTE $88 ; à
		.BYTE $9C ; ú
		.BYTE $AC ; ¨
		.BYTE $C4 ; -
		.BYTE $DC ; ‹
		.BYTE $F4 ; Ù
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $10
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $52 ; R
		.BYTE $54 ; T
		.BYTE $56 ; V
		.BYTE $58 ; X
		.BYTE $5A ; Z
		.BYTE $5C ; \
		.BYTE $64 ; d
		.BYTE $66 ; f
		.BYTE $68 ; h
		.BYTE $88 ; à
		.BYTE $90 ; ê
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $AC ; ¨
		.BYTE $B0 ; ∞
		.BYTE $C0 ; ¿
		.BYTE $E0 ; ‡
		.BYTE $F0 ; 
		.BYTE $FF
		.BYTE $D6 ; ÷
		.BYTE $EC ; Ï
		.BYTE $FC ; ¸
		.BYTE  $B
		.BYTE $1B
		.BYTE $2B ; +
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $3C ; <
		.BYTE $50 ; P
		.BYTE $6A ; j
		.BYTE $83 ; É
		.BYTE $98 ; ò
		.BYTE $BA ; ∫
		.BYTE	4
		.BYTE $4B ; K
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE	0
		.BYTE	0
		.BYTE $A8,$FF

		MOVEXY	0,2
		.BYTE $A5,"Sealed in an envelope is a trump card.",$D,$FF

		MOVEXY	0,1
		.BYTE $A5,"A powerful but feminine voice says:",$D,$D
		.BYTE $A5,$22,"For thy victory I give thee these",$D
		.BYTE $A5,"sandals t"
; end of 'RAM'


		.END
