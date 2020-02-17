;
; 11-s451.asm - key sector for 11-s452
;
; This source code is copyright (c) 2008 Jason Duerstock
; jason.duerstock@gmail.com
;
; The original program is copyright (c) 1987 Intellicreations Inc.
;
; This file is part of the ardungeon project which is an attempt to
; reverse engineer "Alternate Reality: The Dungeon" for the Atari 8-bit
; computer. 
;
; ardungeon is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License version 2
; as published by the Free Software Foundation.
;
; ardungeon is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
;
; You should have received a copy of the GNU General Public License
; along with ardungeon; if not, write to the 
; Free Software Foundation, Inc.
; 51 Franklin Street, Fifth Floor
; Boston, MA  02110-1301  USA
;

		.include	"exp_kernel.inc"
		.include	"globals.inc"
		.include	"macros.inc"

	.SEGMENT "SEG_2F_KEY"

		.BYTE	$41,$c3,$00,$07,$4f,$75,$12,$e7,$7e,$b2,$f1,$b6,$45,$eb,$0d,$cd
		.BYTE	$9b,$b8,$bc,$ea,$b5,$01,$52,$c7,$8b,$55,$fe,$9a,$37,$bd,$32,$d8
		.BYTE	$19,$4c,$5b,$36,$fa,$ed,$10,$8b,$bf,$0a,$16,$db,$75,$91,$68,$d9
		.BYTE	$08,$27,$a0,$2e,$bc,$20,$1a,$9d,$27,$8b,$fb,$21,$7e,$53,$c9,$7f
		.BYTE	$79,$61,$df,$0d,$ab,$63,$87,$3a,$1b,$6f,$32,$0e,$9c,$04,$27,$55
		.BYTE	$a1,$e4,$19,$ca,$ac,$65,$30,$23,$93,$b4,$e7,$62,$f2,$2c,$61,$90
		.BYTE	$2d,$e5,$96,$91,$18,$e3,$60,$de,$7f,$2a,$2d,$e5,$1c,$6b,$af,$d2
		.BYTE	$e0,$c3,$1e,$30,$89,$ef,$0f,$fa,$f5,$10,$5f,$5f,$e5,$cb,$69,$fc

	.SEGMENT "SEG_2F"


		NOP
		ldi	SEGNO, $0F
		dldi	SEGADDR, $96F0
		JSR	j_SEGLOAD
		LDA	#1
		JSR	$180F
		dmv	$62, $254
		LDY	#$E
		LDA	#6
		STA	($62),Y
		JSR	$96F5
		dmv	off_224, $96F3
		LDA	#$FF
		STA	$22F
		dldi	off_7, $7758
		dldi	off_9, $9FF0
		dldi	$B, $0520
		JSR	$187E
		ldxy	$9FF0
		JSR	$96F0
		dldi	off_16, $76A3
		JSR	$1812
		LDA	#3
		JSR	j_RND_A
		TAX
		LDA	unk_76F8,X
		STA	byte_76F6
		LDA	unk_76FC,X
		STA	byte_76F7
		dldi	off_16, $76C5
		JSR	$1815
		JSR	$181E

loc_7689:				; CODE XREF: RAM:768Cvj	RAM:7690vj
		JSR	$181E
		BMI	loc_7689
		CMP	#$20 ; ' '
		BNE	loc_7689
		LDA	#0
		STA	$22F
		JSR	$96F5
		LDY	#$E
		LDA	#2
		STA	($62),Y
		JMP	$18B4
; ---------------------------------------------------------------------------
		MOVEXY	1,4
		.BYTE $AB
		MOVEXY	1,4
aWhereAreYouq:	.BYTE $A5,$7F,"    Where are you?    ",$7F,$0D,$FF
		.BYTE $A8
		MOVEXY	0,2
		.BYTE $A5
		.BYTE $B4
		.WORD byte_76F6
		.BYTE $28
		.BYTE $D
		MOVEXY	0,7
aPress:		.BYTE $A5,"(Press "
aSpaceBar:	BLINK "SPACE BAR"
aToPlayAgain:	.BYTE " to play again)",$0D,$FF
byte_76F6:	.BYTE $FF		; DATA XREF: RAM:7672^w	RAM:76CB^o
byte_76F7:	.BYTE $FF		; DATA XREF: RAM:7678^w
unk_76F8:	.BYTE	<str_7700	; DATA XREF: RAM:766F^r
		.BYTE $1B
		.BYTE $39 ; 9
		.BYTE $49 ; I
unk_76FC:	.BYTE	>str_7700	; DATA XREF: RAM:7675^r
		.BYTE $77 ; w
		.BYTE $77 ; w
		.BYTE $77 ; w
aRestInPeaceAdv:
str_7700:
		.BYTE "Rest in peace, adventurer.",0
aAshesToAshesDu:.BYTE "Ashes to ashes, dust to dust.",0
aThouHastDied_:	.BYTE "Thou hast died.",0
aThouArtDead_:	.BYTE "Thou art dead.",0
		.BYTE $9D ; 
		.BYTE $A1 ; ¡
		.BYTE $AC ; ¬
		.BYTE $A1 ; ¡
		.BYTE $BB ; »
		.BYTE $A1 ; ¡
		.BYTE $3F ; ?
		.BYTE $A0 ;  
		.BYTE $8D ; 
		.BYTE $A4 ; ¤
		.BYTE $E0 ; à
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; 
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A4 ; ¤
		.BYTE $A3 ; £
		.BYTE $A2 ; ¢
		.BYTE	6
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE $1A
		.BYTE	2
		.BYTE $FA ; ú
		.BYTE $9F ; 
		.BYTE  $A
		.BYTE $54 ; T
		.BYTE $A0 ;  
		.BYTE  $A
		.BYTE $D9 ; Ù
		.BYTE $A4 ; ¤
		.BYTE  $D
		.BYTE  $C
		.BYTE  $A
		.BYTE $54 ; T
		.BYTE $A0 ;  
		.BYTE  $A
		.BYTE $5B ; [
		.BYTE $A1 ; ¡
		.BYTE  $A
		.BYTE $9A ; 
		.BYTE $A4 ; ¤
		.BYTE $13
		.BYTE  $E
		.BYTE	3
aNowThatYouReGo:.BYTE "NOW THAT YOU'RE GONE",0
		.BYTE  $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $54 ; T
		.BYTE  $F
		.BYTE	3
		.BYTE	7
		.BYTE	1
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $38 ; 8
		.BYTE  $F
		.BYTE	8
		.BYTE  $E
		.BYTE	1
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $1C
		.BYTE  $F
		.BYTE  $F
		.BYTE $13
		.BYTE	1
		.BYTE	1
		.BYTE $4C ; L
		.BYTE $54 ; T
		.BYTE  $E
		.BYTE	3
aSomeWillGrieve:.BYTE "SOME WILL GRIEVE ",0
		.BYTE  $F
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE $44 ; D
		.BYTE $1C
		.BYTE  $F
		.BYTE	5
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $1C
		.BYTE  $F
		.BYTE	9
		.BYTE  $F
		.BYTE	1
		.BYTE	1
		.BYTE $39 ; 9
		.BYTE $1C
		.BYTE  $E
		.BYTE	3
aOnOnAndOn:	.BYTE "ON ON AND ON",0
		.BYTE  $F
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE $54 ; T
		.BYTE  $F
		.BYTE	2
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE $39 ; 9
		.BYTE $38 ; 8
		.BYTE  $F
		.BYTE	5
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $1C
		.BYTE  $F
		.BYTE	9
		.BYTE  $B
		.BYTE	1
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $54 ; T
		.BYTE  $E
		.BYTE	3
aIKnowYouLlBe:	.BYTE "I KNOW YOU'LL BE",0
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $1C
		.BYTE  $F
		.BYTE	1
		.BYTE	5
		.BYTE	1
		.BYTE	1
		.BYTE $39 ; 9
		.BYTE $1C
		.BYTE  $F
		.BYTE	6
		.BYTE  $C
		.BYTE	1
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE $1C
		.BYTE  $F
		.BYTE  $D
		.BYTE  $F
		.BYTE	1
		.BYTE	1
		.BYTE $2D ; -
		.BYTE $54 ; T
		.BYTE  $E
		.BYTE	3
aBackAgain:	.BYTE "BACK AGAIN",0
		.BYTE  $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE $2F ; /
		.BYTE $38 ; 8
		.BYTE  $F
		.BYTE	4
		.BYTE	5
		.BYTE	1
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE $1C
		.BYTE  $F
		.BYTE	6
		.BYTE	9
		.BYTE	1
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $54 ; T
		.BYTE  $E
		.BYTE	3
aMaybeNextTime:	.BYTE "MAYBE NEXT TIME",0
		.BYTE  $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $1C
		.BYTE  $F
		.BYTE	3
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $1C
		.BYTE  $F
		.BYTE	5
		.BYTE	9
		.BYTE	1
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $1C
		.BYTE  $F
		.BYTE  $A
		.BYTE  $E
		.BYTE	1
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $54 ; T
		.BYTE  $B
		.BYTE  $E
		.BYTE	3
aWillBeTheTimeY:.BYTE "WILL BE THE TIME YOU",0
		.BYTE  $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $1C
		.BYTE  $F
		.BYTE	4
		.BYTE	6
		.BYTE	1
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $1C
		.BYTE  $F
		.BYTE	7
		.BYTE  $A
		.BYTE	1
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $1C
		.BYTE  $F
		.BYTE  $B
		.BYTE  $F
		.BYTE	1
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $54 ; T
		.BYTE  $F
		.BYTE $10
		.BYTE $13
		.BYTE	1
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $4E ; N
		.BYTE  $E
		.BYTE	3
		.BYTE $20
		.BYTE $20
		.BYTE	0
		.BYTE $12
		.BYTE	2
		.BYTE  $B
		.BYTE	2
		.BYTE $FA ; ú
		.BYTE $9F ; 
		.BYTE  $A
		.BYTE $51 ; Q
		.BYTE $A3 ; £
		.BYTE  $D
		.BYTE  $A
		.BYTE  $A
		.BYTE $51 ; Q
		.BYTE $A3 ; £
		.BYTE  $A
		.BYTE $92 ; 
		.BYTE $A4 ; ¤
		.BYTE $13
		.BYTE	2
		.BYTE $FA ; ú
		.BYTE $9F ; 
		.BYTE  $A
		.BYTE $D0 ; Ð
		.BYTE $A1 ; ¡
		.BYTE  $D
		.BYTE	6
		.BYTE  $A
		.BYTE $D0 ; Ð
		.BYTE $A1 ; ¡
		.BYTE  $A
		.BYTE $96 ; 
		.BYTE $A4 ; ¤
		.BYTE $13
		.BYTE	2
		.BYTE $FA ; ú
		.BYTE $9F ; 
		.BYTE  $A
		.BYTE $AE ; ®
		.BYTE $A4 ; ¤
		.BYTE  $A
		.BYTE $22 ; "
		.BYTE $A2 ; ¢
		.BYTE  $D
		.BYTE	6
		.BYTE  $A
		.BYTE $AE ; ®
		.BYTE $A4 ; ¤
		.BYTE  $A
		.BYTE $22 ; "
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $8E ; 
		.BYTE $A4 ; ¤
		.BYTE $13
		.BYTE	1
		.BYTE $66 ; f
		.BYTE $54 ; T
		.BYTE	1
		.BYTE $80 ; 
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE $1C
		.BYTE	1
		.BYTE $80 ; 
		.BYTE $54 ; T
		.BYTE	1
		.BYTE $66 ; f
		.BYTE $1C
		.BYTE	1
		.BYTE $66 ; f
		.BYTE $1C
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $1C
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $72 ; r
		.BYTE $1C
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $54 ; T
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $1C
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $1C
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $1C
		.BYTE	1
		.BYTE $4C ; L
		.BYTE $54 ; T
		.BYTE	1
		.BYTE $4C ; L
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $4C ; L
		.BYTE $1C
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $54 ; T
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $1C
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $1C
		.BYTE	1
		.BYTE $79 ; y
		.BYTE $1C
		.BYTE	1
		.BYTE $66 ; f
		.BYTE $54 ; T
		.BYTE	1
		.BYTE $66 ; f
		.BYTE $1C
		.BYTE	1
		.BYTE $66 ; f
		.BYTE $1C
		.BYTE	1
		.BYTE $79 ; y
		.BYTE $1C
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $54 ; T
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $54 ; T
		.BYTE  $B
		.BYTE	1
		.BYTE $99 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE	5
		.BYTE	1
		.BYTE $99 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE	5
		.BYTE	1
		.BYTE $99 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE	3
		.BYTE	1
		.BYTE $99 ; 
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	5
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	5
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	3
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $80 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE	5
		.BYTE	1
		.BYTE $80 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE	5
		.BYTE	1
		.BYTE $80 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE	3
		.BYTE	1
		.BYTE $80 ; 
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE	5
		.BYTE	1
		.BYTE $E6 ; æ
		.BYTE	5
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE	5
		.BYTE	1
		.BYTE $E6 ; æ
		.BYTE	5
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE	5
		.BYTE	1
		.BYTE $E6 ; æ
		.BYTE	3
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE $1C
		.BYTE	1
		.BYTE $E6 ; æ
		.BYTE $1C
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	5
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	5
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	3
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	5
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	5
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	3
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE $1C
		.BYTE	1
		.BYTE $E6 ; æ
		.BYTE $1C
		.BYTE	1
		.BYTE $99 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	5
		.BYTE	1
		.BYTE $99 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	5
		.BYTE	1
		.BYTE $99 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	3
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $99 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	5
		.BYTE	1
		.BYTE $99 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	5
		.BYTE	1
		.BYTE $99 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	3
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $90 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	5
		.BYTE	1
		.BYTE $90 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	5
		.BYTE	1
		.BYTE $90 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	3
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $90 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	5
		.BYTE	1
		.BYTE $90 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	5
		.BYTE	1
		.BYTE $90 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	3
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE	5
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE	5
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE	3
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE	5
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE	5
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE	3
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	5
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	5
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	3
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	5
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	5
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE	5
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE	3
		.BYTE	1
		.BYTE $D9 ; Ù
		.BYTE $38 ; 8
		.BYTE  $B
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $4C ; L
		.BYTE $18
		.BYTE	1
		.BYTE $1F
		.BYTE	4
		.BYTE	1
		.BYTE $25 ; %
		.BYTE	4
		.BYTE	1
		.BYTE $32 ; 2
		.BYTE	4
		.BYTE	1
		.BYTE $40 ; @
		.BYTE	9
		.BYTE $12
		.BYTE	7
		.BYTE	1
		.BYTE $40 ; @
		.BYTE	4
		.BYTE	1
		.BYTE $32 ; 2
		.BYTE	4
		.BYTE	1
		.BYTE $25 ; %
		.BYTE	4
		.BYTE	1
		.BYTE $1F
		.BYTE	9
		.BYTE $12
		.BYTE  $B
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $34 ; 4
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $80 ; 
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $66 ; f
		.BYTE $18
		.BYTE	1
		.BYTE $1F
		.BYTE	4
		.BYTE	1
		.BYTE $25 ; %
		.BYTE	4
		.BYTE	1
		.BYTE $32 ; 2
		.BYTE	4
		.BYTE	1
		.BYTE $40 ; @
		.BYTE	9
		.BYTE $12
		.BYTE	7
		.BYTE	1
		.BYTE $40 ; @
		.BYTE	4
		.BYTE	1
		.BYTE $32 ; 2
		.BYTE	4
		.BYTE	1
		.BYTE $25 ; %
		.BYTE	4
		.BYTE	1
		.BYTE $1F
		.BYTE	9
		.BYTE $12
		.BYTE  $B
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $18
		.BYTE	1
		.BYTE $1F
		.BYTE	4
		.BYTE	1
		.BYTE $2A ; *
		.BYTE	4
		.BYTE	1
		.BYTE $40 ; @
		.BYTE	4
		.BYTE	1
		.BYTE $55 ; U
		.BYTE	9
		.BYTE $12
		.BYTE	7
		.BYTE	1
		.BYTE $55 ; U
		.BYTE	4
		.BYTE	1
		.BYTE $40 ; @
		.BYTE	4
		.BYTE	1
		.BYTE $2A ; *
		.BYTE	4
		.BYTE	1
		.BYTE $1F
		.BYTE	9
		.BYTE $12
		.BYTE  $B
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $34 ; 4
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $18
		.BYTE	1
		.BYTE $1F
		.BYTE	4
		.BYTE	1
		.BYTE $28 ; (
		.BYTE	4
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE	4
		.BYTE	1
		.BYTE $40 ; @
		.BYTE	9
		.BYTE $12
		.BYTE	7
		.BYTE	1
		.BYTE $40 ; @
		.BYTE	4
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE	4
		.BYTE	1
		.BYTE $28 ; (
		.BYTE	4
		.BYTE	1
		.BYTE $1F
		.BYTE	9
		.BYTE $12
		.BYTE  $B
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $18
		.BYTE	1
		.BYTE $1F
		.BYTE	4
		.BYTE	1
		.BYTE $25 ; %
		.BYTE	4
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE	4
		.BYTE	1
		.BYTE $40 ; @
		.BYTE	9
		.BYTE $12
		.BYTE	7
		.BYTE	1
		.BYTE $40 ; @
		.BYTE	4
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE	4
		.BYTE	1
		.BYTE $25 ; %
		.BYTE	4
		.BYTE	1
		.BYTE $1F
		.BYTE	9
		.BYTE $12
		.BYTE  $B
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $34 ; 4
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $18
		.BYTE	1
		.BYTE $1D
		.BYTE	4
		.BYTE	1
		.BYTE $23 ; #
		.BYTE	4
		.BYTE	1
		.BYTE $2F ; /
		.BYTE	4
		.BYTE	1
		.BYTE $48 ; H
		.BYTE	9
		.BYTE $12
		.BYTE	7
		.BYTE	1
		.BYTE $48 ; H
		.BYTE	4
		.BYTE	1
		.BYTE $2F ; /
		.BYTE	4
		.BYTE	1
		.BYTE $23 ; #
		.BYTE	4
		.BYTE	1
		.BYTE $1D
		.BYTE	9
		.BYTE $12
		.BYTE  $B
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $18
		.BYTE	1
		.BYTE $1D
		.BYTE	4
		.BYTE	1
		.BYTE $28 ; (
		.BYTE	4
		.BYTE	1
		.BYTE $32 ; 2
		.BYTE	4
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE	9
		.BYTE $12
		.BYTE	7
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE	4
		.BYTE	1
		.BYTE $32 ; 2
		.BYTE	4
		.BYTE	1
		.BYTE $28 ; (
		.BYTE	4
		.BYTE	1
		.BYTE $1D
		.BYTE	9
		.BYTE $12
		.BYTE  $B
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $66 ; f
		.BYTE $18
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE  $B
		.BYTE	0
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $A8 ; ¨
		.BYTE  $B
		.BYTE	1
		.BYTE $52 ; R
		.BYTE $A8 ; ¨
		.BYTE  $B
		.BYTE	1
		.BYTE $50 ; P
		.BYTE $A8 ; ¨
		.BYTE  $B
		.BYTE  $E
		.BYTE	3
aWin:		.BYTE "WIN",0
		.BYTE  $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE  $E
		.BYTE	3
		.BYTE $20
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE  $B
		.BYTE	1
		.BYTE $99 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE	5
		.BYTE	1
		.BYTE $99 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE	5
		.BYTE	1
		.BYTE $99 ; 
		.BYTE	5
		.BYTE	1
		.BYTE $CC ; Ì
		.BYTE	3
		.BYTE	1
		.BYTE $99 ; 
		.BYTE $38 ; 8
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	5
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	5
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE	5
		.BYTE	1
		.BYTE $C1 ; Á
		.BYTE	3
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE $38 ; 8
		.BYTE  $B
		.BYTE  $E
		.BYTE	3
aWillBeTheTime:	.BYTE "WILL BE THE TIME",0
		.BYTE  $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $1C
		.BYTE  $F
		.BYTE	4
		.BYTE	6
		.BYTE	1
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $1C
		.BYTE  $F
		.BYTE	7
		.BYTE  $A
		.BYTE	1
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $1C
		.BYTE  $F
		.BYTE  $B
		.BYTE  $F
		.BYTE	1
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $A2 ; ¢
		.BYTE  $E
		.BYTE	3
		.BYTE $20
		.BYTE $20
		.BYTE	0
		.BYTE $12
		.BYTE	2
		.BYTE  $B
		.RES	136,$00
; end of 'RAM'


		.END
