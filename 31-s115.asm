		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
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
		CMP	aMirroredShield,Y ; "Mirrored Shield"
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
;:		.BYTE	$10		; DATA XREF: RAM:93ACo
;		.BYTE	:++-:-
;		.BYTE	$00,$00,$00
;		.BYTE	:+-:-
;aTheStarCard:	.BYTE	"The Star (card)",0
;:
		Item	$10,$00,$00,$00,"The Star (card)"		
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$81,$BE,$00,$01,$00,$19,$00,$00,$01

i_TheFoolCard:
:		.BYTE	$10		; DATA XREF: RAM:93AEo
		.BYTE	:++-:-
		.BYTE	$00,$00,$00
		.BYTE	:+-:-
aTheFoolCard:	.BYTE	"The Fool (card)",0
:		.BYTE	$88,$FF,$C4,$01,$D2,$02,$0D,$F0,$00,$91,$84,$00,$01,$00,$01,$00
		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$81,$84,$00,$01,$00,$01,$00
		.BYTE	$EC,$00,$44
aLuck:		.BYTE	"Luck",0
		.BYTE	$00,$00,$00,$00,$00,$00,$00,$00,$00,$01

i_TheHeirophantCard:
:		.BYTE	$10		; DATA XREF: RAM:93B0o
		.BYTE	:++-:-
		.BYTE	$00,$00,$00
		.BYTE	:+-:-
aTheHeirophantC:.BYTE	"The Heirophant (card)",0
:		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$20,$00,$01,$00,$0F,$00
		.BYTE	$00,$01

i_DeathCard:
:		.BYTE	$10		; DATA XREF: RAM:93B2o
		.BYTE	:++-:-
		.BYTE	$00,$00,$00
		.BYTE 	:+-:-
aDeathCard:	.BYTE "Death (card)",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	2
		.BYTE	8
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_AceOfCupsCard:
:		.BYTE $10		; DATA XREF: RAM:93B4o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aAceOfCups:	.BYTE "Ace of Cups",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $C2 ; ¬
		.BYTE	0
		.BYTE $10
		.BYTE	1
		.BYTE $8F ; è
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_TheChariotCard:
:		.BYTE $10		; DATA XREF: RAM:93B6o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aTheChariotCard:.BYTE "The Chariot (card)",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $72 ; r
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_StrengthCard:
:		.BYTE $10		; DATA XREF: RAM:93B8o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aStrengthCard:	.BYTE "Strength (card)",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $5A ; Z
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_AceOfWandsCard:
:		.BYTE $10		; DATA XREF: RAM:93BAo
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aAceOfWands:	.BYTE "Ace of Wands",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $9B ; õ
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $4F ; O
		.BYTE	0
		.BYTE	7
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_TemperanceCard:
:		.BYTE $10		; DATA XREF: RAM:93BCo
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aTemperanceCard:.BYTE "Temperance (card)",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $96 ; ñ
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_KingOfWandsCard:
:		.BYTE $10		; DATA XREF: RAM:93BEo
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aKingOfWands:	.BYTE "King of Wands",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $B9 ; π
		.BYTE	0
		.BYTE $19
		.BYTE $11
		.BYTE	0
		.BYTE	1
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $88 ; à
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aFireInvuln_:	.BYTE "Fire Invuln.",0
		.BYTE	0
		.BYTE	1

i_PageOfCupsCard:
:		.BYTE $10		; DATA XREF: RAM:93C0o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aPageOfCupsCard:.BYTE "Page of Cups (card)",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $99 ; ô
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE $FF
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $4D ; M
		.BYTE	0
		.BYTE	7
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_AceOfPentaclesCard:
:		.BYTE $10		; DATA XREF: RAM:93C2o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aAceOfPentacles:.BYTE "Ace of Pentacles",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $B1 ; ±
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $64 ; d
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_HighPriestessCard:
:		.BYTE $10		; DATA XREF: RAM:93C4o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aHighPriestessC:.BYTE "High Priestess (card)",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $F5 ; ı
		.BYTE	0
		.BYTE $99 ; ô
		.BYTE $64 ; d
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE  $B
		.BYTE	1
		.BYTE	6
		.BYTE	0
		.BYTE $88 ; à
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE  $B
		.BYTE	1
		.BYTE	6
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aProtection:	.BYTE "Protection",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_ColdWand:
:		.BYTE	$08
		.BYTE	:++-:-
		.BYTE	$00,$00,$00
		.BYTE	:+-:-
aColdWand:	.BYTE	"Cold Wand",0
:		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$E7,$00,$02,$01,$66,$00,$00

i_FireWand:
:		.BYTE	$08
		.BYTE	:++-:-
		.BYTE	$00,$00,$00
		.BYTE	:+-:-
aFireWand:	.BYTE	"Fire Wand",0
:		.BYTE	$88,$FF,$44,$01,$01,$00,$00,$00,$00,$01,$E1,$00,$02,$07,$66,$00,$00

i_ParalysisWand:
:		.BYTE	8		; DATA XREF: RAM:93D0o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aParalysisWand:	.BYTE "Paralysis Wand",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0

i_EyeOfVulnerability:
:		.BYTE $10		; DATA XREF: RAM:93D2o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aEyeOfVulnerabi:.BYTE "Eye of Vulnerabilty",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	9
		.BYTE	0
		.BYTE	0
		.BYTE	3

i_LightWand:
:		.BYTE	8		; DATA XREF: RAM:93D4o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aLightWand:	.BYTE "Light Wand",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $D2 ; “
		.BYTE	2
		.BYTE $AD ; ≠
		.BYTE $DE ; ﬁ
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aLight:		.BYTE "Light",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
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
		.BYTE	0

i_HealingWand:
:		.BYTE	8		; DATA XREF: RAM:93D6o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aHealingWand:	.BYTE "Healing Wand",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $32 ; 2
		.BYTE	0
		.BYTE	0

i_FrostbladeScroll:
:		.BYTE $10		; DATA XREF: RAM:93A0o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aFrostbladeScro:.BYTE "Frostblade Scroll",0
:		.BYTE $87 ; á
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $3D ; =
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $DC ; ‹
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
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
		.BYTE	1
		.BYTE $DC ; ‹
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aFrostblade:	.BYTE "Frostblade",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_FirebladeScroll:
:		.BYTE $10		; DATA XREF: RAM:93A2o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aFirebladeScrol:.BYTE "Fireblade Scroll",0
:		.BYTE $87 ; á
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $3D ; =
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
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
		.BYTE	1
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aFireblade:	.BYTE "Fireblade",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_CloutScroll:
:		.BYTE $10		; DATA XREF: RAM:93A4o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aCloutScroll:	.BYTE "Clout Scroll",0
:		.BYTE $87 ; á
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $3E ; >
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $D2 ; “
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
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
		.BYTE	1
		.BYTE $D2 ; “
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aClout:		.BYTE "Clout",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_RenewScroll:
:		.BYTE	$18		; DATA XREF: RAM:93A6o
		.BYTE	:++-:-
		.BYTE	$00,$00,$00
		.BYTE	:+-:-
aRenewScroll:	.BYTE	"Renew Scroll",0
:		.BYTE	$00,$00,$01,$01,$10

i_RemoveCurseScroll:
:		.BYTE	$18		; DATA XREF: RAM:93A8o
		.BYTE	:++-:-
		.BYTE	$00,$00,$00
		.BYTE	:+-:-
aRemoveCurseScr:.BYTE	"Remove Curse Scroll",0
:		.BYTE	$00,$83,$01,$06,$08

i_WizardEyeScroll:
:		.BYTE	$10		; DATA XREF: RAM:93AAo
		.BYTE	:++-:-
		.BYTE	$00,$00,$00
		.BYTE	:+-:-
aWizardEyeScrol:.BYTE	"Wizard Eye Scroll",0
:		.BYTE	$84 ; Ñ
		.BYTE	$FF
		.BYTE	$C4 ; -
		.BYTE	1
		.BYTE	$F1 ; Ò
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
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
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $F1 ; Ò
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $8B ; ã
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aWizardEye:	.BYTE "Wizard Eye",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_RubyEye:
:		.BYTE $10		; DATA XREF: RAM:93D8o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aRubyEye:	.BYTE "Ruby Eye",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $E1 ; ·
		.BYTE	0
		.BYTE	2
		.BYTE	7
		.BYTE $F6 ; ˆ
		.BYTE	0
		.BYTE	0
		.BYTE	3

i_EmeraldEye:
:		.BYTE $10		; DATA XREF: RAM:93DAo
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aEmeraldEye:	.BYTE "Emerald Eye",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $E2 ; ‚
		.BYTE	0
		.BYTE	2
		.BYTE	6
		.BYTE $F6 ; ˆ
		.BYTE	0
		.BYTE	0
		.BYTE	3

i_SapphireEye:
:		.BYTE $10		; DATA XREF: RAM:93DCo
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aSapphireEye:	.BYTE "Sapphire Eye",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	0
		.BYTE	2
		.BYTE	8
		.BYTE $F6 ; ˆ
		.BYTE	0
		.BYTE	0
		.BYTE	3

i_AmberEye:
:		.BYTE $10		; DATA XREF: RAM:93DEo
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aAmberEye:	.BYTE "Amber Eye",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $DF ; ﬂ
		.BYTE	0
		.BYTE	2
		.BYTE	9
		.BYTE $F6 ; ˆ
		.BYTE	0
		.BYTE	0
		.BYTE	3

i_WizardsEye:
:		.BYTE $10		; DATA XREF: RAM:93E0o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aWizardSEye:	.BYTE "Wizard's Eye",0
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
		.BYTE $8B ; ã
		.BYTE	0
		.BYTE	2
		.BYTE	5
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
		.BYTE	2
		.BYTE	5
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aWizardEye_0:	.BYTE "Wizard Eye",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	3

i_HypnoticEye:
:		.BYTE $10		; DATA XREF: RAM:93E2o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aHypnoticEye:	.BYTE "Hypnotic Eye",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE	3

i_TomeOfKnowledge:
:		.BYTE $10		; DATA XREF: RAM:93C6o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aTomeOfKnowledg:.BYTE "Tome of Knowledge",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $62 ; b
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_TomeOfUnderstanding:
:		.BYTE $10		; DATA XREF: RAM:93C8o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aTomeOfUndersta:.BYTE "Tome of Understanding",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $6A ; j
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_TomeOfLeadership:
:		.BYTE $10		; DATA XREF: RAM:93CAo
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aTomeOfLeadersh:.BYTE "Tome of Leadership",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $52 ; R
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_BronzeHorn:
:		.BYTE $10		; DATA XREF: RAM:93E4o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aBronzeHorn:	.BYTE "Bronze Horn",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $BB ; ª
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE	7

i_SilverHorn:
:		.BYTE $10		; DATA XREF: RAM:93E6o
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aSilverHorn:	.BYTE "Silver Horn",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $E5 ; Â
		.BYTE	0
		.BYTE	2
		.BYTE	3
		.BYTE $F4 ; Ù
		.BYTE	0
		.BYTE	0
		.BYTE	7

i_GoldHorn:
:		.BYTE $10		; DATA XREF: RAM:93E8o
		.BYTE 	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aGoldHorn:	.BYTE "Gold Horn",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	7

i_GoldHorn2:
:		.BYTE $10		; DATA XREF: RAM:93EAo
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aGoldHorn_0:	.BYTE "Gold Horn",0
:		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $20
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $46 ; F
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_PotionOfFleetness:
:		.BYTE	6		; DATA XREF: RAM:944Ao
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfFleetn:.BYTE "Potion of Fleetness",0
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
		.BYTE $7B ; {
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $64 ; d
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
		.BYTE $7B ; {
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $64 ; d
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aFleetness:	.BYTE "Fleetness",0
		.BYTE $20
		.BYTE $73 ; s
		.BYTE $6D ; m
		.BYTE	0

i_PotionOfStrength:
:		.BYTE	6		; DATA XREF: RAM:944Co
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfStreng:.BYTE "Potion of Strength",0
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
		.BYTE $5B ; [
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
		.BYTE $5B ; [
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aStrength:	.BYTE "Strength",0
		.BYTE $65 ; e
		.BYTE $20
		.BYTE $63 ; c
		.BYTE $72 ; r
		.BYTE	0

i_PotionOfIntelligence:
:		.BYTE	6		; DATA XREF: RAM:944Eo
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	:+-:-
aPotionOfIntell:.BYTE "Potion of Intelligence",0
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
		.BYTE $63 ; c
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
		.BYTE $63 ; c
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $44 ; D
aIntelligence:	.BYTE "Intelligence",0
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
		.BYTE	3		; DATA XREF: RAM:93FAo
		.BYTE $27
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE $13
aTowerShield:	.BYTE "Tower Shield",0
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
		.BYTE	0
		.BYTE	0
		.BYTE $19
		.BYTE $10
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $AA ; ™
		.BYTE $80 ; Ä

i_Crossbow:
		.BYTE	3		; DATA XREF: RAM:93FCo
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $14
aCrossbow03:	.BYTE "Crossbow [03]",0
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE	0
		.BYTE $2A ; *
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
		.BYTE $10
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $1F
		.BYTE	0
i_Quarrels:
		.BYTE	2		; DATA XREF: RAM:93FEo
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $14
aQuarrels10:	.BYTE "Quarrels [10]",0
		.BYTE	0
		.BYTE	3
		.BYTE  $A
		.BYTE	0
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
i_ChaosClub:
		.BYTE	3		; DATA XREF: RAM:9400o
		.BYTE $35 ; 5
		.BYTE	0
		.BYTE $7F ; 
		.BYTE  $A
		.BYTE $11
aChaosClub:	.BYTE "Chaos Club",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $A5 ; •
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $1F
		.BYTE	0
		.BYTE	0
		.BYTE $92 ; í
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE $DA ; ⁄
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $18
		.BYTE	0
		.BYTE $14
		.BYTE $10
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
i_ShortSword:
		.BYTE	3		; DATA XREF: RAM:9402o
		.BYTE $26 ; &
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $12
aShortSword:	.BYTE "Short Sword",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE	8
		.BYTE $18
		.BYTE $18
		.BYTE $80 ; Ä
		.BYTE $10
i_HolyHandGrenade:
		.BYTE $10		; DATA XREF: RAM:9404o
		.BYTE $4A ; J
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $18
aHolyHandGrenad:.BYTE "Holy Hand Grenade",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	3
		.BYTE	4
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $E8 ; Ë
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $64 ; d
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
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	1
i_Pike:
		.BYTE	3		; DATA XREF: RAM:9406o
		.BYTE $1F
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE  $B
aPike:		.BYTE "Pike",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	8
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE $C3 ; √
		.BYTE $23 ; #
i_Dirk:
		.BYTE	3		; DATA XREF: RAM:9408o
		.BYTE $1F
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE  $B
		.BYTE	"Dirk",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE $10
		.BYTE $10
		.BYTE $10
		.BYTE $81 ; Å
		.BYTE $F4 ; Ù
i_PantherGloves:
		.BYTE	4		; DATA XREF: RAM:940Ao
		.BYTE $44 ; D
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $15
aPantherGloves:	.BYTE "Panther Gloves",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $AF ; Ø
		.BYTE $DE ; ﬁ
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	1
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $AF ; Ø
		.BYTE $DE ; ﬁ
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE	1
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $22 ; "
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE $40 ; @
		.BYTE $40 ; @
i_HelmOfLight:
		.BYTE	4		; DATA XREF: RAM:940Co
		.BYTE $43 ; C
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $14
aHelmOfLight:	.BYTE "Helm of Light",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $AF ; Ø
		.BYTE $DE ; ﬁ
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $AF ; Ø
		.BYTE $DE ; ﬁ
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $23 ; #
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $60 ; `
		.BYTE $60 ; `
i_DragonskinHauberk:
		.BYTE	4		; DATA XREF: RAM:940Eo
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $19
aDragonskinHaub:.BYTE "Dragonskin Hauberk",0
		.BYTE	0
		.BYTE	1
		.BYTE $34 ; 4
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
i_GoldenGreaves:
		.BYTE	4		; DATA XREF: RAM:9410o
		.BYTE $44 ; D
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE $15
aGoldenGreaves:	.BYTE "Golden Greaves",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $AF ; Ø
		.BYTE $DE ; ﬁ
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $4B ; K
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $AF ; Ø
		.BYTE $DE ; ﬁ
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $4B ; K
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $32 ; 2
		.BYTE $42 ; B
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $22 ; "
		.BYTE $50 ; P
		.BYTE $50 ; P
i_PlateHelm:
		.BYTE	4		; DATA XREF: RAM:9412o
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE	6
		.BYTE $11
aPlateHelm:	.BYTE "Plate Helm",0
		.BYTE	0
		.BYTE	0
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $60 ; `
		.BYTE $60 ; `
i_PlateGauntlets:
		.BYTE	4		; DATA XREF: RAM:9414o
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE	6
		.BYTE $16
aPlateGauntlets:.BYTE "Plate Gauntlets",0
		.BYTE	0
		.BYTE	2
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
i_PlateLeggings:
		.BYTE	4		; DATA XREF: RAM:9416o
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $15
aPlateLeggings:	.BYTE "Plate Leggings",0
		.BYTE	0
		.BYTE	3
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
i_PlateArmor:
		.BYTE	4		; DATA XREF: RAM:9418o
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE $10
		.BYTE $12
aPlateArmor:	.BYTE "Plate Armor",0
		.BYTE	0
		.BYTE	1
		.BYTE $25 ; %
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
i_ScaleArmor:
		.BYTE	4		; DATA XREF: RAM:941Ao
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $12
aScaleArmor:	.BYTE "Scale armor",0
		.BYTE	0
		.BYTE	1
		.BYTE $32 ; 2
		.BYTE $32 ; 2
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $70 ; p
		.BYTE $70 ; p
i_TruesilverHelm:
		.BYTE	4		; DATA XREF: RAM:941Co
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $16
aTruesilverHelm:.BYTE "Truesilver helm",0
		.BYTE	0
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $21 ; !
		.BYTE $F0 ; 
		.BYTE $F0 ; 
i_TruesilverCoat:
		.BYTE	4		; DATA XREF: RAM:941Eo
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $16
aTruesilverCoat:.BYTE "Truesilver coat",0
		.BYTE	0
		.BYTE	1
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $11
		.BYTE $F0 ; 
		.BYTE $F0 ; 
i_TruesilverGauntlets:
		.BYTE	4		; DATA XREF: RAM:9420o
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $1B
aTruesilverGuan:.BYTE "Truesilver guantlets",0
		.BYTE	0
		.BYTE	2
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $11
		.BYTE $F0 ; 
		.BYTE $F0 ; 
i_TruesilverLeggings:
		.BYTE	4		; DATA XREF: RAM:9422o
		.BYTE $29 ; )
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE $1A
aTruesilverLegg:.BYTE "Truesilver leggings",0
		.BYTE	0
		.BYTE	3
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $11
		.BYTE $F0 ; 
		.BYTE $F0 ; 
i_CuirbouilliHelm:
		.BYTE	4		; DATA XREF: RAM:9424o
		.BYTE $26 ; &
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $17
aCuirbouilliHel:.BYTE "Cuirbouilli Helm",0
		.BYTE	0
		.BYTE	0
		.BYTE $23 ; #
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $40 ; @
i_BronzeBreastplate:
		.BYTE	4		; DATA XREF: RAM:9426o
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE $19
aBronzeBreastpl:.BYTE "Bronze Breastplate",0
		.BYTE	0
		.BYTE	1
		.BYTE $24 ; $
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $50 ; P
i_BronzeBracers:
		.BYTE	4		; DATA XREF: RAM:9428o
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE $15
aBronzeBracers:	.BYTE "Bronze Bracers",0
		.BYTE	0
		.BYTE	2
		.BYTE $24 ; $
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $40 ; @
i_WhiteLinenShirt:
		.BYTE	5		; DATA XREF: RAM:942Ao
		.BYTE $1B
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $18
aWhiteLinenShir:.BYTE "White Linen Shirt",0
		.BYTE	0
		.BYTE	1
		.BYTE	1
i_BlackSilkKimono:
		.BYTE	5		; DATA XREF: RAM:942Co
		.BYTE $1B
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $18
aBlackSilkKimon:.BYTE "Black Silk Kimono",0
		.BYTE	0
		.BYTE	2
		.BYTE $FF
i_CheapRobe:
		.BYTE	5		; DATA XREF: RAM:942Eo
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $11
aCheapRobe:	.BYTE "Cheap Robe",0
		.BYTE	0
		.BYTE	0
		.BYTE	1
i_ElvenCloak:
		.BYTE	5		; DATA XREF: RAM:9430o
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $12
aElvenCloak:	.BYTE "Elven Cloak",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $82 ; Ç
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $8D ; ç
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $82 ; Ç
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
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $8D ; ç
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
i_ElvenBoots:
		.BYTE	5		; DATA XREF: RAM:9432o
		.BYTE $35 ; 5
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $12
aElvenBoots:	.BYTE "Elven Boots",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $7B ; {
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $7B ; {
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	1
i_CrystalBelt:
		.BYTE	5		; DATA XREF: RAM:9434o
		.BYTE $36 ; 6
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $13
aCrystalBelt:	.BYTE "Crystal Belt",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $4B ; K
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
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $4B ; K
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE	1
i_BlueSuedeShoes:
		.BYTE	5		; DATA XREF: RAM:9436o
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $17
aBlueSuedeShoes:.BYTE "Blue Suede Shoes",0
		.BYTE	0
		.BYTE	4
		.BYTE	1
i_BlackWoolenBreeches:
		.BYTE	5		; DATA XREF: RAM:9438o
		.BYTE $1F
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aBlackWoolenBre:.BYTE "Black Woolen Breeches",0
		.BYTE	0
		.BYTE	2
		.BYTE	2
i_SilverBrocadedBodice:
		.BYTE	5		; DATA XREF: RAM:943Ao
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1D
aSilverBrocaded:.BYTE "Silver Brocaded Bodice",0
		.BYTE	0
		.BYTE	2
		.BYTE	1
i_RedPlaidKilt:
		.BYTE	5		; DATA XREF: RAM:943Co
		.BYTE $18
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $15
aRedPlaidKilt:	.BYTE "Red Plaid Kilt",0
		.BYTE	0
		.BYTE	3
		.BYTE	1
i_GoldSilkPantaloons:
		.BYTE	5		; DATA XREF: RAM:943Eo
		.BYTE $1E
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1B
aGoldSilkPantal:.BYTE "Gold Silk Pantaloons",0
		.BYTE	0
		.BYTE	3
		.BYTE	0
i_LeatherJerkin:
		.BYTE	5		; DATA XREF: RAM:9440o
		.BYTE $18
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $15
aLeatherJerkin:	.BYTE "Leather Jerkin",0
		.BYTE	0
		.BYTE	1
		.BYTE	1
i_FloppyLeatherHat:
		.BYTE	5		; DATA XREF: RAM:9442o
		.BYTE $1C
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $19
aFloppyLeatherH:.BYTE "Floppy Leather Hat",0
		.BYTE	0
		.BYTE	1
		.BYTE	1
i_BlackCottonPartlet:
		.BYTE	5		; DATA XREF: RAM:9444o
		.BYTE $1E
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1B
aBlackCottonPar:.BYTE "Black Cotton Partlet",0
		.BYTE	0
		.BYTE	1
		.BYTE	2
i_SilverSash:
		.BYTE	5		; DATA XREF: RAM:9446o
		.BYTE $35 ; 5
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $12
aSilverSash:	.BYTE "Silver Sash",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $73 ; s
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
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $73 ; s
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
i_StealthSuit:
		.BYTE	5		; DATA XREF: RAM:9448o
		.BYTE $36 ; 6
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $13
aStealthSuit:	.BYTE "Stealth Suit",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $81 ; Å
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $81 ; Å
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $F1 ; Ò
		.BYTE	3

i_SilverKey:
:		.BYTE	7
		.BYTE	:++-:-
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	:+-:-
aSilverKey:	.BYTE "Silver Key",0
:		.BYTE	0
		.BYTE	2
		.BYTE	7

i_GoblinRingHalf:
:		.BYTE	7
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $17
aGoblinRingHalf:.BYTE "Goblin Ring Half",0
		.BYTE	0
		.BYTE	2
		.BYTE	3
		.BYTE	7
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
aTrollRingHalf:	.BYTE "Troll Ring Half",0
		.BYTE	0
		.BYTE	2
		.BYTE	4
		.BYTE	7
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $12
aStaffPiece:	.BYTE "Staff Piece",0
		.BYTE	0
		.BYTE	2
		.BYTE	6
		.BYTE	7
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $F
aPacCard:	.BYTE "PAC card",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $E1 ; ·
		.BYTE $88 ; à
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	3
		.BYTE $4A ; J
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $16
aMirroredShield:.BYTE "Mirrored Shield",0 ; DATA XREF: sub_773A+D2r
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
		.BYTE $AC ; ¨
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $A
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
		.BYTE $AC ; ¨
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $14
		.BYTE	0
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
		.BYTE $10
		.BYTE $FF
		.BYTE $FF
		.BYTE $82 ; Ç
		.BYTE $60 ; `
		.BYTE	7
		.BYTE $47 ; G
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
aReforgedRing:	.BYTE "Reforged Ring",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	1
		.BYTE	0
		.BYTE $EE ; Ó
		.BYTE	2
		.BYTE $EE ; Ó
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE $99 ; ô
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $88 ; à
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	2
		.BYTE $DC ; ‹
		.BYTE	5
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $85 ; Ö
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	1
		.BYTE	0
		.BYTE $EE ; Ó
		.BYTE	2
		.BYTE $EE ; Ó
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE $4D ; M
		.BYTE	0
		.BYTE	7
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE	7
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $11
aBloodstone:	.BYTE "Bloodstone",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	1
		.BYTE	0
		.BYTE $DC ; ‹
		.BYTE	5
		.BYTE $DC ; ‹
		.BYTE	5
		.BYTE	0
		.BYTE	2
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	8
i_WingedSandals:
		.BYTE	5
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $15
aWingedSandals:	.BYTE "Winged Sandals",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $73 ; s
		.BYTE	0
		.BYTE	2
		.BYTE	8
		.BYTE $32 ; 2
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $73 ; s
		.BYTE	0
		.BYTE	2
		.BYTE	8
		.BYTE $32 ; 2
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE	0
i_MorganasTiara:
		.BYTE	5
		.BYTE $29 ; )
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $16
aMorganaSTiara:	.BYTE "Morgana's Tiara",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE  $B
		.BYTE	1

i_CloakOfLevitation:
		.BYTE	5
		.BYTE $3D ; =
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aCloakOfLevitat:.BYTE "Cloak of Levitation",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $7B ; {
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $7B ; {
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	1

i_CrystalBreastplate:
		.BYTE	4
		.BYTE $29 ; )
		.BYTE	0
		.BYTE	0
		.BYTE $12
		.BYTE $1A
aCrystalBreastp:.BYTE "Crystal Breastplate",0
		.BYTE	0
		.BYTE	1
		.BYTE $34 ; 4
		.BYTE $34 ; 4
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $11
		.BYTE $12
		.BYTE $12
		.BYTE $12
		.BYTE $34 ; 4
		.BYTE $FF
		.BYTE $FF

i_JunaisSword:
		.BYTE	3
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE $7F ; 
		.BYTE  $C
		.BYTE $14
aJunaiSSword:	.BYTE "Junai's Sword",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $A1 ; °
		.BYTE $FF
		.BYTE	1
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE $92 ; í
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $10
		.BYTE $10
		.BYTE $FF
		.BYTE $FF
		.BYTE $90 ; ê
		.BYTE $24 ; $

i_Loadstone:
		.BYTE	7
		.BYTE $21 ; !
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE $10
aLoadstone:	.BYTE "Loadstone",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0

i_IronPalmSalve:
		.BYTE $10
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
aIronPalmSalve:	.BYTE "Iron Palm Salve",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE	1

i_SwordOfTheAdept:
		.BYTE	3
		.BYTE $2D ; -
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $19
aSwordOfTheAdep:.BYTE "Sword of The Adept",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $27
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
		.BYTE $10
		.BYTE $FF
		.BYTE $FF
		.BYTE $98 ; ò
		.BYTE $50 ; P

i_RazorIce:
		.BYTE	3
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE $10
aRazorIce:	.BYTE "Razor Ice",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $27
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $18
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE $20
		.BYTE $90 ; ê
		.BYTE $50 ; P

i_Whetstone:
		.BYTE $18
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
aWhetstone:	.BYTE "Whetstone",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $10

i_SaurianBrandy:
		.BYTE $10
		.BYTE $37 ; 7
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $15
aSaurianBrandy:	.BYTE "Saurian Brandy",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $97 ; ó
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $4A ; J
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE  $A

i_BluePearlDagger:
		.BYTE	3
		.BYTE $2C ; ,
		.BYTE	0
		.BYTE $7F ; 
		.BYTE	2
		.BYTE $18
aBluePearlDagge:.BYTE "Blue Pearl Dagger",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $10
		.BYTE $10
		.BYTE $20
		.BYTE $20
		.BYTE $12
		.BYTE	8

i_SixPack:
		.BYTE $10
		.BYTE $35 ; 5
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE $13
aSixPack6:	.BYTE "Six pack [6]",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $96 ; ñ
		.BYTE	0
		.BYTE	3
		.BYTE	2
		.BYTE	8
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $10
		.BYTE $80 ; Ä
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	6

i_MelvinsHelm:
		.BYTE	4
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE $12
		.BYTE $14
aMelvinSHelm:	.BYTE "Melvin's Helm",0
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE  $F
		.BYTE  $F
		.BYTE  $F
		.BYTE  $F
		.BYTE  $F
		.BYTE  $F
		.BYTE  $F
		.BYTE  $F
		.BYTE  $F
		.BYTE  $F
		.BYTE $FF
		.BYTE $FF

i_AmethystRod:
		.BYTE	7
		.BYTE $36 ; 6
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $13
aAmethystRod:	.BYTE "Amethyst Rod",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $FA ; ˙
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $88 ; à
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FD ; ˝
		.BYTE	0
		.BYTE $88 ; à
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $E1 ; ·
		.BYTE $88 ; à
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $FF

i_MapStone:
		.BYTE $18
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
aMapStone:	.BYTE "Map Stone",0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	8

i_FlameQuarrels:
		.BYTE	2
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aFlameQuarrels1:.BYTE "Flame Quarrels [10]",0
		.BYTE	0
		.BYTE	3
		.BYTE  $A
		.BYTE	0
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0

i_ThunderQuarrels:
		.BYTE	2
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aThunderQuarrel:.BYTE "Thunder Quarrels [10]",0
		.BYTE	0
		.BYTE	3
		.BYTE  $A
		.BYTE	0
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $18
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0

i_StaffOfAmber:
		.BYTE	3
		.BYTE $29 ; )
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE $15
aStaffOfAmber:	.BYTE "Staff of Amber",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $DA ; ⁄
		.BYTE $FF

i_RobinsHood:
		.BYTE	5
		.BYTE $36 ; 6
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $13
aRobinSHood:	.BYTE "Robin's Hood",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	2
		.BYTE	9
		.BYTE	1
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	2
		.BYTE	9
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	6
		.BYTE	1

i_GoldenApple:
		.BYTE	7
		.BYTE $36 ; 6
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE $13
aGoldenApple:	.BYTE "Golden Apple",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	1
		.BYTE $FF
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	1
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $41 ; A
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $FF

i_GaussRifle:
		.BYTE	3
		.BYTE $2B ; +
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE $17
aGaussRifle95:	.BYTE "Gauss Rifle [95]",0
		.BYTE	0
		.BYTE	6
		.BYTE $5F ; _
		.BYTE $48 ; H
		.BYTE $48 ; H
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $18
		.BYTE $18
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE $45 ; E
		.BYTE	0

i_SolarSuit:
		.BYTE	4
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $12
		.BYTE $11
aSolarSuit:	.BYTE "Solar Suit",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $E1 ; ·
		.BYTE $88 ; à
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $88 ; à
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FB ; ˚
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE $20

i_BeamWeapon:
		.BYTE	3
		.BYTE $2B ; +
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE $17
aBeamWeapon25:	.BYTE "Beam Weapon [25]",0
		.BYTE	0
		.BYTE	5
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $18
		.BYTE	0
		.BYTE $58 ; X
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE  $C
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE	5
		.BYTE $FF
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
