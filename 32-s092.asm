		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;		.ORG	$7600
		.BYTE	8
; ---------------------------------------------------------------------------
		JMP	loc_7610
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_84FE
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601j
		dldi	off_7, $7BDB
		LDA	#2
		JSR	$180F
		LDA	#$FF
		STA	$1937
		dldi	off_16, $77A2
		JSR	$184B
		LDA	$1933
		STA	$62
		dldi	off_1977, loc_763D
		RTS
; ---------------------------------------------------------------------------

loc_763D:
		LDA	$7589
		CMP	#3
		BCC	loc_7652
		dldi	off_16, $77A4
		JSR	sub_776E
		JMP	loc_7717
; ---------------------------------------------------------------------------

loc_7652:				; CODE XREF: RAM:7642j
		dldi	off_16, $77BC
		JSR	sub_776E
		LDA	$7587
		BNE	loc_7686
		INC	$7587
		dldi	off_16, $7842
		JSR	sub_7778
		dldi	off_16, $78E4
		JSR	sub_7778
		dldi	off_16, $7984
		JSR	sub_7778

loc_7686:				; CODE XREF: RAM:7660j
		JSR	sub_7728
		LDA	$63
		BNE	loc_769B

loc_768D:				; CODE XREF: RAM:76BEj	RAM:76E3j
		LDA	#$A3 ; '£'
		STA	$16
		LDA	#$7B ; '{'
		STA	$17
		JSR	sub_776E
		JMP	loc_7717
; ---------------------------------------------------------------------------

loc_769B:				; CODE XREF: RAM:768Bj
		LDA	$7589
		CMP	#1
		BCS	loc_76C0
		LDA	#$F8 ; '¯'
		STA	$16
		LDA	#$79 ; 'y'
		STA	$17
		JSR	sub_7778
		LDA	#2
		LDX	#$62 ; 'b'
		JSR	$1878
		JSR	sub_7BD5
		LDA	#1
		STA	$7589
		DEC	$63
		BEQ	loc_768D

loc_76C0:				; CODE XREF: RAM:76A0j
		LDA	$7589
		CMP	#2
		BCS	loc_76E5
		LDA	#$44 ; 'D'
		STA	$16
		LDA	#$7A ; 'z'
		STA	$17
		JSR	sub_7778
		LDA	#2
		LDX	#$6A ; 'j'
		JSR	$1878
		JSR	sub_7BD5
		LDA	#2
		STA	$7589
		DEC	$63
		BEQ	loc_768D

loc_76E5:				; CODE XREF: RAM:76C5j
		LDA	#$8B ; 'ã'
		STA	$16
		LDA	#$7A ; 'z'
		STA	$17
		JSR	sub_7778
		LDA	#$1A
		STA	$16
		LDA	#$7B ; '{'
		STA	$17
		JSR	sub_7778
		LDA	#3
		STA	$7589
		LDA	#$18
		JSR	sub_7766
		LDX	#$77 ; 'w'
		LDY	#$80 ; 'Ä'
		JSR	$1884
		LDA	#$86 ; 'Ü'
		STA	$16
		LDA	#$7B ; '{'
		STA	$17
		JSR	sub_776E

loc_7717:				; CODE XREF: RAM:764Fj	RAM:7698j
		LDX	#4

loc_7719:				; CODE XREF: RAM:7720j
		LDA	$6318,X
		STA	$6313,X
		DEX
		BPL	loc_7719
		STX	$AC00
		JMP	$180C

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7728:				; CODE XREF: RAM:loc_7686p
		LDA	#0
		STA	$63
		LDA	#$3F ; '?'
		STA	$64

loc_7730:				; CODE XREF: sub_7728+34j
		LDA	$64
		STA	$4B
		JSR	j_LOADINV
		BEQ	loc_775A
		LDY	#0
		LDA	(off_41),Y
		CMP	#$87 ; 'á'
		BNE	loc_775A
		JSR	$1896
		LDY	#0
		LDA	($43),Y
		CMP	#2
		BNE	loc_775A
		INY
		LDA	($43),Y
		CMP	#6
		BNE	loc_775A
		INC	$63
		LDA	$64
		JSR	$188A

loc_775A:				; CODE XREF: sub_7728+Fj sub_7728+17j	...
		DEC	$64
		BPL	loc_7730
		RTS
; End of function sub_7728

; ---------------------------------------------------------------------------
		ldxy	$7508
		JMP	j_TESTBIT

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7766:				; CODE XREF: RAM:7702p
		ldxy	$7508
		SEC
		JMP	j_SETBIT
; End of function sub_7766


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_776E:				; CODE XREF: RAM:764Cp	RAM:765Ap ...
		LDX	$62
		JSR	$1851
		LDA	#$10
		JMP	$185A
; End of function sub_776E


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7778:				; CODE XREF: RAM:766Dp	RAM:7678p ...
		LDX	$62
		JSR	$1851
		JMP	$183C
; End of function sub_7778

; ---------------------------------------------------------------------------
		.BYTE	7
		.BYTE $22 ; "
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE  $F
aPacCard:	.BYTE "PAC card",0
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
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE $A8,$FF
		.BYTE $A6,  0,	3
		.BYTE $A5
aTheTombIsEmpty:.BYTE "The tomb is empty."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aTheGhostlyForm:.BYTE "The ghostly form of Acrinimiril floats"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAboveTheTombAn:.BYTE "above the tomb and in a voice that"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aSpeaksIntoYour:.BYTE "speaks into your mind says:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aComeForward:	.BYTE $22,"Come forward "
		.BYTE $B3
		.WORD $6321
		.BYTE $18
a_:		.BYTE ".",$22
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aIAmAcrinimiril:.BYTE "I am Acrinimiril the wizard. I come"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aFromAWorldMany:.BYTE "from a world many dimensions distant."
		.BYTE $D
		.BYTE $D
aWhileWalkingTh:.BYTE "While walking through shadow, I happened"
		.BYTE $D
		.BYTE $A5
aUponThisPlaneM:.BYTE "upon this plane many generations ago."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aFearingMySorce:.BYTE "Fearing my Sorcery, the Masters of this"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWorldSoughtToD:.BYTE "world sought to destroy me. They"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aSucceededInDes:.BYTE "succeeded in destroying my body but my"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aSpiritRemains_:.BYTE "spirit remains. My staff still holds"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aMyRemainingPow:.BYTE "my remaining power. Find and return"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheStaffWhichW:.BYTE "the staff which was broken and I"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWillHelpYouInT:.BYTE "will help you in that which you seek."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aForReturningTh:.BYTE "For returning the first piece"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOfMyStaffIGive:.BYTE "of my staff I give you"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIntelligence_:	.BYTE "Intelligence."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aForReturning_0:.BYTE "For returning the second piece"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOfMyStaffIGi_0:.BYTE "of my staff I give you"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWisdom_:	.BYTE "Wisdom."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aWellDone:	.BYTE "Well done "
		.BYTE $B3
		.WORD $6321
		.BYTE $19
a__0:		.BYTE "."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aINowHaveTheWho:.BYTE "I now have the whole staff and must"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aReturnToMyOwnW:.BYTE "return to my own world. But I will give"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aYouThisPortalA:.BYTE "you this Portal Access Card which shall"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aOpenTheMasters:.BYTE "open the Masters' door on the third"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aLevel_PrepareW:.BYTE "level. Prepare well before you use it."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aFarewellAndTha:.BYTE "Farewell and thank you."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	3
		.BYTE $A5
aAcrinimirilFad:.BYTE "Acrinimiril fades away."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aSeekTheOracleT:.BYTE "Seek the Oracle to help thee"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aInThyQuest_:	.BYTE "in thy quest."
		.BYTE $D
		.BYTE $FF

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7BD5:				; CODE XREF: RAM:76B4p	RAM:76D9p
		DEC	$195F
		JMP	$18A5
; End of function sub_7BD5

; ---------------------------------------------------------------------------
		.BYTE $1B
		.BYTE  $F
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE $1E
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $BA ; ∫
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $B9 ; π
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $BA ; ∫
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE	4
		.BYTE $AD ; ≠
		.BYTE $ED ; Ì
		.BYTE $1B
		.BYTE	7
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	7
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE $77 ; w
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $DD ; ›
		.BYTE $DC ; ‹
		.BYTE $1B
		.BYTE	6
		.BYTE $DE ; ﬁ
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $EA ; Í
		.BYTE $DA ; ⁄
		.BYTE $DA ; ⁄
		.BYTE $DE ; ﬁ
		.BYTE $DE ; ﬁ
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	7
		.BYTE $37 ; 7
		.BYTE $1B
		.BYTE $17
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE  $F
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	4
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $AE ; Æ
		.BYTE $9E ; û
		.BYTE $DE ; ﬁ
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $AE ; Æ
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	3
		.BYTE $9E ; û
		.BYTE $AA ; ™
		.BYTE $AD ; ≠
		.BYTE $5E ; ^
		.BYTE $5E ; ^
		.BYTE $9E ; û
		.BYTE $9E ; û
		.BYTE $96 ; ñ
		.BYTE $9A ; ö
		.BYTE $BA ; ∫
		.BYTE $B9 ; π
		.BYTE $BA ; ∫
		.BYTE $9A ; ö
		.BYTE $5E ; ^
		.BYTE $1B
		.BYTE	2
		.BYTE $6E ; n
		.BYTE $BB ; ª
		.BYTE $BB ; ª
		.BYTE $BA ; ∫
		.BYTE $D9 ; Ÿ
		.BYTE $D9 ; Ÿ
		.BYTE $DA ; ⁄
		.BYTE $D9 ; Ÿ
		.BYTE $55 ; U
		.BYTE $99 ; ô
		.BYTE $69 ; i
		.BYTE $A9 ; ©
		.BYTE $D9 ; Ÿ
		.BYTE $69 ; i
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $ED ; Ì
		.BYTE $AD ; ≠
		.BYTE $AD ; ≠
		.BYTE $1B
		.BYTE	7
		.BYTE $DF ; ﬂ
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	6
		.BYTE $F0 ; 
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $82 ; Ç
		.BYTE $20
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $20
		.BYTE	8
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $20
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $20
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE	8
		.BYTE	8
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $20
		.BYTE $82 ; Ç
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $20
		.BYTE	8
		.BYTE	2
		.BYTE $20
		.BYTE	2
		.BYTE	8
		.BYTE $20
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $20
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	8
		.BYTE $2A ; *
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $20
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	8
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE	8
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $20
		.BYTE $88 ; à
		.BYTE $20
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE	0
		.BYTE $AB ; ´
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE $83 ; É
		.BYTE	3
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	3
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	8
		.BYTE $DE ; ﬁ
		.BYTE $9E ; û
		.BYTE $9A ; ö
		.BYTE $AA ; ™
		.BYTE $FA ; ˙
		.BYTE $95 ; ï
		.BYTE $AB ; ´
		.BYTE $A9 ; ©
		.BYTE $BF ; ø
		.BYTE $AA ; ™
		.BYTE $9A ; ö
		.BYTE $9A ; ö
		.BYTE $9B ; õ
		.BYTE $5B ; [
		.BYTE $F7 ; ˜
		.BYTE $A7 ; ß
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $A7 ; ß
		.BYTE $A7 ; ß
		.BYTE $A6 ; ¶
		.BYTE $66 ; f
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $9E ; û
		.BYTE $9E ; û
		.BYTE $96 ; ñ
		.BYTE $96 ; ñ
		.BYTE $1B
		.BYTE	7
		.BYTE $B7 ; ∑
		.BYTE $1B
		.BYTE $17
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE  $F
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	7
		.BYTE $E9 ; È
		.BYTE $ED ; Ì
		.BYTE $1B
		.BYTE	3
		.BYTE $EE ; Ó
		.BYTE $E6 ; Ê
		.BYTE $D6 ; ÷
		.BYTE $D6 ; ÷
		.BYTE $DE ; ﬁ
		.BYTE $D5 ; ’
		.BYTE $D6 ; ÷
		.BYTE $DA ; ⁄
		.BYTE $DA ; ⁄
		.BYTE $E9 ; È
		.BYTE $E9 ; È
		.BYTE $A9 ; ©
		.BYTE $AD ; ≠
		.BYTE $AE ; Æ
		.BYTE $1B
		.BYTE	2
		.BYTE $6E ; n
		.BYTE $E6 ; Ê
		.BYTE $E6 ; Ê
		.BYTE $D6 ; ÷
		.BYTE $5A ; Z
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $9A ; ö
		.BYTE $B9 ; π
		.BYTE $79 ; y
		.BYTE $7A ; z
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE	1
		.BYTE	5
		.BYTE $5D ; ]
		.BYTE $7D ; }
		.BYTE $AD ; ≠
		.BYTE $8D ; ç
		.BYTE $1B
		.BYTE	5
		.BYTE  $D
		.BYTE $1B
		.BYTE	3
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F2 ; Ú
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $A3 ; £
		.BYTE $1B
		.BYTE	6
		.BYTE $23 ; #
		.BYTE $1B
		.BYTE	5
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $DC ; ‹
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $A6 ; ¶
		.BYTE $A6 ; ¶
		.BYTE $56 ; V
		.BYTE $A7 ; ß
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $76 ; v
		.BYTE $76 ; v
		.BYTE $B6 ; ∂
		.BYTE $76 ; v
		.BYTE $76 ; v
		.BYTE $B6 ; ∂
		.BYTE $A6 ; ¶
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $B7 ; ∑
		.BYTE $1B
		.BYTE $17
		.BYTE $77 ; w
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $95 ; ï
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	3
		.BYTE $AD ; ≠
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
		.BYTE  $F
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	5
		.BYTE $E9 ; È
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $E6 ; Ê
		.BYTE $DE ; ﬁ
		.BYTE $5E ; ^
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $1B
		.BYTE	8
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE	1
		.BYTE $15
		.BYTE $1F
		.BYTE $1D
		.BYTE $1D
		.BYTE	0
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $7D ; }
		.BYTE $1B
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	7
		.BYTE	7
		.BYTE $ED ; Ì
		.BYTE $AD ; ≠
		.BYTE $AD ; ≠
		.BYTE $ED ; Ì
		.BYTE $AD ; ≠
		.BYTE $AD ; ≠
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE  $D
		.BYTE  $F
		.BYTE  $F
		.BYTE $1B
		.BYTE	4
		.BYTE  $D
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F2 ; Ú
		.BYTE $1B
		.BYTE  $B
		.BYTE	0
		.BYTE  $A
		.BYTE $2E ; .
		.BYTE $EB ; Î
		.BYTE $BA ; ∫
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $E8 ; Ë
		.BYTE $BA ; ∫
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $EB ; Î
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	2
		.BYTE $8E ; é
		.BYTE $AE ; Æ
		.BYTE $BA ; ∫
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $AE ; Æ
		.BYTE $BA ; ∫
		.BYTE $1B
		.BYTE	2
		.BYTE $EB ; Î
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $B0 ; ∞
		.BYTE $EB ; Î
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $EE ; Ó
		.BYTE $EB ; Î
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $AE ; Æ
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $AE ; Æ
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $AE ; Æ
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $AE ; Æ
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE  $E
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE  $A
		.BYTE $3A ; :
		.BYTE $AF ; Ø
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	9
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $23 ; #
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $DC ; ‹
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	5
		.BYTE $DC ; ‹
		.BYTE	4
		.BYTE	5
		.BYTE	5
		.BYTE $1B
		.BYTE	4
		.BYTE	7
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $75 ; u
		.BYTE $75 ; u
		.BYTE $77 ; w
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $40 ; @
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $B7 ; ∑
		.BYTE $1B
		.BYTE	3
		.BYTE $37 ; 7
		.BYTE $1B
		.BYTE $17
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	2
		.BYTE $AD ; ≠
		.BYTE $A9 ; ©
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE  $F
		.BYTE $DD ; ›
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $E8 ; Ë
		.BYTE $1B
		.BYTE	4
		.BYTE $C0 ; ¿
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE  $B
		.BYTE  $B
		.BYTE	2
		.BYTE $16
		.BYTE $56 ; V
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $AA ; ™
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $1D
		.BYTE $1B
		.BYTE	7
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	6
		.BYTE	7
		.BYTE	5
		.BYTE $AD ; ≠
		.BYTE $AD ; ≠
		.BYTE $ED ; Ì
		.BYTE $AD ; ≠
		.BYTE $B4 ; ¥
		.BYTE $D0 ; –
		.BYTE $41 ; A
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE  $F
		.BYTE	7
		.BYTE $3D ; =
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $F2 ; Ú
		.BYTE $D0 ; –
		.BYTE $7C ; |
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $56 ; V
		.BYTE $59 ; Y
		.BYTE $65 ; e
		.BYTE $1B
		.BYTE	3
		.BYTE $8A ; ä
		.BYTE $28 ; (
		.BYTE $58 ; X
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $28 ; (
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $62 ; b
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $8A ; ä
		.BYTE $28 ; (
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE $A8 ; ®
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE $A8 ; ®
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $28 ; (
		.BYTE $22 ; "
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $65 ; e
		.BYTE $69 ; i
		.BYTE $59 ; Y
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $23 ; #
		.BYTE $23 ; #
		.BYTE $A3 ; £
		.BYTE	1
		.BYTE  $F
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $D5 ; ’
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $DC ; ‹
		.BYTE $F4 ; Ù
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	6
		.BYTE	7
		.BYTE $45 ; E
		.BYTE $77 ; w
		.BYTE $77 ; w
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE $77 ; w
		.BYTE $7F ; 
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	7
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $37 ; 7
		.BYTE $1B
		.BYTE $17
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE  $F
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	6
		.BYTE $16
		.BYTE $5A ; Z
		.BYTE $FE ; ˛
		.BYTE $7A ; z
		.BYTE $DE ; ﬁ
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; ˛
		.BYTE $EA ; Í
		.BYTE $7E ; ~
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	5
		.BYTE $1D
		.BYTE $1F
		.BYTE $1D
		.BYTE $1B
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE $F4 ; Ù
		.BYTE $D0 ; –
		.BYTE $41 ; A
		.BYTE	5
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE	5
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE	3
		.BYTE  $D
		.BYTE $35 ; 5
		.BYTE $D4 ; ‘
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	5
		.BYTE $DC ; ‹
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $4F ; O
		.BYTE $1B
		.BYTE	2
		.BYTE $4A ; J
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	2
		.BYTE $B5 ; µ
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $D4 ; ‘
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $53 ; S
		.BYTE $1B
		.BYTE	2
		.BYTE $52 ; R
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $AD ; ≠
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $4F ; O
		.BYTE $1B
		.BYTE	2
		.BYTE $4A ; J
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	2
		.BYTE $B5 ; µ
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $D4 ; ‘
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE	9
		.BYTE $FD ; ˝
		.BYTE  $D
		.BYTE $1B
		.BYTE	4
		.BYTE $4D ; M
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $65 ; e
		.BYTE $69 ; i
		.BYTE $59 ; Y
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $90 ; ê
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE	3
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $35 ; 5
		.BYTE $35 ; 5
		.BYTE  $D
		.BYTE	3
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $77 ; w
		.BYTE $57 ; W
		.BYTE	7
		.BYTE	5
		.BYTE	0
		.BYTE $6A ; j
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $E0 ; ‡
		.BYTE $F8 ; ¯
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $37 ; 7
		.BYTE $1B
		.BYTE $17
		.BYTE $77 ; w
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
		.BYTE  $F
		.BYTE $DD ; ›
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	5
		.BYTE $C1 ; ¡
		.BYTE $5B ; [
		.BYTE $6B ; k
		.BYTE $6F ; o
		.BYTE $AF ; Ø
		.BYTE $B7 ; ∑
		.BYTE $BD ; Ω
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FB ; ˚
		.BYTE $AF ; Ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $E0 ; ‡
		.BYTE $68 ; h
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $F9 ; ˘
		.BYTE $F9 ; ˘
		.BYTE $14
		.BYTE $10
		.BYTE	1
		.BYTE	5
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AD ; ≠
		.BYTE $B5 ; µ
		.BYTE $D6 ; ÷
		.BYTE $5A ; Z
		.BYTE $B5 ; µ
		.BYTE $D4 ; ‘
		.BYTE $D0 ; –
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE	3
		.BYTE	3
		.BYTE  $D
		.BYTE $F5 ; ı
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $5C ; \
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $4A ; J
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $B5 ; µ
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $D4 ; ‘
		.BYTE $14
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $52 ; R
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AD ; ≠
		.BYTE	1
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $4A ; J
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $B5 ; µ
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $D4 ; ‘
		.BYTE $14
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $4D ; M
		.BYTE  $D
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	8
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $35 ; 5
		.BYTE $4D ; M
		.BYTE $4D ; M
		.BYTE $53 ; S
		.BYTE $53 ; S
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $DA ; ⁄
		.BYTE $D6 ; ÷
		.BYTE	3
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $75 ; u
		.BYTE $AD ; ≠
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $65 ; e
		.BYTE $6F ; o
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $EF ; Ô
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE $E0 ; ‡
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $E0 ; ‡
		.BYTE $E0 ; ‡
		.BYTE $74 ; t
		.BYTE $F8 ; ¯
		.BYTE $F9 ; ˘
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $37 ; 7
		.BYTE $1B
		.BYTE $17
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE  $F
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	3
		.BYTE $C1 ; ¡
		.BYTE $1B
		.BYTE	3
		.BYTE $C0 ; ¿
		.BYTE $AF ; Ø
		.BYTE $67 ; g
		.BYTE $6D ; m
		.BYTE $6F ; o
		.BYTE $6B ; k
		.BYTE $5B ; [
		.BYTE $5A ; Z
		.BYTE $16
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $6B ; k
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $BA ; ∫
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	2
		.BYTE $E5 ; Â
		.BYTE $A5 ; •
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE  $D
		.BYTE $35 ; 5
		.BYTE $57 ; W
		.BYTE  $D
		.BYTE $35 ; 5
		.BYTE $D6 ; ÷
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	9
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AD ; ≠
		.BYTE $B5 ; µ
		.BYTE $AD ; ≠
		.BYTE $B5 ; µ
		.BYTE $B6 ; ∂
		.BYTE $D6 ; ÷
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $57 ; W
		.BYTE $36 ; 6
		.BYTE $35 ; 5
		.BYTE $AD ; ≠
		.BYTE $AD ; ≠
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $DA ; ⁄
		.BYTE $D6 ; ÷
		.BYTE $B6 ; ∂
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $FA ; ˙
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $9F ; ü
		.BYTE $B5 ; µ
		.BYTE $AF ; Ø
		.BYTE $F9 ; ˘
		.BYTE $79 ; y
		.BYTE $F9 ; ˘
		.BYTE $E5 ; Â
		.BYTE $E5 ; Â
		.BYTE $65 ; e
		.BYTE $E5 ; Â
		.BYTE $A5 ; •
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $37 ; 7
		.BYTE $1B
		.BYTE $19
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE  $F
		.BYTE $DD ; ›
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $C1 ; ¡
		.BYTE $C5 ; ≈
		.BYTE $1B
		.BYTE	3
		.BYTE $D5 ; ’
		.BYTE $16
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $FE ; ˛
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $50 ; P
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AD ; ≠
		.BYTE	0
		.BYTE	3
		.BYTE $FD ; ˝
		.BYTE $55 ; U
		.BYTE $B4 ; ¥
		.BYTE $D4 ; ‘
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $D7 ; ◊
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE	3
		.BYTE  $D
		.BYTE $35 ; 5
		.BYTE $35 ; 5
		.BYTE $D6 ; ÷
		.BYTE $B5 ; µ
		.BYTE $D6 ; ÷
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AD ; ≠
		.BYTE $AD ; ≠
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $FF
		.BYTE $D0 ; –
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE	3
		.BYTE  $D
		.BYTE  $D
		.BYTE $35 ; 5
		.BYTE $36 ; 6
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE $AD ; ≠
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $DA ; ⁄
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $D0 ; –
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE  $D
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $FF
		.BYTE $DA ; ⁄
		.BYTE $DA ; ⁄
		.BYTE $D6 ; ÷
		.BYTE $F6 ; ˆ
		.BYTE $36 ; 6
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $B5 ; µ
		.BYTE $AD ; ≠
		.BYTE $AD ; ≠
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE $D4 ; ‘
		.BYTE $B4 ; ¥
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE  $D
		.BYTE	3
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $35 ; 5
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE $1F
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE $47 ; G
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE	8
		.BYTE $1B
		.BYTE	4
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE	8
		.BYTE	7
		.BYTE	7
		.BYTE $1B
		.BYTE $11
		.BYTE  $B
		.BYTE $1B
		.BYTE	4
		.BYTE $37 ; 7
		.BYTE $1B
		.BYTE	4
		.BYTE $35 ; 5
		.BYTE $1B
		.BYTE	3
		.BYTE $37 ; 7
		.BYTE $1B
		.BYTE $15
		.BYTE $38 ; 8
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $F
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE	9
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	9
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE $19
		.BYTE	0
		.BYTE  $F
		.BYTE $FF
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $FF
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $FF
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE $FF
		.BYTE $E0 ; ‡
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE $FF
		.BYTE $E0 ; ‡
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $FF
		.BYTE $F8 ; ¯
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $2C ; ,
		.BYTE  $B
		.BYTE $35 ; 5
		.BYTE  $F
		.BYTE $9C ; ú
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE $FF
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42 ; B
		.BYTE	0
		.BYTE	4
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
		.BYTE $26 ; &
		.BYTE $84 ; Ñ
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

loc_84BC:				; CODE XREF: RAM:84E1j
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
		BPL	loc_84BC
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

loc_84FE:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$26 ; '&'
		STA	$254
		LDA	#$84 ; 'Ñ'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_8511:				; CODE XREF: RAM:851Fj
		LDY	#$C

loc_8513:				; CODE XREF: RAM:851Aj
		STA	$BB4C,X
		DEX
		BMI	loc_8521
		DEY
		BNE	loc_8513
		CLC
		ADC	#4
		BNE	loc_8511

loc_8521:				; CODE XREF: RAM:8517j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_8619
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_8619
		LDA	#0
		STA	loc_8547+1
		LDA	#$BD ; 'Ω'
		STA	loc_8547+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_8547:				; CODE XREF: RAM:854Bj	RAM:8551j
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_8547
		INC	loc_8547+2
		DEY
		BNE	loc_8547
		LDX	#7

loc_8555:				; CODE XREF: RAM:8559j
		STA	$D000,X
		DEX
		BPL	loc_8555
		LDA	#3
		TAX

loc_855E:				; CODE XREF: RAM:8562j
		STA	$D008,X
		DEX
		BPL	loc_855E
		LDA	#$FF
		STA	$D00C
		LDA	#3
		STA	$D01D
		LDA	#$BC ; 'º'
		STA	$D407
		LDA	#4
		STA	$D01B
		dldi	off_7, $BC00
		LDA	#$F0 ; ''
		STA	9
		LDA	#4
		STA	$A
		LDA	#0
		STA	6

loc_858C:				; CODE XREF: RAM:85B2j
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_8594:				; CODE XREF: RAM:859Fj
		LSR	4
		BCC	loc_859E
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_859E:				; CODE XREF: RAM:8596j
		DEY
		BPL	loc_8594
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_85AC
		INC	$A

loc_85AC:				; CODE XREF: RAM:85A8j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_858C
		LDA	#$2D ; '-'
		STA	off_7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_85C4:				; CODE XREF: RAM:85D5j
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
		BCC	loc_85C4

loc_85D7:				; CODE XREF: RAM:85F4j
		LDX	#0

loc_85D9:				; CODE XREF: RAM:85F2j
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_85DF:				; CODE XREF: RAM:85E4j
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_85DF
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_85F6
		CPX	#$A
		BCC	loc_85D9
		BCS	loc_85D7

loc_85F6:				; CODE XREF: RAM:85EEj
		LDX	#3
		LDA	$BC5F

loc_85FB:				; CODE XREF: RAM:85FFj
		STA	$D012,X
		DEX
		BPL	loc_85FB
		LDA	#$58 ; 'X'
		STA	$24A
		LDA	#$84 ; 'Ñ'
		STA	$24B
		LDA	#$C0 ; '¿'
		STA	NMIEN
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_8619:				; CODE XREF: RAM:8529p	RAM:8534p ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_8623
		INC	8

loc_8623:				; CODE XREF: RAM:861Fj
		CMP	#$1B
		BEQ	loc_8632
		STA	(9),Y
		INC	9
		BNE	loc_862F
		INC	$A

loc_862F:				; CODE XREF: RAM:862Bj
		JMP	loc_8619
; ---------------------------------------------------------------------------

loc_8632:				; CODE XREF: RAM:8625j
		LDA	(7),Y
		INC	7
		BNE	loc_863A
		INC	8

loc_863A:				; CODE XREF: RAM:8636j
		CMP	#$FF
		BNE	loc_863F
		RTS
; ---------------------------------------------------------------------------

loc_863F:				; CODE XREF: RAM:863Cj
		STA	byte_8679
		ADC	9
		STA	loc_8652+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_8657
		LDA	byte_8679

loc_8652:				; DATA XREF: RAM:8644w
		SBC	#$FF
		STA	byte_8679

loc_8657:				; CODE XREF: RAM:864Dj
		LDA	(7),Y
		INC	7
		BNE	loc_865F
		INC	8

loc_865F:				; CODE XREF: RAM:865Bj
		LDY	byte_8679

loc_8662:				; CODE XREF: RAM:8665j
		STA	(9),Y
		DEY
		BPL	loc_8662
		INC	byte_8679
		LDA	byte_8679
		CLC
		ADC	9
		STA	9
		BCC	loc_8676
		INC	$A

loc_8676:				; CODE XREF: RAM:8672j
		JMP	loc_8619
; ---------------------------------------------------------------------------
byte_8679:	.RES	135, $00	; DATA XREF: RAM:loc_863Fw
					; RAM:864Fr ...
; end of 'RAM'


		.END
