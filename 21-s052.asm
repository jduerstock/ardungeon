		.include	"macros.inc"

;		.ORG	$AC00
		.BYTE	1
		.WORD aToastLev1_2	; "toast! LEV 1.2"
		HBStr	"in a "
		HBStr	"at the "
		HBStr	"in "
		HBStr	" room."
		HBStr	" of "
		HBStr	" passage."
		HBStr	"secret"
		HBStr	"Dungeon Entrance."
		HBStr	"Wizards"
		HBStr	"quiet"
		HBStr	"corridor."
		HBStr	"hallway."
		HBStr	"long "
		HBStr	" Guild"
		HBStr	" area."
		HBStr	" Dungeon "
		HBStr	"by a "
		HBStr	"at a "
		HBStr	"stairway leading down."
		HBStr	"in the "
aToastLev1_2:	.BYTE	"toast! LEV 1.2",0 ; DATA XREF: RAM:AC01o
		.BYTE	$80,$8A,$00
		.BYTE	$80,$8B,$00
		.BYTE	$80,$8C,$8A,$00
		.BYTE	$80,$8C,$8B,$00
		.BYTE	$80,"dim",$85,$00
		.BYTE	$80,$86,$85,$00
		.BYTE	$80,$86," ",$8B,$00
		.BYTE	$90,$87,$00
		.BYTE	$80,"dead-end",$85,$00
		.BYTE	$81,"Damon & Pythias Shoppe.",$00
		.BYTE	"not here!!!",$00
		.BYTE	$81,"Retreat.",0
		.BYTE	$81,$88,$84,"Chaos",$8D,".",$00
		.BYTE	"at the Guild",$84,"Order.",0
		.BYTE	$81,$88,$84,"Law",$8D,".",$00
		.BYTE	"at a strange machine.",0
		.BYTE $91
		.BYTE $92
		.BYTE 0
		.BYTE $93
aPalacePrison_:	.BYTE "Palace Prison.",0
		.BYTE $81
aThieves:	.BYTE "Thieves'"
		.BYTE $8D
a__1:		.BYTE ".",0
		.BYTE $80
aWellLighted:	.BYTE "well-lighted"
		.BYTE $8E
		.BYTE	0
		.BYTE $82
aAnOpen:	.BYTE "an open"
		.BYTE $8E
		.BYTE	0
		.BYTE $80
aTreasure:	.BYTE "treasure"
		.BYTE $83
		.BYTE 0
		.BYTE	$80
aAmusty:	.BYTE "musty"
		.BYTE $83
		.BYTE 0
		.BYTE $80
aSmall:		.BYTE "small"
		.BYTE $83
		.BYTE 0
		.BYTE $80
aCreepy:	.BYTE "creepy"
		.BYTE $83
		.BYTE 0
		.BYTE $80
aLarge:		.BYTE "large"
		.BYTE $83
		.BYTE 0
		.BYTE $80
aRoomWithTwoDoo:.BYTE "room with two doors.",0
		.BYTE $80
aSpacious:	.BYTE "spacious"
		.BYTE $83
		.BYTE 0
		.BYTE $80
		.BYTE $86
		.BYTE $83
		.BYTE 0
		.BYTE $82
aYetAnotherSmal:.BYTE "yet another small"
		.BYTE $83
		.BYTE	0
		.BYTE $82
aAnotherSmall:	.BYTE "another small"
		.BYTE $83
		.BYTE 0
		.BYTE $80
		.BYTE $89
		.BYTE $8E
		.BYTE 0
		.BYTE $80
aNondescript:	.BYTE "nondescript"
		.BYTE $83
		.BYTE 0
		.BYTE $80
aDangerous:	.BYTE "dangerous"
		.BYTE $8E
		.BYTE 0
		.BYTE $80
aDebrisLittered:.BYTE "debris-littered"
		.BYTE $83
		.BYTE 0
		.BYTE $80
		.BYTE $89
		.BYTE $83
		.BYTE 0
aInTheCitySSewe:.BYTE "in The City's sewer system.",0
		.BYTE $80
		.BYTE $86
		.BYTE " "
		.BYTE $8A
		.BYTE 0
		.BYTE $90
		.BYTE $92
		.BYTE 0
		.BYTE $80
aTypical:	.BYTE "typical"
		.BYTE $8F
		.BYTE $8A
		.BYTE 0
aAtDerRathskell:.BYTE "at Der Rathskeller Bar & Grille",0
aInAnEnclosedBo:.BYTE "in an enclosed booth.",0
		.BYTE $81
aPalaceEntrance:.BYTE "Palace entrance.",0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE  $D
		.BYTE	0
		.BYTE $1F
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $20
		.BYTE $20
		.BYTE $1F
		.BYTE	1
		.BYTE  $F
		.BYTE $1F
		.BYTE $1E
		.BYTE $1E
		.BYTE	1
		.BYTE $10
		.BYTE $1E
		.BYTE $1D
		.BYTE $17
		.BYTE	1
		.BYTE  $F
		.BYTE $17
		.BYTE $1E
		.BYTE $14
		.BYTE	1
		.BYTE $10
		.BYTE $14
		.BYTE $13
		.BYTE $13
		.BYTE	1
		.BYTE $1A
		.BYTE $14
		.BYTE $1D
		.BYTE $13
		.BYTE	1
		.BYTE $14
		.BYTE $14
		.BYTE $19
		.BYTE $13
		.BYTE	1
		.BYTE	1
		.BYTE $1F
		.BYTE	9
		.BYTE $15
		.BYTE	2
		.BYTE	3
		.BYTE $15
		.BYTE	6
		.BYTE  $F
		.BYTE	2
		.BYTE $1B
		.BYTE $10
		.BYTE $20
		.BYTE	6
		.BYTE	3
		.BYTE $1D
		.BYTE	6
		.BYTE $20
		.BYTE	5
		.BYTE	3
		.BYTE	7
		.BYTE $14
		.BYTE  $B
		.BYTE $10
		.BYTE	4
		.BYTE $10
		.BYTE	8
		.BYTE $16
		.BYTE	3
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	4
		.BYTE	6
		.BYTE	1
		.BYTE $6A ; j
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	8
		.BYTE $22 ; "
		.BYTE $C0 ; ¿
		.BYTE	1
		.BYTE $89 ; â
		.BYTE	5
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE $28 ; (
		.BYTE	6
		.BYTE	1
		.BYTE $8B ; ã
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE	4
		.BYTE	6
		.BYTE	1
		.BYTE $8B ; ã
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE	6
		.BYTE	2
		.BYTE	1
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	4
		.BYTE	6
		.BYTE	1
		.BYTE $8F ; è
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	4
		.BYTE $30 ; 0
		.BYTE $E7 ; Á
		.BYTE $20
		.BYTE	6
		.BYTE $B8 ; ∏
		.BYTE $20
		.BYTE $BE ; æ
		.BYTE $D1 ; —
		.BYTE $90 ; ê
		.BYTE $D8 ; ÿ
		.BYTE $4C ; L
		.BYTE	7
		.BYTE $D2 ; “
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE  $A
		.BYTE $20
		.BYTE	6
		.BYTE $B8 ; ∏
		.BYTE $20
		.BYTE $BE ; æ
		.BYTE $D1 ; —
		.BYTE $90 ; ê
		.BYTE $F8 ; ¯
		.BYTE $4C ; L
		.BYTE	7
		.BYTE $D2 ; “
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE  $A
		.BYTE $A6 ; ¶
		.BYTE  $A
		.BYTE $20
		.BYTE $78 ; x
		.BYTE $F4 ; Ù
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $B1 ; ±
		.BYTE  $D
		.BYTE $10
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $C4 ; ƒ
		.BYTE $8A ; ä
		.BYTE $20
		.BYTE $DE ; ﬁ
		.BYTE $B9 ; π
		.BYTE $20
		.BYTE $C6 ; ∆
		.BYTE $B9 ; π
		.BYTE $20
		.BYTE	6
		.BYTE $B8 ; ∏
		.BYTE $20
		.BYTE $BE ; æ
		.BYTE $D1 ; —
		.BYTE $90 ; ê
		.BYTE $E2 ; ‚
		.BYTE $4C ; L
		.BYTE	7
		.BYTE $D2 ; “
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE  $A
		.BYTE $A9 ; ©
		.BYTE  $A
		.BYTE $85 ; Ö
		.BYTE $77 ; w
		.BYTE $20
		.BYTE	6
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE $25 ; %
		.BYTE $F2 ; Ú
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $1D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $1D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $1D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $1D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $1D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $1D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE $BD ; Ω
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE $BE ; æ
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE $E8 ; Ë
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE	3
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $29 ; )
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $29 ; )
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $29 ; )
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $29 ; )
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $29 ; )
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	3
		.BYTE $D5 ; ’
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE	2
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	3
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE  $C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $29 ; )
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $29 ; )
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $29 ; )
		.BYTE $1D
		.BYTE	0
		.BYTE  $D
		.BYTE $29 ; )
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $29 ; )
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE  $A
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	5
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $1D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1D
		.BYTE	8
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE  $B
		.BYTE $12
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $1B
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $14
		.BYTE $C1 ; ¡
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE  $F
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $29 ; )
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $14
		.BYTE $C2 ; ¬
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $29 ; )
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE $17
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $A
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE  $A
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE	1
		.BYTE $C0 ; ¿
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D5 ; ’
		.BYTE  $D
		.BYTE  $C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE $88 ; à
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE $1B
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE	5
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE $23 ; #
		.BYTE $95 ; ï
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE $23 ; #
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE $19
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE $19
		.BYTE $98 ; ò
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $5D ; ]
		.BYTE $26 ; &
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $26 ; &
		.BYTE $BB ; ª
		.BYTE $5D ; ]
		.BYTE  $D
		.BYTE $26 ; &
		.BYTE	0
		.BYTE  $D
		.BYTE $50 ; P
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $D5 ; ’
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $11
		.BYTE $11
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $10
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $EB ; Î
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $1B
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1B
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE $19
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE $23 ; #
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE $19
		.BYTE $96 ; ñ
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE $23 ; #
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $DD ; ›
		.BYTE $16
		.BYTE $A8 ; ®
		.BYTE $D0 ; –
		.BYTE $51 ; Q
		.BYTE $25 ; %
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	1
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1B
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $14
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE	9
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE  $D
		.BYTE $14
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE $16
		.BYTE $9F ; ü
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $19
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1B
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $DD ; ›
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $30 ; 0
		.BYTE $26 ; &
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE $AD ; ≠
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE $18
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $DD ; ›
		.BYTE $1F
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE $1E
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE $1D
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE $19
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $5D ; ]
		.BYTE $17
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $1B
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $1B
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1B
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $26 ; &
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE $1C
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $1C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $18
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $26 ; &
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1A
		.BYTE	0
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $17
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $17
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $17
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $19
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $1C
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $2A ; *
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $26 ; &
		.BYTE	0
		.BYTE  $D
		.BYTE $D3 ; ”
		.BYTE $19
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $17
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $17
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $17
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $1C
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $1C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $10
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $26 ; &
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $D0 ; –
		.BYTE $1E
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $35 ; 5
		.BYTE	6
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE	2
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $17
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $17
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $1C
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $1C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1C
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $DD ; ›
		.BYTE $26 ; &
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $3D ; =
		.BYTE $1E
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE  $E
		.BYTE  $C
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $D5 ; ’
		.BYTE  $F
		.BYTE  $C
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE	5
		.BYTE	5
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $ED ; Ì
		.BYTE	5
		.BYTE	5
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	2
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $D1 ; —
		.BYTE	6
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	5
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	$04
		.BYTE	$00
		.BYTE	$DD
		.BYTE	$DD
		.BYTE	$00
		.BYTE	$00
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE	2
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $5D ; ]
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE $50 ; P
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $D0 ; –
		.BYTE $27 ; '
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $11
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $1D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $1D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE $EE ; Ó
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $DD ; ›
		.BYTE $27 ; '
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $3D ; =
		.BYTE $11
		.BYTE	5
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE $A4 ; §
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $17
		.BYTE $A3 ; £
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $17
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE $A1 ; °
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $23 ; #
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	1
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $23 ; #
		.BYTE $8D ; ç
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $17
		.BYTE $8C ; å
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $17
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $23 ; #
		.BYTE $8A ; ä
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $30 ; 0
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1B
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	2
		.BYTE	0
		.BYTE	8
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	9
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D3 ; ”
		.BYTE $1B
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D5 ; ’
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $40 ; @
		.BYTE $D1 ; —
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $22 ; "
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D5 ; ’
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $12
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $12
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	5
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE  $D
		.BYTE $1D
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $CD ; Õ
		.BYTE $1D
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $10
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	5
		.BYTE $35 ; 5
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $50 ; P
		.BYTE $2B ; +
		.BYTE	4
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D1 ; —
		.BYTE $22 ; "
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $12
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $12
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE $D8 ; ÿ
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	9
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	1
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1C
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $24 ; $
		.BYTE $8E ; é
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $24 ; $
		.BYTE $A5 ; •
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $19
		.BYTE $8B ; ã
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $19
		.BYTE $A2 ; ¢
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $21 ; !
		.BYTE $89 ; â
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	5
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $31 ; 1
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $1C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1C
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $22 ; "
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $21 ; !
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE $21 ; !
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $17
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $17
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE $19
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	7
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	7
		.BYTE	0
		.BYTE	3
		.BYTE  $D
		.BYTE	7
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE	0
		.BYTE	7
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $B
		.BYTE  $D
		.BYTE	5
		.BYTE $12
		.BYTE  $B
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE  $B
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $17
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $17
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE $19
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE $1C
		.BYTE $E9 ; È
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $13
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $1D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE $1D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	5
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $19
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $13
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $13
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $25 ; %
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $D3 ; ”
		.BYTE $18
		.BYTE $60 ; `
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE $1D
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $53 ; S
		.BYTE $23 ; #
		.BYTE $60 ; `
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE $19
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $53 ; S
		.BYTE $18
		.BYTE $60 ; `
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE $1D
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $53 ; S
		.BYTE $24 ; $
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $25 ; %
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $36 ; 6
		.BYTE $28 ; (
		.BYTE $D4 ; ‘
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE	5
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE	0
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $13
		.BYTE  $C
		.BYTE	0
		.BYTE	0
		.BYTE $13
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $13
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	9
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D3 ; ”
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $DD ; ›
		.BYTE $28 ; (
		.BYTE $F9 ; ˘
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $5D ; ]
		.BYTE	7
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE $1C
		.BYTE $EA ; Í
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $13
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $DD ; ›
		.BYTE	9
		.BYTE	0
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE $25 ; %
		.BYTE $F4 ; Ù
; end of 'RAM'


		.END
