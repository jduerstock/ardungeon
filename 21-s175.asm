
;		* =  $AC00
		.BYTE	4
		.WORD aToastLev2	; "toast! LEV 2"
aByA:		.BYTE "by a"
		.BYTE $A0
aStairwayLeadin:.BYTE "stairway leading"
		.BYTE $A0
aInAn:		.BYTE "in an"
		.BYTE $A0
aInA:		.BYTE "in a"
		.BYTE $A0
aInThe:		.BYTE "in the"
		.BYTE $A0
aRoom:		.BYTE " room"
		.BYTE $AE
aCorridor:	.BYTE "corridor"
		.BYTE $AE
aAtA:		.BYTE "at a"
		.BYTE $A0
aHal:		.BYTE " hal"
		.BYTE $EC
aToastLev2:	.BYTE "toast! LEV 2",0  ; DATA XREF: RAM:AC01o
		.BYTE $80
		.BYTE $81
aDown_:		.BYTE "down.",0
		.BYTE $80
		.BYTE $81
aUp_:		.BYTE "up.",0
		.BYTE $82
aEmpty:		.BYTE "empty"
		.BYTE $85
		.BYTE	0
		.BYTE $83
aDusty:		.BYTE "dusty"
		.BYTE $85
		.BYTE	0
		.BYTE $83
aLong:		.BYTE "long"
		.BYTE $88
aWay_:		.BYTE "way.",0
		.BYTE $83
aSmall:		.BYTE "small"
		.BYTE $85
		.BYTE	0
		.BYTE $83
aStrange:	.BYTE "strange "
		.BYTE $86
		.BYTE	0
		.BYTE $83
aLargeChilly:	.BYTE "large, chilly"
		.BYTE $85
		.BYTE	0
		.BYTE $82
aOldStorage:	.BYTE "old storage"
		.BYTE $85
		.BYTE	0
		.BYTE $84
aCrystalCaverns:.BYTE "Crystal Caverns.",0
		.BYTE $84
aHallOfMirrors_:.BYTE "Hall of Mirrors.",0
aInMordredSMaze:.BYTE "in Mordred's maze.",0
		.BYTE $82
aAbandonedGuard:.BYTE "abandoned guard"
		.BYTE $85
		.BYTE	0
		.BYTE $82
aOldLootedCrypt:.BYTE "old, looted crypt.",0
		.BYTE $83
		.BYTE $86
		.BYTE	0
		.BYTE $87
aRiverCrossing_:.BYTE "river crossing.",0
aByAnArenaPit_:	.BYTE "by an Arena pit.",0
		.BYTE $84
aClothesHorseS:	.BYTE "Clothes Horse's"
		.BYTE $85
		.BYTE	0
aAtTheDwarvenSm:.BYTE "at the Dwarven smithy.",0
		.BYTE $87
aCrystalClearFo:.BYTE "crystal clear fountain.",0
		.BYTE $83
aDank:		.BYTE "dank"
		.BYTE $88
a_:		.BYTE ".",0
		.BYTE $83
aDamp:		.BYTE "damp"
		.BYTE $88
a__0:		.BYTE ".",0
aAtLuckySPotion:.BYTE "at Lucky's potion brewery.",0
aAtTheUndeadKin:.BYTE "at the Undead King's Palace.",0
		.BYTE $83
aMusty:		.BYTE "musty"
		.BYTE $85
		.BYTE	0
		.BYTE $83
aLarge:		.BYTE "large"
		.BYTE $85
		.BYTE	0
		.BYTE $84
aUndeadRegions_:.BYTE "Undead Regions.",0
		.BYTE $83
aFoulSmellingPa:.BYTE "foul-smelling passage.",0
		.BYTE $84
aRoomOfDeath_:	.BYTE "Room of Death.",0
		.BYTE $84
aUndeadKingSCry:.BYTE "Undead King's crypt.",0
		.BYTE $84
aHallOfTheAdept:.BYTE "Hall of the Adept.",0
aNearTheRiverSt:.BYTE "near the river Stonz.",0
		.BYTE $83
aBlisteringHotP:.BYTE "blistering hot passage.",0
aOnASlipperySto:.BYTE "on a slippery stone floor.",0
		.BYTE $83
aHallWithoutDoo:.BYTE "hall without doors.",0
aWalkingOnThinI:.BYTE "walking on thin ice.",0
		.BYTE $83
aSecret:	.BYTE "secret"
		.BYTE $85
		.BYTE	0
aByARiverCrossi:.BYTE "by a river crossing.",0
		.BYTE $87
		.BYTE $81
aUp__0:		.BYTE "up.",0
		.BYTE $87
		.BYTE $81
aDown__0:	.BYTE "down.",0
		.BYTE $84
aPaladinsGuild_:.BYTE "Paladins' Guild.",0
		.BYTE $84
aMercenariesGui:.BYTE "Mercenaries' Guild.",0
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
		.BYTE  $C
		.BYTE	4
		.BYTE  $D
		.BYTE  $C
		.BYTE	6
		.BYTE	1
		.BYTE  $C
		.BYTE	9
		.BYTE  $F
		.BYTE	6
		.BYTE	1
		.BYTE $14
		.BYTE $20
		.BYTE $20
		.BYTE $11
		.BYTE	2
		.BYTE $19
		.BYTE $11
		.BYTE $20
		.BYTE  $D
		.BYTE	2
		.BYTE $15
		.BYTE  $A
		.BYTE $1D
		.BYTE	2
		.BYTE	3
		.BYTE $15
		.BYTE  $C
		.BYTE $17
		.BYTE  $A
		.BYTE	3
		.BYTE $1D
		.BYTE	9
		.BYTE $1F
		.BYTE	3
		.BYTE	3
		.BYTE	5
		.BYTE $1E
		.BYTE  $D
		.BYTE $18
		.BYTE	4
		.BYTE	0
		.BYTE	9
		.BYTE	1
		.BYTE	4
		.BYTE	5
		.BYTE  $A
		.BYTE	5
		.BYTE  $C
		.BYTE	3
		.BYTE	6
		.BYTE  $F
		.BYTE $1F
		.BYTE $11
		.BYTE $1B
		.BYTE	7
		.BYTE  $E
		.BYTE $1D
		.BYTE  $F
		.BYTE $1C
		.BYTE	8
		.BYTE $11
		.BYTE  $E
		.BYTE $15
		.BYTE	5
		.BYTE	9
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
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $A
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	2
		.BYTE $4C ; L
		.BYTE	0
		.BYTE  $E
		.BYTE $7A ; z
		.BYTE $86 ; Ü
		.BYTE  $E
		.BYTE $8E ; é
		.BYTE	5
		.BYTE $71 ; q
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $24 ; $
		.BYTE $1A
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE $6D ; m
		.BYTE	0
		.BYTE $90 ; ê
		.BYTE $72 ; r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $70 ; p
		.BYTE	0
		.BYTE $7A ; z
		.BYTE $1A
		.BYTE  $E
		.BYTE $28 ; (
		.BYTE  $A
		.BYTE	1
		.BYTE $9A ; ö
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE	4
		.BYTE $34 ; 4
		.BYTE	1
		.BYTE $78 ; x
		.BYTE	0
		.BYTE $1E
		.BYTE $C4 ; ƒ
		.BYTE $F8 ; ¯
		.BYTE $92 ; í
		.BYTE $32 ; 2
		.BYTE	5
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $86 ; Ü
		.BYTE $1A
		.BYTE $34 ; 4
		.BYTE $54 ; T
		.BYTE	5
		.BYTE $45 ; E
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $34 ; 4
		.BYTE $54 ; T
		.BYTE	1
		.BYTE $89 ; â
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE  $A
		.BYTE	4
		.BYTE	6
		.BYTE	4
		.BYTE $74 ; t
		.BYTE	0
		.BYTE $86 ; Ü
		.BYTE $C4 ; ƒ
		.BYTE $CA ;  
		.BYTE $98 ; ò
		.BYTE $86 ; Ü
		.BYTE	3
		.BYTE $A5 ; •
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE $1A
		.BYTE $1A
		.BYTE $34 ; 4
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $8D ; ç
		.BYTE $8D ; ç
		.BYTE $C7 ; «
		.BYTE $CC ; Ã
		.BYTE $CF ; œ
		.BYTE $C2 ; ¬
		.BYTE $1D
		.BYTE $D3 ; ”
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE $1D
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D9 ; Ÿ
		.BYTE $11
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $D9 ; Ÿ
		.BYTE $11
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $D9 ; Ÿ
		.BYTE $11
		.BYTE $64 ; d
		.BYTE $DD ; ›
		.BYTE $D9 ; Ÿ
		.BYTE $11
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $D9 ; Ÿ
		.BYTE $11
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	6
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	6
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	6
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	4
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $8D ; ç
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $5D ; ]
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE  $D
		.BYTE $50 ; P
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $F
		.BYTE $20
		.BYTE $3D ; =
		.BYTE $D0 ; –
		.BYTE	2
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $30 ; 0
		.BYTE $27 ; '
		.BYTE	5
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE $27 ; '
		.BYTE	5
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $27 ; '
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	9
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE $20
		.BYTE	9
		.BYTE  $D
		.BYTE  $F
		.BYTE $20
		.BYTE	9
		.BYTE  $D
		.BYTE  $F
		.BYTE $20
		.BYTE	9
		.BYTE  $D
		.BYTE  $F
		.BYTE $20
		.BYTE $C9 ; …
		.BYTE	0
		.BYTE  $F
		.BYTE $20
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	3
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	3
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	3
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	3
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE  $E
		.BYTE $8F ; è
		.BYTE  $D
		.BYTE	0
		.BYTE  $E
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $E
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	8
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D1 ; —
		.BYTE	2
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $27 ; '
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D3 ; ”
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE	5
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	5
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D3 ; ”
		.BYTE  $F
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $E
		.BYTE $40 ; @
		.BYTE	0
		.BYTE  $D
		.BYTE  $E
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $E
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $10
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE $20
		.BYTE	0
		.BYTE $10
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE $90 ; ê
		.BYTE $10
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE $10
		.BYTE  $F
		.BYTE $20
		.BYTE	1
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	5
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE	5
		.BYTE $20
		.BYTE	3
		.BYTE  $D
		.BYTE	5
		.BYTE $20
		.BYTE	3
		.BYTE  $D
		.BYTE	5
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE $20
		.BYTE	3
		.BYTE  $D
		.BYTE	5
		.BYTE $20
		.BYTE  $D
		.BYTE	3
		.BYTE	5
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE	5
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	5
		.BYTE $20
		.BYTE	0
		.BYTE $DC ; ‹
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	8
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	8
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $15
		.BYTE $D0 ; –
		.BYTE $EE ; Ó
		.BYTE $42 ; B
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $2E ; .
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $2E ; .
		.BYTE $2E ; .
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E4 ; ‰
		.BYTE $22 ; "
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $2E ; .
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $2E ; .
		.BYTE $2E ; .
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $EE ; Ó
		.BYTE $22 ; "
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE $20
		.BYTE  $C
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $F
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
		.BYTE $20
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	9
		.BYTE $40 ; @
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $29 ; )
		.BYTE $4C ; L
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $EE ; Ó
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $22 ; "
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $EE ; Ó
		.BYTE $2E ; .
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
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
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $16
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $5D ; ]
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE  $D
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE	5
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $5D ; ]
		.BYTE  $D
		.BYTE  $B
		.BYTE $93 ; ì
		.BYTE $DD ; ›
		.BYTE $50 ; P
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	9
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	9
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $22 ; "
		.BYTE $EE ; Ó
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $2E ; .
		.BYTE $2E ; .
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $22 ; "
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $13
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $13
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $13
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $5D ; ]
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $20
		.BYTE  $D
		.BYTE $5D ; ]
		.BYTE  $B
		.BYTE $20
		.BYTE $D5 ; ’
		.BYTE  $D
		.BYTE  $B
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE $20
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
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $22 ; "
		.BYTE $EE ; Ó
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $22 ; "
		.BYTE $26 ; &
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $22 ; "
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $EE ; Ó
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $EE ; Ó
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE $C3 ; √
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $13
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $13
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $13
		.BYTE $15
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE $16
		.BYTE $C3 ; √
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $20
		.BYTE  $D
		.BYTE	5
		.BYTE  $B
		.BYTE $60 ; `
		.BYTE $5D ; ]
		.BYTE  $D
		.BYTE  $B
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $50 ; P
		.BYTE  $B
		.BYTE $20
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE	6
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $2E ; .
		.BYTE $EE ; Ó
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $2E ; .
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $66 ; f
		.BYTE $66 ; f
		.BYTE $24 ; $
		.BYTE $A7 ; ß
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $13
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $13
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $13
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D5 ; ’
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $20
		.BYTE	5
		.BYTE $D0 ; –
		.BYTE $12
		.BYTE $14
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $12
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D5 ; ’
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE	9
		.BYTE $15
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $2E ; .
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $2E ; .
		.BYTE $2E ; .
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $2E ; .
		.BYTE $22 ; "
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $2E ; .
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $22 ; "
		.BYTE $EE ; Ó
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $22 ; "
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
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
		.BYTE  $D
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $16
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $12
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $12
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $20
		.BYTE $D5 ; ’
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE  $D
		.BYTE $80 ; Ä
		.BYTE $19
		.BYTE $60 ; `
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE $19
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $A0 ; †
		.BYTE $15
		.BYTE $20
		.BYTE $22 ; "
		.BYTE $EE ; Ó
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $EE ; Ó
		.BYTE $22 ; "
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $2E ; .
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $EE ; Ó
		.BYTE $22 ; "
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $22 ; "
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $22 ; "
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE  $D
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
		.BYTE	0
		.BYTE	0
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
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $20
		.BYTE  $D
		.BYTE $5D ; ]
		.BYTE  $B
		.BYTE $60 ; `
		.BYTE $5D ; ]
		.BYTE  $D
		.BYTE  $B
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $50 ; P
		.BYTE  $B
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $19
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $19
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE $2E ; .
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $22 ; "
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $22 ; "
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $24 ; $
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $22 ; "
		.BYTE $EE ; Ó
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $2E ; .
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $42 ; B
		.BYTE $EE ; Ó
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE	5
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $D0 ; –
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE $20
		.BYTE	0
		.BYTE  $D
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
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE  $B
		.BYTE $20
		.BYTE  $D
		.BYTE $D5 ; ’
		.BYTE  $B
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE  $B
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE  $B
		.BYTE $20
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE	6
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE $15
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE $20
		.BYTE	5
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $16
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $16
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $16
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $16
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE $D1 ; —
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $3D ; =
		.BYTE $28 ; (
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $DD ; ›
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $5D ; ]
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE	5
		.BYTE  $D
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE  $D
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE $5D ; ]
		.BYTE  $D
		.BYTE  $B
		.BYTE $93 ; ì
		.BYTE $D0 ; –
		.BYTE $5D ; ]
		.BYTE  $B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $15
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E2 ; ‚
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $16
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $16
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $16
		.BYTE $20
		.BYTE $5D ; ]
		.BYTE $3D ; =
		.BYTE	6
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $16
		.BYTE $20
		.BYTE	1
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $16
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $16
		.BYTE $60 ; `
		.BYTE	0
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
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE	6
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE $E2 ; ‚
		.BYTE $4E ; N
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $E2 ; ‚
		.BYTE $E6 ; Ê
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $42 ; B
		.BYTE $EE ; Ó
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE $16
		.BYTE $20
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $19
		.BYTE $40 ; @
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $19
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $16
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $16
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE $20
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE $20
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE $20
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $1A
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $15
		.BYTE $CE ; Œ
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE $50 ; P
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $50 ; P
		.BYTE $1F
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE	3
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE	3
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE $20
		.BYTE $5D ; ]
		.BYTE  $D
		.BYTE $15
		.BYTE $20
		.BYTE $53 ; S
		.BYTE $5D ; ]
		.BYTE	6
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $5D ; ]
		.BYTE $16
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE $16
		.BYTE $20
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $19
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $19
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $16
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	5
		.BYTE $16
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $1A
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1A
		.BYTE $20
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $14
		.BYTE $20
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE $14
		.BYTE $23 ; #
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1F
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	0
		.BYTE $1F
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE	0
		.BYTE $1F
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1F
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	3
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE	3
		.BYTE $30 ; 0
		.BYTE	7
		.BYTE $20
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE	7
		.BYTE $20
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE $20
		.BYTE $5D ; ]
		.BYTE  $D
		.BYTE  $F
		.BYTE $20
		.BYTE $53 ; S
		.BYTE $53 ; S
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $5D ; ]
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1A
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE $11
		.BYTE $11
		.BYTE	6
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $10
		.BYTE $16
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $16
		.BYTE $CE ; Œ
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $14
		.BYTE $23 ; #
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $14
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1F
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	3
		.BYTE $1F
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $1F
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1F
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE	9
		.BYTE $AA ; ™
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	7
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	7
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1A
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $1A
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1A
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $1A
		.BYTE $20
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE $1A
		.BYTE $20
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE	1
		.BYTE	0
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
		.BYTE  $D
		.BYTE	0
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $16
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE	0
		.BYTE  $A
		.BYTE	1
		.BYTE $15
		.BYTE	0
		.BYTE  $D
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
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	7
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	7
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE $20
		.BYTE $5D ; ]
		.BYTE $30 ; 0
		.BYTE	4
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $50 ; P
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $19
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $19
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1A
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE	3
		.BYTE	0
		.BYTE  $D
		.BYTE $3D ; =
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
		.BYTE	0
		.BYTE  $D
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
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $D1 ; —
		.BYTE $53 ; S
		.BYTE $26 ; &
		.BYTE $D6 ; ÷
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
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE	7
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE	7
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	7
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE  $F
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $3D ; =
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $19
		.BYTE $60 ; `
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE $2A ; *
		.BYTE $2C ; ,
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $1A
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1A
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $D3 ; ”
		.BYTE $10
		.BYTE $13
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
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE $20
		.BYTE  $D
		.BYTE $5D ; ]
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE	3
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE  $F
		.BYTE $20
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE $1A
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $1A
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D1 ; —
		.BYTE $26 ; &
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
		.BYTE	7
		.BYTE $20
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE	7
		.BYTE $20
		.BYTE $33 ; 3
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE  $C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE $20
		.BYTE  $D
		.BYTE $50 ; P
		.BYTE $19
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE $82 ; Ç
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE $81 ; Å
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE $80 ; Ä
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $51 ; Q
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $5D ; ]
		.BYTE $1C
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE  $D
		.BYTE $1C
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1C
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	7
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE $D5 ; ’
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $D3 ; ”
		.BYTE  $C
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $19
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $16
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $20
		.BYTE $3D ; =
		.BYTE	0
		.BYTE	3
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE	5
		.BYTE  $D
		.BYTE $1B
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE	0
		.BYTE $1B
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1B
		.BYTE $20
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	9
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	9
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1C
		.BYTE $20
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE	7
		.BYTE $20
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE  $C
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $D3 ; ”
		.BYTE  $C
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE	5
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE $83 ; É
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	3
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE  $D
		.BYTE $15
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $15
		.BYTE $40 ; @
		.BYTE $90 ; ê
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	9
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	9
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1C
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	7
		.BYTE $20
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE  $C
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $D5 ; ’
		.BYTE  $C
		.BYTE $C4 ; ƒ
		.BYTE $DD ; ›
		.BYTE $53 ; S
		.BYTE  $C
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $5D ; ]
		.BYTE  $C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $20
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $FB ; ˚
		.BYTE $D0 ; –
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE $20
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $15
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1B
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $15
		.BYTE $40 ; @
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE	6
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	6
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1C
		.BYTE $20
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE	7
		.BYTE $20
		.BYTE $85 ; Ö
		.BYTE $D5 ; ’
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $53 ; S
		.BYTE $83 ; É
		.BYTE  $C
		.BYTE $20
		.BYTE $D3 ; ”
		.BYTE $5D ; ]
		.BYTE  $C
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $17
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE $17
		.BYTE $16
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE  $C
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $D5 ; ’
		.BYTE  $C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D3 ; ”
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $D3 ; ”
		.BYTE $20
		.BYTE $86 ; Ü
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE $20
		.BYTE $85 ; Ö
		.BYTE  $D
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $20
		.BYTE $84 ; Ñ
		.BYTE $D0 ; –
		.BYTE $D3 ; ”
		.BYTE	3
		.BYTE $20
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE  $E
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	0
		.BYTE	5
		.BYTE $D0 ; –
		.BYTE $1E
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $1E
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE  $E
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $E
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D3 ; ”
		.BYTE $15
		.BYTE $60 ; `
		.BYTE $A0 ; †
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE	6
		.BYTE $40 ; @
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE	6
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE $1C
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	7
		.BYTE $20
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE  $C
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $17
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $17
		.BYTE	0
		.BYTE $9D ; ù
		.BYTE $D3 ; ”
		.BYTE  $C
		.BYTE	0
		.BYTE $35 ; 5
		.BYTE $95 ; ï
		.BYTE  $C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $18
		.BYTE $57 ; W
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE $18
		.BYTE $57 ; W
		.BYTE	5
		.BYTE $D0 ; –
		.BYTE $25 ; %
		.BYTE $AD ; ≠
		.BYTE  $D
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $25 ; %
		.BYTE $40 ; @
		.BYTE $D3 ; ”
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $20
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE $AB ; ´
		.BYTE $D0 ; –
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	0
		.BYTE	0
		.BYTE $D8 ; ÿ
		.BYTE $1E
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1E
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $D9 ; Ÿ
		.BYTE  $E
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $E
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE $20
		.BYTE	3
		.BYTE  $D
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE	6
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	6
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1C
		.BYTE $20
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE	7
		.BYTE $20
		.BYTE $35 ; 5
		.BYTE $D5 ; ’
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $30 ; 0
		.BYTE  $C
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE  $C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $50 ; P
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $18
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $18
		.BYTE $57 ; W
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $25 ; %
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE  $E
		.BYTE $40 ; @
		.BYTE $3D ; =
		.BYTE	0
		.BYTE  $E
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE $20
		.BYTE  $D
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE  $D
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE	8
		.BYTE  $D
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE	0
		.BYTE $1B
		.BYTE $20
		.BYTE	9
		.BYTE  $D
		.BYTE $1B
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE $20
		.BYTE $50 ; P
		.BYTE	3
		.BYTE $1B
		.BYTE $20
		.BYTE  $D
		.BYTE $53 ; S
		.BYTE $1C
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1C
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $1C
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE  $E
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE  $E
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1C
		.BYTE $20
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	7
		.BYTE $20
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	7
		.BYTE $20
		.BYTE $D5 ; ’
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE  $C
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE $20
		.BYTE $3D ; =
		.BYTE $D3 ; ”
		.BYTE  $C
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $33 ; 3
		.BYTE  $C
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE  $C
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE  $C
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $5D ; ]
		.BYTE  $C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $20
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1D
		.BYTE $60 ; `
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $1D
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE  $E
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $E
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE $20
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $1B
		.BYTE	0
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE	9
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1C
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $E
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE  $E
		.BYTE $20
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1C
		.BYTE $20
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	7
		.BYTE $20
		.BYTE $3D ; =
		.BYTE	0
		.BYTE	7
		.BYTE $20
		.BYTE $5D ; ]
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $5D ; ]
		.BYTE  $C
		.BYTE $20
		.BYTE $D3 ; ”
		.BYTE $AD ; ≠
		.BYTE  $C
		.BYTE $20
		.BYTE $33 ; 3
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE $20
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $5D ; ]
		.BYTE $3D ; =
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $D3 ; ”
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1D
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $1D
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE $33 ; 3
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE $60 ; `
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE	4
		.BYTE $60 ; `
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE	9
		.BYTE $60 ; `
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE	6
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE $33 ; 3
		.BYTE	4
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1C
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE	0
		.BYTE $1C
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $5D ; ]
		.BYTE $1C
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1C
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $27 ; '
		.BYTE	0
		.BYTE $1D
		.BYTE $D0 ; –
		.BYTE	2
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $10
		.BYTE	7
		.BYTE $20
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $53 ; S
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $3D ; =
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $5D ; ]
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE $D3 ; ”
		.BYTE $30 ; 0
		.BYTE	7
		.BYTE $40 ; @
		.BYTE	5
		.BYTE $1D
		.BYTE	7
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE	3
		.BYTE	7
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE  $D
		.BYTE	7
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE $10
		.BYTE	9
		.BYTE $60 ; `
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	9
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE $3D ; =
		.BYTE $D3 ; ”
		.BYTE  $E
		.BYTE $60 ; `
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE	6
		.BYTE $60 ; `
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE	4
		.BYTE $60 ; `
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE	6
		.BYTE $60 ; `
		.BYTE $D3 ; ”
		.BYTE $3D ; =
		.BYTE	4
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE $30 ; 0
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D3 ; ”
		.BYTE	4
		.BYTE	0
		.BYTE	3
		.BYTE $DD ; ›
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	0
		.BYTE $10
		.BYTE $D0 ; –
		.BYTE $1C
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $10
		.BYTE	2
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $D0 ; –
		.BYTE $27 ; '
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $DD ; ›
		.BYTE $27 ; '
		.BYTE	5
		.BYTE $D0 ; –
		.BYTE $3D ; =
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	7
		.BYTE $20
		.BYTE	3
		.BYTE  $D
		.BYTE	7
		.BYTE $20
		.BYTE	3
		.BYTE  $D
		.BYTE	7
		.BYTE $20
		.BYTE	3
		.BYTE  $D
		.BYTE	7
		.BYTE $40 ; @
		.BYTE	3
		.BYTE  $D
		.BYTE	7
		.BYTE $40 ; @
		.BYTE	3
		.BYTE  $D
		.BYTE	7
		.BYTE $40 ; @
		.BYTE	3
		.BYTE  $D
		.BYTE	7
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	7
		.BYTE $40 ; @
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE $20
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE $DD ; ›
		.BYTE	7
		.BYTE	4
		.BYTE $DD ; ›
		.BYTE $DD ; ›
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE	9
		.BYTE $60 ; `
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE	9
		.BYTE $60 ; `
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE	3
		.BYTE  $D
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE  $D
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $DD ; ›
		.BYTE $1C
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE  $D
		.BYTE $1C
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1C
		.BYTE $60 ; `
		.BYTE	8
		.BYTE  $D
		.BYTE $1C
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE  $D
		.BYTE $1C
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE  $D
		.BYTE $1C
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1C
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE  $D
		.BYTE $1C
		.BYTE $60 ; `
		.BYTE $30 ; 0
		.BYTE $DD ; ›
		.BYTE	2
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $3D ; =
		.BYTE $27 ; '
		.BYTE	5
; end of 'RAM'


		.END
