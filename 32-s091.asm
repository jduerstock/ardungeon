
		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;	.ORG	$100
	.SEGMENT "SEG_18_KEY"
	
	.BYTE	$54,$5b,$00,$11,$20,$26,$f0,$87,$28,$73,$3f,$4d,$e9,$dc,$eb,$2c ; |T[.. &..(s?M...,|
	.BYTE	$60,$8f,$eb,$a8,$f7,$3a,$9f,$5e,$35,$d2,$85,$48,$18,$99,$eb,$e6 ; |`....:.^5..H....|
	.BYTE	$08,$00,$6b,$5b,$4d,$bd,$5f,$a9,$ee,$8b,$d4,$82,$cc,$d5,$9a,$7c ; |..k[M._........||
	.BYTE	$f6,$33,$94,$81,$96,$78,$a3,$1b,$4f,$6e,$d7,$16,$f0,$5f,$29,$69 ; |.3...x..On..._)i|
	.BYTE	$b2,$52,$00,$c6,$15,$95,$78,$5f,$1a,$8d,$2c,$37,$b1,$3a,$38,$13 ; |.R....x_..,7.:8.|
	.BYTE	$9f,$d9,$9e,$ad,$1c,$a6,$e6,$b1,$cb,$28,$07,$c7,$0d,$07,$32,$41 ; |.........(....2A|
	.BYTE	$d9,$bf,$32,$4e,$58,$53,$8d,$1f,$48,$ea,$28,$1b,$33,$b4,$4d,$3f ; |..2NXS..H.(.3.M?|
	.BYTE	$a1,$60,$43,$4d,$5d,$fd,$a8,$cb,$2f,$ab,$79,$df,$c5,$ce,$98,$62 ; |.`CM].../.y....b|

;		.ORG	$7600
	.SEGMENT "SEG_18"

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

loc_760D:				; CODE XREF: RAM:7604^j	RAM:7607^j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601^j
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

loc_7652:				; CODE XREF: RAM:7642^j
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

loc_7686:				; CODE XREF: RAM:7660^j
		JSR	sub_7728
		LDA	$63
		BNE	loc_769B

loc_768D:				; CODE XREF: RAM:76BEvj	RAM:76E3vj
		dldi	off_16, $7BA3
		JSR	sub_776E
		JMP	loc_7717
; ---------------------------------------------------------------------------

loc_769B:				; CODE XREF: RAM:768B^j
		LDA	$7589
		CMP	#1
		BCS	loc_76C0
		dldi	off_16, $79F8
		JSR	sub_7778
		LDA	#2
		LDX	#$62
		JSR	j_ADDSTAT1
		JSR	sub_7BD5
		LDA	#1
		STA	$7589
		DEC	$63
		BEQ	loc_768D

loc_76C0:				; CODE XREF: RAM:76A0^j
		LDA	$7589
		CMP	#2
		BCS	loc_76E5
		dldi	off_16, $7A44
		JSR	sub_7778
		LDA	#2
		LDX	#$6A
		JSR	j_ADDSTAT1
		JSR	sub_7BD5
		LDA	#2
		STA	$7589
		DEC	$63
		BEQ	loc_768D

loc_76E5:				; CODE XREF: RAM:76C5^j
		dldi	off_16, $7A8B
		JSR	sub_7778
		dldi	off_16, $7B1A
		JSR	sub_7778
		LDA	#3
		STA	$7589
		LDA	#$18
		JSR	sub_7766
		ldxy	byte_7780
		JSR	j_sub_4B4D
		dldi	off_16, $7B86
		JSR	sub_776E

loc_7717:				; CODE XREF: RAM:764F^j	RAM:7698^j
		LDX	#4

loc_7719:				; CODE XREF: RAM:7720vj
		LDA	$6318,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_7719
		STX	$AC00
		JMP	$180C

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7728:				; CODE XREF: RAM:loc_7686^p
		LDA	#0
		STA	$63
		LDA	#$3F ; '?'
		STA	$64

loc_7730:				; CODE XREF: sub_7728+34vj
		LDA	$64
		STA	$4B
		JSR	j_LOADINV
		BEQ	loc_775A
		LDY	#0
		LDA	(off_41),Y
		CMP	#$87 ; ''
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

loc_775A:				; CODE XREF: sub_7728+F^j sub_7728+17^j	...
		DEC	$64
		BPL	loc_7730
		RTS
; End of function sub_7728

; ---------------------------------------------------------------------------
		ldxy	$7508
		JMP	j_TESTBIT

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7766:				; CODE XREF: RAM:7702^p
		ldxy	$7508
		SEC
		JMP	j_SETBIT
; End of function sub_7766


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_776E:				; CODE XREF: RAM:764C^p	RAM:765A^p ...
		LDX	$62
		JSR	j_sub_3C5C
		LDA	#$10
		JMP	j_sub_2BFC
; End of function sub_776E


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7778:				; CODE XREF: RAM:766D^p	RAM:7678^p ...
		LDX	$62
		JSR	j_sub_3C5C
		JMP	$183C
; End of function sub_7778

; ---------------------------------------------------------------------------

byte_7780:
		.BYTE	$07,$22,$01,$00,$00
		.BYTE  $F
aPacCard:	.BYTE "PAC card",0
		.BYTE $88 ; 
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $E1 ; á
		.BYTE $88 ; 
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE $A8,$FF

		MOVEXY	0,3
		.BYTE $A5,"The tomb is empty.",$D,$FF

		MOVEXY	0,0
		.BYTE	$A5,"The ghostly form of Acrinimiril floats",$D,$D
		.BYTE	$A5,"above the tomb and in a voice that",$D,$D
		.BYTE	$A5,"speaks into your mind says:",$D,$D
		.BYTE	$A5,$22,"Come forward "
		.BYTE $B3
		.WORD $6321
		.BYTE $18
a_:		.BYTE ".",$22,$0D,$FF
		MOVEXY	0,0
		.BYTE	$A5,"I am Acrinimiril the wizard. I come",$0D,$0D
		.BYTE	$A5,"from a world many dimensions distant.",$0D,$0D
		.BYTE	"While walking through shadow, I happened",$0D
		.BYTE	$A5,"upon this plane many generations ago.",$0D,$FF
		MOVEXY	0,0
		.BYTE	$A5,"Fearing my Sorcery, the Masters of this",$0D,$0D
		.BYTE	$A5,"world sought to destroy me. They",$0D,$0D
		.BYTE	$A5,"succeeded in destroying my body but my",$0D,$0D
		.BYTE	$A5,"spirit remains. My staff still holds",$0D,$FF
		MOVEXY	0,0
		.BYTE	$A5,"my remaining power. Find and return",$0D,$0D
		.BYTE	$A5,"the staff which was broken and I",$0D,$0D
		.BYTE	$A5,"will help you in that which you seek.",$0D,$FF
		MOVEXY	0,1
		.BYTE	$A5,"For returning the first piece",$0D,$0D
		.BYTE	$A5,"of my staff I give you",$0D,$0D
		.BYTE	$A5,"Intelligence.",$0D,$FF
		MOVEXY	0,1
		.BYTE	$A5,"For returning the second piece",$0D,$0D
		.BYTE	$A5,"of my staff I give you",$0D,$0D
		.BYTE	$A5,"Wisdom.",$0D,$FF
		MOVEXY	0,0
		.BYTE	$A5,"Well done "
		.BYTE $B3
		.WORD $6321
		.BYTE $19
		.BYTE	".",$0D,$0D
		.BYTE	$A5,"I now have the whole staff and must",$0D,$0D
		.BYTE	$A5,"return to my own world. But I will give",$0D,$0D
		.BYTE	$A5,"you this Portal Access Card which shall",$0D,$FF
		MOVEXY	0,0
		.BYTE	$A5,"open the Masters' door on the third",$0D,$0D
		.BYTE	$A5,"level. Prepare well before you use it.",$0D,$0D
		.BYTE	$A5,"Farewell and thank you.",$0D,$FF
		MOVEXY	0,3
		.BYTE	$A5,"Acrinimiril fades away.",$0D,$FF
		MOVEXY	0,2
		.BYTE	$A5,"Seek the Oracle to help thee",$0D,$0D
		.BYTE	$A5,"in thy quest.",$0D,$FF

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7BD5:				; CODE XREF: RAM:76B4^p	RAM:76D9^p
		DEC	$195F
		JMP	j_sub_408B
; End of function sub_7BD5

; ---------------------------------------------------------------------------
		.BYTE $1B
		.BYTE  $F
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE $1E
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $BA ; º
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE  $A
		.BYTE $AA ; ª
		.BYTE $B9 ; ¹
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $BA ; º
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE	4
		.BYTE $AD ; ­
		.BYTE $ED ; í
		.BYTE $1B
		.BYTE	7
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE	7
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE $77 ; w
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $DD ; Ý
		.BYTE $DC ; Ü
		.BYTE $1B
		.BYTE	6
		.BYTE $DE ; Þ
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $EA ; ê
		.BYTE $DA ; Ú
		.BYTE $DA ; Ú
		.BYTE $DE ; Þ
		.BYTE $DE ; Þ
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $A8 ; ¨
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
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE	4
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; ê
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $AE ; ®
		.BYTE $9E ; 
		.BYTE $DE ; Þ
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $AE ; ®
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A5 ; ¥
		.BYTE $1B
		.BYTE	3
		.BYTE $9E ; 
		.BYTE $AA ; ª
		.BYTE $AD ; ­
		.BYTE $5E ; ^
		.BYTE $5E ; ^
		.BYTE $9E ; 
		.BYTE $9E ; 
		.BYTE $96 ; 
		.BYTE $9A ; 
		.BYTE $BA ; º
		.BYTE $B9 ; ¹
		.BYTE $BA ; º
		.BYTE $9A ; 
		.BYTE $5E ; ^
		.BYTE $1B
		.BYTE	2
		.BYTE $6E ; n
		.BYTE $BB ; »
		.BYTE $BB ; »
		.BYTE $BA ; º
		.BYTE $D9 ; Ù
		.BYTE $D9 ; Ù
		.BYTE $DA ; Ú
		.BYTE $D9 ; Ù
		.BYTE $55 ; U
		.BYTE $99 ; 
		.BYTE $69 ; i
		.BYTE $A9 ; ©
		.BYTE $D9 ; Ù
		.BYTE $69 ; i
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	5
		.BYTE $ED ; í
		.BYTE $AD ; ­
		.BYTE $AD ; ­
		.BYTE $1B
		.BYTE	7
		.BYTE $DF ; ß
		.BYTE $FA ; ú
		.BYTE $1B
		.BYTE	6
		.BYTE $F0 ; ð
		.BYTE $AA ; ª
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $82 ; 
		.BYTE $20
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $80 ; 
		.BYTE $20
		.BYTE	8
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $20
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $20
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; 
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $80 ; 
		.BYTE $A0 ;  
		.BYTE  $A
		.BYTE	8
		.BYTE	8
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $AA ; ª
		.BYTE	2
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $20
		.BYTE $82 ; 
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $20
		.BYTE	8
		.BYTE	2
		.BYTE $20
		.BYTE	2
		.BYTE	8
		.BYTE $20
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $A0 ;  
		.BYTE $20
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	8
		.BYTE $2A ; *
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE  $A
		.BYTE $80 ; 
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE $20
		.BYTE $80 ; 
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE	8
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE $88 ; 
		.BYTE	8
		.BYTE $80 ; 
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $20
		.BYTE $88 ; 
		.BYTE $20
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $88 ; 
		.BYTE $80 ; 
		.BYTE $A8 ; ¨
		.BYTE	2
		.BYTE	0
		.BYTE $AB ; «
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE $83 ; 
		.BYTE	3
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE	3
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	8
		.BYTE $DE ; Þ
		.BYTE $9E ; 
		.BYTE $9A ; 
		.BYTE $AA ; ª
		.BYTE $FA ; ú
		.BYTE $95 ; 
		.BYTE $AB ; «
		.BYTE $A9 ; ©
		.BYTE $BF ; ¿
		.BYTE $AA ; ª
		.BYTE $9A ; 
		.BYTE $9A ; 
		.BYTE $9B ; 
		.BYTE $5B ; [
		.BYTE $F7 ; ÷
		.BYTE $A7 ; §
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $A7 ; §
		.BYTE $A7 ; §
		.BYTE $A6 ; ¦
		.BYTE $66 ; f
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $AE ; ®
		.BYTE $AE ; ®
		.BYTE $9E ; 
		.BYTE $9E ; 
		.BYTE $96 ; 
		.BYTE $96 ; 
		.BYTE $1B
		.BYTE	7
		.BYTE $B7 ; ·
		.BYTE $1B
		.BYTE $17
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE  $F
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE	7
		.BYTE $E9 ; é
		.BYTE $ED ; í
		.BYTE $1B
		.BYTE	3
		.BYTE $EE ; î
		.BYTE $E6 ; æ
		.BYTE $D6 ; Ö
		.BYTE $D6 ; Ö
		.BYTE $DE ; Þ
		.BYTE $D5 ; Õ
		.BYTE $D6 ; Ö
		.BYTE $DA ; Ú
		.BYTE $DA ; Ú
		.BYTE $E9 ; é
		.BYTE $E9 ; é
		.BYTE $A9 ; ©
		.BYTE $AD ; ­
		.BYTE $AE ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $6E ; n
		.BYTE $E6 ; æ
		.BYTE $E6 ; æ
		.BYTE $D6 ; Ö
		.BYTE $5A ; Z
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $9A ; 
		.BYTE $B9 ; ¹
		.BYTE $79 ; y
		.BYTE $7A ; z
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; ê
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A0 ;  
		.BYTE	0
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $80 ; 
		.BYTE	1
		.BYTE	5
		.BYTE $5D ; ]
		.BYTE $7D ; }
		.BYTE $AD ; ­
		.BYTE $8D ; 
		.BYTE $1B
		.BYTE	5
		.BYTE  $D
		.BYTE $1B
		.BYTE	3
		.BYTE $DF ; ß
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F2 ; ò
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $A3 ; £
		.BYTE $1B
		.BYTE	6
		.BYTE $23 ; #
		.BYTE $1B
		.BYTE	5
		.BYTE $FD ; ý
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $DC ; Ü
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; «
		.BYTE $AA ; ª
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $A6 ; ¦
		.BYTE $A6 ; ¦
		.BYTE $56 ; V
		.BYTE $A7 ; §
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $76 ; v
		.BYTE $76 ; v
		.BYTE $B6 ; ¶
		.BYTE $76 ; v
		.BYTE $76 ; v
		.BYTE $B6 ; ¶
		.BYTE $A6 ; ¦
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE $B7 ; ·
		.BYTE $1B
		.BYTE $17
		.BYTE $77 ; w
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $95 ; 
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	3
		.BYTE $AD ; ­
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
		.BYTE  $F
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE	5
		.BYTE $E9 ; é
		.BYTE $EA ; ê
		.BYTE $EA ; ê
		.BYTE $E6 ; æ
		.BYTE $DE ; Þ
		.BYTE $5E ; ^
		.BYTE $AE ; ®
		.BYTE $AE ; ®
		.BYTE $1B
		.BYTE	8
		.BYTE $AA ; ª
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE $EA ; ê
		.BYTE $EA ; ê
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $80 ; 
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
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE	7
		.BYTE	7
		.BYTE $ED ; í
		.BYTE $AD ; ­
		.BYTE $AD ; ­
		.BYTE $ED ; í
		.BYTE $AD ; ­
		.BYTE $AD ; ­
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
		.BYTE $F2 ; ò
		.BYTE $1B
		.BYTE  $B
		.BYTE	0
		.BYTE  $A
		.BYTE $2E ; .
		.BYTE $EB ; ë
		.BYTE $BA ; º
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $E8 ; è
		.BYTE $BA ; º
		.BYTE $AE ; ®
		.BYTE $AE ; ®
		.BYTE $EB ; ë
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	2
		.BYTE $8E ; 
		.BYTE $AE ; ®
		.BYTE $BA ; º
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $AE ; ®
		.BYTE $BA ; º
		.BYTE $1B
		.BYTE	2
		.BYTE $EB ; ë
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $B0 ; °
		.BYTE $EB ; ë
		.BYTE $AB ; «
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $EE ; î
		.BYTE $EB ; ë
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $AE ; ®
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $AE ; ®
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $AE ; ®
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $AE ; ®
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE  $E
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE  $A
		.BYTE $3A ; :
		.BYTE $AF ; ¯
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	9
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $23 ; #
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $DC ; Ü
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	5
		.BYTE $DC ; Ü
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
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $40 ; @
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $B7 ; ·
		.BYTE $1B
		.BYTE	3
		.BYTE $37 ; 7
		.BYTE $1B
		.BYTE $17
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	2
		.BYTE $AD ; ­
		.BYTE $A9 ; ©
		.BYTE $A5 ; ¥
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE  $F
		.BYTE $DD ; Ý
		.BYTE $EA ; ê
		.BYTE $EA ; ê
		.BYTE $E8 ; è
		.BYTE $1B
		.BYTE	4
		.BYTE $C0 ; À
		.BYTE $A8 ; ¨
		.BYTE $80 ; 
		.BYTE	2
		.BYTE  $B
		.BYTE  $B
		.BYTE	2
		.BYTE $16
		.BYTE $56 ; V
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $AA ; ª
		.BYTE $FE ; þ
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $1D
		.BYTE $1B
		.BYTE	7
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE	6
		.BYTE	7
		.BYTE	5
		.BYTE $AD ; ­
		.BYTE $AD ; ­
		.BYTE $ED ; í
		.BYTE $AD ; ­
		.BYTE $B4 ; ´
		.BYTE $D0 ; Ð
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
		.BYTE $F2 ; ò
		.BYTE $D0 ; Ð
		.BYTE $7C ; |
		.BYTE $FD ; ý
		.BYTE $F5 ; õ
		.BYTE $D5 ; Õ
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	0
		.BYTE $56 ; V
		.BYTE $59 ; Y
		.BYTE $65 ; e
		.BYTE $1B
		.BYTE	3
		.BYTE $8A ; 
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
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $62 ; b
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $8A ; 
		.BYTE $8A ; 
		.BYTE $A2 ; ¢
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $8A ; 
		.BYTE $28 ; (
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE $A8 ; ¨
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE $A8 ; ¨
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $A8 ; ¨
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
		.BYTE $AA ; ª
		.BYTE $80 ; 
		.BYTE $A0 ;  
		.BYTE $65 ; e
		.BYTE $69 ; i
		.BYTE $59 ; Y
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ª
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
		.BYTE $D5 ; Õ
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $DC ; Ü
		.BYTE $F4 ; ô
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $FD ; ý
		.BYTE $F5 ; õ
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
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	6
		.BYTE $16
		.BYTE $5A ; Z
		.BYTE $FE ; þ
		.BYTE $7A ; z
		.BYTE $DE ; Þ
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; þ
		.BYTE $EA ; ê
		.BYTE $7E ; ~
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	5
		.BYTE $1D
		.BYTE $1F
		.BYTE $1D
		.BYTE $1B
		.BYTE	3
		.BYTE $DD ; Ý
		.BYTE $F4 ; ô
		.BYTE $D0 ; Ð
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
		.BYTE $D4 ; Ô
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
		.BYTE $DC ; Ü
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
		.BYTE $F5 ; õ
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
		.BYTE $D4 ; Ô
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; «
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
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	2
		.BYTE $AD ; ­
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
		.BYTE $F5 ; õ
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
		.BYTE $D4 ; Ô
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; «
		.BYTE	9
		.BYTE $FD ; ý
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
		.BYTE $90 ; 
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE	3
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $D5 ; Õ
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $D5 ; Õ
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
		.BYTE $BF ; ¿
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $E0 ; à
		.BYTE $F8 ; ø
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
		.BYTE $1B
		.BYTE  $F
		.BYTE $DD ; Ý
		.BYTE $C0 ; À
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	5
		.BYTE $C1 ; Á
		.BYTE $5B ; [
		.BYTE $6B ; k
		.BYTE $6F ; o
		.BYTE $AF ; ¯
		.BYTE $B7 ; ·
		.BYTE $BD ; ½
		.BYTE $BF ; ¿
		.BYTE $BF ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $FB ; û
		.BYTE $AF ; ¯
		.BYTE $FF
		.BYTE $FF
		.BYTE $80 ; 
		.BYTE $A0 ;  
		.BYTE $E0 ; à
		.BYTE $68 ; h
		.BYTE $F8 ; ø
		.BYTE $F8 ; ø
		.BYTE $F9 ; ù
		.BYTE $F9 ; ù
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
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $6A ; j
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $AB ; «
		.BYTE $AD ; ­
		.BYTE $B5 ; µ
		.BYTE $D6 ; Ö
		.BYTE $5A ; Z
		.BYTE $B5 ; µ
		.BYTE $D4 ; Ô
		.BYTE $D0 ; Ð
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $AA ; ª
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE	3
		.BYTE	3
		.BYTE  $D
		.BYTE $F5 ; õ
		.BYTE $55 ; U
		.BYTE $D5 ; Õ
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
		.BYTE $D4 ; Ô
		.BYTE $14
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; «
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
		.BYTE $AD ; ­
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
		.BYTE $D4 ; Ô
		.BYTE $14
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; «
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $4D ; M
		.BYTE  $D
		.BYTE $FD ; ý
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
		.BYTE $DA ; Ú
		.BYTE $D6 ; Ö
		.BYTE	3
		.BYTE	0
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE $D5 ; Õ
		.BYTE $F5 ; õ
		.BYTE $75 ; u
		.BYTE $AD ; ­
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $BF ; ¿
		.BYTE $65 ; e
		.BYTE $6F ; o
		.BYTE $BF ; ¿
		.BYTE $BF ; ¿
		.BYTE $EF ; ï
		.BYTE $FA ; ú
		.BYTE $FF
		.BYTE $E0 ; à
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $E0 ; à
		.BYTE $E0 ; à
		.BYTE $74 ; t
		.BYTE $F8 ; ø
		.BYTE $F9 ; ù
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
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE	3
		.BYTE $C1 ; Á
		.BYTE $1B
		.BYTE	3
		.BYTE $C0 ; À
		.BYTE $AF ; ¯
		.BYTE $67 ; g
		.BYTE $6D ; m
		.BYTE $6F ; o
		.BYTE $6B ; k
		.BYTE $5B ; [
		.BYTE $5A ; Z
		.BYTE $16
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $6B ; k
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $BA ; º
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	2
		.BYTE $E5 ; å
		.BYTE $A5 ; ¥
		.BYTE $95 ; 
		.BYTE $95 ; 
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
		.BYTE $D6 ; Ö
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	9
		.BYTE $AA ; ª
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE $AD ; ­
		.BYTE $B5 ; µ
		.BYTE $AD ; ­
		.BYTE $B5 ; µ
		.BYTE $B6 ; ¶
		.BYTE $D6 ; Ö
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $D5 ; Õ
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
		.BYTE $AD ; ­
		.BYTE $AD ; ­
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $DA ; Ú
		.BYTE $D6 ; Ö
		.BYTE $B6 ; ¶
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $EF ; ï
		.BYTE $FA ; ú
		.BYTE $BF ; ¿
		.BYTE $BF ; ¿
		.BYTE $9F ; 
		.BYTE $B5 ; µ
		.BYTE $AF ; ¯
		.BYTE $F9 ; ù
		.BYTE $79 ; y
		.BYTE $F9 ; ù
		.BYTE $E5 ; å
		.BYTE $E5 ; å
		.BYTE $65 ; e
		.BYTE $E5 ; å
		.BYTE $A5 ; ¥
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
		.BYTE $DD ; Ý
		.BYTE $C0 ; À
		.BYTE $C0 ; À
		.BYTE $C1 ; Á
		.BYTE $C5 ; Å
		.BYTE $1B
		.BYTE	3
		.BYTE $D5 ; Õ
		.BYTE $16
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $FE ; þ
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $50 ; P
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $A9 ; ©
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $AB ; «
		.BYTE $AD ; ­
		.BYTE	0
		.BYTE	3
		.BYTE $FD ; ý
		.BYTE $55 ; U
		.BYTE $B4 ; ´
		.BYTE $D4 ; Ô
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $D7 ; ×
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
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE	3
		.BYTE  $D
		.BYTE $35 ; 5
		.BYTE $35 ; 5
		.BYTE $D6 ; Ö
		.BYTE $B5 ; µ
		.BYTE $D6 ; Ö
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ª
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE $AD ; ­
		.BYTE $AD ; ­
		.BYTE $D5 ; Õ
		.BYTE $D5 ; Õ
		.BYTE $FF
		.BYTE $D0 ; Ð
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
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	2
		.BYTE $AD ; ­
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
		.BYTE $DA ; Ú
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $D0 ; Ð
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
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; «
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $D0 ; Ð
		.BYTE $D0 ; Ð
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $FF
		.BYTE $DA ; Ú
		.BYTE $DA ; Ú
		.BYTE $D6 ; Ö
		.BYTE $F6 ; ö
		.BYTE $36 ; 6
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ª
		.BYTE $B5 ; µ
		.BYTE $AD ; ­
		.BYTE $AD ; ­
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $D0 ; Ð
		.BYTE $D4 ; Ô
		.BYTE $B4 ; ´
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
		.BYTE $D5 ; Õ
		.BYTE $D5 ; Õ
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
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	9
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE $19
		.BYTE	0
		.BYTE  $F
		.BYTE $FF
		.BYTE $F8 ; ø
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $FF
		.BYTE $F8 ; ø
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $FF
		.BYTE $F8 ; ø
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE $FF
		.BYTE $E0 ; à
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE $FF
		.BYTE $E0 ; à
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $FF
		.BYTE $F8 ; ø
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $2C ; ,
		.BYTE  $B
		.BYTE $35 ; 5
		.BYTE  $F
		.BYTE $9C ; 
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE $FF
		.BYTE $70 ; p
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
		.BYTE $26 ; &
		.BYTE $84 ; 
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

loc_84BC:				; CODE XREF: RAM:84E1vj
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
		BPL	loc_84BC
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

loc_84FE:				; CODE XREF: RAM:760A^j
		LDA	#$7F ; ''
		STA	$253
		LDA	#$26 ; '&'
		STA	$254
		LDA	#$84 ; ''
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_8511:				; CODE XREF: RAM:851Fvj
		LDY	#$C

loc_8513:				; CODE XREF: RAM:851Avj
		STA	$BB4C,X
		DEX
		BMI	loc_8521
		DEY
		BNE	loc_8513
		CLC
		ADC	#4
		BNE	loc_8511

loc_8521:				; CODE XREF: RAM:8517^j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_8619
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; '»'
		STA	$A
		JSR	loc_8619
		LDA	#0
		STA	loc_8547+1
		LDA	#$BD ; '½'
		STA	loc_8547+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; ''

loc_8547:				; CODE XREF: RAM:854Bvj	RAM:8551vj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_8547
		INC	loc_8547+2
		DEY
		BNE	loc_8547
		LDX	#7

loc_8555:				; CODE XREF: RAM:8559vj
		STA	$D000,X
		DEX
		BPL	loc_8555
		LDA	#3
		TAX

loc_855E:				; CODE XREF: RAM:8562vj
		STA	$D008,X
		DEX
		BPL	loc_855E
		ldi	SIZEM, $FF
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_858C:				; CODE XREF: RAM:85B2vj
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_8594:				; CODE XREF: RAM:859Fvj
		LSR	4
		BCC	loc_859E
		LDA	(9),Y
		ORA	#$80 ; ''
		STA	(9),Y

loc_859E:				; CODE XREF: RAM:8596^j
		DEY
		BPL	loc_8594
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_85AC
		INC	$A

loc_85AC:				; CODE XREF: RAM:85A8^j
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
		LDA	#$BD ; '½'
		STA	$F1

loc_85C4:				; CODE XREF: RAM:85D5vj
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
		BCC	loc_85C4

loc_85D7:				; CODE XREF: RAM:85F4vj
		LDX	#0

loc_85D9:				; CODE XREF: RAM:85F2vj
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_85DF:				; CODE XREF: RAM:85E4vj
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

loc_85F6:				; CODE XREF: RAM:85EE^j
		LDX	#3
		LDA	$BC5F

loc_85FB:				; CODE XREF: RAM:85FFvj
		STA	COLPM0,X
		DEX
		BPL	loc_85FB
		dldi	off_24A, $8458
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_8619:				; CODE XREF: RAM:8529^p	RAM:8534^p ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_8623
		INC	8

loc_8623:				; CODE XREF: RAM:861F^j
		CMP	#$1B
		BEQ	loc_8632
		STA	(9),Y
		INC	9
		BNE	loc_862F
		INC	$A

loc_862F:				; CODE XREF: RAM:862B^j
		JMP	loc_8619
; ---------------------------------------------------------------------------

loc_8632:				; CODE XREF: RAM:8625^j
		LDA	(7),Y
		INC	7
		BNE	loc_863A
		INC	8

loc_863A:				; CODE XREF: RAM:8636^j
		CMP	#$FF
		BNE	loc_863F
		RTS
; ---------------------------------------------------------------------------

loc_863F:				; CODE XREF: RAM:863C^j
		STA	byte_8679
		ADC	9
		STA	loc_8652+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_8657
		LDA	byte_8679

loc_8652:				; DATA XREF: RAM:8644^w
		SBC	#$FF
		STA	byte_8679

loc_8657:				; CODE XREF: RAM:864D^j
		LDA	(7),Y
		INC	7
		BNE	loc_865F
		INC	8

loc_865F:				; CODE XREF: RAM:865B^j
		LDY	byte_8679

loc_8662:				; CODE XREF: RAM:8665vj
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

loc_8676:				; CODE XREF: RAM:8672^j
		JMP	loc_8619
; ---------------------------------------------------------------------------
byte_8679:	.RES	135, $00	; DATA XREF: RAM:loc_863F^w
					; RAM:864F^r ...
; end of 'RAM'


		.END
