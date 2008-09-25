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
	DirEnt	$4000,1,1,33,,112	; ???
	DirEnt	$4000,2,1,561,,5	; unknown 1
	DirEnt	$4000,2,1,572,$f000,32	; ???
	DirEnt	$4000,3,1,1,,56		; combat
	DirEnt	$4000,3,1,114,,42	; items
	DirEnt	$4000,2,2,1,,17		; fountain
	DirEnt	$4000,2,1,639,,6	; ???
	DirEnt	$4000,2,1,652,,22	; ???
	DirEnt	$4000,3,2,1,,16		; vault
	DirEnt	$4000,3,2,34,,28	; goblin/troll
	DirEnt	$4000,3,2,91,,17	; acrinimiril's tomb
	DirEnt	$4000,1,1,258,,26	; ???
	DirEnt	$4000,2,2,36,,28	; ???
	DirEnt	$4000,3,2,126,,28	; ozob
	DirEnt	$4000,3,2,183,,39	; guild
	DirEnt	$4000,3,2,262,,32	; shop
	DirEnt	$4000,2,2,93,,20	; ???
	DirEnt	$4000,3,1,199,,18	; inn
	DirEnt	$4000,3,2,327,,27	; oracle
	DirEnt	$4000,3,2,382,,24	; enchantress
	DirEnt	$4000,1,1,311,,32	; ???
	DirEnt	$4000,2,2,134,,16	; ferryman
	DirEnt	$4000,2,2,167,,15	; horse
	DirEnt	$4000,2,2,198,,32	; smithy
	DirEnt	$4000,2,2,263,,34	; brewery
	DirEnt	$4000,2,2,332,,16	; crypt
	DirEnt	$4000,2,2,365,,21	; dragon
	DirEnt	$4000,2,2,408,,11	; ??? (death's door?)
	DirEnt	$4000,1,1,376,,37	; ???
	DirEnt	$4000,2,2,431,,31	; machine room
	DirEnt	$4000,2,2,494,,7	; elevator
	DirEnt	$4000,3,2,431,,31	; tavern
	DirEnt	$4000,3,1,236,,176	; ???
	DirEnt	$4000,1,1,451,,7	; ???
	DirEnt	$4000,2,2,509,,4	; unknown 2
	DirEnt	$4000,1,1,466,,6	; ???
	DirEnt	$4000,2,2,518,$8000,8	; unknown 3
	DirEnt	$4000,3,2,494,$8000,7	; unknown 3
	DirEnt	$4000,3,2,510,$8000,7	; picture 7
	DirEnt	$4000,3,1,589,,7	; picture 8
	DirEnt	$4000,1,1,479,,0	; ???
	DirEnt	$4000,3,2,526,,13	; tavern monster song
	DirEnt	$4000,3,2,553,,6	; devourer song
	DirEnt	$4000,3,2,566,,4	; unknown song
	DirEnt	$4000,3,2,575,,23	; tavern talk
	DirEnt	$4000,1,1,480,,18	; ???
	DirEnt	$4000,1,1,517,,79	; portal 2
	DirEnt	$4000,1,1,676,,1	; ???
	DirEnt	$4000,1,1,679,,1	; ???
	DirEnt	$4000,3,1,604,$f000,32	; ???
	DirEnt	$4000,3,2,622,,16	; lost song
	DirEnt	$4000,3,2,655,,14	; black heart song
	DirEnt	$4000,2,2,536,,5	; ???
	DirEnt	$4000,3,1,671,,5	; unknown 4
	DirEnt	$4000,3,2,684,,5	; unknown 5
;	.DBYT	$566e,16		; lost song
;	.DBYT	$568f,14		; black heart song
;	.DBYT	$4e18,5			; ???
;	.DBYT	$529f,5			; unknown 4
;	.DBYT	$56ac,5			; unknown 5
	.RES	236,$00
