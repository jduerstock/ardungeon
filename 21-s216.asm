		.include	"macros.inc"

		;.segment RAM
;		* =  $AC00
		.BYTE	5
		.WORD aToastLev3	; "toast! LEV 3"
		HBStr	"in a "
		HBStr	"in the "
		HBStr	" of "
		HBStr	" corridor."
		HBStr	" room."
		HBStr	" Gauntlet."
		HBStr	" hallway."
		HBStr	" stairway leading up."
aToastLev3:	.BYTE "toast! LEV 3",0  ; DATA XREF: RAM:AC01^o
aByA:		.BYTE "by a"
		.BYTE $87
		.BYTE	0
aStandingBefore:.BYTE "standing before the"
		.BYTE $85
		.BYTE	0
		.BYTE $80
aNarrow:	.BYTE "narrow"
		.BYTE $84
		.BYTE	0
		.BYTE $80
aWide:		.BYTE "wide"
		.BYTE $83
		.BYTE	0
		.BYTE $80
aTwisting:	.BYTE "twisting"
		.BYTE $83
		.BYTE	0
		.BYTE $80
aBleak:		.BYTE "bleak"
		.BYTE $84
		.BYTE	0
aInAnOpenArea_:	.BYTE "in an open area.",0
		.BYTE $80
aSnaking:	.BYTE "snaking"
		.BYTE $86
		.BYTE	0
		.BYTE $80
aFilthyTunnel_:	.BYTE "filthy tunnel.",0
aInTheRoom:	.BYTE "in the room"
		.BYTE $82
aConfusion_:	.BYTE "confusion.",0
		.BYTE $80
aSquare:	.BYTE "square"
		.BYTE $84
		.BYTE	0
		.BYTE $80
aFaintlyGlowing:.BYTE "faintly glowing"
		.BYTE $84
		.BYTE	0
aInsideThe:	.BYTE "inside the"
		.BYTE $85
		.BYTE	0
aAtDeathSDoor_:	.BYTE "at Death's Door.",0
		.BYTE $80
aDamp:		.BYTE "damp"
		.BYTE $86
		.BYTE	0
aInsideAnAbando:.BYTE "inside an abandoned hideaway.",0
		.BYTE $80
aLongHall_:	.BYTE "long hall.",0
		.BYTE $80
aRoom_:		.BYTE "room.",0
		.BYTE $80
aSeeminglyPoint:.BYTE "seemingly pointless hall.",0
aAtTheWalk:	.BYTE "at the Walk"
		.BYTE $82
aArches_:	.BYTE "Arches.",0
aAtTheGreatDrag:.BYTE "at the Great Dragon's lair.",0
aAtASparklingFo:.BYTE "at a sparkling fountain.",0
		.BYTE $80
aSmall:		.BYTE "small"
		.BYTE $84
		.BYTE	0
aAtA:		.BYTE "at a"
		.BYTE $87
		.BYTE	0
aInAPassage_:	.BYTE "in a passage.",0
		.BYTE $80
aHallway_:	.BYTE "hallway.",0
aInTheHaven_:	.BYTE "in the haven.",0
aFacingAFearsom:.BYTE "facing a fearsome gargoyle.",0
		.BYTE $FF
aH_:		.BYTE "h.",0
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
aUp_:		.BYTE "up.",0
		.BYTE $87
		.BYTE $81
aDown_:		.BYTE "down.",0
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
		.BYTE  $B
		.BYTE	2
		.BYTE	6
		.BYTE	7
		.BYTE	1
		.BYTE	1
		.BYTE	7
		.BYTE  $D
		.BYTE  $B
		.BYTE  $B
		.BYTE	2
		.BYTE	8
		.BYTE  $B
		.BYTE  $B
		.BYTE  $A
		.BYTE	2
		.BYTE	8
		.BYTE  $A
		.BYTE	9
		.BYTE	9
		.BYTE	2
		.BYTE	8
		.BYTE	7
		.BYTE	9
		.BYTE	5
		.BYTE	3
		.BYTE	9
		.BYTE	3
		.BYTE  $A
		.BYTE	2
		.BYTE	3
		.BYTE	9
		.BYTE	7
		.BYTE  $B
		.BYTE	3
		.BYTE	3
		.BYTE  $B
		.BYTE	8
		.BYTE  $E
		.BYTE	2
		.BYTE	3
		.BYTE  $E
		.BYTE	6
		.BYTE  $F
		.BYTE	4
		.BYTE	3
		.BYTE  $C
		.BYTE $10
		.BYTE $10
		.BYTE  $D
		.BYTE	4
		.BYTE	2
		.BYTE  $F
		.BYTE	5
		.BYTE  $D
		.BYTE	5
		.BYTE  $B
		.BYTE	2
		.BYTE  $D
		.BYTE	0
		.BYTE	6
		.BYTE $11
		.BYTE  $E
		.BYTE $15
		.BYTE	5
		.BYTE	9
		.BYTE $19
		.BYTE $1F
		.BYTE $1C
		.BYTE $1D
		.BYTE  $B
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
		.BYTE	4
		.BYTE $80 ; �
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $86 ; �
		.BYTE	6
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE $F5 ; �
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE $34 ; 4
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $80 ; �
		.BYTE	2
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE	6
		.BYTE	2
		.BYTE	3
		.BYTE $F5 ; �
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE $1A
		.BYTE $34 ; 4
		.BYTE	2
		.BYTE	1
		.BYTE $64 ; d
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	4
		.BYTE  $E
		.BYTE $24 ; $
		.BYTE	1
		.BYTE $86 ; �
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE $24 ; $
		.BYTE $C4 ; �
		.BYTE	1
		.BYTE $87 ; �
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE  $A
		.BYTE $7A ; z
		.BYTE $7A ; z
		.BYTE	5
		.BYTE $80 ; �
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $86 ; �
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
		.BYTE $89 ; �
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE  $A
		.BYTE	4
		.BYTE	6
		.BYTE	4
		.BYTE $74 ; t
		.BYTE	0
		.BYTE $86 ; �
		.BYTE $C4 ; �
		.BYTE $CA ; �
		.BYTE $98 ; �
		.BYTE $86 ; �
		.BYTE	3
		.BYTE $A5 ; �
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE $1A
		.BYTE $1A
		.BYTE $34 ; 4
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE $D1 ; �
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE	1
		.BYTE $14
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	1
		.BYTE $14
		.BYTE	0
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE $11
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $11
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; �
		.BYTE $13
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE  $D
		.BYTE $13
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE	5
		.BYTE $13
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE  $D
		.BYTE $13
		.BYTE $60 ; `
		.BYTE $DD ; �
		.BYTE  $D
		.BYTE $13
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $D0 ; �
		.BYTE $19
		.BYTE	0
		.BYTE	1
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE	1
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE	1
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE	1
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE	1
		.BYTE	8
		.BYTE $19
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
		.BYTE $11
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $11
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $11
		.BYTE	0
		.BYTE	5
		.BYTE  $D
		.BYTE $11
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $11
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $19
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; �
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
		.BYTE $DD ; �
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE $D8 ; �
		.BYTE $D0 ; �
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $10
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $1D
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	6
		.BYTE $60 ; `
		.BYTE $5D ; ]
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE $10
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE	5
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; �
		.BYTE	8
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	3
		.BYTE	8
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	4
		.BYTE	0
		.BYTE $80 ; �
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; �
		.BYTE $30 ; 0
		.BYTE	3
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $D0 ; �
		.BYTE	1
		.BYTE	0
		.BYTE $DD ; �
		.BYTE $30 ; 0
		.BYTE $18
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	6
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $10
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE	8
		.BYTE	0
		.BYTE $D3 ; �
		.BYTE $DD ; �
		.BYTE	0
		.BYTE $F7 ; �
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE	5
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $DD ; �
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D3 ; �
		.BYTE	1
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $DD ; �
		.BYTE $18
		.BYTE	5
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	6
		.BYTE	0
		.BYTE $50 ; P
		.BYTE  $D
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $10
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE $10
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	8
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	8
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE	8
		.BYTE $B8 ; �
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
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
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE $60 ; `
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; �
		.BYTE  $E
		.BYTE $19
		.BYTE $DD ; �
		.BYTE	0
		.BYTE  $E
		.BYTE $19
		.BYTE $10
		.BYTE $DD ; �
		.BYTE	2
		.BYTE $C6 ; �
		.BYTE $8D ; �
		.BYTE $1D
		.BYTE	2
		.BYTE $20
		.BYTE  $D
		.BYTE $DD ; �
		.BYTE  $D
		.BYTE $99 ; �
		.BYTE $DD ; �
		.BYTE	3
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; �
		.BYTE	9
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE	9
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
		.BYTE  $E
		.BYTE $19
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE  $E
		.BYTE $19
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE	0
		.BYTE $DD ; �
		.BYTE  $D
		.BYTE  $D
		.BYTE $9E ; �
		.BYTE $DD ; �
		.BYTE $DD ; �
		.BYTE  $D
		.BYTE	0
		.BYTE $DD ; �
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE $9A ; �
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE $D0 ; �
		.BYTE	4
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $1D
		.BYTE	4
		.BYTE $C5 ; �
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE	9
		.BYTE $40 ; @
		.BYTE  $D
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; �
		.BYTE $12
		.BYTE	0
		.BYTE  $D
		.BYTE	0
		.BYTE $12
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE $12
		.BYTE	0
		.BYTE $D3 ; �
		.BYTE $DD ; �
		.BYTE  $D
		.BYTE $9D ; �
		.BYTE $DD ; �
		.BYTE $3D ; =
		.BYTE  $D
		.BYTE $9C ; �
		.BYTE $D0 ; �
		.BYTE $D3 ; �
		.BYTE  $D
		.BYTE $20
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; �
		.BYTE	4
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $DD ; �
		.BYTE $5D ; ]
		.BYTE $1C
		.BYTE  $E
		.BYTE  $D
		.BYTE $D0 ; �
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
		.BYTE $12
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $12
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE $12
		.BYTE	0
		.BYTE $DD ; �
		.BYTE $DD ; �
		.BYTE  $D
		.BYTE	0
		.BYTE	3
		.BYTE $DD ; �
		.BYTE  $D
		.BYTE $20
		.BYTE $DD ; �
		.BYTE  $D
		.BYTE  $D
		.BYTE $9B ; �
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; �
		.BYTE  $B
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE  $B
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; �
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; �
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE	9
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; �
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE	3
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE	4
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $35 ; 5
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
		.BYTE  $B
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE  $B
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	0
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; �
		.BYTE	9
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE	9
		.BYTE $D1 ; �
		.BYTE $30 ; 0
		.BYTE $D0 ; �
		.BYTE $1A
		.BYTE	0
		.BYTE $DD ; �
		.BYTE $3D ; =
		.BYTE $17
		.BYTE $AC ; �
		.BYTE	3
		.BYTE $DD ; �
		.BYTE	3
		.BYTE	0
		.BYTE $DD ; �
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $53 ; S
		.BYTE $D0 ; �
		.BYTE $19
		.BYTE	0
		.BYTE  $D
		.BYTE $5D ; ]
		.BYTE $19
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE $D5 ; �
		.BYTE  $D
		.BYTE $19
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE $D0 ; �
		.BYTE $15
		.BYTE $18
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE $18
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE $18
		.BYTE $DD ; �
		.BYTE	0
		.BYTE $15
		.BYTE $18
		.BYTE $D0 ; �
		.BYTE $DD ; �
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE	9
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $1A
		.BYTE	0
		.BYTE $DD ; �
		.BYTE $DD ; �
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE $D3 ; �
		.BYTE	3
		.BYTE	0
		.BYTE $DD ; �
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $19
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; �
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE  $F
		.BYTE $87 ; �
		.BYTE $D3 ; �
		.BYTE	3
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $15
		.BYTE $18
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $18
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $18
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $15
		.BYTE $18
		.BYTE  $D
		.BYTE $3D ; =
		.BYTE	9
		.BYTE	0
		.BYTE $50 ; P
		.BYTE  $D
		.BYTE	9
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; �
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE	5
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE	3
		.BYTE	9
		.BYTE $1A
		.BYTE	0
		.BYTE  $D
		.BYTE  $D
		.BYTE $1A
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $D0 ; �
		.BYTE  $F
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; �
		.BYTE $16
		.BYTE	3
		.BYTE $D3 ; �
		.BYTE	0
		.BYTE $16
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
		.BYTE $15
		.BYTE $18
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE $18
		.BYTE	0
		.BYTE  $D
		.BYTE $15
		.BYTE $18
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE $15
		.BYTE $18
		.BYTE  $D
		.BYTE $DD ; �
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
		.BYTE  $D
		.BYTE	0
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $DD ; �
		.BYTE $18
		.BYTE	5
		.BYTE $D5 ; �
		.BYTE $3D ; =
		.BYTE	1
		.BYTE	0
		.BYTE $D3 ; �
		.BYTE $DD ; �
		.BYTE $17
		.BYTE	0
		.BYTE  $D
		.BYTE $DD ; �
		.BYTE	3
		.BYTE $A9 ; �
		.BYTE $D3 ; �
		.BYTE  $D
		.BYTE	3
		.BYTE	0
		.BYTE $5D ; ]
		.BYTE $DD ; �
		.BYTE  $B
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $5D ; ]
		.BYTE $19
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE $3D ; =
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
		.BYTE $16
		.BYTE	3
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE $16
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE $D0 ; �
		.BYTE  $A
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; �
		.BYTE $12
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $12
		.BYTE	0
		.BYTE  $D
		.BYTE $A0 ; �
		.BYTE  $A
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE  $A
		.BYTE $B4 ; �
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; �
		.BYTE  $A
		.BYTE	0
		.BYTE $A0 ; �
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $3D ; =
		.BYTE $12
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	5
		.BYTE $12
		.BYTE	0
		.BYTE	0
		.BYTE $D3 ; �
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; �
		.BYTE  $A
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; �
		.BYTE  $C
		.BYTE	0
		.BYTE $D5 ; �
		.BYTE  $D
		.BYTE  $C
		.BYTE	0
		.BYTE	3
		.BYTE $D0 ; �
		.BYTE  $A
		.BYTE	0
		.BYTE $DD ; �
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	3
		.BYTE  $A
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $DD ; �
		.BYTE  $C
		.BYTE	0
		.BYTE $DD ; �
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $F8 ; �
		.BYTE	0
		.BYTE $DD ; �
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE	3
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE $D0 ; �
		.BYTE  $A
		.BYTE	0
		.BYTE $D3 ; �
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE $D0 ; �
		.BYTE  $A
		.BYTE	0
		.BYTE $3D ; =
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE  $D
		.BYTE $30 ; 0
		.BYTE  $A
		.BYTE	0
		.BYTE $D3 ; �
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
		.BYTE  $A
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $3D ; =
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $DD ; �
		.BYTE  $A
		.BYTE	0
		.BYTE $D0 ; �
		.BYTE  $D
		.BYTE  $A
		.RES	1385,$00
; end of 'RAM'


		.END
