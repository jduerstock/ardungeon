.macro	DirEnt	Extra1,Disk,Side,Sector,Extra2,Length
	.ifblank Extra1
	.DBYT	Sector | ((Disk-1)<<11) | ((Side-1)<<10)
	.else
	.DBYT	Extra1 | Sector | ((Disk-1)<<11) | ((Side-1)<<10)
	.endif
	.ifblank Extra2
	.DBYT	Length
	.else
	.DBYT	Extra2 | Length
	.endif
.endmacro

	DirEnt	,3,1,7,$300,4		; ???
	DirEnt	$4000,2,1,10,,20	; map 1
	DirEnt	$4000,2,1,51,,20	; map 2
	DirEnt	$4000,2,1,92,,20	; map 3
	DirEnt	$4000,2,1,133,,20	; map 4
	DirEnt	$4000,2,1,174,,20	; map 5
	DirEnt	$4000,2,1,215,,20	; map 6
	DirEnt	$4000,2,1,256,,20	; map 7
	DirEnt	$4000,2,1,297,$1000,21	; picture 1
	DirEnt	$4000,2,1,341,$1000,21	; picture 2
	DirEnt	$4000,2,1,385,$1000,21	; picture 3
	DirEnt	$4000,2,1,429,$1000,21	; picture 4
	DirEnt	$4000,2,1,473,$1000,21	; picture 5
	DirEnt	$4000,2,1,517,$1000,21	; picture 6
	.DBYT	$4021,112		; ???
	.DBYT	$4a31,5			; unknown 1
	.DBYT	$4a3c,$f000 | 32	; ???
	.DBYT	$5001,56		; combat
	.DBYT	$5072,42		; items
	.DBYT	$4c01,17		; fountain
	.DBYT	$4a7f,6			; ???
	.DBYT	$4a8c,22		; ???
	.DBYT	$5401,16		; vault
	.DBYT	$5422,28		; goblin/troll
	.DBYT	$545b,17		; acrinimiril's tomb
	.DBYT	$4102,26		; ???
	.DBYT	$4c24,28		; ???
	.DBYT	$547e,28		; ozob
	.DBYT	$54b7,39		; guild
	.DBYT	$5506,32		; shop
	.DBYT	$4c5d,20		; ???
	.DBYT	$50c7,18		; inn
	.DBYT	$5547,27		; oracle
	.DBYT	$557e,24		; enchantress
	.DBYT	$4137,32		; ???
	.DBYT	$4c86,16		; ferryman
	.DBYT	$4ca7,15		; horse
	.DBYT	$4cc6,32		; smithy
	.DBYT	$4d07,34		; brewery
	.DBYT	$4d4c,16		; crypt
	.DBYT	$4d6d,21		; dragon
	.DBYT	$4d98,11		; ??? (death's door?)
	.DBYT	$4178,37		; ???
	.DBYT	$4daf,31		; machine room
	.DBYT	$4dee,7			; elevator
	.DBYT	$55af,31		; tavern
	.DBYT	$50ec,176		; ???
	.DBYT	$41c3,7			; ???
	.DBYT	$4dfd,4			; unknown 2
	.DBYT	$41d2,6			; ???
	.DBYT	$4e06,$8000 | 8		; unknown 3
	.DBYT	$55ee,$8000 | 7		; picture 7
	.DBYT	$55fe,$8000 | 7		; picture 8
	.DBYT	$524d,$0000 | 7		; dead song
	.DBYT	$41df,0			; ???
	.DBYT	$560e,13		; tavern monster song
	.DBYT	$5629,6			; devourer song
	.DBYT	$5636,4			; unknown song
	.DBYT	$563f,23		; tavern talk
	.DBYT	$41e0,18		; ???
	.DBYT	$4205,79		; portal 2
	.DBYT	$42a4,1			; ???
	.DBYT	$42a7,1			; ???
	.DBYT	$525c,$f000 | 32	; location names
	.DBYT	$566e,16		; lost song
	.DBYT	$568f,14		; black heart song
	.DBYT	$4e18,5			; ???
	.DBYT	$529f,5			; unknown 4
	.DBYT	$56ac,5			; unknown 5
	.RES	236,$00
