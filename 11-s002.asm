;
; 11-s002.asm - segment directory for ardungeon
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

	.SEGMENT	"SEGDIR"
;	.ORG	$0280
	DirEnt	,3,1,7,$300,4		; ???			; $00
	DirEnt	$4000,2,1,10,,20	; map 1			; $01
	DirEnt	$4000,2,1,51,,20	; map 2			; $02
	DirEnt	$4000,2,1,92,,20	; map 3			; $03
	DirEnt	$4000,2,1,133,,20	; map 4			; $04
	DirEnt	$4000,2,1,174,,20	; map 5			; $05
	DirEnt	$4000,2,1,215,,20	; map 6			; $06
	DirEnt	$4000,2,1,256,,20	; map 7			; $07
	DirEnt	$4000,2,1,297,$1000,21	; picture 1		; $08
	DirEnt	$4000,2,1,341,$1000,21	; picture 2		; $09
	DirEnt	$4000,2,1,385,$1000,21	; picture 3		; $0A
	DirEnt	$4000,2,1,429,$1000,21	; picture 4		; $0B
	DirEnt	$4000,2,1,473,$1000,21	; picture 5		; $0C
	DirEnt	$4000,2,1,517,$1000,21	; picture 6		; $0D
	DirEnt	$4000,1,1,33,,112	; ???			; $0E
	DirEnt	$4000,2,1,561,,5	; unknown 1		; $0F
	DirEnt	$4000,2,1,572,$f000,32	; ???			; $10
	DirEnt	$4000,3,1,1,,56		; combat		; $11
	DirEnt	$4000,3,1,114,,42	; items			; $12
	DirEnt	$4000,2,2,1,,17		; fountain		; $13
	DirEnt	$4000,2,1,639,,6	; dungeon exit		; $14
	DirEnt	$4000,2,1,652,,22	; stairway		; $15
	DirEnt	$4000,3,2,1,,16		; vault			; $16
	DirEnt	$4000,3,2,34,,28	; goblin/troll		; $17
	DirEnt	$4000,3,2,91,,17	; acrinimiril's tomb	; $18
	DirEnt	$4000,1,1,258,,26	; load character	; $19
	DirEnt	$4000,2,2,36,,28	; ???			; $1A
	DirEnt	$4000,3,2,126,,28	; ozob			; $1B
	DirEnt	$4000,3,2,183,,39	; guild			; $1C
	DirEnt	$4000,3,2,262,,32	; shop			; $1D
	DirEnt	$4000,2,2,93,,20	; gargoyle		; $1E
	DirEnt	$4000,3,1,199,,18	; inn			; $1F
	DirEnt	$4000,3,2,327,,27	; oracle		; $20
	DirEnt	$4000,3,2,382,,24	; enchantress		; $21
	DirEnt	$4000,1,1,311,,32	; xfer character	; $22
	DirEnt	$4000,2,2,134,,16	; ferryman		; $23
	DirEnt	$4000,2,2,167,,15	; horse			; $24
	DirEnt	$4000,2,2,198,,32	; smithy		; $25
	DirEnt	$4000,2,2,263,,34	; brewery		; $26
	DirEnt	$4000,2,2,332,,16	; crypt			; $27
	DirEnt	$4000,2,2,365,,21	; dragon		; $28
	DirEnt	$4000,2,2,408,,11	; ??? (death's door?)	; $29
	DirEnt	$4000,1,1,376,,37	; char creation img     ; $2A
	DirEnt	$4000,2,2,431,,31	; machine room		; $2B
	DirEnt	$4000,2,2,494,,7	; elevator		; $2C
	DirEnt	$4000,3,2,431,,31	; tavern		; $2D
	DirEnt	$4000,3,1,236,,176	; ???			; $2E
	DirEnt	$4000,1,1,451,,7	; character death	; $2F
	DirEnt	$4000,2,2,509,,4	; unknown 2		; $30
	DirEnt	$4000,1,1,466,,6	; save character	; $31
	DirEnt	$4000,2,2,518,$8000,8	; unknown 3		; $32
	DirEnt	$4000,3,2,494,$8000,7	; unknown 3		; $33
	DirEnt	$4000,3,2,510,$8000,7	; picture 7		; $34
	DirEnt	$4000,3,1,589,,7	; picture 8		; $35 (same as $2F?)
	DirEnt	$4000,1,1,479,,0	; ???			; $36
	DirEnt	$4000,3,2,526,,13	; tavern monster song	; $37
	DirEnt	$4000,3,2,553,,6	; devourer song		; $38
	DirEnt	$4000,3,2,566,,4	; unknown song		; $39
	DirEnt	$4000,3,2,575,,23	; tavern talk		; $3A
	DirEnt	$4000,1,1,480,,18	; ???			; $3B
	DirEnt	$4000,1,1,517,,79	; portal 2		; $3C
	DirEnt	$4000,1,1,676,,1	; ???			; $3D
	DirEnt	$4000,1,1,679,,1	; ???			; $3E
	DirEnt	$4000,3,1,604,$f000,32	; ???			; $3F
	DirEnt	$4000,3,2,622,,16	; lost song		; $40
	DirEnt	$4000,3,2,655,,14	; black heart song	; $41
	DirEnt	$4000,2,2,536,,5	; ???			; $42
	DirEnt	$4000,3,1,671,,5	; unknown 4		; $43
	DirEnt	$4000,3,2,684,,5	; unknown 5		; $44
	.RES	236,$00
