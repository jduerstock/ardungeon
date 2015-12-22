;
; 11-s017.asm - game intro sequence for ardungeon
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
		.include	"equates.inc"
		.include	"globals.inc"
		.include	"macros.inc"

off_80	= $80
off_82	= $82
off_B9	= $B9
off_BE	= $BE
off_C0	= $C0
off_C3	= $C3
off_C5	= $C5

loc_6368 = $6368
byte_6390 = $6390
loc_6391 = $6391

.macro DBGSYM Label, Addr
	.BYTE	($80 | .STRLEN(Label))
	.BYTE	Label
	.BYTE	.LOBYTE(Addr), .HIBYTE(Addr)
.endmacro

		.SEGMENT	"SEG_0600"
;		.ORG	$600
unk_600:	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00	; DATA XREF: sub_31A2+3Evr
		.BYTE	$3F,$C3,$0F,$0F,$0F,$3C,$3C,$F0
		.BYTE	$FC,$3F,$3C,$3C,$3C,$3C,$3C,$F3
		.BYTE	$0F,$3C,$F0,$F0,$F0,$F0,$FC,$3F
		.BYTE	$FC,$3F,$3C,$3C,$3C,$3C,$3C,$F3
		.BYTE	$FF,$3C,$3C,$3F,$3C,$3C,$3C,$3F
		.BYTE	$FF,$3C,$3C,$3F,$3C,$3C,$3C,$3C
		.BYTE	$0F,$3C,$F0,$F0,$F3,$F0,$3C,$0F
		.BYTE	$F0,$F0,$F0,$F0,$FF,$FC,$F0,$F0
		.BYTE	$0F,$03,$03,$03,$03,$03,$03,$00
		.BYTE	$03,$00,$00,$00,$00,$03,$0F,$3C
		.BYTE	$F0,$3C,$3C,$3F,$3F,$3C,$3C,$F0
		.BYTE	$FC,$3C,$3C,$3C,$3C,$3C,$3F,$3F
		.BYTE	$F0,$FC,$FF,$F3,$F0,$F0,$F0,$F0
		.BYTE	$F0,$F0,$FC,$FF,$F3,$F0,$F0,$F0
		.BYTE	$3F,$F0,$F0,$F0,$F0,$F0,$FC,$3F
		.BYTE	$FF,$3C,$3C,$3C,$3C,$3C,$3C,$F0
		.BYTE	$3F,$FC,$F0,$F0,$F0,$F0,$F0,$3F
		.BYTE	$FC,$3F,$3C,$3C,$3C,$3C,$3C,$F0
		.BYTE	$0F,$3C,$3C,$0F,$00,$00,$3C,$33
		.BYTE	$FF,$0F,$3C,$F0,$F0,$F0,$F0,$3F
		.BYTE	$FC,$3C,$3C,$3C,$3C,$3C,$3C,$0F
		.BYTE	$F0,$3C,$3C,$3C,$3C,$3C,$0F,$03
		.BYTE	$F0,$F0,$F0,$F3,$F0,$F3,$3F,$3C
		.BYTE	$F0,$F0,$3C,$0F,$0F,$3C,$F0,$F0
		.BYTE	$F0,$3C,$3C,$0F,$03,$03,$03,$03
		.BYTE	$3F,$F0,$00,$03,$FF,$3C,$F0,$FF
		.BYTE	$00,$00,$00,$00,$00,$03,$03,$00
		.BYTE	$00,$00,$00,$00,$3F,$00,$00,$00
		.BYTE	$00,$03,$03,$03,$00,$00,$00,$00
		.BYTE	$03,$0F,$0F,$0F,$03,$03,$00,$03
		.BYTE	$0F,$3C,$3C,$00,$03,$00,$03,$00
unk_700:
	.BYTE	$00,$00,$00,$00,$00,$00,$00,$00	; DATA XREF: sub_31A2+50vr
	.BYTE	$C0,$F0,$F0,$3C,$FC,$3C,$3C,$0F
	.BYTE	$FC,$0F,$0F,$FC,$0F,$0F,$0F,$FC
	.BYTE	$F0,$3C,$F0,$00,$00,$00,$3C,$F0
	.BYTE	$FC,$0F,$0F,$0F,$0F,$0F,$0F,$FC
	.BYTE	$FC,$3C,$00,$C0,$00,$0F,$3C,$F0
	.BYTE	$FC,$3C,$00,$C0,$00,$00,$00,$00
	.BYTE	$F0,$3C,$3C,$00,$FC,$3C,$3C,$F0
	.BYTE	$3C,$3C,$3C,$FC,$FC,$3C,$3C,$3C
	.BYTE	$00,$C0,$C0,$C0,$C0,$C0,$C0,$F0
	.BYTE	$FC,$F0,$F0,$F0,$F0,$F0,$C0,$00
	.BYTE	$3C,$F0,$F0,$C0,$C0,$F0,$F0,$3C
	.BYTE	$00,$00,$00,$00,$00,$3C,$FC,$C0
	.BYTE	$3C,$FC,$FC,$3C,$3C,$3C,$3C,$3C
	.BYTE	$3C,$3C,$3C,$3C,$FC,$FC,$3C,$3C
	.BYTE	$F0,$FC,$3C,$3C,$3C,$3C,$3C,$F0
	.BYTE	$F0,$3C,$3C,$3C,$F0,$00,$00,$00
	.BYTE	$F0,$3C,$3C,$3C,$3C,$3C,$FC,$FF
	.BYTE	$FC,$0F,$3C,$F0,$3C,$3C,$0F,$0F
	.BYTE	$CC,$3C,$00,$F0,$3C,$3C,$3C,$F0
	.BYTE	$FC,$00,$00,$00,$00,$0C,$3C,$F0
	.byte	$3c,$3c,$3c,$3c,$3c,$3c,$fc,$ff
	.byte	$0f,$3c,$3c,$3c,$3c,$3c,$f0,$c0
	.byte	$0f,$0f,$0f,$0f,$cf,$ff,$3f,$0c
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$3C ; <
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$3C ; <
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$F0 ; 
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$FC ; ¸
		.BYTE	$3C ; <
		.BYTE	$F0 ; 
		.BYTE	$C0 ; ¿
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	 $F
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$C0 ; ¿
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	$C0 ; ¿
		.BYTE	$F0 ; 
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$F0 ; 
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	$8E ; é
		.BYTE	 $A
		.BYTE	$40 ; @
		.BYTE	 $A
		.BYTE	$1F
		.BYTE	 $A
		.BYTE	$FC ; ¸
		.BYTE	9
		.BYTE	$A1 ; °
		.BYTE	 $A
		.BYTE	$F7 ; ˜
		.BYTE	$16
		.BYTE	$E7 ; Á
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A4 ; §
		.BYTE	$A2 ; ¢
		.BYTE	$A1 ; °
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE	3
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
		.BYTE	$A7 ; ß
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$10
		.BYTE	1
		.BYTE	1
		.BYTE	8
		.BYTE	 $F
		.BYTE	$E1 ; ·
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$FE ; ˛
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$FE ; ˛
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$84 ; Ñ
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A4 ; §
		.BYTE	$A5 ; •
		.BYTE	$A4 ; §
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A4 ; §
		.BYTE	$A5 ; •
		.BYTE	$A4 ; §
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$10
		.BYTE	1
		.BYTE	1
		.BYTE	 $B
		.BYTE	$16
		.BYTE	$E1 ; ·
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A4 ; §
		.BYTE	$A4 ; §
		.BYTE	$A4 ; §
		.BYTE	$A4 ; §
		.BYTE	$A4 ; §
		.BYTE	$A4 ; §
		.BYTE	$A4 ; §
		.BYTE	$A4 ; §
		.BYTE	$A4 ; §
		.BYTE	$A4 ; §
		.BYTE	$A4 ; §
		.BYTE	$A4 ; §
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A0 ; †
		.BYTE	$10
		.BYTE	1
		.BYTE	1
		.BYTE	 $A
		.BYTE	$16
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$26 ; &
		.BYTE	$A6 ; ¶
		.BYTE	$A6 ; ¶
		.BYTE	$A6 ; ¶
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$A4 ; §
		.BYTE	$A4 ; §
		.BYTE	$A4 ; §
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A1 ; °
		.BYTE	$A1 ; °
		.BYTE	$A1 ; °
		.BYTE	$A0 ; †
		.BYTE	$10
		.BYTE	0
		.BYTE	1
		.BYTE	 $B
		.BYTE	$16
		.BYTE	$F8 ; ¯
		.BYTE	$F5 ; ı
		.BYTE	$F8 ; ¯
		.BYTE	$F5 ; ı
		.BYTE	$F8 ; ¯
		.BYTE	$F5 ; ı
		.BYTE	$F8 ; ¯
		.BYTE	7
		.BYTE	7
		.BYTE	6
		.BYTE	6
		.BYTE	7
		.BYTE	7
		.BYTE	9
		.BYTE	8
		.BYTE	$FC ; ¸
		.BYTE	$FB ; ˚
		.BYTE	$FA ; ˙
		.BYTE	$F9 ; ˘
		.BYTE	$F8 ; ¯
		.BYTE	$F9 ; ˘
		.BYTE	$F8 ; ¯
		.BYTE	$F7 ; ˜
		.BYTE	$F6 ; ˆ
		.BYTE	$F5 ; ı
		.BYTE	$F6 ; ˆ
		.BYTE	$F5 ; ı
		.BYTE	$F4 ; Ù
		.BYTE	$F3 ; Û
		.BYTE	$F4 ; Ù
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$AF ; Ø
		.BYTE	$A3 ; £
		.BYTE	$AA ; ™
		.BYTE	$A3 ; £
		.BYTE	$AA ; ™
		.BYTE	$A3 ; £
		.BYTE	$AA ; ™
		.BYTE	$A6 ; ¶
		.BYTE	$A7 ; ß
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$A9 ; ©
		.BYTE	$A7 ; ß
		.BYTE	$A5 ; •
		.BYTE	$A3 ; £
		.BYTE	$24 ; $
		.BYTE	$24 ; $
		.BYTE	$24 ; $
		.BYTE	$24 ; $
		.BYTE	$24 ; $
		.BYTE	$24 ; $
		.BYTE	$23 ; #
		.BYTE	$23 ; #
		.BYTE	$23 ; #
		.BYTE	$23 ; #
		.BYTE	$23 ; #
		.BYTE	$22 ; "
		.BYTE	$22 ; "
		.BYTE	$22 ; "
		.BYTE	$21 ; !
		.BYTE	$21 ; !
		.BYTE	$21 ; !
		.BYTE	 $F
		.BYTE	1
		.BYTE	1
		.BYTE	7
		.BYTE	 $E
		.BYTE	$E0 ; ‡
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$86 ; Ü
		.BYTE	$A3 ; £
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$10
		.BYTE	1
		.BYTE	1
		.BYTE	2
		.BYTE	$16
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$94 ; î
		.BYTE	8
		.BYTE	 $A
		.BYTE	$B3 ; ≥
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	$82 ; Ç
		.BYTE	 $C
		.BYTE	 $A
		.BYTE	$82 ; Ç
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	6
		.BYTE	 $A
		.BYTE	$4A ; J
		.BYTE	 $D
		.BYTE	 $A
		.BYTE	$75 ; u
		.BYTE	 $D
		.BYTE	 $A
		.BYTE	$4A ; J
		.BYTE	 $D
		.BYTE	 $A
		.BYTE	$75 ; u
		.BYTE	 $D
		.BYTE	 $A
		.BYTE	$4A ; J
		.BYTE	 $D
		.BYTE	 $A
		.BYTE	$5B ; [
		.BYTE	 $C
		.BYTE	5
		.BYTE	$65 ; e
		.BYTE	 $E
		.BYTE	2
		.BYTE	$94 ; î
		.BYTE	8
		.BYTE	 $A
		.BYTE	$3A ; :
		.BYTE	 $B
		.BYTE	 $A
		.BYTE	$B9 ; π
		.BYTE	 $C
		.BYTE	 $A
		.BYTE	$B9 ; π
		.BYTE	 $C
		.BYTE	 $A
		.BYTE	$4A ; J
		.BYTE	 $D
		.BYTE	 $A
		.BYTE	$82 ; Ç
		.BYTE	 $D
		.BYTE	 $A
		.BYTE	$FB ; ˚
		.BYTE	 $C
		.BYTE	 $A
		.BYTE	$82 ; Ç
		.BYTE	 $D
		.BYTE	 $A
		.BYTE	$FB ; ˚
		.BYTE	 $C
		.BYTE	 $A
		.BYTE	$68 ; h
		.BYTE	 $C
		.BYTE	5
		.BYTE	$AC ; ¨
		.BYTE	 $E
		.BYTE	2
		.BYTE	$D9 ; Ÿ
		.BYTE	8
		.BYTE	7
		.BYTE	$F2 ; Ú
		.BYTE	9
		.BYTE	4
		.BYTE	 $A
		.BYTE	$7D ; }
		.BYTE	 $B
		.BYTE	 $A
		.BYTE	$7D ; }
		.BYTE	 $B
		.BYTE	 $A
		.BYTE	$92 ; í
		.BYTE	 $B
		.BYTE	 $A
		.BYTE	$92 ; í
		.BYTE	 $B
		.BYTE	 $A
		.BYTE	$A7 ; ß
		.BYTE	 $B
		.BYTE	 $A
		.BYTE	$A7 ; ß
		.BYTE	 $B
		.BYTE	 $A
		.BYTE	$99 ; ô
		.BYTE	 $B
		.BYTE	 $A
		.BYTE	$99 ; ô
		.BYTE	 $B
		.BYTE	4
		.BYTE	$F2 ; Ú
		.BYTE	9
		.BYTE	$47 ; G
		.BYTE	 $A
		.BYTE	7
		.BYTE	$F8 ; ¯
		.BYTE	9
		.BYTE	2
		.BYTE	 $A
		.BYTE	$14
		.BYTE	 $C
		.BYTE	 $A
		.BYTE	$3E ; >
		.BYTE	 $C
		.BYTE	 $A
		.BYTE	$29 ; )
		.BYTE	 $C
		.BYTE	 $A
		.BYTE	$AE ; Æ
		.BYTE	 $B
		.BYTE	 $A
		.BYTE	$BE ; æ
		.BYTE	 $B
		.BYTE	4
		.BYTE	$F8 ; ¯
		.BYTE	9
		.BYTE	$68 ; h
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	$14
		.BYTE	 $C
		.BYTE	 $A
		.BYTE	$3E ; >
		.BYTE	 $C
		.BYTE	 $A
		.BYTE	$29 ; )
		.BYTE	 $C
		.BYTE	 $A
		.BYTE	$AE ; Æ
		.BYTE	 $B
		.BYTE	 $A
		.BYTE	$4E ; N
		.BYTE	 $C
		.BYTE	5
		.BYTE	$E5 ; Â
		.BYTE	 $E
		.BYTE	0
		.BYTE	2
		.BYTE	$94 ; î
		.BYTE	8
		.BYTE	7
		.BYTE	$FB ; ˚
		.BYTE	9
		.BYTE	$38 ; 8
		.BYTE	$12
		.BYTE	$58 ; X
		.BYTE	4
		.BYTE	$FB ; ˚
		.BYTE	9
		.BYTE	$96 ; ñ
		.BYTE	 $A
		.BYTE	2
		.BYTE	$1E
		.BYTE	9
		.BYTE	0
		.BYTE	7
		.BYTE	$F1 ; Ò
		.BYTE	9
		.BYTE	$24 ; $
		.BYTE	$12
		.BYTE	$84 ; Ñ
		.BYTE	4
		.BYTE	$F1 ; Ò
		.BYTE	9
		.BYTE	$A5 ; •
		.BYTE	 $A
		.BYTE	$12
		.BYTE	$84 ; Ñ
		.BYTE	 $C
		.BYTE	7
		.BYTE	5
		.BYTE	$19
		.BYTE	 $F
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	 $B
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$42 ; B
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	 $B
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	 $B
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	 $B
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	 $B
		.BYTE	1
		.BYTE	$25 ; %
		.BYTE	$21 ; !
		.BYTE	1
		.BYTE	$21 ; !
		.BYTE	 $B
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$AD ; ≠
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	$16
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	 $B
		.BYTE	1
		.BYTE	$2F ; /
		.BYTE	 $B
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$16
		.BYTE	1
		.BYTE	$CC ; Ã
		.BYTE	 $B
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	 $B
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$CC ; Ã
		.BYTE	$58 ; X
		.BYTE	 $C
		.BYTE	1
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	 $B
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$42 ; B
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	 $B
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	 $B
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	 $B
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	 $B
		.BYTE	1
		.BYTE	$25 ; %
		.BYTE	$21 ; !
		.BYTE	1
		.BYTE	$21 ; !
		.BYTE	 $B
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$AD ; ≠
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	$16
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	 $B
		.BYTE	1
		.BYTE	$2F ; /
		.BYTE	 $B
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$16
		.BYTE	1
		.BYTE	$CC ; Ã
		.BYTE	 $B
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	 $B
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$CC ; Ã
		.BYTE	$58 ; X
		.BYTE	 $B
		.BYTE	7
		.BYTE	$F3 ; Û
		.BYTE	9
		.BYTE	2
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	 $B
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	 $B
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	$42 ; B
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	 $B
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	 $B
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	 $B
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	 $B
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$21 ; !
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	 $B
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$AD ; ≠
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	$84 ; Ñ
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$16
		.BYTE	1
		.BYTE	$CC ; Ã
		.BYTE	 $B
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $B
		.BYTE	1
		.BYTE	$CD ; Õ
		.BYTE	$58 ; X
		.BYTE	4
		.BYTE	$F3 ; Û
		.BYTE	9
		.BYTE	$3E ; >
		.BYTE	 $B
		.BYTE	 $B
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$2C ; ,
		.BYTE	 $B
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$2C ; ,
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$2C ; ,
		.BYTE	 $B
		.BYTE	1
		.BYTE	$AD ; ≠
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$AD ; ≠
		.BYTE	$2C ; ,
		.BYTE	 $B
		.BYTE	1
		.BYTE	$CC ; Ã
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$CC ; Ã
		.BYTE	$2C ; ,
		.BYTE	 $B
		.BYTE	1
		.BYTE	$E6 ; Ê
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$E6 ; Ê
		.BYTE	$2C ; ,
		.BYTE	 $B
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	$2C ; ,
		.BYTE	 $B
		.BYTE	7
		.BYTE	$F4 ; Ù
		.BYTE	9
		.BYTE	4
		.BYTE	1
		.BYTE	$AD ; ≠
		.BYTE	 $B
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	 $B
		.BYTE	4
		.BYTE	$F4 ; Ù
		.BYTE	9
		.BYTE	$B2 ; ≤
		.BYTE	 $B
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$10
		.BYTE	$12
		.BYTE	1
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$1B
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	5
		.BYTE	$12
		.BYTE	1
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$1B
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	5
		.BYTE	$12
		.BYTE	1
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$1B
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	5
		.BYTE	$12
		.BYTE	1
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$1B
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	5
		.BYTE	$12
		.BYTE	1
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$1B
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	5
		.BYTE	$12
		.BYTE	1
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$1B
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	5
		.BYTE	$12
		.BYTE	1
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$1B
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	5
		.BYTE	$12
		.BYTE	1
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$1B
		.BYTE	 $B
		.BYTE	7
		.BYTE	$F5 ; ı
		.BYTE	9
		.BYTE	4
		.BYTE	1
		.BYTE	$E6 ; Ê
		.BYTE	 $B
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	5
		.BYTE	$12
		.BYTE	1
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	5
		.BYTE	4
		.BYTE	$F5 ; ı
		.BYTE	9
		.BYTE	$18
		.BYTE	 $C
		.BYTE	 $B
		.BYTE	7
		.BYTE	$F6 ; ˆ
		.BYTE	9
		.BYTE	4
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	 $B
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	5
		.BYTE	$12
		.BYTE	1
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	5
		.BYTE	4
		.BYTE	$F6 ; ˆ
		.BYTE	9
		.BYTE	$2D ; -
		.BYTE	 $C
		.BYTE	 $B
		.BYTE	7
		.BYTE	$F7 ; ˜
		.BYTE	9
		.BYTE	4
		.BYTE	1
		.BYTE	$CC ; Ã
		.BYTE	 $B
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	 $B
		.BYTE	4
		.BYTE	$F7 ; ˜
		.BYTE	9
		.BYTE	$42 ; B
		.BYTE	 $C
		.BYTE	 $B
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$58 ; X
		.BYTE	 $B
		.BYTE	1
		.BYTE	$25 ; %
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$58 ; X
		.BYTE	 $B
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$58 ; X
		.BYTE	 $B
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$58 ; X
		.BYTE	 $B
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$2F ; /
		.BYTE	 $B
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	 $B
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	 $B
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	 $B
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	 $B
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	 $B
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $B
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$2C ; ,
		.BYTE	 $B
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$58 ; X
		.BYTE	 $C
		.BYTE	2
		.BYTE	2
		.BYTE	$63 ; c
		.BYTE	9
		.BYTE	1
		.BYTE	$1C
		.BYTE	$2C ; ,
		.BYTE	 $C
		.BYTE	3
		.BYTE	2
		.BYTE	$94 ; î
		.BYTE	8
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	 $B
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	 $B
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$37 ; 7
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$58 ; X
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	$2C ; ,
		.BYTE	 $C
		.BYTE	4
		.BYTE	2
		.BYTE	$63 ; c
		.BYTE	9
		.BYTE	1
		.BYTE	$1C
		.BYTE	$2C ; ,
		.BYTE	 $C
		.BYTE	5
		.BYTE	2
		.BYTE	$94 ; î
		.BYTE	8
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	$2C ; ,
		.BYTE	1
		.BYTE	$88 ; à
		.BYTE	$2C ; ,
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $B
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $B
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	 $B
		.BYTE	1
		.BYTE	$2F ; /
		.BYTE	 $B
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	7
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	4
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$16
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$16
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$16
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$16
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $B
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $B
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	 $B
		.BYTE	1
		.BYTE	$2F ; /
		.BYTE	 $B
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	7
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	4
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$16
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	$16
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$16
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	$16
		.BYTE	 $B
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$4D ; M
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	7
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	4
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$16
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$16
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$16
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$16
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$4D ; M
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	7
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	4
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$16
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$16
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$16
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$16
		.BYTE	 $B
		.BYTE	7
		.BYTE	$F9 ; ˘
		.BYTE	9
		.BYTE	4
		.BYTE	1
		.BYTE	$4C ; L
		.BYTE	$58 ; X
		.BYTE	4
		.BYTE	$F9 ; ˘
		.BYTE	9
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	 $B
		.BYTE	7
		.BYTE	$FA ; ˙
		.BYTE	9
		.BYTE	4
		.BYTE	1
		.BYTE	$4D ; M
		.BYTE	$58 ; X
		.BYTE	4
		.BYTE	$FA ; ˙
		.BYTE	9
		.BYTE	$86 ; Ü
		.BYTE	 $D
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$3C ; <
		.BYTE	 $C
		.BYTE	 $B
		.BYTE	$12
		.BYTE	1
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$12
		.BYTE	$59 ; Y
		.BYTE	 $C
		.BYTE	 $D
		.BYTE	$12
		.BYTE	$F0 ; 
		.BYTE	 $C
		.BYTE	 $B
		.BYTE	$12
		.BYTE	1
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$12
		.BYTE	1
		.BYTE	 $C
		.BYTE	 $D
		.BYTE	$12
		.BYTE	$3A ; :
		.BYTE	 $C
		.BYTE	0
		.BYTE	$12
		.BYTE	$3C ; <
		.BYTE	 $C
		.BYTE	1
		.BYTE	$12
		.BYTE	$77 ; w
		.BYTE	 $C
		.BYTE	2
		.BYTE	$12
		.BYTE	$F0 ; 
		.BYTE	 $C
		.BYTE	0
		.BYTE	$12
		.BYTE	1
		.BYTE	 $C
		.BYTE	1
		.BYTE	$12
		.BYTE	1
		.BYTE	 $C
		.BYTE	2
		.BYTE	$12
		.BYTE	$3A ; :
		.BYTE	 $C
		.BYTE	5
		.BYTE	$12
		.BYTE	$5A ; Z
		.BYTE	 $C
		.BYTE	4
		.BYTE	$12
		.BYTE	$E1 ; ·
		.BYTE	$12
		.BYTE	$FF
		.BYTE	 $C
		.BYTE	5
		.BYTE	$12
		.BYTE	1
		.BYTE	 $C
		.BYTE	4
		.BYTE	$12
		.BYTE	$3B ; ;
		.BYTE	 $C
		.BYTE	3
		.BYTE	$12
		.BYTE	$5A ; Z
		.BYTE	 $C
		.BYTE	6
		.BYTE	$12
		.BYTE	$78 ; x
		.BYTE	 $C
		.BYTE	3
		.BYTE	$12
		.BYTE	1
		.BYTE	 $C
		.BYTE	6
		.BYTE	$12
		.BYTE	$3B ; ;
		.BYTE	 $C
		.BYTE	7
		.BYTE	$12
		.BYTE	$5A ; Z
		.BYTE	 $C
		.BYTE	8
		.BYTE	$12
		.BYTE	$78 ; x
		.BYTE	 $C
		.BYTE	7
		.BYTE	$12
		.BYTE	1
		.BYTE	 $C
		.BYTE	8
		.BYTE	$12
		.BYTE	$3B ; ;
		.BYTE	 $C
		.BYTE	9
		.BYTE	$12
		.BYTE	$5A ; Z
		.BYTE	 $C
		.BYTE	 $A
		.BYTE	$12
		.BYTE	$F0 ; 
		.BYTE	 $C
		.BYTE	9
		.BYTE	$12
		.BYTE	1
		.BYTE	 $C
		.BYTE	 $A
		.BYTE	 $B
		.BYTE	7
		.BYTE	$ED ; Ì
		.BYTE	9
		.BYTE	2
		.BYTE	$12
		.BYTE	$84 ; Ñ
		.BYTE	1
		.BYTE	3
		.BYTE	3
		.BYTE	$12
		.BYTE	$56 ; V
		.BYTE	1
		.BYTE	5
		.BYTE	3
		.BYTE	$12
		.BYTE	$2A ; *
		.BYTE	1
		.BYTE	6
		.BYTE	3
		.BYTE	$12
		.BYTE	$F2 ; Ú
		.BYTE	1
		.BYTE	5
		.BYTE	3
		.BYTE	$12
		.BYTE	$4C ; L
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	$12
		.BYTE	$90 ; ê
		.BYTE	1
		.BYTE	1
		.BYTE	3
		.BYTE	$12
		.BYTE	$5E ; ^
		.BYTE	1
		.BYTE	7
		.BYTE	3
		.BYTE	$12
		.BYTE	$2B ; +
		.BYTE	1
		.BYTE	1
		.BYTE	3
		.BYTE	$12
		.BYTE	$B9 ; π
		.BYTE	4
		.BYTE	$ED ; Ì
		.BYTE	9
		.BYTE	6
		.BYTE	 $E
		.BYTE	 $B
		.BYTE	2
		.BYTE	$A8 ; ®
		.BYTE	9
		.BYTE	$12
		.BYTE	8
		.BYTE	7
		.BYTE	$EE ; Ó
		.BYTE	9
		.BYTE	$DC ; ‹
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	 $B
		.BYTE	4
		.BYTE	$EE ; Ó
		.BYTE	9
		.BYTE	$3F ; ?
		.BYTE	 $E
		.BYTE	 $B
		.BYTE	7
		.BYTE	$EE ; Ó
		.BYTE	9
		.BYTE	$98 ; ò
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	 $B
		.BYTE	4
		.BYTE	$EE ; Ó
		.BYTE	9
		.BYTE	$4C ; L
		.BYTE	 $E
		.BYTE	 $B
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$4F ; O
		.BYTE	8
		.BYTE	 $A
		.BYTE	$8F ; è
		.BYTE	 $D
		.BYTE	 $A
		.BYTE	$37 ; 7
		.BYTE	 $F
		.BYTE	 $A
		.BYTE	$61 ; a
		.BYTE	$10
		.BYTE	 $D
		.BYTE	 $D
		.BYTE	 $C
		.BYTE	$81 ; Å
		.BYTE	 $A
		.BYTE	$D8 ; ÿ
		.BYTE	$12
		.BYTE	 $A
		.BYTE	$8A ; ä
		.BYTE	$13
		.BYTE	 $D
		.BYTE	 $D
		.BYTE	 $C
		.BYTE	$80 ; Ä
		.BYTE	 $A
		.BYTE	$EC ; Ï
		.BYTE	$16
		.BYTE	 $A
		.BYTE	$EC ; Ï
		.BYTE	$16
		.BYTE	 $A
		.BYTE	$8A ; ä
		.BYTE	$11
		.BYTE	 $A
		.BYTE	$79 ; y
		.BYTE	$1A
		.BYTE	 $A
		.BYTE	$C8 ; »
		.BYTE	$19
		.BYTE	 $D
		.BYTE	 $D
		.BYTE	 $C
		.BYTE	$80 ; Ä
		.BYTE	 $A
		.BYTE	$EC ; Ï
		.BYTE	$16
		.BYTE	 $D
		.BYTE	 $D
		.BYTE	2
		.BYTE	$4F ; O
		.BYTE	8
		.BYTE	 $C
		.BYTE	$81 ; Å
		.BYTE	 $A
		.BYTE	$D8 ; ÿ
		.BYTE	$12
		.BYTE	 $A
		.BYTE	$43 ; C
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	 $A
		.BYTE	$BC ; º
		.BYTE	$1C
		.BYTE	 $C
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	2
		.BYTE	$4F ; O
		.BYTE	8
		.BYTE	 $A
		.BYTE	$36 ; 6
		.BYTE	 $E
		.BYTE	 $A
		.BYTE	$48 ; H
		.BYTE	 $E
		.BYTE	 $D
		.BYTE	 $B
		.BYTE	2
		.BYTE	$4F ; O
		.BYTE	8
		.BYTE	 $A
		.BYTE	$87 ; á
		.BYTE	$14
		.BYTE	 $A
		.BYTE	$87 ; á
		.BYTE	$14
		.BYTE	 $D
		.BYTE	 $B
		.BYTE	 $A
		.BYTE	$62 ; b
		.BYTE	$17
		.BYTE	 $A
		.BYTE	$62 ; b
		.BYTE	$17
		.BYTE	 $A
		.BYTE	$35 ; 5
		.BYTE	$12
		.BYTE	 $A
		.BYTE	$E2 ; ‚
		.BYTE	$17
		.BYTE	 $A
		.BYTE	$E2 ; ‚
		.BYTE	$17
		.BYTE	 $D
		.BYTE	 $B
		.BYTE	2
		.BYTE	$4F ; O
		.BYTE	8
		.BYTE	 $A
		.BYTE	$62 ; b
		.BYTE	$17
		.BYTE	 $D
		.BYTE	 $B
		.BYTE	2
		.BYTE	$4F ; O
		.BYTE	8
		.BYTE	 $A
		.BYTE	$87 ; á
		.BYTE	$14
		.BYTE	 $A
		.BYTE	$83 ; É
		.BYTE	$19
		.BYTE	0
		.BYTE	2
		.BYTE	$4F ; O
		.BYTE	8
		.BYTE	 $A
		.BYTE	2
		.BYTE	 $E
		.BYTE	 $D
		.BYTE	7
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	$15
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	$15
		.BYTE	 $D
		.BYTE	7
		.BYTE	 $A
		.BYTE	$61 ; a
		.BYTE	$16
		.BYTE	 $A
		.BYTE	$61 ; a
		.BYTE	$16
		.BYTE	 $A
		.BYTE	$C3 ; √
		.BYTE	$17
		.BYTE	 $A
		.BYTE	$4C ; L
		.BYTE	$1C
		.BYTE	 $A
		.BYTE	$4C ; L
		.BYTE	$1C
		.BYTE	 $D
		.BYTE	6
		.BYTE	2
		.BYTE	$4F ; O
		.BYTE	8
		.BYTE	 $A
		.BYTE	$61 ; a
		.BYTE	$16
		.BYTE	 $D
		.BYTE	7
		.BYTE	2
		.BYTE	$4F ; O
		.BYTE	8
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	$15
		.BYTE	 $A
		.BYTE	$55 ; U
		.BYTE	$19
		.BYTE	0
		.BYTE	0
		.BYTE	 $D
		.BYTE	 $E
		.BYTE	 $D
		.BYTE	 $E
		.BYTE	 $A
		.BYTE	$41 ; A
		.BYTE	$15
		.BYTE	 $A
		.BYTE	$21 ; !
		.BYTE	$18
		.BYTE	 $D
		.BYTE	 $E
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	$1B
		.BYTE	 $D
		.BYTE	 $E
		.BYTE	0
		.BYTE	7
		.BYTE	$55 ; U
		.BYTE	 $E
		.BYTE	8
		.BYTE	$12
		.BYTE	$DC ; ‹
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	 $E
		.BYTE	$2F ; /
		.BYTE	 $F
		.BYTE	 $B
		.BYTE	$0E,$00
		.BYTE	"HOW DO YOU",0
		.BYTE	$0F,$00,$02,$01,$01,$72,$3D
		.BYTE	$0F,$03,$05,$01,$01,$6C,$1C
		.BYTE	$0F,$06,$09,$01,$01,$60,$1C
		.BYTE	$0E,$00
		.BYTE	"EXPECT US TO",0
		.BYTE	$0F,$00,$01,$01,$01,$6C,$1C
		.BYTE	$0F,$02,$05,$01,$01,$72,$1C
		.BYTE	$0F,$06,$08,$01,$01,$80,$1C
		.BYTE	$0F,$09,$0B,$01,$01,$90,$17
		.BYTE	$0E,$00
		.BYTE	"LIVE HERE WITHIN",0
		.BYTE	$0F,$00,$03,$01,$01,$72,$38
		.BYTE	$0F,$04,$08,$01,$01,$6C,$17
		.BYTE	$0F,$09,$0D,$01,$01,$60,$17
		.BYTE	$0F,$0E,$0F,$01,$01,$6C,$17
		.BYTE	$0E,$00
		.BYTE	"THIS WORLD OF YOURS",0
		.BYTE	$0F,$00,$03,$01,$01,$72,$17
		.BYTE	$0F,$04,$09,$01,$01,$80,$17
		.BYTE	$0F,$0A,$0C,$01,$01,$90,$17
		.BYTE	$0F,$0D,$12,$01,$01,$72,$38
		.BYTE	$0E,$00
		.BYTE	"BUILT ON FANTASY",0
		.BYTE	$0F,$00,$04,$01,$01,$6C,$17
		.BYTE	$0F,$05,$07,$01,$01,$60,$17
		.BYTE	$0F,$08,$0B,$01,$01,$6C,$17
		.BYTE	$0F,$0C,$0D,$01,$01,$72,$17
		.BYTE	$0F,$0E,$0F,$01,$01,$80,$17
		.BYTE	$0E,$00
		.BYTE	"AND OTHER ILLUSION",0
		.BYTE	$0F,$00,$02,$01,$01,$90,$17
		.BYTE	$0F,$03,$04,$01,$01,$51,$38
		.BYTE	$0F,$05,$08,$01,$01,$60,$17
		.BYTE	$0F,$09,$0B,$01,$01,$79,$17
		.BYTE	$0F,$0C,$0D,$01,$01,$51,$38
		.BYTE	$0F,$0E,$11,$01,$01,$6C,$2D
		.BYTE	$0E,$00
		.BYTE	" ",$00
		.BYTE	$12,$06,$0B
		.BYTE	$0E,$00
		.BYTE	"I'D RATHER",0
		.BYTE	$0F,$00,$02,$01,$01,$60,$3D
		.BYTE	$0F,$03,$05,$01,$01,$55,$17
		.BYTE	$0F,$06,$09,$01,$01,$48,$17
		.BYTE	$0E,$00
		.BYTE	"TAKE MY CHANCES",0
		.BYTE	$0F,$00,$03,$01,$01,$55,$17
		.BYTE	$0F,$04,$06,$01,$01,$60,$17
		.BYTE	$0F,$07,$0C,$01,$01,$6C,$17
		.BYTE	$0F,$0D,$0E,$01,$01,$72,$17
		.BYTE	$0E,$00
		.BYTE	"WITH EARTHLY",0
		.BYTE	$0F,$00,$03,$01,$01,$60,$38
		.BYTE	$0F,$04,$09,$01,$01,$5B,$17
		.BYTE	$0F,$0A,$0B,$01,$01,$48,$17
		.BYTE	$0E,$00
		.BYTE	"CIRCUMSTANCES",0
		.BYTE	$0F,$00,$02,$01,$01,$5B,$17
		.BYTE	$0F,$03,$05,$01,$01,$60,$17
		.BYTE	$0F,$06,$0A,$01,$01,$6C,$17
		.BYTE	$0F,$0B,$0C,$01,$01,$72,$17
		.BYTE	$0E,$00
		.BYTE	"'WAY FROM THIS",0
		.BYTE	$0F,$00,$03,$01,$01,$60,$38
		.BYTE	$0F,$04,$08,$01,$01,$99,$17
		.BYTE	$0F,$09,$0D,$01,$01,$90,$17
		.BYTE	$0E,$00
		.BYTE	"WORLD OF GLANCES",0
		.BYTE	$0F,$00,$04,$01,$01,$55,$17
		.BYTE	$0F,$05,$07,$01,$01,$60,$17
		.BYTE	$0F,$08,$0D,$01,$01,$6C,$17
		.BYTE	$0F,$0E,$0F,$01,$01,$72,$17
		.BYTE	$0E,$00
		.BYTE	"NOWHERE TO RUN",0
		.BYTE	$0F,$00,$01,$01,$01,$5B,$38
		.BYTE	$0F,$02,$06,$01,$01,$60,$17
		.BYTE	$0F,$07,$09,$01,$01,$79,$17
		.BYTE	$0F,$0A,$0D,$01,$01,$A2,$9D
		.BYTE	$0E,$00
		.BYTE	" ",$00
		.BYTE	$12
		.BYTE	5
		.BYTE	 $B
		.BYTE	7
		.BYTE	$56 ; V
		.BYTE	 $E
		.BYTE	2
		.BYTE	 $C
		.BYTE	$81 ; Å
		.BYTE	1
		.BYTE	$1F
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$21 ; !
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$2F ; /
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$28 ; (
		.BYTE	4
		.BYTE	$56 ; V
		.BYTE	 $E
		.BYTE	$8E ; é
		.BYTE	$11
		.BYTE	 $C
		.BYTE	$81 ; Å
		.BYTE	1
		.BYTE	$1F
		.BYTE	$14
		.BYTE	1
		.BYTE	$21 ; !
		.BYTE	$14
		.BYTE	1
		.BYTE	$28 ; (
		.BYTE	$14
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	$14
		.BYTE	1
		.BYTE	$2F ; /
		.BYTE	$14
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$14
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	$14
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	$14
		.BYTE	7
		.BYTE	$57 ; W
		.BYTE	 $E
		.BYTE	2
		.BYTE	 $C
		.BYTE	$81 ; Å
		.BYTE	1
		.BYTE	$1F
		.BYTE	 $A
		.BYTE	1
		.BYTE	$21 ; !
		.BYTE	 $A
		.BYTE	1
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	 $A
		.BYTE	1
		.BYTE	$2F ; /
		.BYTE	 $A
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	 $A
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	 $A
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	 $A
		.BYTE	4
		.BYTE	$57 ; W
		.BYTE	 $E
		.BYTE	$CB ; À
		.BYTE	$11
		.BYTE	7
		.BYTE	$58 ; X
		.BYTE	 $E
		.BYTE	4
		.BYTE	 $C
		.BYTE	$81 ; Å
		.BYTE	1
		.BYTE	$1F
		.BYTE	5
		.BYTE	1
		.BYTE	$21 ; !
		.BYTE	5
		.BYTE	1
		.BYTE	$28 ; (
		.BYTE	5
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	5
		.BYTE	1
		.BYTE	$2F ; /
		.BYTE	5
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	5
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	5
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	5
		.BYTE	4
		.BYTE	$58 ; X
		.BYTE	 $E
		.BYTE	$EE ; Ó
		.BYTE	$11
		.BYTE	7
		.BYTE	$59 ; Y
		.BYTE	 $E
		.BYTE	8
		.BYTE	1
		.BYTE	$1F
		.BYTE	2
		.BYTE	1
		.BYTE	$21 ; !
		.BYTE	2
		.BYTE	1
		.BYTE	$28 ; (
		.BYTE	2
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	2
		.BYTE	1
		.BYTE	$2F ; /
		.BYTE	2
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	2
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	2
		.BYTE	1
		.BYTE	$40 ; @
		.BYTE	2
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	2
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	2
		.BYTE	4
		.BYTE	$59 ; Y
		.BYTE	 $E
		.BYTE	$11
		.BYTE	$12
		.BYTE	 $B
		.BYTE	7
		.BYTE	$5A ; Z
		.BYTE	 $E
		.BYTE	2
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$2F ; /
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$35 ; 5
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$28 ; (
		.BYTE	4
		.BYTE	$5A ; Z
		.BYTE	 $E
		.BYTE	$39 ; 9
		.BYTE	$12
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	$14
		.BYTE	1
		.BYTE	$2F ; /
		.BYTE	$14
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	$14
		.BYTE	1
		.BYTE	$35 ; 5
		.BYTE	$14
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	$14
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	$14
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$14
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$14
		.BYTE	7
		.BYTE	$5B ; [
		.BYTE	 $E
		.BYTE	2
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	 $A
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	 $A
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	 $A
		.BYTE	1
		.BYTE	$35 ; 5
		.BYTE	 $A
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	 $A
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	 $A
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	 $A
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	 $A
		.BYTE	4
		.BYTE	$5B ; [
		.BYTE	 $E
		.BYTE	$72 ; r
		.BYTE	$12
		.BYTE	7
		.BYTE	$5C ; \
		.BYTE	 $E
		.BYTE	4
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	5
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	5
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	5
		.BYTE	1
		.BYTE	$35 ; 5
		.BYTE	5
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	5
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	5
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	5
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	5
		.BYTE	4
		.BYTE	$5C ; \
		.BYTE	 $E
		.BYTE	$93 ; ì
		.BYTE	$12
		.BYTE	7
		.BYTE	$5D ; ]
		.BYTE	 $E
		.BYTE	8
		.BYTE	1
		.BYTE	$2A ; *
		.BYTE	2
		.BYTE	1
		.BYTE	$39 ; 9
		.BYTE	2
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	2
		.BYTE	1
		.BYTE	$35 ; 5
		.BYTE	2
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	2
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	2
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	2
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	2
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	2
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	2
		.BYTE	4
		.BYTE	$5D ; ]
		.BYTE	 $E
		.BYTE	$B4 ; ¥
		.BYTE	$12
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$28 ; (
		.BYTE	$0E,$00
		.BYTE	"SOME THOUGHT IT",0
		.BYTE	$0F
		.BYTE	$00
		.BYTE	$03
		.BYTE	$01
		.BYTE	$01
		.BYTE	$48
		.BYTE	$0F
		.BYTE	$12
		.BYTE	$05
		.BYTE	$0F
		.BYTE	4
		.BYTE	 $B
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	 $C
		.BYTE	 $E
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	$0E,$00
		.BYTE	"A WISHING WELL",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	1
		.BYTE	5
		.BYTE	1
		.BYTE	1
		.BYTE	$35 ; 5
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	6
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	$35 ; 5
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	9
		.BYTE	 $D
		.BYTE	1
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	$73 ; s
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$12
		.BYTE	$2D ; -
		.BYTE	 $E
		.BYTE	0
		.BYTE	"FILLED ONLY",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	5
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	6
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	9
		.BYTE	 $A
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $E
		.BYTE	0
		.BYTE	"WITH DREAMS",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	4
		.BYTE	 $A
		.BYTE	1
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$9B ; õ
		.BYTE	$12
		.BYTE	5
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$28 ; (
		.BYTE	 $E
		.BYTE	0
		.BYTE	"SOME THOUGHT IT",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	4
		.BYTE	 $B
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	 $C
		.BYTE	 $E
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	$0E,$00
		.BYTE	"AN EVIL SPELL",0
		.BYTE	$0F,$00,$01,$01,$01,$48,$23,$12,$05
		.BYTE	$0F,$02,$03,$01,$01,$35,$0F,$12,$05
		.BYTE	$0F,$04,$06,$01,$01,$35,$0F,$12,$05
		.BYTE	$0F,$07,$0C,$01,$01,$51,$73
		.BYTE	$0E,$00
		.BYTE	" ",$00
		.BYTE	$12,$2D
		.BYTE	$0E,$00
		.BYTE	"SOME STILL HEAR",0
		.BYTE	 $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	4
		.BYTE	9
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	 $A
		.BYTE	 $E
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $E
		.BYTE	0
		.BYTE	"THE SCREAMS",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	3
		.BYTE	 $A
		.BYTE	1
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$9B ; õ
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$12
		.BYTE	5
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	$28 ; (
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	$19
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	$5A ; Z
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	$E8 ; Ë
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	2
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	2
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	2
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	1
		.BYTE	$88 ; à
		.BYTE	2
		.BYTE	1
		.BYTE	$90 ; ê
		.BYTE	2
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	2
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	2
		.BYTE	1
		.BYTE	$AD ; ≠
		.BYTE	2
		.BYTE	1
		.BYTE	$B6 ; ∂
		.BYTE	2
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	2
		.BYTE	1
		.BYTE	$CC ; Ã
		.BYTE	2
		.BYTE	1
		.BYTE	$D9 ; Ÿ
		.BYTE	2
		.BYTE	1
		.BYTE	$E6 ; Ê
		.BYTE	2
		.BYTE	 $B
		.BYTE	1
		.BYTE	$B6 ; ∂
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$CC ; Ã
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$88 ; à
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$88 ; à
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$88 ; à
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$88 ; à
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$B6 ; ∂
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$F3 ; Û
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$F3 ; Û
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	 $B
		.BYTE	1
		.BYTE	$B6 ; ∂
		.BYTE	$50 ; P
		.BYTE	1
		.BYTE	$B6 ; ∂
		.BYTE	$50 ; P
		.BYTE	1
		.BYTE	$CC ; Ã
		.BYTE	$50 ; P
		.BYTE	1
		.BYTE	$CC ; Ã
		.BYTE	$50 ; P
		.BYTE	1
		.BYTE	$B6 ; ∂
		.BYTE	$50 ; P
		.BYTE	1
		.BYTE	$B6 ; ∂
		.BYTE	$50 ; P
		.BYTE	1
		.BYTE	$F3 ; Û
		.BYTE	$50 ; P
		.BYTE	1
		.BYTE	$F3 ; Û
		.BYTE	$50 ; P
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"THE JOURNEY DOWNWARD",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	3
		.BYTE	7
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	8
		.BYTE	 $A
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $B
		.BYTE	 $F
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	$10
		.BYTE	$13
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"LASTED FOR HOURS",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	$12
		.BYTE	 $B
		.BYTE	 $F
		.BYTE	4
		.BYTE	5
		.BYTE	1
		.BYTE	$12
		.BYTE	9
		.BYTE	 $F
		.BYTE	6
		.BYTE	9
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $A
		.BYTE	 $C
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $D
		.BYTE	 $F
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"MAYBE LONGER",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	3
		.BYTE	4
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	5
		.BYTE	9
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $A
		.BYTE	 $B
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"YOU KNOW IT'S",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	$12
		.BYTE	 $D
		.BYTE	 $F
		.BYTE	3
		.BYTE	7
		.BYTE	1
		.BYTE	$12
		.BYTE	7
		.BYTE	 $F
		.BYTE	8
		.BYTE	 $C
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"HARD TO SAY",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	$12
		.BYTE	$28 ; (
		.BYTE	 $F
		.BYTE	4
		.BYTE	6
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	7
		.BYTE	 $A
		.BYTE	1
		.BYTE	$12
		.BYTE	$64 ; d
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"IN A TRANCE",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	2
		.BYTE	3
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	4
		.BYTE	 $A
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"ALONG THE WAY",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	1
		.BYTE	4
		.BYTE	1
		.BYTE	$12
		.BYTE	$28 ; (
		.BYTE	 $F
		.BYTE	5
		.BYTE	8
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	9
		.BYTE	 $C
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $B
		.BYTE	7
		.BYTE	$5F ; _
		.BYTE	 $E
		.BYTE	2
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	4
		.BYTE	$5F ; _
		.BYTE	 $E
		.BYTE	$65 ; e
		.BYTE	$16
		.BYTE	7
		.BYTE	$60 ; `
		.BYTE	 $E
		.BYTE	2
		.BYTE	1
		.BYTE	$AD ; ≠
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$AD ; ≠
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$AD ; ≠
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	4
		.BYTE	$60 ; `
		.BYTE	 $E
		.BYTE	$82 ; Ç
		.BYTE	$16
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$D9 ; Ÿ
		.BYTE	 $C
		.BYTE	$12
		.BYTE	8
		.BYTE	1
		.BYTE	$F3 ; Û
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$F3 ; Û
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$F3 ; Û
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$D9 ; Ÿ
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$D9 ; Ÿ
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$90 ; ê
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	1
		.BYTE	$D9 ; Ÿ
		.BYTE	$10
		.BYTE	$12
		.BYTE	4
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$14
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $B
		.BYTE	1
		.BYTE	$72 ; r
		.BYTE	9
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $D
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	7
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$64 ; d
		.BYTE	$12
		.BYTE	$14
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $A
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $A
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	$14
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	$14
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$14
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	6
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	4
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	7
		.BYTE	$61 ; a
		.BYTE	 $E
		.BYTE	8
		.BYTE	1
		.BYTE	$88 ; à
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	4
		.BYTE	$61 ; a
		.BYTE	 $E
		.BYTE	$90 ; ê
		.BYTE	$17
		.BYTE	1
		.BYTE	$99 ; ô
		.BYTE	$21 ; !
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	$64 ; d
		.BYTE	$12
		.BYTE	$14
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	7
		.BYTE	$12
		.BYTE	3
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	7
		.BYTE	$12
		.BYTE	3
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$90 ; ê
		.BYTE	$21 ; !
		.BYTE	$12
		.BYTE	$2F ; /
		.BYTE	 $B
		.BYTE	7
		.BYTE	$62 ; b
		.BYTE	 $E
		.BYTE	$40 ; @
		.BYTE	1
		.BYTE	$80 ; Ä
		.BYTE	4
		.BYTE	1
		.BYTE	$88 ; à
		.BYTE	2
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	2
		.BYTE	1
		.BYTE	$AD ; ≠
		.BYTE	2
		.BYTE	1
		.BYTE	$C1 ; ¡
		.BYTE	4
		.BYTE	1
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	1
		.BYTE	$F3 ; Û
		.BYTE	3
		.BYTE	4
		.BYTE	$62 ; b
		.BYTE	 $E
		.BYTE	$C7 ; «
		.BYTE	$17
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$28 ; (
		.BYTE	1
		.BYTE	$D9 ; Ÿ
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$D9 ; Ÿ
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$D9 ; Ÿ
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$D9 ; Ÿ
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$B6 ; ∂
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$B6 ; ∂
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$F3 ; Û
		.BYTE	$73 ; s
		.BYTE	$12
		.BYTE	$2D ; -
		.BYTE	1
		.BYTE	$D9 ; Ÿ
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$D9 ; Ÿ
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$D9 ; Ÿ
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$D9 ; Ÿ
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	1
		.BYTE	$90 ; ê
		.BYTE	$9B ; õ
		.BYTE	$12
		.BYTE	5
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"WAITING FOR OTHERS",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	4
		.BYTE	6
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	7
		.BYTE	 $A
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $B
		.BYTE	 $D
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $E
		.BYTE	$11
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"ON A LEDGE COVERED",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	$12
		.BYTE	 $B
		.BYTE	 $F
		.BYTE	2
		.BYTE	3
		.BYTE	1
		.BYTE	$12
		.BYTE	9
		.BYTE	 $F
		.BYTE	4
		.BYTE	9
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $A
		.BYTE	 $C
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $D
		.BYTE	$11
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"WITH THE SUFFERED",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	4
		.BYTE	7
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	8
		.BYTE	 $B
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $C
		.BYTE	$10
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"REMNANTS OF",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	$12
		.BYTE	 $D
		.BYTE	 $F
		.BYTE	3
		.BYTE	7
		.BYTE	1
		.BYTE	$12
		.BYTE	7
		.BYTE	 $F
		.BYTE	8
		.BYTE	 $A
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"PREVIOUS LIFE",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	$12
		.BYTE	$28 ; (
		.BYTE	 $F
		.BYTE	3
		.BYTE	7
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	8
		.BYTE	 $C
		.BYTE	1
		.BYTE	$12
		.BYTE	$64 ; d
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"FELT THE PAIN",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	4
		.BYTE	7
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	8
		.BYTE	 $C
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"THOUGH NONE IN SIGHT",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	5
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	6
		.BYTE	 $A
		.BYTE	1
		.BYTE	$12
		.BYTE	$28 ; (
		.BYTE	 $F
		.BYTE	 $B
		.BYTE	 $D
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $E
		.BYTE	$13
		.BYTE	1
		.BYTE	$12
		.BYTE	$13
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$12
		.BYTE	1
		.BYTE	 $B
		.BYTE	1
		.BYTE	$B6 ; ∂
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $D
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	 $F
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$10
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	$17
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	$1C
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	$35 ; 5
		.BYTE	$12
		.BYTE	7
		.BYTE	1
		.BYTE	$F3 ; Û
		.BYTE	$FF
		.BYTE	$12
		.BYTE	5
		.BYTE	 $B
		.BYTE	 $E
		.BYTE	0
		.BYTE	"WITH DREAMS",$00
		.BYTE	1
		.BYTE	$B6 ; ∂
		.BYTE	$E6 ; Ê
		.BYTE	7
		.BYTE	$63 ; c
		.BYTE	 $E
		.BYTE	7
		.BYTE	 $F
		.BYTE	5
		.BYTE	5
		.BYTE	1
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	6
		.BYTE	 $F
		.BYTE	6
		.BYTE	6
		.BYTE	1
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	6
		.BYTE	 $F
		.BYTE	7
		.BYTE	7
		.BYTE	1
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	6
		.BYTE	 $F
		.BYTE	8
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	6
		.BYTE	 $F
		.BYTE	9
		.BYTE	9
		.BYTE	1
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	6
		.BYTE	 $F
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	1
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	6
		.BYTE	4
		.BYTE	$63 ; c
		.BYTE	 $E
		.BYTE	$98 ; ò
		.BYTE	$19
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$28 ; (
		.BYTE	 $E
		.BYTE	0
		.BYTE	"YOUR EARS GRASP",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	4
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	9
		.BYTE	 $E
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $E
		.BYTE	0
		.BYTE	"AT EVERY SOUND",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	2
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	6
		.BYTE	7
		.BYTE	1
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	8
		.BYTE	 $D
		.BYTE	1
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	$73 ; s
		.BYTE	$12
		.BYTE	$2D ; -
		.BYTE	 $E
		.BYTE	0	
		.BYTE	"THIS IS THE",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	4
		.BYTE	6
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	7
		.BYTE	 $A
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $E
		.BYTE	0
		.BYTE	"DUNGEON",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	3
		.BYTE	6
		.BYTE	1
		.BYTE	1
		.BYTE	$90 ; ê
		.BYTE	$14
		.BYTE	 $F
		.BYTE	3
		.BYTE	6
		.BYTE	0
		.BYTE	1
		.BYTE	$90 ; ê
		.BYTE	$87 ; á
		.BYTE	$12
		.BYTE	5
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$28 ; (
		.BYTE	 $E
		.BYTE	0
		.BYTE	"DAMP DARKNESS",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	4
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	9
		.BYTE	 $C
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $E
		.BYTE	0
		.BYTE	"IS EVERYWHERE",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	2
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	6
		.BYTE	7
		.BYTE	1
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	8
		.BYTE	 $C
		.BYTE	1
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	$73 ; s
		.BYTE	$12
		.BYTE	$2D ; -
		.BYTE	 $E
		.BYTE	0
		.BYTE	"YOU LONG FOR",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	3
		.BYTE	7
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	8
		.BYTE	 $B
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	 $F
		.BYTE	$12
		.BYTE	5
		.BYTE	 $E
		.BYTE	0
		.BYTE	"THE SUN",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	$23 ; #
		.BYTE	$12
		.BYTE	5
		.BYTE	 $F
		.BYTE	3
		.BYTE	6
		.BYTE	1
		.BYTE	1
		.BYTE	$90 ; ê
		.BYTE	$14
		.BYTE	 $F
		.BYTE	3
		.BYTE	6
		.BYTE	0
		.BYTE	1
		.BYTE	$90 ; ê
		.BYTE	$87 ; á
		.BYTE	$12
		.BYTE	5
		.BYTE	 $B
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"THE JOURNEY DOWNWARD",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	3
		.BYTE	7
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	8
		.BYTE	 $A
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $B
		.BYTE	 $F
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	$10
		.BYTE	$13
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"COULD LAST FOREVER",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	$12
		.BYTE	 $B
		.BYTE	 $F
		.BYTE	5
		.BYTE	9
		.BYTE	1
		.BYTE	$12
		.BYTE	9
		.BYTE	 $F
		.BYTE	 $A
		.BYTE	 $D
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$11
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	"ENDING NEVER",$00
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	3
		.BYTE	5
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	6
		.BYTE	9
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	 $A
		.BYTE	 $B
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	$4E ; N
		.BYTE	$45 ; E
		.BYTE	$56 ; V
		.BYTE	$45 ; E
		.BYTE	$52 ; R
		.BYTE	$20
		.BYTE	$43 ; C
		.BYTE	$4F ; O
		.BYTE	$55 ; U
		.BYTE	$4C ; L
		.BYTE	$44 ; D
		.BYTE	0
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	$12
		.BYTE	 $D
		.BYTE	 $F
		.BYTE	3
		.BYTE	4
		.BYTE	1
		.BYTE	$12
		.BYTE	7
		.BYTE	 $F
		.BYTE	5
		.BYTE	 $A
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	$42 ; B
		.BYTE	$45 ; E
		.BYTE	$20
		.BYTE	$54 ; T
		.BYTE	$48 ; H
		.BYTE	$49 ; I
		.BYTE	$53 ; S
		.BYTE	$20
		.BYTE	$57 ; W
		.BYTE	$41 ; A
		.BYTE	$59 ; Y
		.BYTE	0
		.BYTE	 $F
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	$12
		.BYTE	$28 ; (
		.BYTE	 $F
		.BYTE	2
		.BYTE	6
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	7
		.BYTE	 $A
		.BYTE	1
		.BYTE	$12
		.BYTE	$64 ; d
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	$57 ; W
		.BYTE	$48 ; H
		.BYTE	$4F ; O
		.BYTE	$20
		.BYTE	$41 ; A
		.BYTE	$52 ; R
		.BYTE	$45 ; E
		.BYTE	$20
		.BYTE	$59 ; Y
		.BYTE	$4F ; O
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	 $F
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	3
		.BYTE	6
		.BYTE	1
		.BYTE	$12
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	7
		.BYTE	 $A
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $E
		.BYTE	0
		.BYTE	$41 ; A
		.BYTE	$4D ; M
		.BYTE	$20
		.BYTE	$49 ; I
		.BYTE	$20
		.BYTE	$54 ; T
		.BYTE	$4F ; O
		.BYTE	$20
		.BYTE	$53 ; S
		.BYTE	$41 ; A
		.BYTE	$59 ; Y
		.BYTE	0
		.BYTE	 $F
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	2
		.BYTE	3
		.BYTE	1
		.BYTE	$12
		.BYTE	$28 ; (
		.BYTE	 $F
		.BYTE	4
		.BYTE	6
		.BYTE	1
		.BYTE	$12
		.BYTE	$14
		.BYTE	 $F
		.BYTE	7
		.BYTE	 $A
		.BYTE	1
		.BYTE	$12
		.BYTE	$13
		.BYTE	 $E
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	$12
		.BYTE	1
		.BYTE	 $B
		.BYTE	2
		.BYTE	 $A
		.BYTE	8
		.BYTE	7
		.BYTE	$5E ; ^
		.BYTE	 $E
		.BYTE	8
		.BYTE	1
		.BYTE	$2D ; -
		.BYTE	3
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	2
		.BYTE	1
		.BYTE	$35 ; 5
		.BYTE	3
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	2
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	3
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	2
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	3
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	2
		.BYTE	1
		.BYTE	$5C ; \
		.BYTE	3
		.BYTE	1
		.BYTE	$60 ; `
		.BYTE	2
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	3
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	2
		.BYTE	1
		.BYTE	$88 ; à
		.BYTE	3
		.BYTE	1
		.BYTE	$90 ; ê
		.BYTE	2
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	3
		.BYTE	1
		.BYTE	$B6 ; ∂
		.BYTE	2
		.BYTE	1
		.BYTE	$B7 ; ∑
		.BYTE	3
		.BYTE	1
		.BYTE	$A2 ; ¢
		.BYTE	2
		.BYTE	1
		.BYTE	$90 ; ê
		.BYTE	3
		.BYTE	1
		.BYTE	$88 ; à
		.BYTE	2
		.BYTE	1
		.BYTE	$79 ; y
		.BYTE	3
		.BYTE	1
		.BYTE	$6C ; l
		.BYTE	2
		.BYTE	1
		.BYTE	$66 ; f
		.BYTE	3
		.BYTE	1
		.BYTE	$5B ; [
		.BYTE	2
		.BYTE	1
		.BYTE	$5C ; \
		.BYTE	3
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	2
		.BYTE	1
		.BYTE	$48 ; H
		.BYTE	3
		.BYTE	1
		.BYTE	$44 ; D
		.BYTE	2
		.BYTE	1
		.BYTE	$3C ; <
		.BYTE	3
		.BYTE	1
		.BYTE	$35 ; 5
		.BYTE	2
		.BYTE	1
		.BYTE	$32 ; 2
		.BYTE	3
		.BYTE	1
		.BYTE	$2E ; .
		.BYTE	2
		.BYTE	4
		.BYTE	$5E ; ^
		.BYTE	 $E
		.BYTE	$53 ; S
		.BYTE	$1C
		.BYTE	2
		.BYTE	$4F ; O
		.BYTE	8
		.BYTE	 $B
		.BYTE	1
		.BYTE	$F3 ; Û
		.BYTE	4
		.BYTE	7
		.BYTE	$64 ; d
		.BYTE	 $E
		.BYTE	 $D
		.BYTE	1
		.BYTE	$F3 ; Û
		.BYTE	3
		.BYTE	$12
		.BYTE	3
		.BYTE	4
		.BYTE	$64 ; d
		.BYTE	 $E
		.BYTE	$C3 ; √
		.BYTE	$1C
		.BYTE	 $B
		.BYTE	0
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BC ; º
		.BYTE	$D2 ; “
		.BYTE	$C5 ; ≈
		.BYTE	$D3 ; ”
		.BYTE	$D4 ; ‘
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BC ; º
		.BYTE	$C5 ; ≈
		.BYTE	$CE ; Œ
		.BYTE	$C4 ; -
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$C1 ; ¡
		.BYTE	$CD ; Õ
		.BYTE	$D0 ; –
		.BYTE	$C3 ; √
		.BYTE	$C1 ; ¡
		.BYTE	$D3 ; ”
		.BYTE	$C5 ; ≈
		.BYTE	$C8 ; »
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$C5 ; ≈
		.BYTE	$CE ; Œ
		.BYTE	$C4 ; -
		.BYTE	$D6 ; ÷
		.BYTE	$CF ; œ
		.BYTE	$C9 ; …
		.BYTE	$C3 ; √
		.BYTE	$C5 ; ≈
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$CE ; Œ
		.BYTE	$CF ; œ
		.BYTE	$D4 ; ‘
		.BYTE	$C5 ; ≈
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$C9 ; …
		.BYTE	$CE ; Œ
		.BYTE	$D3 ; ”
		.BYTE	$D4 ; ‘
		.BYTE	$D2 ; “
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$C1 ; ¡
		.BYTE	$C4 ; -
		.BYTE	$D3 ; ”
		.BYTE	$D2 ; “
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$CE ; Œ
		.BYTE	$C5 ; ≈
		.BYTE	$D8 ; ÿ
		.BYTE	$D4 ; ‘
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$CA ;  
		.BYTE	$D5 ; ’
		.BYTE	$CD ; Õ
		.BYTE	$D0 ; –
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$D2 ; “
		.BYTE	$CA ;  
		.BYTE	$D5 ; ’
		.BYTE	$CD ; Õ
		.BYTE	$D0 ; –
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$D3 ; ”
		.BYTE	$C5 ; ≈
		.BYTE	$D4 ; ‘
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C8 ; »
		.BYTE	$C5 ; ≈
		.BYTE	$D8 ; ÿ
		.BYTE	$A0 ; †
		.BYTE	$B0 ; ∞
		.BYTE	$B0 ; ∞
		.BYTE	$A0 ; †
		.BYTE	$BB ; ª
		.BYTE	$C1 ; ¡
		.BYTE	$C4 ; -
		.BYTE	$C4 ; -
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C8 ; »
		.BYTE	$C5 ; ≈
		.BYTE	$D8 ; ÿ
		.BYTE	$A0 ; †
		.BYTE	$B0 ; ∞
		.BYTE	$B0 ; ∞
		.BYTE	$A0 ; †
		.BYTE	$BB ; ª
		.BYTE	$D3 ; ”
		.BYTE	$D5 ; ’
		.BYTE	$C2 ; ¬
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$C7 ; «
		.BYTE	$CF ; œ
		.BYTE	$D3 ; ”
		.BYTE	$D5 ; ’
		.BYTE	$C2 ; ¬
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$D2 ; “
		.BYTE	$C5 ; ≈
		.BYTE	$D4 ; ‘
		.BYTE	$D2 ; “
		.BYTE	$CE ; Œ
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$D3 ; ”
		.BYTE	$D9 ; Ÿ
		.BYTE	$CE ; Œ
		.BYTE	$C3 ; √
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$D7 ; ◊
		.BYTE	$C1 ; ¡
		.BYTE	$C9 ; …
		.BYTE	$D4 ; ‘
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$CC ; Ã
		.BYTE	$D9 ; Ÿ
		.BYTE	$D2 ; “
		.BYTE	$C9 ; …
		.BYTE	$C3 ; √
		.BYTE	$CD ; Õ
		.BYTE	$C4 ; -
		.BYTE	$AD ; ≠
		.BYTE	$B1 ; ±
		.BYTE	$8D ; ç
		.BYTE	$A0 ; †
		.BYTE	$C4 ; -
		.BYTE	$C6 ; ∆
		.BYTE	$C2 ; ¬
		.BYTE	$A0 ; †
		.BYTE	$BE ; æ
		.BYTE	$C3 ; √
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	$CF ; œ
		.BYTE	$D2 ; “
		.BYTE	$C3 ; √
; ---------------------------------------------------------------------------

loc_1E00:				; CODE XREF: RAM:222Avj
		LDX	#0

loc_1E02:				; CODE XREF: RAM:1E0Fvj
		LDA	loc_1E14,X
		STA	$6300,X
		LDA	loc_1E14+$0100,X
		STA	$6300+$0100,X
		INX
		BNE	loc_1E02
		JMP	loc_6300
loc_1E14:
; ---------------------------------------------------------------------------
		.SEGMENT	"SEG_6300"

loc_6300:				; DATA XREF: RAM:loc_1E02^r
		LDX	#8
		LDA	#0

loc_1E18:				; CODE XREF: RAM:1E1Cvj
		STA	$D200,X
		DEX
		BPL	loc_1E18
		dldi	SDLST, $640D
		LDA	$14

loc_1E2A:				; CODE XREF: RAM:1E2Cvj
		CMP	$14
		BEQ	loc_1E2A
		dldi	DAUX, $0205
		dldi	DBUF, $100

loc_1E42:				; CODE XREF: RAM:1E45vj
		JSR	DSKINV
		BMI	loc_1E42
		INC	DAUX
		dldi	DBUF, $1400
		LDA	#158
		STA	$88
		JSR	loc_6368
		dldi	DAUX, 205
		dldi	DBUF, $8000
		LDA	#$14
		STA	$88
		JSR	loc_6368
		JSR	loc_6391
		JMP	$807E
; ---------------------------------------------------------------------------

loc_1E7C:				; CODE XREF: RAM:1E86vj	RAM:1EA0vj
		JSR	DSKINV
		BPL	loc_1E88
		LDA	#$34 ; '4'
		STA	COLBK
		BNE	loc_1E7C

loc_1E88:				; CODE XREF: RAM:1E7F^j
		CLC
		LDA	DBUF
		ADC	#$80
		STA	DBUF
		BCC	loc_1E96
		INC	DBUF+1

loc_1E96:				; CODE XREF: RAM:1E91^j
		INC	DAUX
		BNE	loc_1E9E
		INC	DAUX+1

loc_1E9E:				; CODE XREF: RAM:1E99^j
		DEC	$88
		BNE	loc_1E7C
		RTS
; ---------------------------------------------------------------------------
		.BYTE	0
		.BYTE	$4F ; O
; ---------------------------------------------------------------------------
		LDY	#0

loc_1EA7:				; CODE XREF: RAM:1EB7vj
		LDX	#0

loc_1EA9:				; CODE XREF: RAM:1EB5vj
		LDA	$100,X
		STA	$100,Y
		INY
		BMI	loc_1EB9
		INX
		CPX	#$10
		BCC	loc_1EA9
		BCS	loc_1EA7

loc_1EB9:				; CODE XREF: RAM:1EB0^j
		LDY	#0
		STY	$86
		STY	$87
		dldi	off_82, $1400
		LDX	byte_6390
		STX	$85
		LDX	#0

loc_1ECE:				; CODE XREF: RAM:1EE0vj	RAM:1EE6vj
		LDA	(off_82),Y
		LSR	A
		BCC	loc_1ED5
		ORA	#$80

loc_1ED5:				; CODE XREF: RAM:1ED1^j
		EOR	$100,X
		STA	(off_82),Y
		INX
		BPL	loc_1EDF
		LDX	#0

loc_1EDF:				; CODE XREF: RAM:1EDB^j
		INY
		BNE	loc_1ECE
		INC	$83
		DEC	$85
		BNE	loc_1ECE
		dldi	off_82, $1400
		LDY	#0
		LDX	byte_6390
		BEQ	loc_1F0A

loc_1EF7:				; CODE XREF: RAM:1F03vj	RAM:1F08vj
		LDA	(off_82),Y
		CLC
		ADC	$86
		STA	$86
		BCC	loc_1F02
		INC	$87

loc_1F02:				; CODE XREF: RAM:1EFE^j
		INY
		BNE	loc_1EF7
		INC	$83
		DEX
		BNE	loc_1EF7

loc_1F0A:				; CODE XREF: RAM:1EF5^j
		LDA	$86
		CMP	$104
		BNE	loc_1F19
		LDA	$87

loc_1F13:				; DATA XREF: RAM:1E08^r
		CMP	$105
		BNE	loc_1F19
		RTS
; ---------------------------------------------------------------------------

loc_1F19:				; CODE XREF: RAM:1F0F^j	RAM:1F16^j
		LDA	#$1E
		STA	COLBK
		JMP	$E477
; ---------------------------------------------------------------------------
		.BYTE	$70 ; p
		.BYTE	$41 ; A
		.WORD $640D
		.RES	219,$00
; ---------------------------------------------------------------------------
		.SEGMENT	"SEG_2000"

		LDX	#$FF
		TXS
		JSR	sub_2D75
		LDA	#0
		STA	$89
		STA	$97
		LDA	#6
		LDX	#$22 ; '"'
		LDY	#$43 ; 'C'
		JSR	$E45C
		JSR	sub_2458
		JSR	sub_25A3
		INC	$89
		LDX	#$1E
		JSR	sub_245F
		LDX	#8
		LDY	#0
		JSR	sub_2D99
		LDA	#1
		JSR	sub_2466
		LDY	#$2B ; '+'

loc_2030:				; CODE XREF: RAM:2047vj
		LDX	#3
		JSR	sub_245F
		SEC
		LDA	byte_2807
		SBC	#$28 ; '('
		STA	byte_2807
		LDA	byte_2808
		SBC	#0
		STA	byte_2808
		DEY
		BNE	loc_2030
		LDA	#0
		STA	$86

loc_204D:				; CODE XREF: RAM:207Fvj
		LDA	#0
		STA	$BD

loc_2051:				; CODE XREF: RAM:2053vj
		LDA	$BD
		BEQ	loc_2051
		LDA	#0
		STA	$BD
		JSR	sub_2538

loc_205C:				; CODE XREF: RAM:2073vj
		LDA	$BD
		BNE	loc_2076
		JSR	sub_2458
		LDA	$14
		AND	#1
		TAX
		LDY	#3
		LDA	unk_2599,X

loc_206D:				; CODE XREF: RAM:2071vj
		STA	COLPM0,Y
		DEY
		BPL	loc_206D
		JMP	loc_205C
; ---------------------------------------------------------------------------

loc_2076:				; CODE XREF: RAM:205E^j
		JSR	sub_222D
		INC	$86
		LDA	$86
		CMP	#4
		BCC	loc_204D
		LDA	#0
		LDX	#3

loc_2085:				; CODE XREF: RAM:2089vj
		STA	COLPM0,X
		DEX
		BPL	loc_2085
		LDA	#6
		JSR	sub_2466
		LDX	#5
		dldi	off_82, $BB00
		LDA	#0
		TAY

loc_209D:				; CODE XREF: RAM:20A0vj	RAM:20A5vj
		STA	(off_82),Y
		INY
		BNE	loc_209D
		INC	$83
		DEX
		BNE	loc_209D
		DEC	$83
		LDA	#$FF
		LDX	#5

loc_20AD:				; CODE XREF: RAM:20B7vj
		LDY	#$E0 ; '‡'

loc_20AF:				; CODE XREF: RAM:20B2vj
		STA	(off_82),Y
		INY
		BNE	loc_20AF
		DEC	$83
		DEX
		BNE	loc_20AD
		STA	SIZEM
		LDA	#3
		TAX

loc_20BF:				; CODE XREF: RAM:20C3vj
		STA	$D008,X
		DEX
		BPL	loc_20BF
		LDX	#7

loc_20C7:				; CODE XREF: RAM:20CEvj
		LDA	unk_279D,X
		STA	$D000,X
		DEX
		BPL	loc_20C7
		ldi	PRIOR, $01
		LDA	#0
		STA	$86
		LDA	#$44 ; 'D'
		STA	$8A
		LDA	#$1A
		STA	$8B
		LDA	#6
		STA	$8E
		LDA	#$28 ; '('
		STA	$8F
		LDA	#$30 ; '0'
		STA	$90
		LDA	#$28 ; '('
		STA	$91
		LDA	#$12
		STA	$8D

loc_20F5:				; CODE XREF: RAM:20FAvj
		JSR	sub_247D
		DEC	$8D
		BNE	loc_20F5
		JSR	sub_247D
		LDA	#$29 ; ')'
		STA	$8D

loc_2103:				; CODE XREF: RAM:210Evj
		JSR	sub_247D
		JSR	sub_247D
		JSR	sub_24EB
		DEC	$8D
		BNE	loc_2103
		JSR	sub_24EB
		dmv	off_82, $90
		LDY	$8B
		INY
		LDX	#0

loc_2120:				; CODE XREF: RAM:2129vj
		LDA	unk_2799,X
		STA	(off_82),Y
		INY
		INX
		CPX	#4
		BCC	loc_2120
		JSR	sub_24EB
		dmv	off_82, $90
		LDY	$8B
		DEY
		LDX	#0

loc_213B:				; CODE XREF: RAM:2144vj
		LDA	unk_279A,X
		STA	(off_82),Y
		INY
		INX
		CPX	#3
		BCC	loc_213B
		LDY	$8B
		DEY
		DEY
		DEY
		DEY
		LDA	#$E
		STA	(off_82),Y
		INC	$89
		LDX	#$19
		JSR	sub_2505
		LDA	#7
		STA	$8D

loc_215B:				; CODE XREF: RAM:2162vj
		LDX	#4
		JSR	sub_2505
		DEC	$8D
		BNE	loc_215B
		LDA	byte_2748
		STA	byte_274C
		LDA	#0
		STA	byte_2748
		LDX	#3
		JSR	sub_2505
		LDX	#$F0 ; ''
		JSR	sub_245F
		LDX	#$3C ; '<'
		JSR	sub_245F
		LDA	#$A
		STA	$8D

loc_2182:				; CODE XREF: RAM:2194vj
		LDA	#$60 ; '`'
		STA	byte_2800
		JSR	sub_2458
		LDA	#$70 ; 'p'
		STA	byte_2800
		JSR	sub_2458
		DEC	$8D
		BNE	loc_2182
		LDA	#2
		STA	$8D

loc_219A:				; CODE XREF: RAM:2210vj
		LDX	$8D
		LDA	unk_5422,X
		STA	$93
		LDA	unk_5425,X
		STA	$94
		LDA	unk_5429,X
		STA	$95
		LDA	unk_542C,X
		STA	$96
		LDA	unk_541C,X
		STA	loc_21D1+1
		LDA	unk_541F,X
		STA	loc_21D1+2
		LDX	#2
		JSR	sub_245F

loc_21C1:				; CODE XREF: RAM:21E6vj
		LDX	$96
		LDA	$6800,X
		STA	off_82
		LDA	$6500,X
		STA	off_82+1
		LDX	$93
		LDY	$95

loc_21D1:				; CODE XREF: RAM:21E0vj
					; DATA XREF: RAM:21B3^w	...
		LDA	$FFFF
		STA	(off_82),Y
		INC	loc_21D1+1
		BNE	loc_21DE
		INC	loc_21D1+2

loc_21DE:				; CODE XREF: RAM:21D9^j
		INY
		DEX
		BNE	loc_21D1
		INC	$96
		DEC	$94
		BNE	loc_21C1
		LDY	$8D
		LDA	unk_542D,Y
		STA	$96
		LDX	unk_5426,Y

loc_21F2:				; CODE XREF: RAM:220Avj
		LDY	$96
		LDA	$6800,Y
		STA	off_82
		LDA	$6500,Y
		STA	off_82+1
		LDY	#$27 ; '''
		LDA	#0

loc_2202:				; CODE XREF: RAM:2205vj
		STA	(off_82),Y
		DEY
		BPL	loc_2202
		INC	$96
		DEX
		BNE	loc_21F2
		DEC	$8D
		BMI	loc_2213
		JMP	loc_219A
; ---------------------------------------------------------------------------

loc_2213:				; CODE XREF: RAM:220E^j
		LDA	#0
		JSR	sub_243A
		INC	$89
		LDA	#7
		JSR	sub_2466
		JSR	sub_292A
		INC	$89

loc_2224:				; CODE XREF: RAM:loc_2224vj
		JMP	loc_2224
; ---------------------------------------------------------------------------
		LDX	#$FF
		TXS
		JMP	loc_1E00

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_222D:				; CODE XREF: RAM:loc_2076^p
		LDA	#0
		TAX

loc_2230:				; CODE XREF: sub_222D+13vj
		STA	$BB00,X
		STA	$BC00,X
		STA	$BD00,X
		STA	$BE00,X
		STA	$BF00,X
		DEX
		BNE	loc_2230
		RTS
; End of function sub_222D

; ---------------------------------------------------------------------------
		CLD
		INC	$14
		LDA	$89
		ASL	A
		TAX
		LDA	off_241C,X
		STA	loc_22AA+1
		LDA	off_241C+1,X
		STA	loc_22AA+2
		JSR	loc_22AA
		BIT	$97
		BMI	loc_2270
		DEC	$97
		JSR	sub_2DDB
		LDA	#8
		STA	CONSOL
		LDA	CONSOL
		CMP	#6		; start pressed
		BEQ	loc_2278
		INC	$97

loc_2270:				; CODE XREF: RAM:225B^j	RAM:22A7vj
		PLA
		TAY
		PLA
		TAX
		PLA
		RTI
; ---------------------------------------------------------------------------

loc_2276:				; DATA XREF: RAM:2430vo
		PLA
		PLA

loc_2278:				; CODE XREF: RAM:226C^j
		dldi	VVBLKI, $E45F
		dldi	SDLST, $22AD
		LDA	#0
		LDX	#7

loc_2290:				; CODE XREF: RAM:2294vj
		STA	$D000,X
		DEX
		BPL	loc_2290
		STA	$22F
		STA	DMACTL
		TSX
		LDA	#$27 ; '''
		STA	$105,X
		LDA	#$22 ; '"'
		STA	$106,X
		JMP	loc_2270
; ---------------------------------------------------------------------------

loc_22AA:				; CODE XREF: RAM:2256^p
					; DATA XREF: RAM:224D^w	...
		JMP	$FFFF
; ---------------------------------------------------------------------------
		.BYTE	$41 ; A
		.BYTE	$AD ; ≠
		.BYTE	$22 ; "
; ---------------------------------------------------------------------------

loc_22B0:				; DATA XREF: RAM:off_241Cvo
		dldi	DLIST, $22AD
		ldi	NMIEN, $40
		RTS
; ---------------------------------------------------------------------------

loc_22C0:				; DATA XREF: RAM:241Evo
		ldi	DMACTL, $3E
		ldi	NMIEN, $C0
		dldi	DLIST, $2800
		dldi	off_200, $28EE
		ldi	CHBASE, $98
		LDX	#3

loc_22E5:				; CODE XREF: RAM:22ECvj
		LDA	byte_27AB,X
		STA	$D016,X
		DEX
		BPL	loc_22E5
		LDA	unk_27A9,X
		STA	COLPF3
		RTS
; ---------------------------------------------------------------------------

loc_22F5:				; DATA XREF: RAM:2420vo
		ldi	NMIEN, $40
		LDX	#2

loc_22FC:				; CODE XREF: RAM:2303vj
		LDA	byte_27AB,X
		STA	$D016,X
		DEX
		BPL	loc_22FC
		RTS
; ---------------------------------------------------------------------------

loc_2306:				; DATA XREF: RAM:242Evo
		ldi	NMIEN, $C0
		dldi	off_200, $23E4
		ldi	byte_2861, $8E
		LDX	#2

loc_231C:				; CODE XREF: RAM:2323vj
		LDA	unk_2413,X
		STA	$D016,X
		DEX
		BPL	loc_231C
		RTS
; ---------------------------------------------------------------------------

loc_2326:				; DATA XREF: RAM:2422vo
		LDX	#2

loc_2328:				; CODE XREF: RAM:232Fvj
		LDA	unk_240D,X
		STA	$D016,X
		DEX
		BPL	loc_2328
		RTS
; ---------------------------------------------------------------------------

loc_2332:				; DATA XREF: RAM:2424vo
		ldi	NMIEN, $C0
		dldi	off_200, $239E
		LDX	#2

loc_2343:				; CODE XREF: RAM:234Avj
		LDA	unk_2410,X
		STA	$D016,X
		DEX
		BPL	loc_2343
		LDA	#$8E
		STA	byte_284D
		RTS
; ---------------------------------------------------------------------------

loc_2352:				; DATA XREF: RAM:2426vo
		LDA	#$40
		STA	NMIEN
		LDX	#2

loc_2359:				; CODE XREF: RAM:2360vj
		LDA	unk_2410,X
		STA	$D016,X
		DEX
		BPL	loc_2359
		LDA	#$E
		STA	byte_284D
		RTS
; ---------------------------------------------------------------------------

loc_2368:				; DATA XREF: RAM:2428vo
		LDA	#$C0
		STA	NMIEN
		dldi	off_200, $23B9
		LDX	#2

loc_2379:				; CODE XREF: RAM:2380vj
		LDA	unk_2410,X
		STA	$D016,X
		DEX
		BPL	loc_2379
		LDA	#$8E
		STA	byte_2856
		RTS
; ---------------------------------------------------------------------------

loc_2388:				; DATA XREF: RAM:242Avo	RAM:242Cvo
		LDA	#$40
		STA	NMIEN
		LDX	#2

loc_238F:				; CODE XREF: RAM:2396vj
		LDA	unk_2410,X
		STA	$D016,X
		DEX
		BPL	loc_238F
		LDA	#$E
		STA	byte_2856
		RTS
; ---------------------------------------------------------------------------
		PHA
		TXA
		PHA
		LDA	byte_2412
		CLC
		LDX	#$C

loc_23A7:				; CODE XREF: RAM:23B3vj
		STA	WSYNC
		STA	WSYNC
		ADC	#1
		STA	COLPF2
		DEX
		BNE	loc_23A7
		PLA
		TAX
		PLA
		RTI
; ---------------------------------------------------------------------------
		PHA
		TXA
		PHA
		LDX	#7

loc_23BE:				; CODE XREF: RAM:23C8vj
		LDA	unk_2432,X
		STA	WSYNC
		STA	COLPF1
		DEX
		BPL	loc_23BE
		LDX	#7
		SEC

loc_23CD:				; CODE XREF: RAM:23D6vj
		STA	WSYNC
		STA	COLPF1
		SBC	#2
		DEX
		BPL	loc_23CD
		LDA	#$5A
		STA	WSYNC
		STA	COLPF1
		PLA
		TAX
		PLA
		RTI
; ---------------------------------------------------------------------------
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	byte_2414
		LDY	byte_2415
		DEX
		DEX
		INY
		INY
		LDA	#6
		SEC

loc_23F6:				; CODE XREF: RAM:2405vj
		STA	WSYNC
		STX	COLPF1
		STY	COLPF2
		DEX
		DEX
		INY
		INY
		SBC	#1
		BNE	loc_23F6
		PLA
		TAY
		PLA
		TAX
		PLA
		RTI
; ---------------------------------------------------------------------------
unk_240D:	.BYTE	 $E		; DATA XREF: RAM:loc_2328^r
		.BYTE	$4A ; J
		.BYTE	$46 ; F
unk_2410:	.BYTE	 $E		; DATA XREF: RAM:loc_2343^r
					; RAM:loc_2359^r ...
		.BYTE	$5A ; Z
byte_2412:	.BYTE	$52		; DATA XREF: RAM:23A1^r
unk_2413:	.BYTE	 $E		; DATA XREF: RAM:loc_231C^r
byte_2414:	.BYTE	$4F		; DATA XREF: RAM:23E9^r
byte_2415:	.BYTE	$82		; DATA XREF: RAM:23EC^r
		.BYTE	1
		.BYTE	1
		.BYTE	$46 ; F
		.BYTE	$82 ; Ç
		.BYTE	$4E ; N
		.BYTE	$8A ; ä
off_241C:	.WORD loc_22B0		; DATA XREF: RAM:224A^r	RAM:2250^r
		.WORD loc_22C0
		.WORD loc_22F5
		.WORD loc_2326
		.WORD loc_2332
		.WORD loc_2352
		.WORD loc_2368
		.WORD loc_2388
		.WORD loc_2388
		.WORD loc_2306
		.WORD loc_2276
unk_2432:	.BYTE	$5E ; ^		; DATA XREF: RAM:loc_23BE^r
		.BYTE	$64 ; d
		.BYTE	$86 ; Ü
		.BYTE	$C6 ; ∆
		.BYTE	$1E
		.BYTE	$26 ; &
		.BYTE	$36 ; 6
		.BYTE	$36 ; 6

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_243A:				; CODE XREF: RAM:2215^p	sub_25A3+11Bvp
		STA	$87
		LDX	#$C0 ; '¿'

loc_243E:				; CODE XREF: sub_243A+1Bvj
		LDA	$67FF,X
		STA	loc_244E+1
		LDA	$64FF,X
		STA	loc_244E+2
		LDY	#$27 ; '''
		LDA	$87

loc_244E:				; CODE XREF: sub_243A+18vj
					; DATA XREF: sub_243A+7^w ...
		STA	$FFFF,Y
		DEY
		BPL	loc_244E
		DEX
		BNE	loc_243E
		RTS
; End of function sub_243A


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2458:				; CODE XREF: RAM:2015^p	RAM:2060^p ...
		LDA	$14

loc_245A:				; CODE XREF: sub_2458+4vj
		CMP	$14
		BEQ	loc_245A
		RTS
; End of function sub_2458


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_245F:				; CODE XREF: RAM:201F^p	RAM:2032^p ...
		JSR	sub_2458
		DEX
		BNE	sub_245F
		RTS
; End of function sub_245F


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2466:				; CODE XREF: RAM:202B^p	RAM:208D^p ...
		CMP	$BD
		BNE	sub_2466
		RTS
; End of function sub_2466


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_246B:				; CODE XREF: sub_246B+3vj RAM:2471vp
		LDA	TRIG0
		BNE	sub_246B
		RTS
; End of function sub_246B

; ---------------------------------------------------------------------------
		JSR	sub_246B

loc_2474:				; CODE XREF: RAM:2477vj
		LDA	TRIG0
		BEQ	loc_2474
		JSR	sub_2458
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_247D:				; CODE XREF: RAM:loc_20F5^p RAM:20FC^p ...
		LDX	$8F
		LDY	$8E
		STY	off_80
		INY
		STY	off_82
		STX	off_80+1
		STX	off_82+1
		LDY	$8A
		INC	$8E
		BNE	loc_2492
		INC	$8F

loc_2492:				; CODE XREF: sub_247D+11^j
		INC	$90
		BNE	loc_2498
		INC	$91

loc_2498:				; CODE XREF: sub_247D+17^j
					; sub_24EB:loc_2502vj
		LDX	#4
		JSR	sub_245F

loc_249D:				; CODE XREF: sub_247D+25vj
		LDA	(off_80),Y
		STA	(off_82),Y
		DEY
		BNE	loc_249D
		LDA	(off_80),Y
		STA	(off_82),Y
		LDA	#$E
		STA	(off_80),Y
		DEC	$86
		LDA	$86
		AND	#1
		BNE	loc_24C8
		DEC	$88
		INC	byte_2901
		INC	byte_28FE
		INC	byte_290D
		INC	byte_2913
		INC	byte_291C
		INC	byte_2922

loc_24C8:				; CODE XREF: sub_247D+35^j
		LDA	$86
		AND	#7
		BNE	loc_24D2
		DEC	$8A
		DEC	$8B

loc_24D2:				; CODE XREF: sub_247D+4F^j
		dmv	off_82, $90
		LDY	$8B
		INY
		LDX	#0

loc_24DF:				; CODE XREF: sub_247D+6Bvj
		LDA	unk_279A,X
		STA	(off_82),Y
		INY
		INX
		CPX	#3
		BCC	loc_24DF
		RTS
; End of function sub_247D


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_24EB:				; CODE XREF: RAM:2109^p	RAM:2110^p ...
		LDX	$91
		LDY	$90
		STY	off_80
		INY
		STY	off_82
		STX	off_80+1
		STX	off_82+1
		LDY	$8B
		INC	$8A
		INC	$90
		BNE	loc_2502
		INC	$91

loc_2502:				; CODE XREF: sub_24EB+13^j
		JMP	loc_2498
; End of function sub_24EB


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2505:				; CODE XREF: RAM:2154^p	RAM:215D^p ...
		LDA	byte_2748,X
		STA	byte_27AB
		LDA	#$10
		STA	$92

loc_250F:				; CODE XREF: sub_2505+2Dvj
		LDY	unk_2763,X

loc_2512:				; CODE XREF: sub_2505+10vj sub_2505+21vj
		CMP	VCOUNT
		BNE	loc_2512
		LDA	unk_2749,X
		STA	WSYNC
		STA	$D016
		JSR	sub_2458
		LDA	$92
		DEY
		BNE	loc_2512
		CLC
		LDA	$92
		ADC	unk_277E,X
		STA	$92
		CMP	#$70 ; 'p'
		BCC	loc_250F
		DEX
		BPL	sub_2505
		RTS
; End of function sub_2505


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2538:				; CODE XREF: RAM:2059^p
		LDX	#3
		LDA	#$34 ; '4'

loc_253C:				; CODE XREF: sub_2538+8vj
		STA	COLPM0,X
		DEX
		BPL	loc_253C
		LDA	$86
		AND	#1
		ASL	A
		ASL	A
		TAY
		LDX	#0

loc_254B:				; CODE XREF: sub_2538+1Dvj
		LDA	unk_259B,Y
		STA	$D000,X
		INY
		INX
		CPX	#4
		BCC	loc_254B
		LDA	#$48
		STA	off_82
		LDA	#$10
		STA	$98

loc_255F:				; CODE XREF: sub_2538+5Evj
		DEC	$98
		LDA	#$BC
		STA	off_82+1
		LDA	$86
		ASL	A
		ASL	A
		TAX
		LDA	#4
		STA	$8D

loc_256E:				; CODE XREF: sub_2538+57vj
		LDA	unk_5198,X
		STA	off_80
		LDA	unk_51A8,X
		STA	off_80+1
		LDY	#3

loc_257A:				; CODE XREF: sub_2538+50vj
		LDA	(off_80),Y
		BIT	$98
		BMI	loc_2583
		AND	RANDOM

loc_2583:				; CODE XREF: sub_2538+46^j
		STA	(off_82),Y
		INY
		CPY	#$88 ; 'à'
		BCC	loc_257A
		INX
		INC	$83
		DEC	$8D
		BNE	loc_256E
		JSR	sub_2458
		BIT	$98
		BPL	loc_255F
		RTS
; End of function sub_2538

; ---------------------------------------------------------------------------
unk_2599:	.BYTE	$1E		; DATA XREF: RAM:206A^r
		.BYTE	$44 ; D
unk_259B:	.BYTE	$60 ; `		; DATA XREF: sub_2538:loc_254B^r
		.BYTE	$68 ; h
		.BYTE	$70 ; p
		.BYTE	$78 ; x
		.BYTE	$80 ; Ä
		.BYTE	$88 ; à
		.BYTE	$90 ; ê
		.BYTE	$98 ; ò

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_25A3:				; CODE XREF: RAM:2018^p
		LDX	#7

loc_25A5:				; CODE XREF: sub_25A3+6vj
		STA	$D000,X
		DEX
		BPL	loc_25A5
		ldi	GRACTL,	$03
		ldi	PMBASE, $B8
		LDA	#$98 ; 'ò'
		LDX	#$5F ; '_'

loc_25B9:				; CODE XREF: sub_25A3+24vj
		LDY	#$C

loc_25BB:				; CODE XREF: sub_25A3+1Fvj
		STA	$B8A0,X
		DEX
		BMI	loc_25C9
		DEY
		BNE	loc_25BB
		CLC
		ADC	#4
		BNE	loc_25B9

loc_25C9:				; CODE XREF: sub_25A3+1C^j
		dldi	off_80, $327E
		dldi	off_82, $9800
		JSR	sub_26F8
		dldi	off_82, $B94C
		JSR	sub_26F8
		LDX	#5

loc_25E9:				; CODE XREF: sub_25A3+4Dvj
		LDA	$BBBC,X
		STA	byte_27A5,X
		DEX
		BPL	loc_25E9
		dldi	off_82, $9400
		LDX	#8

loc_25FC:				; CODE XREF: sub_25A3+6Dvj
		LDY	#$77 ; 'w'

loc_25FE:				; CODE XREF: sub_25A3+5Fvj
		TYA
		STA	(off_82),Y
		DEY
		BPL	loc_25FE
		LDA	off_82
		CLC
		ADC	#$78 ; 'x'
		STA	off_82
		BCC	loc_260F
		INC	off_82+1

loc_260F:				; CODE XREF: sub_25A3+68^j
		DEX
		BNE	loc_25FC
		dldi	off_80, $BAEA
		dldi	off_82, $9400
		LDA	#0
		STA	$86

loc_2626:				; CODE XREF: sub_25A3+A9vj
		LDY	$86
		LDA	(off_80),Y
		STA	$87
		LDY	#7

loc_262E:				; CODE XREF: sub_25A3+96vj
		LSR	$87
		BCC	loc_2638
		LDA	(off_82),Y
		ORA	#$80
		STA	(off_82),Y

loc_2638:				; CODE XREF: sub_25A3+8D^j
		DEY
		BPL	loc_262E
		LDA	off_82
		CLC
		ADC	#8
		STA	off_82
		BCC	loc_2646
		INC	off_82+1

loc_2646:				; CODE XREF: sub_25A3+9F^j
		INC	$86
		LDA	$86
		CMP	#$78 ; 'x'
		BCC	loc_2626
		LDA	#0
		STA	loc_265D+1
		LDA	#$BB
		STA	loc_265D+2
		LDY	#5
		LDA	#0
		TAX

loc_265D:				; CODE XREF: sub_25A3+BEvj sub_25A3+C4vj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_265D
		INC	loc_265D+2
		DEY
		BNE	loc_265D
		LDA	#$47 ; 'G'
		STA	$88
		LDA	byte_27A5
		STA	COLBK
		LDA	#$10
		STA	$6800
		LDA	#$70 ; 'p'
		STA	$6500
		LDX	#1

loc_267F:				; CODE XREF: sub_25A3+F0vj
		CLC
		LDA	$67FF,X
		ADC	#$28 ; '('
		STA	$6800,X
		LDA	$64FF,X
		ADC	#0
		STA	$6500,X
		INX
		CPX	#$C0 ; '¿'
		BCC	loc_267F
		LDA	#0

loc_2697:				; CODE XREF: sub_25A3+F8vj
		STA	$6500,X
		INX
		BNE	loc_2697
		LDA	#$FF

loc_269F:				; CODE XREF: sub_25A3+100vj
		STA	$6400,X
		INX
		BNE	loc_269F

loc_26A5:				; CODE XREF: sub_25A3+115vj
		TXA
		LSR	A
		LSR	A
		STA	$6400,X
		TXA
		AND	#3
		TAY
		LDA	unk_2744,Y
		STA	$68C0,X
		INX
		CPX	#$A0 ; '†'
		BCC	loc_26A5
		LDX	#0
		LDA	#$55 ; 'U'
		JSR	sub_243A
		dldi	off_80, $51B8
		dldi	off_82, $8176
		LDX	#0

loc_26D3:				; CODE XREF: sub_25A3+152vj
		LDY	#$C

loc_26D5:				; CODE XREF: sub_25A3+137vj
		LDA	(off_80),Y
		STA	(off_82),Y
		DEY
		BPL	loc_26D5
		LDA	off_80
		CLC
		ADC	#$D
		STA	off_80
		BCC	loc_26E7
		INC	off_80+1

loc_26E7:				; CODE XREF: sub_25A3+140^j
		LDA	off_82
		CLC
		ADC	#$28
		STA	off_82
		BCC	loc_26F2
		INC	off_82+1

loc_26F2:				; CODE XREF: sub_25A3+14B^j
		INX
		CPX	#$20 ; ' '
		BCC	loc_26D3
		RTS
; End of function sub_25A3


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_26F8:				; CODE XREF: sub_25A3+36^p sub_25A3+41^p ...
		LDY	#0
		LDA	(off_80),Y
		INC	off_80
		BNE	loc_2702
		INC	off_80+1

loc_2702:				; CODE XREF: sub_26F8+6^j
		CMP	#$1B
		BEQ	loc_2711
		STA	(off_82),Y
		INC	off_82
		BNE	loc_270E
		INC	off_82+1

loc_270E:				; CODE XREF: sub_26F8+12^j
		JMP	sub_26F8
; ---------------------------------------------------------------------------

loc_2711:				; CODE XREF: sub_26F8+C^j
		LDA	(off_80),Y
		INC	off_80
		BNE	loc_2719
		INC	off_80+1

loc_2719:				; CODE XREF: sub_26F8+1D^j
		CMP	#$FF
		BNE	loc_271E
		RTS
; ---------------------------------------------------------------------------

loc_271E:				; CODE XREF: sub_26F8+23^j
		STA	byte_2743
		LDA	(off_80),Y
		INC	off_80
		BNE	loc_2729
		INC	off_80+1

loc_2729:				; CODE XREF: sub_26F8+2D^j
		LDY	byte_2743

loc_272C:				; CODE XREF: sub_26F8+37vj
		STA	(off_82),Y
		DEY
		BPL	loc_272C
		INC	byte_2743
		LDA	byte_2743
		CLC
		ADC	off_82
		STA	off_82
		BCC	loc_2740
		INC	off_82+1

loc_2740:				; CODE XREF: sub_26F8+44^j
		JMP	sub_26F8
; End of function sub_26F8

; ---------------------------------------------------------------------------
byte_2743:	.BYTE	0			; DATA XREF: sub_26F8:loc_271E^w
					; sub_26F8:loc_2729^r ...
unk_2744:	.BYTE	$40 ; @		; DATA XREF: sub_25A3+10C^r
		.BYTE	$10
		.BYTE	4
		.BYTE	1
byte_2748:	.BYTE	$90		; DATA XREF: RAM:2164^r	RAM:216C^w ...
unk_2749:	.BYTE	$70 ; p		; DATA XREF: sub_2505+12^r
		.BYTE	$80 ; Ä
		.BYTE	$60 ; `
byte_274C:	.BYTE	$70		; DATA XREF: RAM:2167^w
		.BYTE	$90 ; ê
		.BYTE	$70 ; p
		.BYTE	$90 ; ê
		.BYTE	$70 ; p
		.BYTE	$90 ; ê
		.BYTE	$70 ; p
		.BYTE	$90 ; ê
		.BYTE	$80 ; Ä
		.BYTE	$90 ; ê
		.BYTE	$70 ; p
		.BYTE	$90 ; ê
		.BYTE	$80 ; Ä
		.BYTE	$90 ; ê
		.BYTE	$92 ; í
		.BYTE	$80 ; Ä
		.BYTE	$60 ; `
		.BYTE	$80 ; Ä
		.BYTE	$70 ; p
		.BYTE	$92 ; í
		.BYTE	$72 ; r
		.BYTE	$94 ; î
		.BYTE	$96 ; ñ
unk_2763:	.BYTE	1		; DATA XREF: sub_2505:loc_250F^r
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	2
		.BYTE	3
unk_277E:	.BYTE	 $A		; DATA XREF: sub_2505+26^r
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	9
		.BYTE	9
		.BYTE	8
		.BYTE	8
		.BYTE	7
		.BYTE	6
		.BYTE	6
		.BYTE	5
		.BYTE	5
		.BYTE	4
		.BYTE	4
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	1
		.BYTE	1
		.BYTE	1
unk_2799:	.BYTE	$94 ; î		; DATA XREF: RAM:loc_2120^r
unk_279A:	.BYTE	$41 ; A		; DATA XREF: RAM:loc_213B^r
					; sub_247D:loc_24DF^r
		.BYTE	0
		.BYTE	$28 ; (
unk_279D:	.BYTE	$50 ; P		; DATA XREF: RAM:loc_20C7^r
		.BYTE	$70 ; p
		.BYTE	$90 ; ê
		.BYTE	$B0 ; ∞
		.BYTE	$48 ; H
		.BYTE	$40 ; @
		.BYTE	$38 ; 8
		.BYTE	$30 ; 0
byte_27A5:	.BYTE	0			; DATA XREF: sub_25A3+49^w sub_25A3+CA^r
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_27A9:	.BYTE	0		; DATA XREF: RAM:22EE^r
		.BYTE	0
byte_27AB:	.BYTE	$96		; DATA XREF: RAM:loc_22E5^r
					; RAM:loc_22FC^r ...
		.BYTE	8
		.BYTE	 $C
		.BYTE	$9E ; û
		.BYTE	$19
		.BYTE	$20
		.BYTE	$6E ; n
		.BYTE	$6F ; o
		.BYTE	$74 ; t
		.BYTE	$20
		.BYTE	$6C ; l
		.BYTE	$6F ; o
		.BYTE	$61 ; a
		.BYTE	$64 ; d
		.BYTE	$65 ; e
		.BYTE	$64 ; d
		.BYTE	$2E ; .
		.BYTE	 $D
		.BYTE	$FF
		.BYTE	$AC ; ¨
		.BYTE	$65 ; e
		.BYTE	$76 ; v
		.BYTE	 $D
		.BYTE	$A5 ; •
		.BYTE	$64 ; d
		.BYTE	$6F ; o
		.BYTE	$64 ; d
		.BYTE	$67 ; g
		.BYTE	$65 ; e
		.BYTE	$73 ; s
		.BYTE	$20
		.BYTE	$6F ; o
		.BYTE	$75 ; u
		.BYTE	$74 ; t
		.BYTE	$20
		.BYTE	$6F ; o
		.BYTE	$66 ; f
		.BYTE	$20
		.BYTE	$74 ; t
		.BYTE	$68 ; h
		.BYTE	$65 ; e
		.BYTE	$20
		.BYTE	$77 ; w
		.BYTE	$61 ; a
		.BYTE	$79 ; y
		.BYTE	$2E ; .
		.BYTE	 $D
		.BYTE	$FF
		.BYTE	$A6 ; ¶
		.BYTE	0
		.BYTE	3
		.BYTE	$A5 ; •
	.byte	"You dodge the blow."
		.BYTE	 $D
		.BYTE	$FF
		.BYTE	$AC ; ¨
		.BYTE	$1D
		.BYTE	$9E ; û
		.BYTE	$A5 ; •
		.BYTE	$69 ; i
		.BYTE	$73 ; s
		.BYTE	$20
		.BYTE	$61 ; a
		.BYTE	$62 ; b
		.BYTE	$6F ; o
		.BYTE	$75 ; u
		.BYTE	$74 ; t
byte_2800:	.BYTE	$70		; DATA XREF: RAM:2184^w	RAM:218C^w
		.BYTE	$70 ; p
		.BYTE	$70 ; p
		.BYTE	$4E ; N
		.BYTE	$10
		.BYTE	$70 ; p
		.BYTE	$4E ; N
byte_2807:	.BYTE	$B8		; DATA XREF: RAM:2036^r	RAM:203B^w
byte_2808:	.BYTE	$86		; DATA XREF: RAM:203E^r	RAM:2043^w
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	$8E ; é
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	$44 ; D
		.BYTE	0
		.BYTE	$94 ; î
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	$41 ; A
		.BYTE	0
byte_284D:	.BYTE	$28		; DATA XREF: RAM:234E^w	RAM:2364^w
		.BYTE	$62 ; b
		.BYTE	$79 ; y
		.BYTE	$20
		.BYTE	$74 ; t
		.BYTE	$68 ; h
		.BYTE	$65 ; e
		.BYTE	$20
		.BYTE	$66 ; f
byte_2856:	.BYTE	$6F		; DATA XREF: RAM:2384^w	RAM:239A^w
		.BYTE	$72 ; r
		.BYTE	$63 ; c
		.BYTE	$65 ; e
		.BYTE	$20
		.BYTE	$6F ; o
		.BYTE	$66 ; f
		.BYTE	$20
		.BYTE	$79 ; y
		.BYTE	$6F ; o
		.BYTE	$75 ; u
byte_2861:	.BYTE	$72		; DATA XREF: RAM:2317^w
		.BYTE	$20
		.BYTE	$61 ; a
		.BYTE	$74 ; t
		.BYTE	$74 ; t
		.BYTE	$61 ; a
		.BYTE	$63 ; c
		.BYTE	$6B ; k
		.BYTE	$2E ; .
		.BYTE	 $D
		.BYTE	$FF
		.BYTE	$AC ; ¨
		.BYTE	$53 ; S
		.BYTE	$76 ; v
		.BYTE	$69 ; i
		.BYTE	$73 ; s
		.BYTE	$20
		.BYTE	$73 ; s
		.BYTE	$74 ; t
		.BYTE	$61 ; a
		.BYTE	$67 ; g
		.BYTE	$67 ; g
		.BYTE	$65 ; e
		.BYTE	$72 ; r
		.BYTE	$65 ; e
		.BYTE	$64 ; d
		.BYTE	 $D
		.BYTE	$AC ; ¨
		.BYTE	$4D ; M
		.BYTE	$9E ; û
		.BYTE	$A6 ; ¶
		.BYTE	0
		.BYTE	2
		.BYTE	$A3 ; £
		.BYTE	$70 ; p
		.BYTE	$9F ; ü
		.BYTE	$A5 ; •
		.BYTE	$59 ; Y
		.BYTE	$6F ; o
		.BYTE	$75 ; u
		.BYTE	$20
		.BYTE	$B4 ; ¥
		.BYTE	$6E ; n
		.BYTE	$9F ; ü
		.BYTE	 $F
		.BYTE	$20
		.BYTE	$74 ; t
		.BYTE	$68 ; h
		.BYTE	$65 ; e
		.BYTE	$20
		.BYTE	$B4 ; ¥
		.BYTE	1
		.BYTE	$AA ; ™
		.BYTE	$14
		.BYTE	 $D
		.BYTE	$A5 ; •
		.BYTE	$77 ; w
		.BYTE	$69 ; i
		.BYTE	$74 ; t
		.BYTE	$68 ; h
		.BYTE	$20
		.BYTE	$79 ; y
		.BYTE	$6F ; o
		.BYTE	$75 ; u
		.BYTE	$72 ; r
		.BYTE	$20
		.BYTE	$B4 ; ¥
		.BYTE	$2C ; ,
		.BYTE	$9E ; û
		.BYTE	$1E
		.BYTE	 $D
		.BYTE	$A3 ; £
		.BYTE	$D5 ; ’
		.BYTE	$9E ; û
		.BYTE	$A3 ; £
		.BYTE	$EC ; Ï
		.BYTE	$9E ; û
		.BYTE	$A5 ; •
		.BYTE	$20
		.BYTE	$66 ; f
		.BYTE	$6F ; o
		.BYTE	$72 ; r
		.BYTE	$20
		.BYTE	$B1 ; ±
		.BYTE	$A7 ; ß
		.BYTE	0
		.BYTE	6
		.BYTE	$2E ; .
		.BYTE	 $D
		.BYTE	$A3 ; £
		.BYTE	$F2 ; Ú
		.BYTE	$9E ; û
		.BYTE	$FF
		.BYTE	$A5 ; •
		.BYTE	$77 ; w
		.BYTE	$68 ; h
		.BYTE	$69 ; i
		.BYTE	$63 ; c
		.BYTE	$68 ; h
		.BYTE	$20
		.BYTE	$68 ; h
		.BYTE	$61 ; a
		.BYTE	$73 ; s
		.BYTE	$20
		.BYTE	$6E ; n
		.BYTE	$6F ; o
		.BYTE	$20
		.BYTE	$65 ; e
		.BYTE	$66 ; f
		.BYTE	$66 ; f
		.BYTE	$65 ; e
		.BYTE	$63 ; c
		.BYTE	$74 ; t
		.BYTE	$21 ; !
		.BYTE	 $D
		.BYTE	$FF
		.BYTE	$A9 ; ©
		.BYTE	$AB ; ´
		.BYTE	$85 ; Ö
		.BYTE	$16
		.BYTE	$A9 ; ©
		.BYTE	$9E ; û
		.BYTE	$85 ; Ö
		.BYTE	$17
		.BYTE	$A5 ; •
		.BYTE	$A7 ; ß
		.BYTE	5
		.BYTE	$A8 ; ®
		.BYTE	$D0 ; –
		.BYTE	8
		.BYTE	$A9 ; ©
		.BYTE	$BE ; æ
		.BYTE	$85 ; Ö
		.BYTE	$16
		.BYTE	$A9 ; ©
		.BYTE	$9E ; û
		.BYTE	$85 ; Ö
		.BYTE	$17
		.BYTE	$60 ; `
		.BYTE	$A9 ; ©
		.BYTE	$FF
		.BYTE	$48 ; H
		.BYTE	$8A ; ä
		.BYTE	$48 ; H
		.BYTE	$98 ; ò
		.BYTE	$48 ; H
		.BYTE	$A9 ; ©
		.BYTE	$96 ; ñ
		.BYTE	$8D ; ç
		.BYTE	 $A
		.BYTE	$D4 ; ‘
		.BYTE	$8D ; ç
		.BYTE	$16
		.BYTE	$D0 ; –
		.BYTE	$A6 ; ¶
		.BYTE	$88 ; à
		.BYTE	$BC ; º
byte_28FE:	.BYTE	$6C		; DATA XREF: sub_247D+3C^w
		.BYTE	$BA ; ∫
		.BYTE	$BD ; Ω
byte_2901:	.BYTE	$AC		; DATA XREF: sub_247D+39^w
		.BYTE	$B9 ; π
		.BYTE	$8D ; ç
		.BYTE	 $A
		.BYTE	$D4 ; ‘
		.BYTE	$8D ; ç
		.BYTE	$17
		.BYTE	$D0 ; –
		.BYTE	$8C ; å
		.BYTE	$19
		.BYTE	$D0 ; –
		.BYTE	$BD ; Ω
byte_290D:	.BYTE	$A0		; DATA XREF: sub_247D+3F^w
		.BYTE	$B8 ; ∏
		.BYTE	$8D ; ç
		.BYTE	9
		.BYTE	$D4 ; ‘
		.BYTE	$BD ; Ω
byte_2913:	.BYTE	$4C		; DATA XREF: sub_247D+42^w
		.BYTE	$B9 ; π
		.BYTE	$8D ; ç
		.BYTE	 $A
		.BYTE	$D4 ; ‘
		.BYTE	$8D ; ç
		.BYTE	$16
		.BYTE	$D0 ; –
		.BYTE	$BD ; Ω
byte_291C:	.BYTE	$C		; DATA XREF: sub_247D+45^w
		.BYTE	$BA ; ∫
		.BYTE	$8D ; ç
		.BYTE	$18
		.BYTE	$D0 ; –
		.BYTE	$BC ; º
byte_2922:	.BYTE	$6B		; DATA XREF: sub_247D+48^w
		.BYTE	$BA ; ∫
		.BYTE	$CA ;  
		.BYTE	$10
		.BYTE	$D9 ; Ÿ
		.BYTE	$4C ; L
		.BYTE	$70 ; p
		.BYTE	$22 ; "

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_292A:				; CODE XREF: RAM:221F^p
		LDX	#$3F ; '?'

loc_292C:				; CODE XREF: sub_292A+6vj
		JSR	sub_2A88
		DEX
		BPL	loc_292C
		INX
		STX	$9F
		STX	$9E
		STX	$A6
		INX
		STX	$AE
		LDA	#$3B ; ';'
		STA	$B5
		LDA	$BD
		STA	$B2

loc_2944:				; CODE XREF: sub_292A+20vj
		JSR	sub_2958
		BIT	byte_2CB6
		BPL	loc_2944
		LDA	#0
		STA	$14

loc_2950:				; CODE XREF: sub_292A+2Bvj
		JSR	sub_2958
		LDA	$14
		BPL	loc_2950
		RTS
; End of function sub_292A


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2958:				; CODE XREF: sub_292A:loc_2944^p
					; sub_292A:loc_2950^p
		LDA	#$3F ; '?'
		STA	$9D

loc_295C:				; CODE XREF: sub_2958+A2vj
		LDX	$9D
		LDA	$6780,X
		STA	$B3
		LDA	$67C0,X
		STA	$B4
		LDX	$BD
		BPL	loc_298F
		TXA
		LSR	A
		BCC	loc_297F
		CLC
		LDA	$9F
		ADC	$AE
		STA	$9F
		LDA	#0
		STA	$B2
		STA	$BD
		BEQ	loc_2998

loc_297F:				; CODE XREF: sub_2958+16^j
		LDA	#0
		STA	$9F
		STA	$BD
		STA	$B2
		LDA	$AE
		EOR	#$FE ; '˛'
		STA	$AE
		BNE	loc_2998

loc_298F:				; CODE XREF: sub_2958+12^j
		CPX	$B2
		BEQ	loc_2998
		STX	$B2
		JSR	sub_2A3B

loc_2998:				; CODE XREF: sub_2958+25^j sub_2958+35^j ...
		JSR	sub_29FE
		LDX	$9D
		LDA	$66C0,X
		CLC
		ADC	$6600,X
		STA	$6600,X
		LDA	$6700,X
		ADC	$6640,X
		STA	$6640,X
		BPL	loc_29C1
		JSR	sub_2A8F

loc_29B5:				; CODE XREF: sub_2958+64vj
		LDA	RANDOM
		AND	#$3F ; '?'
		CMP	#5
		BCC	loc_29B5
		STA	$6640,X

loc_29C1:				; CODE XREF: sub_2958+58^j
		STA	$A5
		LDA	$6740,X
		CLC
		ADC	$66C0,X
		STA	$66C0,X
		BCC	loc_29D2
		INC	$6700,X

loc_29D2:				; CODE XREF: sub_2958+75^j
		LDA	$9E
		CLC
		ADC	$A6
		STA	$A6
		LDA	$9F
		ADC	$6680,X
		STA	$6680,X
		STA	$A4
		JSR	sub_2ABA
		LDX	$9D
		LDA	$B3
		STA	$6780,X
		LDA	$B4
		STA	$67C0,X
		JSR	sub_29FE
		CLI
		DEC	$9D
		BMI	locret_29FD
		JMP	loc_295C
; ---------------------------------------------------------------------------

locret_29FD:				; CODE XREF: sub_2958+A0^j
		RTS
; End of function sub_2958


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_29FE:				; CODE XREF: sub_2958:loc_2998^p
					; sub_2958+9A^p
		LDX	$9D
		LDA	$6700,X
		CMP	#4
		BCC	sub_2A1E
		LDA	$6640,X
		CMP	#$28 ; '('
		BCC	sub_2A1E
		CMP	#$4A ; 'J'
		BCC	sub_2A19
		JSR	sub_2A19
		DEC	$B4
		INC	$B3
; End of function sub_29FE


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2A19:				; CODE XREF: sub_29FE+12^j sub_29FE+14^p
		JSR	sub_2A1E
		INC	$B4
; End of function sub_2A19


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2A1E:				; CODE XREF: sub_29FE+7^j sub_29FE+E^j ...
		LDX	$B3
		LDY	$B4
		LDA	$6500,Y
		BEQ	locret_2A3A
		STA	off_82+1
		LDA	$6800,Y
		STA	off_82
		LDY	$6400,X
		BMI	locret_2A3A
		LDA	$68C0,X
		EOR	(off_82),Y
		STA	(off_82),Y

locret_2A3A:				; CODE XREF: sub_2A1E+7^j sub_2A1E+13^j
		RTS
; End of function sub_2A1E


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2A3B:				; CODE XREF: sub_2958+3D^p
		LDA	unk_540E,X
		BEQ	loc_2A42
		INC	$89

loc_2A42:				; CODE XREF: sub_2A3B+3^j
		LDA	unk_62DC,X
		STA	off_80
		LDA	unk_62EA,X
		STA	off_80+1
		LDA	unk_53F2,X
		STA	off_82
		LDA	unk_5400,X
		STA	off_82+1
		LDA	unk_62F8,X
		STA	$94
		LDA	unk_6306,X
		STA	$93

loc_2A60:				; CODE XREF: sub_2A3B+49vj
		LDY	$93
		DEY

loc_2A63:				; CODE XREF: sub_2A3B+2Fvj
		LDA	(off_80),Y
		EOR	(off_82),Y
		STA	(off_82),Y
		DEY
		BPL	loc_2A63
		LDA	off_82
		CLC
		ADC	#$28
		STA	off_82
		BCC	loc_2A77
		INC	off_82+1

loc_2A77:				; CODE XREF: sub_2A3B+38^j
		LDA	off_80
		CLC
		ADC	$93
		STA	off_80
		BCC	loc_2A82
		INC	off_80+1

loc_2A82:				; CODE XREF: sub_2A3B+43^j
		DEC	$94
		BNE	loc_2A60
		RTS
; End of function sub_2A3B

; ---------------------------------------------------------------------------
		.BYTE	$60 ; `

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2A88:				; CODE XREF: sub_292A:loc_292C^p
		LDA	#0
		STA	$6640,X
		BEQ	loc_2A92
; End of function sub_2A88


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2A8F:				; CODE XREF: sub_2958+5A^p
		LDA	RANDOM

loc_2A92:				; CODE XREF: sub_2A88+5^j
		STA	$6600,X
		LDA	RANDOM
		STA	$6680,X
		LDA	RANDOM
		STA	$66C0,X
		LDA	RANDOM
		AND	#3
		STA	$6700,X
		LDA	RANDOM
		ORA	#4
		STA	$6740,X
		LDA	#$FF
		STA	$6780,X
		STA	$67C0,X
		RTS
; End of function sub_2A8F


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2ABA:				; CODE XREF: sub_2958+8B^p
		LDX	$A4
		LDA	unk_2B76,X
		STA	$A0
		LDA	$A5
		STA	$A1
		JSR	sub_2AFF
		LDA	$A3
		LDY	$A4
		BPL	loc_2AD3
		EOR	#$FF
		CLC
		ADC	#1

loc_2AD3:				; CODE XREF: sub_2ABA+12^j
		CLC
		ADC	#$4F ; 'O'
		STA	$B3
		LDX	$A4
		LDA	unk_2BB6,X
		STA	$A0
		LDA	$A5
		STA	$A1
		JSR	sub_2AFF
		CLC
		LDA	$A4
		ADC	#$40 ; '@'
		BPL	loc_2AF7
		LDA	$A3
		EOR	#$FF
		CLC
		ADC	#1
		JMP	loc_2AF9
; ---------------------------------------------------------------------------

loc_2AF7:				; CODE XREF: sub_2ABA+31^j
		LDA	$A3

loc_2AF9:				; CODE XREF: sub_2ABA+3A^j
		CLC
		ADC	#$63 ; 'c'
		STA	$B4
		RTS
; End of function sub_2ABA


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2AFF:				; CODE XREF: sub_2ABA+B^p sub_2ABA+29^p
		LDA	#0
		STA	$A3
		ASL	A
		ROL	$A3
		ASL	$A1
		BCC	loc_2B11
		CLC
		ADC	$A0
		BCC	loc_2B11
		INC	$A3

loc_2B11:				; CODE XREF: sub_2AFF+9^j sub_2AFF+E^j
		ASL	A
		ROL	$A3
		ASL	$A1
		BCC	loc_2B1F
		CLC
		ADC	$A0
		BCC	loc_2B1F
		INC	$A3

loc_2B1F:				; CODE XREF: sub_2AFF+17^j sub_2AFF+1C^j
		ASL	A
		ROL	$A3
		ASL	$A1
		BCC	loc_2B2D
		CLC
		ADC	$A0
		BCC	loc_2B2D
		INC	$A3

loc_2B2D:				; CODE XREF: sub_2AFF+25^j sub_2AFF+2A^j
		ASL	A
		ROL	$A3
		ASL	$A1
		BCC	loc_2B3B
		CLC
		ADC	$A0
		BCC	loc_2B3B
		INC	$A3

loc_2B3B:				; CODE XREF: sub_2AFF+33^j sub_2AFF+38^j
		ASL	A
		ROL	$A3
		ASL	$A1
		BCC	loc_2B49
		CLC
		ADC	$A0
		BCC	loc_2B49
		INC	$A3

loc_2B49:				; CODE XREF: sub_2AFF+41^j sub_2AFF+46^j
		ASL	A
		ROL	$A3
		ASL	$A1
		BCC	loc_2B57
		CLC
		ADC	$A0
		BCC	loc_2B57
		INC	$A3

loc_2B57:				; CODE XREF: sub_2AFF+4F^j sub_2AFF+54^j
		ASL	A
		ROL	$A3
		ASL	$A1
		BCC	loc_2B65
		CLC
		ADC	$A0
		BCC	loc_2B65
		INC	$A3

loc_2B65:				; CODE XREF: sub_2AFF+5D^j sub_2AFF+62^j
		ASL	A
		ROL	$A3
		ASL	$A1
		BCC	loc_2B73
		CLC
		ADC	$A0
		BCC	loc_2B73
		INC	$A3

loc_2B73:				; CODE XREF: sub_2AFF+6B^j sub_2AFF+70^j
		STA	$A2
		RTS
; End of function sub_2AFF

; ---------------------------------------------------------------------------
unk_2B76:	.BYTE	0		; DATA XREF: sub_2ABA+2^r
		.BYTE	6
		.BYTE	 $D
		.BYTE	$13
		.BYTE	$19
		.BYTE	$1F
		.BYTE	$25 ; %
		.BYTE	$2C ; ,
		.BYTE	$32 ; 2
		.BYTE	$38 ; 8
		.BYTE	$3E ; >
		.BYTE	$44 ; D
		.BYTE	$4A ; J
		.BYTE	$50 ; P
		.BYTE	$56 ; V
		.BYTE	$5C ; \
		.BYTE	$62 ; b
		.BYTE	$67 ; g
		.BYTE	$6D ; m
		.BYTE	$73 ; s
		.BYTE	$78 ; x
		.BYTE	$7E ; ~
		.BYTE	$83 ; É
		.BYTE	$88 ; à
		.BYTE	$8E ; é
		.BYTE	$93 ; ì
		.BYTE	$98 ; ò
		.BYTE	$9D ; ù
		.BYTE	$A2 ; ¢
		.BYTE	$A7 ; ß
		.BYTE	$AB ; ´
		.BYTE	$B0 ; ∞
		.BYTE	$B4 ; ¥
		.BYTE	$B9 ; π
		.BYTE	$BD ; Ω
		.BYTE	$C1 ; ¡
		.BYTE	$C5 ; ≈
		.BYTE	$C9 ; …
		.BYTE	$CD ; Õ
		.BYTE	$D0 ; –
		.BYTE	$D4 ; ‘
		.BYTE	$D7 ; ◊
		.BYTE	$DB ; -
		.BYTE	$DE ; ﬁ
		.BYTE	$E1 ; ·
		.BYTE	$E4 ; ‰
		.BYTE	$E7 ; Á
		.BYTE	$E9 ; È
		.BYTE	$EC ; Ï
		.BYTE	$EE ; Ó
		.BYTE	$F0 ; 
		.BYTE	$F2 ; Ú
		.BYTE	$F4 ; Ù
		.BYTE	$F6 ; ˆ
		.BYTE	$F7 ; ˜
		.BYTE	$F9 ; ˘
		.BYTE	$FA ; ˙
		.BYTE	$FB ; ˚
		.BYTE	$FC ; ¸
		.BYTE	$FD ; ˝
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$FF
unk_2BB6:	.BYTE	$FF		; DATA XREF: sub_2ABA+20^r
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FD ; ˝
		.BYTE	$FC ; ¸
		.BYTE	$FB ; ˚
		.BYTE	$FA ; ˙
		.BYTE	$F9 ; ˘
		.BYTE	$F7 ; ˜
		.BYTE	$F6 ; ˆ
		.BYTE	$F4 ; Ù
		.BYTE	$F2 ; Ú
		.BYTE	$F0 ; 
		.BYTE	$EE ; Ó
		.BYTE	$EC ; Ï
		.BYTE	$E9 ; È
		.BYTE	$E7 ; Á
		.BYTE	$E4 ; ‰
		.BYTE	$E1 ; ·
		.BYTE	$DE ; ﬁ
		.BYTE	$DB ; -
		.BYTE	$D7 ; ◊
		.BYTE	$D4 ; ‘
		.BYTE	$D0 ; –
		.BYTE	$CD ; Õ
		.BYTE	$C9 ; …
		.BYTE	$C5 ; ≈
		.BYTE	$C1 ; ¡
		.BYTE	$BD ; Ω
		.BYTE	$B9 ; π
		.BYTE	$B4 ; ¥
		.BYTE	$B0 ; ∞
		.BYTE	$AB ; ´
		.BYTE	$A7 ; ß
		.BYTE	$A2 ; ¢
		.BYTE	$9D ; ù
		.BYTE	$98 ; ò
		.BYTE	$93 ; ì
		.BYTE	$8E ; é
		.BYTE	$88 ; à
		.BYTE	$83 ; É
		.BYTE	$7E ; ~
		.BYTE	$78 ; x
		.BYTE	$73 ; s
		.BYTE	$6D ; m
		.BYTE	$67 ; g
		.BYTE	$62 ; b
		.BYTE	$5C ; \
		.BYTE	$56 ; V
		.BYTE	$50 ; P
		.BYTE	$4A ; J
		.BYTE	$44 ; D
		.BYTE	$3E ; >
		.BYTE	$38 ; 8
		.BYTE	$32 ; 2
		.BYTE	$2C ; ,
		.BYTE	$25 ; %
		.BYTE	$1F
		.BYTE	$19
		.BYTE	$13
		.BYTE	 $D
		.BYTE	6
		.BYTE	0
		.BYTE	6
		.BYTE	 $D
		.BYTE	$13
		.BYTE	$19
		.BYTE	$1F
		.BYTE	$25 ; %
		.BYTE	$2C ; ,
		.BYTE	$32 ; 2
		.BYTE	$38 ; 8
		.BYTE	$3E ; >
		.BYTE	$44 ; D
		.BYTE	$4A ; J
		.BYTE	$50 ; P
		.BYTE	$56 ; V
		.BYTE	$5C ; \
		.BYTE	$62 ; b
		.BYTE	$67 ; g
		.BYTE	$6D ; m
		.BYTE	$73 ; s
		.BYTE	$78 ; x
		.BYTE	$7E ; ~
		.BYTE	$83 ; É
		.BYTE	$88 ; à
		.BYTE	$8E ; é
		.BYTE	$93 ; ì
		.BYTE	$98 ; ò
		.BYTE	$9D ; ù
		.BYTE	$A2 ; ¢
		.BYTE	$A7 ; ß
		.BYTE	$AB ; ´
		.BYTE	$B0 ; ∞
		.BYTE	$B4 ; ¥
		.BYTE	$B9 ; π
		.BYTE	$BD ; Ω
		.BYTE	$C1 ; ¡
		.BYTE	$C5 ; ≈
		.BYTE	$C9 ; …
		.BYTE	$CD ; Õ
		.BYTE	$D0 ; –
		.BYTE	$D4 ; ‘
		.BYTE	$D7 ; ◊
		.BYTE	$DB ; -
		.BYTE	$DE ; ﬁ
		.BYTE	$E1 ; ·
		.BYTE	$E4 ; ‰
		.BYTE	$E7 ; Á
		.BYTE	$E9 ; È
		.BYTE	$EC ; Ï
		.BYTE	$EE ; Ó
		.BYTE	$F0 ; 
		.BYTE	$F2 ; Ú
		.BYTE	$F4 ; Ù
		.BYTE	$F6 ; ˆ
		.BYTE	$F7 ; ˜
		.BYTE	$F9 ; ˘
		.BYTE	$FA ; ˙
		.BYTE	$FB ; ˚
		.BYTE	$FC ; ¸
		.BYTE	$FD ; ˝
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FD ; ˝
		.BYTE	$FC ; ¸
		.BYTE	$FB ; ˚
		.BYTE	$FA ; ˙
		.BYTE	$F9 ; ˘
		.BYTE	$F7 ; ˜
		.BYTE	$F6 ; ˆ
		.BYTE	$F4 ; Ù
		.BYTE	$F2 ; Ú
		.BYTE	$F0 ; 
		.BYTE	$EE ; Ó
		.BYTE	$EC ; Ï
		.BYTE	$E9 ; È
		.BYTE	$E7 ; Á
		.BYTE	$E4 ; ‰
		.BYTE	$E1 ; ·
		.BYTE	$DE ; ﬁ
		.BYTE	$DB ; -
		.BYTE	$D7 ; ◊
		.BYTE	$D4 ; ‘
		.BYTE	$D0 ; –
		.BYTE	$CD ; Õ
		.BYTE	$C9 ; …
		.BYTE	$C5 ; ≈
		.BYTE	$C1 ; ¡
		.BYTE	$BD ; Ω
		.BYTE	$B9 ; π
		.BYTE	$B4 ; ¥
		.BYTE	$B0 ; ∞
		.BYTE	$AB ; ´
		.BYTE	$A7 ; ß
		.BYTE	$A2 ; ¢
		.BYTE	$9D ; ù
		.BYTE	$98 ; ò
		.BYTE	$93 ; ì
		.BYTE	$8E ; é
		.BYTE	$88 ; à
		.BYTE	$83 ; É
		.BYTE	$7E ; ~
		.BYTE	$78 ; x
		.BYTE	$73 ; s
		.BYTE	$6D ; m
		.BYTE	$67 ; g
		.BYTE	$62 ; b
		.BYTE	$5C ; \
		.BYTE	$56 ; V
		.BYTE	$50 ; P
		.BYTE	$4A ; J
		.BYTE	$44 ; D
		.BYTE	$3E ; >
		.BYTE	$38 ; 8
		.BYTE	$32 ; 2
		.BYTE	$2C ; ,
		.BYTE	$25 ; %
		.BYTE	$1F
		.BYTE	$19
		.BYTE	$13
		.BYTE	 $D
		.BYTE	6
		.BYTE	0
		.BYTE	6
		.BYTE	 $D
		.BYTE	$13
		.BYTE	$19
		.BYTE	$1F
		.BYTE	$25 ; %
		.BYTE	$2C ; ,
		.BYTE	$32 ; 2
		.BYTE	$38 ; 8
		.BYTE	$3E ; >
		.BYTE	$44 ; D
		.BYTE	$4A ; J
		.BYTE	$50 ; P
		.BYTE	$56 ; V
		.BYTE	$5C ; \
		.BYTE	$62 ; b
		.BYTE	$67 ; g
		.BYTE	$6D ; m
		.BYTE	$73 ; s
		.BYTE	$78 ; x
		.BYTE	$7E ; ~
		.BYTE	$83 ; É
		.BYTE	$88 ; à
		.BYTE	$8E ; é
		.BYTE	$93 ; ì
		.BYTE	$98 ; ò
		.BYTE	$9D ; ù
		.BYTE	$A2 ; ¢
		.BYTE	$A7 ; ß
		.BYTE	$AB ; ´
		.BYTE	$B0 ; ∞
		.BYTE	$B4 ; ¥
		.BYTE	$B9 ; π
		.BYTE	$BD ; Ω
		.BYTE	$C1 ; ¡
		.BYTE	$C5 ; ≈
		.BYTE	$C9 ; …
		.BYTE	$CD ; Õ
		.BYTE	$D0 ; –
		.BYTE	$D4 ; ‘
		.BYTE	$D7 ; ◊
		.BYTE	$DB ; -
		.BYTE	$DE ; ﬁ
		.BYTE	$E1 ; ·
		.BYTE	$E4 ; ‰
		.BYTE	$E7 ; Á
		.BYTE	$E9 ; È
		.BYTE	$EC ; Ï
		.BYTE	$EE ; Ó
		.BYTE	$F0 ; 
		.BYTE	$F2 ; Ú
		.BYTE	$F4 ; Ù
		.BYTE	$F6 ; ˆ
		.BYTE	$F7 ; ˜
		.BYTE	$F9 ; ˘
		.BYTE	$FA ; ˙
		.BYTE	$FB ; ˚
		.BYTE	$FC ; ¸
		.BYTE	$FD ; ˝
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$FF
byte_2CB6:	.BYTE	0			; DATA XREF: sub_292A+1D^r sub_2D75+2vw	...
byte_2CB7:	.BYTE	0			; DATA XREF: RAM:loc_300Fvw RAM:301Fvr
byte_2CB8:	.BYTE	0			; DATA XREF: RAM:2FFEvw	RAM:3059vr ...
byte_2CB9:	.BYTE	0			; DATA XREF: RAM:2FDFvw	RAM:3042vr ...
byte_2CBA:	.BYTE	0			; DATA XREF: RAM:2FE2vw	RAM:3051vr ...
byte_2CBB:	.BYTE	0			; DATA XREF: RAM:2FD8vw	RAM:3027vr ...
unk_2CBC:	.BYTE	$FF		; DATA XREF: RAM:loc_2FE5vw RAM:302Avw ...
		MOVEXY	0,2
		.BYTE	$A5,"Your "
		.BYTE	$B4 ; ¥
		.BYTE	$70 ; p
		.BYTE	0
		.BYTE	$14
		.BYTE	 $D
		.BYTE	$A5 ; •
		.BYTE	$69 ; i
		.BYTE	$73 ; s
		.BYTE	$20
		.BYTE	$77 ; w
byte_2CD0:	.BYTE	$65		; DATA XREF: sub_2DDB+34vr sub_2DDB+50vr ...
		.BYTE	$61 ; a
		.BYTE	$6B ; k
		.BYTE	$65 ; e
		.BYTE	$6E ; n
unk_2CD5:	.BYTE	$69 ; i		; DATA XREF: sub_2DDB:loc_2DE2vr
					; sub_2DDB+14vr	...
		.BYTE	$6E ; n
		.BYTE	$67 ; g
		.BYTE	$2E ; .
		.BYTE	 $D
unk_2CDA:	.BYTE	$FF		; DATA XREF: sub_2D99+30vw sub_2E47+9vr	...
		.BYTE	$A6 ; ¶
		.BYTE	0
		.BYTE	3
		.BYTE	$A5 ; •
unk_2CDF:	.BYTE	$59 ; Y		; DATA XREF: sub_2D99+2Avw sub_2E47+Evr	...
		.BYTE	$6F ; o
		.BYTE	$75 ; u
		.BYTE	$72 ; r
		.BYTE	$20
unk_2CE4:	.BYTE	$B4 ; ¥		; DATA XREF: sub_2DDB+39vr sub_2DDB+3Evw ...
		.BYTE	$70 ; p
		.BYTE	0
		.BYTE	$14
		.BYTE	$20
unk_2CE9:	.BYTE	$68 ; h		; DATA XREF: RAM:2ECEvw	RAM:30E4vw ...
		.BYTE	$61 ; a
		.BYTE	$73 ; s
		.BYTE	$20
		.BYTE	$62 ; b
unk_2CEE:	.BYTE	$72 ; r		; DATA XREF: RAM:2EBBvw	RAM:3160vr
		.BYTE	$6F ; o
		.BYTE	$6B ; k
		.BYTE	$65 ; e
unk_2CF2:	.BYTE	$6E ; n		; DATA XREF: RAM:2EDAvw	RAM:3116vr
		.BYTE	$2E ; .
		.BYTE	 $D
		.BYTE	$FF
unk_2CF6:	.BYTE	$A6 ; ¶		; DATA XREF: RAM:2EE2vw	RAM:3120vr
		.BYTE	0
		.BYTE	3
		.BYTE	$A5 ; •
unk_2CFA:	.BYTE	$59 ; Y		; DATA XREF: RAM:2ECBvw	RAM:314Fvw ...
		.BYTE	$6F ; o
		.BYTE	$75 ; u
		.BYTE	$20
unk_2CFE:	.BYTE	$61 ; a		; DATA XREF: RAM:2ED1vr	RAM:2EF7vw ...
		.BYTE	$72 ; r
		.BYTE	$65 ; e
		.BYTE	$20
unk_2D02:	.BYTE	$73 ; s		; DATA XREF: RAM:2ED4vw	RAM:3155vw ...
		.BYTE	$74 ; t
		.BYTE	$75 ; u
		.BYTE	$6E ; n
unk_2D06:	.BYTE	$6E ; n		; DATA XREF: RAM:2EEBvw	RAM:loc_3144vr
		.BYTE	$65 ; e
		.BYTE	$64 ; d
		.BYTE	$20
unk_2D0A:	.BYTE	$66 ; f		; DATA XREF: RAM:2EF1vw	RAM:312Cvr
		.BYTE	$72 ; r
		.BYTE	$6F ; o
		.BYTE	$6D ; m
unk_2D0E:	.BYTE	$20		; DATA XREF: RAM:2EFDvw	RAM:318Bvr
		.BYTE	$74 ; t
		.BYTE	$68 ; h
		.BYTE	$65 ; e
unk_2D12:	.BYTE	$20		; DATA XREF: RAM:2F03vw	RAM:3149vr ...
		.BYTE	$62 ; b
		.BYTE	$6C ; l
		.BYTE	$6F ; o
		.BYTE	$77 ; w
		.BYTE	$2E ; .
		.BYTE	 $D
		.BYTE	$FF
		.BYTE	$A6 ; ¶
		.BYTE	0
		.BYTE	3
		.BYTE	$A5 ; •
		.BYTE	$59 ; Y
		.BYTE	$6F ; o
		.BYTE	$75 ; u
		.BYTE	$20
		.BYTE	$68 ; h
		.BYTE	$61 ; a
		.BYTE	$76 ; v
		.BYTE	$65 ; e
		.BYTE	$20
		.BYTE	$62 ; b
		.BYTE	$65 ; e
		.BYTE	$65 ; e
		.BYTE	$6E ; n
		.BYTE	$20
		.BYTE	$6B ; k
		.BYTE	$6E ; n
		.BYTE	$6F ; o
		.BYTE	$63 ; c
		.BYTE	$6B ; k
		.BYTE	$65 ; e
		.BYTE	$64 ; d
		.BYTE	$20
		.BYTE	$64 ; d
		.BYTE	$6F ; o
		.BYTE	$77 ; w
		.BYTE	$6E ; n
		.BYTE	$2E ; .
		.BYTE	 $D
		.BYTE	$FF
		.BYTE	$A6 ; ¶
		.BYTE	0
		.BYTE	2
		.BYTE	$AC ; ¨
		.BYTE	$53 ; S
		.BYTE	$76 ; v
		.BYTE	$B4 ; ¥
		.BYTE	$6E ; n
		.BYTE	$9F ; ü
		.BYTE	 $A
		.BYTE	 $D
		.BYTE	$A5 ; •
		.BYTE	$B4 ; ¥
		.BYTE	$DB ; -
		.BYTE	$76 ; v
		.BYTE	 $D
		.BYTE	$20
		.BYTE	$77 ; w
		.BYTE	$69 ; i
		.BYTE	$74 ; t
		.BYTE	$68 ; h
		.BYTE	$20
		.BYTE	$B4 ; ¥
		.BYTE	$6C ; l
		.BYTE	0
		.BYTE	$14
		.BYTE	 $D
		.BYTE	$A3 ; £
		.BYTE	$D5 ; ’
		.BYTE	$9E ; û
		.BYTE	$61 ; a
		.BYTE	$74 ; t
		.BYTE	$20
		.BYTE	$79 ; y
		.BYTE	$6F ; o
		.BYTE	$75 ; u
		.BYTE	$72 ; r
		.BYTE	$20
		.BYTE	$68 ; h
		.BYTE	$65 ; e
		.BYTE	$61 ; a
		.BYTE	$64 ; d
		.BYTE	0
byte_2D66:	.BYTE	7			; DATA XREF: sub_2D99+15vw RAM:2F85vr ...
byte_2D67:	.BYTE	7			; DATA XREF: sub_2D99+18vw
byte_2D68:	.BYTE	7			; DATA XREF: sub_2D99+1Bvw
byte_2D69:	.BYTE	7			; DATA XREF: sub_2D99+1Evw
byte_2D6A:	.BYTE	7			; DATA XREF: sub_2D99+21vw
unk_2D6B:	.BYTE	$16		; DATA XREF: RAM:2F7Bvr	RAM:2F9Fvr
		.BYTE	$26 ; &
		.BYTE	$36 ; 6
		.BYTE	$46 ; F
		.BYTE	$56 ; V
unk_2D70:	.BYTE	$2D ; -		; DATA XREF: RAM:2F80vr	RAM:2FA4vr
		.BYTE	$2D ; -
		.BYTE	$2D ; -
		.BYTE	$2D ; -
		.BYTE	$2D ; -

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2D75:				; CODE XREF: RAM:2003^p
		LDA	#$80
		STA	byte_2CB6
		LDX	#8
		LDA	#0

loc_2D7E:				; CODE XREF: sub_2D75+Dvj
		STA	$D200,X
		DEX
		BPL	loc_2D7E
		INX
		STA	byte_3235

loc_2D88:				; CODE XREF: sub_2D75+17vj
		STA	$6960,X
		INX
		BNE	loc_2D88
		LDX	#$3F ; '?'

loc_2D90:				; CODE XREF: sub_2D75+1Fvj
		STA	$6A60,X
		DEX
		BPL	loc_2D90
		JMP	loc_30FB
; End of function sub_2D75


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2D99:				; CODE XREF: RAM:2026^p
		LDA	#$80
		STA	byte_2CB6
		STY	off_B9
		STX	off_B9+1
		LDA	#0
		LDX	#$60 ; '`'

loc_2DA6:				; CODE XREF: sub_2D99+11vj
		STA	$2CB6,X
		DEX
		BNE	loc_2DA6
		LDA	#7
		STA	byte_2D66
		STA	byte_2D67
		STA	byte_2D68
		STA	byte_2D69
		STA	byte_2D6A
		LDY	#9
		LDX	#4

loc_2DC1:				; CODE XREF: sub_2D99+35vj
		LDA	(off_B9),Y
		STA	unk_2CDF,X
		DEY
		LDA	(off_B9),Y
		STA	unk_2CDA,X
		DEY
		DEX
		BPL	loc_2DC1
		LDA	#3
		STA	SKCTL
		LDA	#0
		STA	byte_2CB6

locret_2DDA:				; CODE XREF: sub_2DDB+3vj
		RTS
; End of function sub_2D99


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2DDB:				; CODE XREF: RAM:225F^p
		BIT	byte_2CB6
		BMI	locret_2DDA
		LDX	#4

loc_2DE2:				; CODE XREF: sub_2DDB+2Cvj
		LDA	unk_2CD5,X
		BEQ	loc_2E06
		LDY	#4
		STA	$BC

loc_2DEB:				; CODE XREF: sub_2DDB+1Avj
		LSR	$BC
		BCC	loc_2DF4
		LDA	unk_2CD5,Y
		BEQ	loc_2E06

loc_2DF4:				; CODE XREF: sub_2DDB+12^j
		DEY
		BPL	loc_2DEB
		LDY	#4

loc_2DF9:				; CODE XREF: sub_2DDB+29vj
		LSR	unk_2CD5,X
		BCC	loc_2E03
		LDA	#0
		STA	unk_2CD5,Y

loc_2E03:				; CODE XREF: sub_2DDB+21^j
		DEY
		BPL	loc_2DF9

loc_2E06:				; CODE XREF: sub_2DDB+A^j sub_2DDB+17^j
		DEX
		BPL	loc_2DE2
		LDA	#4
		STA	$BB

loc_2E0D:				; CODE XREF: sub_2DDB+4Evj
		LDX	$BB
		LDA	byte_2CD0,X
		BNE	loc_2E27
		LDA	unk_2CE4,X
		BEQ	loc_2E24
		DEC	unk_2CE4,X
		BEQ	loc_2E24
		JSR	loc_3112
		JMP	loc_2E27
; ---------------------------------------------------------------------------

loc_2E24:				; CODE XREF: sub_2DDB+3C^j sub_2DDB+41^j
		JSR	sub_2E47

loc_2E27:				; CODE XREF: sub_2DDB+37^j sub_2DDB+46^j
		DEC	$BB
		BPL	loc_2E0D
		LDA	byte_2CD0
		LDX	#4

loc_2E30:				; CODE XREF: sub_2DDB+59vj
		AND	byte_2CD0,X
		DEX
		BNE	loc_2E30
		STA	byte_2CB6
		BIT	byte_3235
		BPL	locret_2E46
		JSR	sub_31A2
		LDA	#0
		STA	byte_3235

locret_2E46:				; CODE XREF: sub_2DDB+61^j
		RTS
; End of function sub_2DDB


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2E47:				; CODE XREF: sub_2DDB:loc_2E24^p
					; RAM:2E82vj ...
		LDX	$BB
		LDA	unk_2CD5,X
		BNE	locret_2E75
		LDY	#0
		LDA	unk_2CDA,X
		STA	off_B9
		LDA	unk_2CDF,X
		STA	off_B9+1
		LDY	#0
		LDA	(off_B9),Y
		CMP	#$19
		BCS	loc_2E76
		TAY
		LDA	unk_326A,Y
		PHA
		LDA	unk_3256,Y
		PHA
		INC	off_B9
		BNE	loc_2E71
		INC	off_B9+1

loc_2E71:				; CODE XREF: sub_2E47+26^j
		LDY	#0
		LDA	(off_B9),Y

locret_2E75:				; CODE XREF: sub_2E47+5^j
		RTS
; ---------------------------------------------------------------------------

loc_2E76:				; CODE XREF: sub_2E47+19^j sub_2E47+35vj
		LDA	RANDOM
		STA	COLBK
		JMP	loc_2E76
; End of function sub_2E47

; ---------------------------------------------------------------------------

loc_2E7F:				; CODE XREF: RAM:2F08vj	RAM:2F0Dvj ...
		JSR	sub_2E85
		JMP	sub_2E47

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2E85:				; CODE XREF: RAM:loc_2E7F^p RAM:2EC6vp ...
		LDX	$BB
		CLC
		ADC	off_B9
		STA	unk_2CDA,X
		LDA	off_B9+1
		ADC	#0
		STA	unk_2CDF,X
		RTS
; End of function sub_2E85


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2E95:				; CODE XREF: RAM:2F53vp	RAM:30A7vp
		LDA	(off_B9),Y
		STA	off_C0
		INY
		LDA	(off_B9),Y
		STA	off_C0+1
		INY
		LDA	(off_B9),Y
		STA	$BC
		LDY	#0
		RTS
; End of function sub_2E95

; ---------------------------------------------------------------------------
loc_2EA6:
		LDA	#$80
		STA	byte_2CD0,X
		CPX	#4
		BEQ	locret_2EBA
		LDA	#0
		LDY	unk_319E,X
		STA	$D200,Y
		STA	$D201,Y

locret_2EBA:				; CODE XREF: RAM:2EAD^j
		RTS
; ---------------------------------------------------------------------------
		STA	unk_2CEE,X
		INY
		LDA	(off_B9),Y
		STA	unk_2CE4,X
		LDA	#2
		JSR	sub_2E85
		LDA	#0
		STA	unk_2CFA,X
		STA	unk_2CE9,X
		LDA	unk_2CFE,X
		STA	unk_2D02,X
		JMP	loc_3112
; ---------------------------------------------------------------------------
		STA	unk_2CF2,X
		STA	off_BE
		INY
		LDA	(off_B9),Y
		STA	unk_2CF6,X
		STA	off_BE+1
		LDY	#$40 ; '@'
		LDA	(off_BE),Y
		STA	unk_2D06,X
		INY
		LDA	(off_BE),Y
		STA	unk_2D0A,X
		INY
		LDA	(off_BE),Y
		STA	unk_2CFE,X
		INY
		LDA	(off_BE),Y
		STA	unk_2D0E,X
		INY
		LDA	(off_BE),Y
		STA	unk_2D12,X
		LDA	#2
		JMP	loc_2E7F
; ---------------------------------------------------------------------------
		LDA	#1
		JMP	loc_2E7F
; ---------------------------------------------------------------------------
		STA	loc_2F19+1
		INY
		LDA	(off_B9),Y
		STA	loc_2F19+2

loc_2F19:				; DATA XREF: RAM:2F10^w	RAM:2F16^w
		DEC	$FFFF
		BEQ	loc_2F2D
		INY
		LDA	(off_B9),Y
		STA	unk_2CDA,X
		INY
		LDA	(off_B9),Y
		STA	unk_2CDF,X
		JMP	sub_2E47
; ---------------------------------------------------------------------------

loc_2F2D:				; CODE XREF: RAM:2F1C^j
		LDA	#4
		JMP	loc_2E7F
; ---------------------------------------------------------------------------

loc_2F32:				; CODE XREF: RAM:2F4Bvj
		STA	unk_2CDA,X
		INY
		LDA	(off_B9),Y
		STA	unk_2CDF,X
		JMP	sub_2E47
; ---------------------------------------------------------------------------
		CMP	RANDOM
		BCC	loc_2F4E
		INC	off_B9
		BNE	loc_2F49
		INC	off_B9+1

loc_2F49:				; CODE XREF: RAM:2F45^j
		LDA	(off_B9),Y
		JMP	loc_2F32
; ---------------------------------------------------------------------------

loc_2F4E:				; CODE XREF: RAM:2F41^j
		LDA	#3
		JMP	loc_2E7F
; ---------------------------------------------------------------------------
		JSR	sub_2E95
		STA	(off_C0),Y
		LDA	#3
		JMP	loc_2E7F
; ---------------------------------------------------------------------------
		STA	off_C0
		INY
		LDA	(off_B9),Y
		STA	off_C0+1
		CLC
		LDA	off_B9
		ADC	#2
		STA	off_BE
		LDA	off_B9+1
		ADC	#0
		STA	off_BE+1
		LDA	off_C0
		STA	unk_2CDA,X
		LDA	off_C0+1
		STA	unk_2CDF,X
		LDA	unk_2D6B,X
		STA	off_C0
		LDA	unk_2D70,X
		STA	off_C0+1
		LDY	byte_2D66,X
		LDA	off_BE+1
		STA	(off_C0),Y
		DEY
		TYA
		AND	#$F
		TAY
		LDA	off_BE
		STA	(off_C0),Y
		DEY
		TYA
		AND	#$F
		STA	byte_2D66,X
		JMP	sub_2E47
; ---------------------------------------------------------------------------
		LDA	unk_2D6B,X
		STA	off_BE
		LDA	unk_2D70,X
		STA	off_BE+1
		LDY	byte_2D66,X
		INY
		TYA
		AND	#$F
		TAY
		LDA	(off_BE),Y
		STA	unk_2CDA,X
		INY
		TYA
		AND	#$F
		TAY
		LDA	(off_BE),Y
		STA	unk_2CDF,X
		TYA
		STA	byte_2D66,X
		JMP	sub_2E47
; ---------------------------------------------------------------------------
		STA	$BD
		LDA	#1

loc_2FCB:				; CODE XREF: RAM:2FD3vj
		JMP	loc_2E7F
; ---------------------------------------------------------------------------
		STA	unk_2CD5,X
		LDA	#1
		BNE	loc_2FCB
		LSR	A
		ROR	A
		ROR	A
		STA	byte_2CBB
		LDY	#$13
		LDA	#0
		STA	byte_2CB9
		STA	byte_2CBA

loc_2FE5:				; CODE XREF: RAM:2FE9vj
		STA	unk_2CBC,Y
		DEY
		BPL	loc_2FE5
		LDY	#1

loc_2FED:				; CODE XREF: RAM:2FF2vj
		LDA	(off_B9),Y
		BEQ	loc_2FF4
		INY
		BNE	loc_2FED

loc_2FF4:				; CODE XREF: RAM:2FEF^j
		STY	$BC
		LSR	$BC
		SEC
		LDA	#$A
		SBC	$BC
		TAX
		STA	byte_2CB8
		STY	$BC
		LDY	#1

loc_3005:				; CODE XREF: RAM:3031vj
		LDA	(off_B9),Y
		CMP	#$41 ; 'A'
		BCC	loc_300F
		CMP	#$5B ; '['
		BCC	loc_3025

loc_300F:				; CODE XREF: RAM:3009^j
		STX	byte_2CB7
		LDX	#0

loc_3014:				; CODE XREF: RAM:301Cvj
		CMP	unk_303D,X
		BEQ	loc_301E
		INX
		CPX	#5
		BCC	loc_3014

loc_301E:				; CODE XREF: RAM:3017^j
		TXA
		LDX	byte_2CB7
		CLC
		ADC	#$1B

loc_3025:				; CODE XREF: RAM:300D^j
		AND	#$1F
		ORA	byte_2CBB
		STA	unk_2CBC,X
		INX
		INY
		CPY	$BC
		BCC	loc_3005
		INY
		TYA
		LDX	#$80
		STX	byte_3235
		JMP	loc_2E7F
; ---------------------------------------------------------------------------
unk_303D:	.BYTE	$2E ; .		; DATA XREF: RAM:loc_3014^r
		.BYTE	$2D ; -
		.BYTE	$27 ; '
		.BYTE	$21 ; !
		.BYTE	$3F ; ?
; ---------------------------------------------------------------------------
		LDX	byte_2CB9

loc_3045:				; CODE XREF: RAM:3054vj
		LDA	unk_2CBC,X
		AND	#$3F ; '?'
		ORA	byte_2CBB
		STA	unk_2CBC,X
		INX
		CPX	byte_2CBA
		BCC	loc_3045
		LDA	(off_B9),Y
		CLC
		ADC	byte_2CB8
		STA	byte_2CB9
		TAX
		INY
		LDA	(off_B9),Y
		CLC
		ADC	byte_2CB8
		ADC	#1
		STA	byte_2CBA
		INY
		LDA	(off_B9),Y
		LSR	A
		ROR	A
		ROR	A
		STA	$BC

loc_3074:				; CODE XREF: RAM:3082vj
		LDA	unk_2CBC,X
		AND	#$3F ; '?'
		ORA	$BC
		STA	unk_2CBC,X
		INX
		CPX	byte_2CBA
		BCC	loc_3074
		LDX	#$80
		STX	byte_3235
		LDA	#3
		JMP	loc_2E7F
; ---------------------------------------------------------------------------
		LDX	byte_2CB9

loc_3091:				; CODE XREF: RAM:30A0vj
		LDA	unk_2CBC,X
		AND	#$3F ; '?'
		ORA	byte_2CBB
		STA	unk_2CBC,X
		INX
		CPX	byte_2CBA
		BCC	loc_3091
		LDA	#0
		JMP	loc_2E7F
; ---------------------------------------------------------------------------
		JSR	sub_2E95
		STA	(off_C0),Y
		LDY	#3
		LDA	(off_B9),Y
		LDX	#0

loc_30B2:				; CODE XREF: RAM:30B8vj
		LSR	A
		BCS	loc_30BA
		INX
		CPX	#8
		BCC	loc_30B2

loc_30BA:				; CODE XREF: RAM:30B3^j
		LDA	unk_30D6,X
		STA	$BC

loc_30BF:				; CODE XREF: RAM:30C8vj
		LDA	RANDOM
		AND	$BC
		CMP	(off_B9),Y
		BEQ	loc_30CA
		BCS	loc_30BF

loc_30CA:				; CODE XREF: RAM:30C6^j
		LDY	#0
		CLC
		ADC	(off_C0),Y
		STA	(off_C0),Y
		LDA	#4
		JMP	loc_2E7F
; ---------------------------------------------------------------------------
unk_30D6:	.BYTE	$FF		; DATA XREF: RAM:loc_30BA^r
		.BYTE	$7F ; 
		.BYTE	$3F ; ?
		.BYTE	$1F
		.BYTE	 $F
		.BYTE	7
		.BYTE	3
		.BYTE	1
		.BYTE	0
; ---------------------------------------------------------------------------
		STA	unk_2CE4,X
		LDA	#$80
		STA	unk_2CE9,X
		CPX	#4
		BEQ	loc_30F3
		LDY	unk_319E,X
		LDA	#0
		STA	$D201,Y

loc_30F3:				; CODE XREF: RAM:30E9^j
		LDA	#1
		JSR	sub_2E85
		JMP	loc_3112
; ---------------------------------------------------------------------------

loc_30FB:				; CODE XREF: sub_2D75+21^j
		LDA	#$80
		LDX	#4

loc_30FF:				; CODE XREF: RAM:3103vj
		STA	byte_2CD0,X
		DEX
		BPL	loc_30FF
		STA	byte_2CB6
		ASL	A
		LDX	#7

loc_310B:				; CODE XREF: RAM:310Fvj
		STA	$D200,X
		DEX
		BPL	loc_310B

locret_3111:				; CODE XREF: RAM:3114vj
		RTS
; ---------------------------------------------------------------------------

loc_3112:				; CODE XREF: sub_2DDB+43^p RAM:2ED7^j ...
		CPX	#4
		BEQ	locret_3111
		LDA	unk_2CF2,X
		STA	off_BE
		CLC
		ADC	#$20 ; ' '
		STA	off_C0
		LDA	unk_2CF6,X
		STA	off_BE+1
		ADC	#0
		STA	off_C0+1
		LDA	unk_2CE4,X
		CMP	unk_2D0A,X
		BNE	loc_3144
		TXA
		ASL	A
		TAY
		LDA	#0
		STA	$D200,Y
		STA	$D201,Y
		LDA	#$80
		STA	unk_2CE9,X
		JMP	locret_319D
; ---------------------------------------------------------------------------

loc_3144:				; CODE XREF: RAM:312F^j
		CMP	unk_2D06,X
		BNE	loc_3158
		LDA	unk_2D12,X
		CLC

loc_314D:
		ADC	#1
		STA	unk_2CFA,X
		LDA	unk_2CFE,X
		STA	unk_2D02,X

loc_3158:				; CODE XREF: RAM:3147^j
		LDA	unk_2CE9,X
		BMI	locret_319D
		LDY	unk_2CFA,X
		LDA	unk_2CEE,X
		CLC
		ADC	(off_BE),Y
		STA	$BC
		TXA
		ASL	A
		TAX
		LDA	$BC
		STA	$D200,X
		LDA	(off_C0),Y
		STA	$D201,X
		LDX	$BB
		DEC	unk_2D02,X
		BNE	locret_319D
		LDA	unk_2CFE,X
		STA	unk_2D02,X
		INC	unk_2CFA,X
		TYA
		CMP	unk_2D12,X
		BNE	loc_3194
		LDA	unk_2D0E,X
		STA	unk_2CFA,X
		JMP	locret_319D
; ---------------------------------------------------------------------------

loc_3194:				; CODE XREF: RAM:3189^j
		CPY	#$1F
		BCC	locret_319D
		LDA	#$1F
		STA	unk_2CFA,X

locret_319D:				; CODE XREF: RAM:3141^j	RAM:315B^j ...
		RTS
; ---------------------------------------------------------------------------
unk_319E:	.BYTE	0		; DATA XREF: RAM:2EB1^r	RAM:30EB^r
		.BYTE	2
		.BYTE	4
		.BYTE	8

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_31A2:				; CODE XREF: sub_2DDB+63^p
		LDA	#$13
		STA	$C7

loc_31A6:				; CODE XREF: sub_31A2+68vj
		LDX	$C7
		LDA	unk_2CBC,X
		ASL	A
		ASL	A
		ROL	A
		AND	#1
		TAY
		LDA	unk_3233,Y
		STA	$C8
		LDA	unk_2CBC,X
		AND	#$3F ; '?'
		TAY
		LDX	unk_3236,Y
		LDA	$C7
		ASL	A
		STA	$CB
		LDA	#7
		STA	$C9

loc_31C8:				; CODE XREF: sub_31A2+64vj
		LDY	$C9
		LDA	$685C,Y
		STA	off_C5
		LDA	$655C,Y
		STA	off_C5+1
		LDA	unk_5430,Y
		STA	off_C3
		LDA	unk_5438,Y
		STA	off_C3+1
		LDY	$CB
		LDA	unk_600,X
		AND	$C8
		STA	$CA
		EOR	(off_C3),Y
		EOR	(off_C5),Y
		STA	(off_C5),Y
		LDA	$CA
		STA	(off_C3),Y
		INY
		LDA	unk_700,X
		AND	$C8
		STA	$CA
		EOR	(off_C3),Y
		EOR	(off_C5),Y
		STA	(off_C5),Y
		LDA	$CA
		STA	(off_C3),Y
		DEX
		DEC	$C9
		BPL	loc_31C8
		DEC	$C7
		BPL	loc_31A6
		TSX
		LDA	$109,X
		CMP	#$38 ; '8'
		BNE	locret_3232
		LDA	$10A,X
		CMP	#$2A ; '*'
		BNE	locret_3232
		LDY	$105,X
		LDA	$106,X
		TAX
		LDA	$68C0,X
		EOR	(off_82),Y
		STA	(off_82),Y
		TSX
		LDA	#$3A ; ':'
		STA	$6D,X
		LDA	#$2A ; '*'
		STA	$6E,X

locret_3232:				; CODE XREF: sub_31A2+70^j sub_31A2+77^j
		RTS
; End of function sub_31A2

; ---------------------------------------------------------------------------
unk_3233:	.BYTE	$FF		; DATA XREF: sub_31A2+F^r
		.BYTE	$AA ; ™
byte_3235:	.BYTE	0			; DATA XREF: sub_2D75+10^w sub_2DDB+5E^r ...
unk_3236:	.BYTE	7		; DATA XREF: sub_31A2+1A^r
		.BYTE	 $F
		.BYTE	$17
		.BYTE	$1F
		.BYTE	$27 ; '
		.BYTE	$2F ; /
		.BYTE	$37 ; 7
		.BYTE	$3F ; ?
		.BYTE	$47 ; G
		.BYTE	$4F ; O
		.BYTE	$57 ; W
		.BYTE	$5F ; _
		.BYTE	$67 ; g
		.BYTE	$6F ; o
		.BYTE	$77 ; w
		.BYTE	$7F ; 
		.BYTE	$87 ; á
		.BYTE	$8F ; è
		.BYTE	$97 ; ó
		.BYTE	$9F ; ü
		.BYTE	$A7 ; ß
		.BYTE	$AF ; Ø
		.BYTE	$B7 ; ∑
		.BYTE	$BF ; ø
		.BYTE	$C7 ; «
		.BYTE	$CF ; œ
		.BYTE	$D7 ; ◊
		.BYTE	$DF ; ﬂ
		.BYTE	$E7 ; Á
		.BYTE	$EF ; Ô
		.BYTE	$F7 ; ˜
		.BYTE	$FF
unk_3256:	.BYTE	<(loc_2EA6-1)	; DATA XREF: sub_2E47+20^r
		.BYTE	$BA ; ∫
		.BYTE	$D9 ; Ÿ
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	$31 ; 1
		.BYTE	$3D ; =
		.BYTE	$52 ; R
		.BYTE	0
		.BYTE	0
		.BYTE	$5C ; \
		.BYTE	$9E ; û
		.BYTE	$C6 ; ∆
		.BYTE	$CD ; Õ
		.BYTE	$D4 ; ‘
		.BYTE	$41 ; A
		.BYTE	$8D ; ç
		.BYTE	$A6 ; ¶
		.BYTE	$DE ; ﬁ
		.BYTE	$FA ; ˙
unk_326A:	.BYTE	>(loc_2EA6-1)	; DATA XREF: sub_2E47+1C^r
		.BYTE	$2E ; .
		.BYTE	$2E ; .
		.BYTE	$2F ; /
		.BYTE	$2F ; /
		.BYTE	$2F ; /
		.BYTE	$2F ; /
		.BYTE	$2F ; /
		.BYTE	0
		.BYTE	0
		.BYTE	$2F ; /
		.BYTE	$2F ; /
		.BYTE	$2F ; /
		.BYTE	$2F ; /
		.BYTE	$2F ; /
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	$7E ; ~
		.BYTE	0
		.BYTE	$1B
		.BYTE	 $F
		.BYTE	0
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$57 ; W
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$5A ; Z
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$95 ; ï
		.BYTE	$A9 ; ©
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$57 ; W
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$7A ; z
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$57 ; W
		.BYTE	$9F ; ü
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$96 ; ñ
		.BYTE	$AF ; Ø
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$95 ; ï
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$E9 ; È
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$5F ; _
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$7E ; ~
		.BYTE	$7F ; 
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$95 ; ï
		.BYTE	$A5 ; •
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$5F ; _
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$FA ; ˙
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$5F ; _
		.BYTE	$7F ; 
		.BYTE	$BF ; ø
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$9F ; ü
		.BYTE	$AF ; Ø
		.BYTE	$EB ; Î
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$FA ; ˙
		.BYTE	$EF ; Ô
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$A9 ; ©
		.BYTE	$FE ; ˛
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$56 ; V
		.BYTE	$7F ; 
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$A5 ; •
		.BYTE	$EA ; Í
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$57 ; W
		.BYTE	$AF ; Ø
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$A5 ; •
		.BYTE	$F9 ; ˘
		.BYTE	$FE ; ˛
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$56 ; V
		.BYTE	$7F ; 
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$A9 ; ©
		.BYTE	$EA ; Í
		.BYTE	$FE ; ˛
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$BF ; ø
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$7F ; 
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$E9 ; È
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$E9 ; È
		.BYTE	$FA ; ˙
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$95 ; ï
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$7F ; 
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$F9 ; ˘
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$5F ; _
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$5F ; _
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$AA ; ™
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$95 ; ï
		.BYTE	$A9 ; ©
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$5A ; Z
		.BYTE	$7F ; 
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$A5 ; •
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$FA ; ˙
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$A5 ; •
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$5F ; _
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$C1 ; ¡
		.BYTE	$B8 ; ∏
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$11
		.BYTE	0
		.BYTE	$1B
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$33 ; 3
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$11
		.BYTE	0
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$33 ; 3
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$15
		.BYTE	$10
		.BYTE	 $F
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$10
		.BYTE	3
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$11
		.BYTE	1
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$4F ; O
		.BYTE	0
		.BYTE	$EC ; Ï
		.BYTE	$B3 ; ≥
		.BYTE	$CC ; Ã
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	$C0 ; ¿
		.BYTE	 $C
		.BYTE	$C0 ; ¿
		.BYTE	 $C
		.BYTE	$55 ; U
		.BYTE	5
		.BYTE	$F0 ; 
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	$C0 ; ¿
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$C0 ; ¿
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	 $F
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	5
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	 $C
		.BYTE	$FF
		.BYTE	3
		.BYTE	$1B
		.BYTE	3
		.BYTE	$45 ; E
		.BYTE	4
		.BYTE	$C1 ; ¡
		.BYTE	1
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	0
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$40 ; @
		.BYTE	$4C ; L
		.BYTE	$30 ; 0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$C3 ; √
		.BYTE	$33 ; 3
		.BYTE	$E3 ; „
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$44 ; D
		.BYTE	$40 ; @
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	$C3 ; √
		.BYTE	$55 ; U
		.BYTE	4
		.BYTE	$C3 ; √
		.BYTE	$32 ; 2
		.BYTE	$30 ; 0
		.BYTE	3
		.BYTE	$30 ; 0
		.BYTE	$CE ; Œ
		.BYTE	$55 ; U
		.BYTE	5
		.BYTE	$B0 ; ∞
		.BYTE	$C0 ; ¿
		.BYTE	 $C
		.BYTE	$3C ; <
		.BYTE	 $C
		.BYTE	$3C ; <
		.BYTE	$55 ; U
		.BYTE	4
		.BYTE	$33 ; 3
		.BYTE	$C8 ; »
		.BYTE	$B2 ; ≤
		.BYTE	$C8 ; »
		.BYTE	$A8 ; ®
		.BYTE	$20
		.BYTE	$55 ; U
		.BYTE	1
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$3C ; <
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$45 ; E
		.BYTE	$40 ; @
		.BYTE	3
		.BYTE	$3F ; ?
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$C0 ; ¿
		.BYTE	$55 ; U
		.BYTE	5
		.BYTE	$30 ; 0
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$2E ; .
		.BYTE	$55 ; U
		.BYTE	1
		.BYTE	$38 ; 8
		.BYTE	0
		.BYTE	$C0 ; ¿
		.BYTE	 $C
		.BYTE	$83 ; É
		.BYTE	$E0 ; ‡
		.BYTE	$55 ; U
		.BYTE	$40 ; @
		.BYTE	$3B ; ;
		.BYTE	$2E ; .
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$55 ; U
		.BYTE	1
		.BYTE	$B8 ; ∏
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$31 ; 1
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$11
		.BYTE	1
		.BYTE	$B1 ; ±
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	2
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$45 ; E
		.BYTE	0
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	4
		.BYTE	$45 ; E
		.BYTE	0
		.BYTE	$EC ; Ï
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$45 ; E
		.BYTE	$44 ; D
		.BYTE	$44 ; D
		.BYTE	4
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$11
		.BYTE	0
		.BYTE	$B3 ; ≥
		.BYTE	$E0 ; ‡
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	 $C
		.BYTE	$1B
		.BYTE	6
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$C0 ; ¿
		.BYTE	$1B
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	$10
		.BYTE	$1B
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	1
		.BYTE	$C0 ; ¿
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$44 ; D
		.BYTE	$1B
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$B0 ; ∞
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$40 ; @
		.BYTE	$2E ; .
		.BYTE	$BB ; ª
		.BYTE	$E0 ; ‡
		.BYTE	5
		.BYTE	$54 ; T
		.BYTE	$43 ; C
		.BYTE	$22 ; "
		.BYTE	3
		.BYTE	$EC ; Ï
		.BYTE	$B0 ; ∞
		.BYTE	 $F
		.BYTE	$50 ; P
		.BYTE	2
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$FF
		.BYTE	$F0 ; 
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$20
		.BYTE	$F0 ; 
		.BYTE	0
		.BYTE	3
		.BYTE	$C2 ; ¬
		.BYTE	$83 ; É
		.BYTE	$C2 ; ¬
		.BYTE	$80 ; Ä
		.BYTE	$3F ; ?
		.BYTE	$C0 ; ¿
		.BYTE	$23 ; #
		.BYTE	$30 ; 0
		.BYTE	$22 ; "
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$FF
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	2
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	$3B ; ;
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	2
		.BYTE	3
		.BYTE	$20
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$B0 ; ∞
		.BYTE	$20
		.BYTE	$C0 ; ¿
		.BYTE	 $C
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	$33 ; 3
		.BYTE	$F2 ; Ú
		.BYTE	$F0 ; 
		.BYTE	5
		.BYTE	$3F ; ?
		.BYTE	$F0 ; 
		.BYTE	8
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$C0 ; ¿
		.BYTE	 $E
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	2
		.BYTE	3
		.BYTE	$F2 ; Ú
		.BYTE	$30 ; 0
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	0
		.BYTE	$E3 ; „
		.BYTE	$B3 ; ≥
		.BYTE	$23 ; #
		.BYTE	$33 ; 3
		.BYTE	$23 ; #
		.BYTE	$33 ; 3
		.BYTE	$23 ; #
		.BYTE	$FC ; ¸
		.BYTE	$1B
		.BYTE	5
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$B3 ; ≥
		.BYTE	$E3 ; „
		.BYTE	$B3 ; ≥
		.BYTE	$E3 ; „
		.BYTE	$B3 ; ≥
		.BYTE	$E3 ; „
		.BYTE	$B3 ; ≥
		.BYTE	$E3 ; „
		.BYTE	0
		.BYTE	$2E ; .
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$3B ; ;
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$30 ; 0
		.BYTE	$3E ; >
		.BYTE	 $C
		.BYTE	$32 ; 2
		.BYTE	$32 ; 2
		.BYTE	2
		.BYTE	$88 ; à
		.BYTE	$A8 ; ®
		.BYTE	$A1 ; °
		.BYTE	$84 ; Ñ
		.BYTE	$85 ; Ö
		.BYTE	$80 ; Ä
		.BYTE	$15
		.BYTE	0
		.BYTE	$50 ; P
		.BYTE	$45 ; E
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$50 ; P
		.BYTE	1
		.BYTE	$50 ; P
		.BYTE	$10
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$51 ; Q
		.BYTE	$CB ; À
		.BYTE	$F0 ; 
		.BYTE	$30 ; 0
		.BYTE	$C3 ; √
		.BYTE	$F3 ; Û
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$43 ; C
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	 $B
		.BYTE	$22 ; "
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	0
		.BYTE	$15
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$15
		.BYTE	$C0 ; ¿
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$3C ; <
		.BYTE	$40 ; @
		.BYTE	$C1 ; ¡
		.BYTE	$30 ; 0
		.BYTE	$43 ; C
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$54 ; T
		.BYTE	5
		.BYTE	$F0 ; 
		.BYTE	$1B
		.BYTE	2
		.BYTE	 $C
		.BYTE	3
		.BYTE	$14
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$C0 ; ¿
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FC ; ¸
		.BYTE	$3C ; <
		.BYTE	$BB ; ª
		.BYTE	2
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$80 ; Ä
		.BYTE	$EC ; Ï
		.BYTE	 $B
		.BYTE	$50 ; P
		.BYTE	1
		.BYTE	$E1 ; ·
		.BYTE	$80 ; Ä
		.BYTE	$CF ; œ
		.BYTE	$B3 ; ≥
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$C1 ; ¡
		.BYTE	$F0 ; 
		.BYTE	 $E
		.BYTE	$8B ; ã
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$E2 ; ‚
		.BYTE	$B3 ; ≥
		.BYTE	0
		.BYTE	$88 ; à
		.BYTE	$EC ; Ï
		.BYTE	0
		.BYTE	$53 ; S
		.BYTE	$CF ; œ
		.BYTE	0
		.BYTE	$3B ; ;
		.BYTE	 $E
		.BYTE	$80 ; Ä
		.BYTE	$CE ; Œ
		.BYTE	 $B
		.BYTE	$C0 ; ¿
		.BYTE	$13
		.BYTE	0
		.BYTE	$B8 ; ∏
		.BYTE	$EE ; Ó
		.BYTE	$3B ; ;
		.BYTE	0
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$C3 ; √
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$85 ; Ö
		.BYTE	$31 ; 1
		.BYTE	0
		.BYTE	$2C ; ,
		.BYTE	$14
		.BYTE	$C4 ; -
		.BYTE	$30 ; 0
		.BYTE	$32 ; 2
		.BYTE	$40 ; @
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$44 ; D
		.BYTE	$44 ; D
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	4
		.BYTE	$C4 ; -
		.BYTE	$84 ; Ñ
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$1B
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	3
		.BYTE	$E2 ; ‚
		.BYTE	$B3 ; ≥
		.BYTE	$E0 ; ‡
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	$51 ; Q
		.BYTE	$55 ; U
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$51 ; Q
		.BYTE	$55 ; U
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$30 ; 0
		.BYTE	$23 ; #
		.BYTE	$40 ; @
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$30 ; 0
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$C2 ; ¬
		.BYTE	0
		.BYTE	$50 ; P
		.BYTE	 $B
		.BYTE	$CE ; Œ
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	8
		.BYTE	 $C
		.BYTE	8
		.BYTE	 $C
		.BYTE	3
		.BYTE	$1B
		.BYTE	4
		.BYTE	$F3 ; Û
		.BYTE	$F0 ; 
		.BYTE	5
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EC ; Ï
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$F3 ; Û
		.BYTE	$72 ; r
		.BYTE	$F3 ; Û
		.BYTE	$1B
		.BYTE	2
		.BYTE	$F0 ; 
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$33 ; 3
		.BYTE	$23 ; #
		.BYTE	$33 ; 3
		.BYTE	$23 ; #
		.BYTE	$33 ; 3
		.BYTE	$20
		.BYTE	$B1 ; ±
		.BYTE	$E0 ; ‡
		.BYTE	$F0 ; 
		.BYTE	$1B
		.BYTE	2
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$B3 ; ≥
		.BYTE	$E3 ; „
		.BYTE	$B3 ; ≥
		.BYTE	$E3 ; „
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	1
		.BYTE	$3B ; ;
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	0
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$4C ; L
		.BYTE	$30 ; 0
		.BYTE	$22 ; "
		.BYTE	$30 ; 0
		.BYTE	$2A ; *
		.BYTE	2
		.BYTE	 $A
		.BYTE	$32 ; 2
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A1 ; °
		.BYTE	$80 ; Ä
		.BYTE	$85 ; Ö
		.BYTE	$85 ; Ö
		.BYTE	$15
		.BYTE	5
		.BYTE	$44 ; D
		.BYTE	$45 ; E
		.BYTE	$44 ; D
		.BYTE	5
		.BYTE	$40 ; @
		.BYTE	$42 ; B
		.BYTE	$48 ; H
		.BYTE	$54 ; T
		.BYTE	$51 ; Q
		.BYTE	$55 ; U
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$22 ; "
		.BYTE	$88 ; à
		.BYTE	$55 ; U
		.BYTE	$41 ; A
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$22 ; "
		.BYTE	$88 ; à
		.BYTE	$43 ; C
		.BYTE	$53 ; S
		.BYTE	$53 ; S
		.BYTE	$13
		.BYTE	$54 ; T
		.BYTE	3
		.BYTE	$23 ; #
		.BYTE	$88 ; à
		.BYTE	8
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	$1B
		.BYTE	4
		.BYTE	$3C ; <
		.BYTE	$C5 ; ≈
		.BYTE	$F0 ; 
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$33 ; 3
		.BYTE	$F2 ; Ú
		.BYTE	$33 ; 3
		.BYTE	$F2 ; Ú
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$15
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$4C ; L
		.BYTE	 $C
		.BYTE	$8C ; å
		.BYTE	$CC ; Ã
		.BYTE	$8C ; å
		.BYTE	$CC ; Ã
		.BYTE	$8C ; å
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$8F ; è
		.BYTE	$CC ; Ã
		.BYTE	$8C ; å
		.BYTE	$CC ; Ã
		.BYTE	$8F ; è
		.BYTE	$CC ; Ã
		.BYTE	$8C ; å
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$FF
		.BYTE	$CD ; Õ
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	5
		.BYTE	$F0 ; 
		.BYTE	$F7 ; ˜
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$C4 ; -
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$40 ; @
		.BYTE	$15
		.BYTE	$C0 ; ¿
		.BYTE	$70 ; p
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$38 ; 8
		.BYTE	$1B
		.BYTE	2
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$88 ; à
		.BYTE	$CE ; Œ
		.BYTE	8
		.BYTE	 $C
		.BYTE	$88 ; à
		.BYTE	 $C
		.BYTE	0
		.BYTE	5
		.BYTE	3
		.BYTE	$EC ; Ï
		.BYTE	$8B ; ã
		.BYTE	$C0 ; ¿
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$33 ; 3
		.BYTE	2
		.BYTE	$30 ; 0
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	8
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$40 ; @
		.BYTE	 $E
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$C0 ; ¿
		.BYTE	8
		.BYTE	1
		.BYTE	$15
		.BYTE	$15
		.BYTE	$14
		.BYTE	$15
		.BYTE	$15
		.BYTE	$14
		.BYTE	$55 ; U
		.BYTE	$51 ; Q
		.BYTE	$54 ; T
		.BYTE	$53 ; S
		.BYTE	$40 ; @
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$53 ; S
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$51 ; Q
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	0
		.BYTE	$50 ; P
		.BYTE	$48 ; H
		.BYTE	$4C ; L
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$80 ; Ä
		.BYTE	$CC ; Ã
		.BYTE	$80 ; Ä
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$B8 ; ∏
		.BYTE	$CC ; Ã
		.BYTE	8
		.BYTE	$CC ; Ã
		.BYTE	8
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$D0 ; –
		.BYTE	$1B
		.BYTE	2
		.BYTE	$F0 ; 
		.BYTE	$F1 ; Ò
		.BYTE	$F1 ; Ò
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	$4F ; O
		.BYTE	$53 ; S
		.BYTE	$50 ; P
		.BYTE	 $B
		.BYTE	$2E ; .
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$15
		.BYTE	$15
		.BYTE	4
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$B8 ; ∏
		.BYTE	$E1 ; ·
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$44 ; D
		.BYTE	$85 ; Ö
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	4
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$4C ; L
		.BYTE	 $C
		.BYTE	3
		.BYTE	$C0 ; ¿
		.BYTE	$CC ; Ã
		.BYTE	$C1 ; ¡
		.BYTE	1
		.BYTE	$C5 ; ≈
		.BYTE	$C0 ; ¿
		.BYTE	$30 ; 0
		.BYTE	5
		.BYTE	$40 ; @
		.BYTE	$55 ; U
		.BYTE	$11
		.BYTE	$11
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	$50 ; P
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$40 ; @
		.BYTE	$13
		.BYTE	3
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FF
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$50 ; P
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FF
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$14
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FF
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	$43 ; C
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$10
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$F3 ; Û
		.BYTE	$32 ; 2
		.BYTE	$F3 ; Û
		.BYTE	$32 ; 2
		.BYTE	$F3 ; Û
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$42 ; B
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$B3 ; ≥
		.BYTE	$2E ; .
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	0
		.BYTE	$15
		.BYTE	$33 ; 3
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$E2 ; ‚
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	3
		.BYTE	$54 ; T
		.BYTE	$8C ; å
		.BYTE	0
		.BYTE	$15
		.BYTE	$C5 ; ≈
		.BYTE	$B0 ; ∞
		.BYTE	$EE ; Ó
		.BYTE	$80 ; Ä
		.BYTE	$15
		.BYTE	$88 ; à
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$8C ; å
		.BYTE	 $C
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	1
		.BYTE	$54 ; T
		.BYTE	$15
		.BYTE	$1B
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	 $C
		.BYTE	$4C ; L
		.BYTE	$30 ; 0
		.BYTE	$40 ; @
		.BYTE	$FC ; ¸
		.BYTE	$CF ; œ
		.BYTE	$1B
		.BYTE	5
		.BYTE	$CC ; Ã
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	0
		.BYTE	1
		.BYTE	 $C
		.BYTE	$1B
		.BYTE	2
		.BYTE	 $F
		.BYTE	5
		.BYTE	5
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$40 ; @
		.BYTE	$3C ; <
		.BYTE	$CC ; Ã
		.BYTE	$70 ; p
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$45 ; E
		.BYTE	$45 ; E
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$88 ; à
		.BYTE	$C0 ; ¿
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$83 ; É
		.BYTE	 $C
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	$15
		.BYTE	0
		.BYTE	$15
		.BYTE	$15
		.BYTE	$10
		.BYTE	$15
		.BYTE	$15
		.BYTE	$11
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$40 ; @
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$4C ; L
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$53 ; S
		.BYTE	$4C ; L
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	$CF ; œ
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$F0 ; 
		.BYTE	$72 ; r
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	3
		.BYTE	$E3 ; „
		.BYTE	$33 ; 3
		.BYTE	$23 ; #
		.BYTE	$33 ; 3
		.BYTE	$23 ; #
		.BYTE	$33 ; 3
		.BYTE	$E3 ; „
		.BYTE	$15
		.BYTE	$15
		.BYTE	0
		.BYTE	$2E ; .
		.BYTE	$3B ; ;
		.BYTE	$22 ; "
		.BYTE	$30 ; 0
		.BYTE	$22 ; "
		.BYTE	$53 ; S
		.BYTE	$53 ; S
		.BYTE	 $C
		.BYTE	$CF ; œ
		.BYTE	$8C ; å
		.BYTE	$8F ; è
		.BYTE	$8F ; è
		.BYTE	$8C ; å
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$3C ; <
		.BYTE	$31 ; 1
		.BYTE	$31 ; 1
		.BYTE	$C5 ; ≈
		.BYTE	$15
		.BYTE	$10
		.BYTE	$11
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	$4C ; L
		.BYTE	$31 ; 1
		.BYTE	$31 ; 1
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$44 ; D
		.BYTE	$53 ; S
		.BYTE	$50 ; P
		.BYTE	$33 ; 3
		.BYTE	3
		.BYTE	$33 ; 3
		.BYTE	$C3 ; √
		.BYTE	$33 ; 3
		.BYTE	$C3 ; √
		.BYTE	$30 ; 0
		.BYTE	$F3 ; Û
		.BYTE	$33 ; 3
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$33 ; 3
		.BYTE	$FF
		.BYTE	0
		.BYTE	$4D ; M
		.BYTE	$33 ; 3
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$33 ; 3
		.BYTE	$FF
		.BYTE	0
		.BYTE	$3C ; <
		.BYTE	$33 ; 3
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$33 ; 3
		.BYTE	$FF
		.BYTE	0
		.BYTE	$71 ; q
		.BYTE	$33 ; 3
		.BYTE	4
		.BYTE	$33 ; 3
		.BYTE	 $C
		.BYTE	$1B
		.BYTE	2
		.BYTE	$3F ; ?
		.BYTE	$37 ; 7
		.BYTE	$10
		.BYTE	$13
		.BYTE	$14
		.BYTE	$C5 ; ≈
		.BYTE	0
		.BYTE	$C1 ; ¡
		.BYTE	$31 ; 1
		.BYTE	$C1 ; ¡
		.BYTE	3
		.BYTE	$F2 ; Ú
		.BYTE	3
		.BYTE	$54 ; T
		.BYTE	4
		.BYTE	$45 ; E
		.BYTE	$45 ; E
		.BYTE	$40 ; @
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$C0 ; ¿
		.BYTE	$15
		.BYTE	$C5 ; ≈
		.BYTE	$C1 ; ¡
		.BYTE	$FC ; ¸
		.BYTE	$3C ; <
		.BYTE	 $F
		.BYTE	$3F ; ?
		.BYTE	$33 ; 3
		.BYTE	$1B
		.BYTE	3
		.BYTE	$54 ; T
		.BYTE	$14
		.BYTE	$14
		.BYTE	4
		.BYTE	$20
		.BYTE	$15
		.BYTE	4
		.BYTE	5
		.BYTE	$F0 ; 
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$F3 ; Û
		.BYTE	$32 ; 2
		.BYTE	$55 ; U
		.BYTE	$44 ; D
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$55 ; U
		.BYTE	$45 ; E
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$1B
		.BYTE	4
		.BYTE	$CC ; Ã
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	 $F
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	0
		.BYTE	5
		.BYTE	$31 ; 1
		.BYTE	$3C ; <
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	3
		.BYTE	$52 ; R
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$C5 ; ≈
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	2
		.BYTE	$53 ; S
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	4
		.BYTE	 $C
		.BYTE	 $F
		.BYTE	$8C ; å
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$1B
		.BYTE	2
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$CC ; Ã
		.BYTE	$54 ; T
		.BYTE	$15
		.BYTE	$C5 ; ≈
		.BYTE	$F1 ; Ò
		.BYTE	$FC ; ¸
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$C7 ; «
		.BYTE	$30 ; 0
		.BYTE	$31 ; 1
		.BYTE	$41 ; A
		.BYTE	$51 ; Q
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$3B ; ;
		.BYTE	$2E ; .
		.BYTE	$1B
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	8
		.BYTE	$2C ; ,
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	 $E
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$15
		.BYTE	$14
		.BYTE	$10
		.BYTE	 $C
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	0
		.BYTE	$2C ; ,
		.BYTE	 $C
		.BYTE	$1B
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	$CF ; œ
		.BYTE	$FF
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$CF ; œ
		.BYTE	$FC ; ¸
		.BYTE	$CF ; œ
		.BYTE	$FC ; ¸
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	$C1 ; ¡
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$F0 ; 
		.BYTE	$F2 ; Ú
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$F0 ; 
		.BYTE	$F1 ; Ò
		.BYTE	$83 ; É
		.BYTE	$E3 ; „
		.BYTE	$33 ; 3
		.BYTE	$23 ; #
		.BYTE	$B3 ; ≥
		.BYTE	$E0 ; ‡
		.BYTE	3
		.BYTE	$53 ; S
		.BYTE	$30 ; 0
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$20
		.BYTE	$3B ; ;
		.BYTE	$CE ; Œ
		.BYTE	$C8 ; »
		.BYTE	$F0 ; 
		.BYTE	$8C ; å
		.BYTE	$83 ; É
		.BYTE	$83 ; É
		.BYTE	$8F ; è
		.BYTE	$8C ; å
		.BYTE	 $C
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	5
		.BYTE	5
		.BYTE	$14
		.BYTE	$15
		.BYTE	$15
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$53 ; S
		.BYTE	$50 ; P
		.BYTE	$43 ; C
		.BYTE	$4C ; L
		.BYTE	$43 ; C
		.BYTE	 $F
		.BYTE	$33 ; 3
		.BYTE	 $F
		.BYTE	$33 ; 3
		.BYTE	$F0 ; 
		.BYTE	$33 ; 3
		.BYTE	$F2 ; Ú
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$30 ; 0
		.BYTE	$32 ; 2
		.BYTE	$CF ; œ
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$80 ; Ä
		.BYTE	$EE ; Ó
		.BYTE	$14
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$F3 ; Û
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	5
		.BYTE	$33 ; 3
		.BYTE	$F0 ; 
		.BYTE	$CC ; Ã
		.BYTE	$F0 ; 
		.BYTE	$FC ; ¸
		.BYTE	$33 ; 3
		.BYTE	$3C ; <
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$40 ; @
		.BYTE	$15
		.BYTE	$C0 ; ¿
		.BYTE	$15
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$2E ; .
		.BYTE	$C0 ; ¿
		.BYTE	$10
		.BYTE	$10
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$F3 ; Û
		.BYTE	$F3 ; Û
		.BYTE	$3F ; ?
		.BYTE	$F3 ; Û
		.BYTE	$FF
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$F3 ; Û
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$3F ; ?
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$3C ; <
		.BYTE	 $C
		.BYTE	$CC ; Ã
		.BYTE	$8F ; è
		.BYTE	$CC ; Ã
		.BYTE	$3F ; ?
		.BYTE	$31 ; 1
		.BYTE	$1B
		.BYTE	5
		.BYTE	$33 ; 3
		.BYTE	$F1 ; Ò
		.BYTE	$FC ; ¸
		.BYTE	$FF
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	2
		.BYTE	$33 ; 3
		.BYTE	$41 ; A
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$C5 ; ≈
		.BYTE	$F1 ; Ò
		.BYTE	$FC ; ¸
		.BYTE	$FF
		.BYTE	$3F ; ?
		.BYTE	 $C
		.BYTE	$4C ; L
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$41 ; A
		.BYTE	$51 ; Q
		.BYTE	$14
		.BYTE	$C5 ; ≈
		.BYTE	$CF ; œ
		.BYTE	$1B
		.BYTE	2
		.BYTE	$CC ; Ã
		.BYTE	 $C
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$CF ; œ
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	$CF ; œ
		.BYTE	$3F ; ?
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$32 ; 2
		.BYTE	$22 ; "
		.BYTE	$32 ; 2
		.BYTE	$22 ; "
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$C0 ; ¿
		.BYTE	8
		.BYTE	$2C ; ,
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	3
		.BYTE	$CE ; Œ
		.BYTE	 $B
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CC ; Ã
		.BYTE	$83 ; É
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$2C ; ,
		.BYTE	0
		.BYTE	$2C ; ,
		.BYTE	0
		.BYTE	1
		.BYTE	$15
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$C5 ; ≈
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$C5 ; ≈
		.BYTE	$15
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	3
		.BYTE	$14
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$4C ; L
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EC ; Ï
		.BYTE	0
		.BYTE	$EC ; Ï
		.BYTE	0
		.BYTE	$EC ; Ï
		.BYTE	$F1 ; Ò
		.BYTE	$F1 ; Ò
		.BYTE	$F0 ; 
		.BYTE	$C5 ; ≈
		.BYTE	$C4 ; -
		.BYTE	$C5 ; ≈
		.BYTE	$C0 ; ¿
		.BYTE	$CE ; Œ
		.BYTE	$13
		.BYTE	$54 ; T
		.BYTE	$44 ; D
		.BYTE	$54 ; T
		.BYTE	$45 ; E
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$1B
		.BYTE	7
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$B8 ; ∏
		.BYTE	$EE ; Ó
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$8B ; ã
		.BYTE	$EE ; Ó
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$EE ; Ó
		.BYTE	$83 ; É
		.BYTE	$EE ; Ó
		.BYTE	$1B
		.BYTE	8
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$E2 ; ‚
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$1B
		.BYTE	$10
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$2E ; .
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$2E ; .
		.BYTE	$3B ; ;
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$3B ; ;
		.BYTE	$E2 ; ‚
		.BYTE	$30 ; 0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$33 ; 3
		.BYTE	 $F
		.BYTE	$13
		.BYTE	$34 ; 4
		.BYTE	$14
		.BYTE	0
		.BYTE	$3C ; <
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$F3 ; Û
		.BYTE	$32 ; 2
		.BYTE	$F3 ; Û
		.BYTE	$32 ; 2
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$85 ; Ö
		.BYTE	$81 ; Å
		.BYTE	 $C
		.BYTE	$1B
		.BYTE	2
		.BYTE	 $F
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$15
		.BYTE	$C5 ; ≈
		.BYTE	$C5 ; ≈
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$8C ; å
		.BYTE	3
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$51 ; Q
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$45 ; E
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$3F ; ?
		.BYTE	$33 ; 3
		.BYTE	$43 ; C
		.BYTE	$53 ; S
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$33 ; 3
		.BYTE	$F3 ; Û
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$3F ; ?
		.BYTE	$33 ; 3
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	5
		.BYTE	$33 ; 3
		.BYTE	$F3 ; Û
		.BYTE	$F0 ; 
		.BYTE	$F2 ; Ú
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	 $B
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	5
		.BYTE	 $F
		.BYTE	$32 ; 2
		.BYTE	$22 ; "
		.BYTE	$32 ; 2
		.BYTE	$22 ; "
		.BYTE	$32 ; 2
		.BYTE	$22 ; "
		.BYTE	$32 ; 2
		.BYTE	$22 ; "
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CC ; Ã
		.BYTE	$83 ; É
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CE ; Œ
		.BYTE	 $B
		.BYTE	$CE ; Œ
		.BYTE	$3B ; ;
		.BYTE	$2E ; .
		.BYTE	0
		.BYTE	$2E ; .
		.BYTE	8
		.BYTE	 $C
		.BYTE	8
		.BYTE	 $C
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$B3 ; ≥
		.BYTE	$E3 ; „
		.BYTE	3
		.BYTE	$E3 ; „
		.BYTE	$83 ; É
		.BYTE	$C3 ; √
		.BYTE	$83 ; É
		.BYTE	$C3 ; √
		.BYTE	$1B
		.BYTE	3
		.BYTE	$30 ; 0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$CB ; À
		.BYTE	$C2 ; ¬
		.BYTE	$C3 ; √
		.BYTE	$C2 ; ¬
		.BYTE	$C3 ; √
		.BYTE	$C2 ; ¬
		.BYTE	$CB ; À
		.BYTE	$C2 ; ¬
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$1B
		.BYTE	5
		.BYTE	$CC ; Ã
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$8B ; ã
		.BYTE	$EE ; Ó
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$EE ; Ó
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$EE ; Ó
		.BYTE	$1B
		.BYTE	8
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$30 ; 0
		.BYTE	$32 ; 2
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$AB ; ´
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	8
		.BYTE	 $E
		.BYTE	0
		.BYTE	$AE ; Æ
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$E2 ; ‚
		.BYTE	$3B ; ;
		.BYTE	$E2 ; ‚
		.BYTE	0
		.BYTE	$AE ; Æ
		.BYTE	$1B
		.BYTE	6
		.BYTE	$33 ; 3
		.BYTE	3
		.BYTE	$1B
		.BYTE	8
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$2E ; .
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$2E ; .
		.BYTE	$33 ; 3
		.BYTE	$2E ; .
		.BYTE	$33 ; 3
		.BYTE	$E2 ; ‚
		.BYTE	$3B ; ;
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$21 ; !
		.BYTE	$21 ; !
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$1B
		.BYTE	3
		.BYTE	$2A ; *
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	0
		.BYTE	$A3 ; £
		.BYTE	$A3 ; £
		.BYTE	$80 ; Ä
		.BYTE	$F3 ; Û
		.BYTE	$32 ; 2
		.BYTE	$F3 ; Û
		.BYTE	$32 ; 2
		.BYTE	$F3 ; Û
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	$C2 ; ¬
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$8C ; å
		.BYTE	$8C ; å
		.BYTE	 $C
		.BYTE	 $F
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$F1 ; Ò
		.BYTE	$FC ; ¸
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	$F3 ; Û
		.BYTE	$FF
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$15
		.BYTE	$15
		.BYTE	$C5 ; ≈
		.BYTE	$F1 ; Ò
		.BYTE	$FC ; ¸
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$45 ; E
		.BYTE	$30 ; 0
		.BYTE	$40 ; @
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$C5 ; ≈
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$43 ; C
		.BYTE	$53 ; S
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$45 ; E
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	2
		.BYTE	$33 ; 3
		.BYTE	$43 ; C
		.BYTE	$53 ; S
		.BYTE	0
		.BYTE	$EC ; Ï
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$F0 ; 
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$FB ; ˚
		.BYTE	0
		.BYTE	$FB ; ˚
		.BYTE	0
		.BYTE	$3B ; ;
		.BYTE	0
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	3
		.BYTE	 $F
		.BYTE	$32 ; 2
		.BYTE	$22 ; "
		.BYTE	$32 ; 2
		.BYTE	$2E ; .
		.BYTE	$3A ; :
		.BYTE	$2E ; .
		.BYTE	$3A ; :
		.BYTE	$22 ; "
		.BYTE	$1B
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$B0 ; ∞
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$C2 ; ¬
		.BYTE	 $B
		.BYTE	 $E
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CC ; Ã
		.BYTE	8
		.BYTE	$2E ; .
		.BYTE	8
		.BYTE	 $C
		.BYTE	8
		.BYTE	 $C
		.BYTE	8
		.BYTE	 $C
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$80 ; Ä
		.BYTE	$C5 ; ≈
		.BYTE	$83 ; É
		.BYTE	$E3 ; „
		.BYTE	$83 ; É
		.BYTE	$C3 ; √
		.BYTE	$83 ; É
		.BYTE	$C3 ; √
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	 $C
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$C0 ; ¿
		.BYTE	$C3 ; √
		.BYTE	$C2 ; ¬
		.BYTE	$C3 ; √
		.BYTE	$C2 ; ¬
		.BYTE	$C3 ; √
		.BYTE	$C2 ; ¬
		.BYTE	$C3 ; √
		.BYTE	0
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$C0 ; ¿
		.BYTE	$1B
		.BYTE	2
		.BYTE	$C4 ; -
		.BYTE	$10
		.BYTE	$10
		.BYTE	$50 ; P
		.BYTE	$48 ; H
		.BYTE	$8B ; ã
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$8B ; ã
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$EE ; Ó
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$EE ; Ó
		.BYTE	$1B
		.BYTE	6
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$32 ; 2
		.BYTE	 $B
		.BYTE	 $C
		.BYTE	8
		.BYTE	8
		.BYTE	$2C ; ,
		.BYTE	$30 ; 0
		.BYTE	$2B ; +
		.BYTE	$EB ; Î
		.BYTE	$1B
		.BYTE	2
		.BYTE	$2A ; *
		.BYTE	 $A
		.BYTE	$8A ; ä
		.BYTE	 $A
		.BYTE	$AA ; ™
		.BYTE	$AE ; Æ
		.BYTE	$1B
		.BYTE	6
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$83 ; É
		.BYTE	$C3 ; √
		.BYTE	$83 ; É
		.BYTE	$F3 ; Û
		.BYTE	3
		.BYTE	$E0 ; ‡
		.BYTE	$BC ; º
		.BYTE	$80 ; Ä
		.BYTE	$1B
		.BYTE	8
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$2E ; .
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$2E ; .
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$3B ; ;
		.BYTE	$E2 ; ‚
		.BYTE	$33 ; 3
		.BYTE	$2E ; .
		.BYTE	$33 ; 3
		.BYTE	$E2 ; ‚
		.BYTE	$1B
		.BYTE	2
		.BYTE	$2A ; *
		.BYTE	$3A ; :
		.BYTE	$2A ; *
		.BYTE	$2E ; .
		.BYTE	$2A ; *
		.BYTE	$2B ; +
		.BYTE	$84 ; Ñ
		.BYTE	$85 ; Ö
		.BYTE	$A1 ; °
		.BYTE	$A1 ; °
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$C3 ; √
		.BYTE	$32 ; 2
		.BYTE	$4C ; L
		.BYTE	$4C ; L
		.BYTE	$53 ; S
		.BYTE	$53 ; S
		.BYTE	$14
		.BYTE	$84 ; Ñ
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$8F ; è
		.BYTE	$8C ; å
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$8F ; è
		.BYTE	$8C ; å
		.BYTE	$1B
		.BYTE	3
		.BYTE	$F3 ; Û
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$F3 ; Û
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$1B
		.BYTE	4
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EC ; Ï
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$F0 ; 
		.BYTE	$F3 ; Û
		.BYTE	$F0 ; 
		.BYTE	$F3 ; Û
		.BYTE	$30 ; 0
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$FB ; ˚
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$1B
		.BYTE	3
		.BYTE	 $F
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$32 ; 2
		.BYTE	$22 ; "
		.BYTE	$32 ; 2
		.BYTE	$22 ; "
		.BYTE	$32 ; 2
		.BYTE	$22 ; "
		.BYTE	$32 ; 2
		.BYTE	$22 ; "
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$38 ; 8
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	 $B
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$20
		.BYTE	0
		.BYTE	 $C
		.BYTE	$83 ; É
		.BYTE	$CC ; Ã
		.BYTE	$83 ; É
		.BYTE	 $C
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	8
		.BYTE	 $C
		.BYTE	8
		.BYTE	1
		.BYTE	5
		.BYTE	5
		.BYTE	0
		.BYTE	$15
		.BYTE	$15
		.BYTE	$14
		.BYTE	$54 ; T
		.BYTE	$40 ; @
		.BYTE	$45 ; E
		.BYTE	$45 ; E
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	1
		.BYTE	$51 ; Q
		.BYTE	$51 ; Q
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$14
		.BYTE	$53 ; S
		.BYTE	$53 ; S
		.BYTE	$4F ; O
		.BYTE	$4F ; O
		.BYTE	$3C ; <
		.BYTE	$FF
		.BYTE	8
		.BYTE	 $C
		.BYTE	$3B ; ;
		.BYTE	0
		.BYTE	$3B ; ;
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$2E ; .
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$B8 ; ∏
		.BYTE	$20
		.BYTE	$31 ; 1
		.BYTE	$E1 ; ·
		.BYTE	$81 ; Å
		.BYTE	$C5 ; ≈
		.BYTE	$85 ; Ö
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$51 ; Q
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$4C ; L
		.BYTE	$4C ; L
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$CC ; Ã
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	2
		.BYTE	$3C ; <
		.BYTE	$1B
		.BYTE	2
		.BYTE	$31 ; 1
		.BYTE	5
		.BYTE	4
		.BYTE	4
		.BYTE	$14
		.BYTE	$48 ; H
		.BYTE	$48 ; H
		.BYTE	$28 ; (
		.BYTE	$2C ; ,
		.BYTE	$2C ; ,
		.BYTE	$A8 ; ®
		.BYTE	$B8 ; ∏
		.BYTE	$B8 ; ∏
		.BYTE	$8B ; ã
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$8B ; ã
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$2E ; .
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$EE ; Ó
		.BYTE	$8B ; ã
		.BYTE	$EE ; Ó
		.BYTE	$1B
		.BYTE	2
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$1B
		.BYTE	2
		.BYTE	$32 ; 2
		.BYTE	0
		.BYTE	$B0 ; ∞
		.BYTE	$C2 ; ¬
		.BYTE	$80 ; Ä
		.BYTE	$BE ; æ
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$22 ; "
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$2A ; *
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AA ; ™
		.BYTE	$22 ; "
		.BYTE	0
		.BYTE	$1B
		.BYTE	5
		.BYTE	$AA ; ™
		.BYTE	$22 ; "
		.BYTE	0
		.BYTE	$1B
		.BYTE	5
		.BYTE	$AA ; ™
		.BYTE	$22 ; "
		.BYTE	0
		.BYTE	$C0 ; ¿
		.BYTE	$8E ; é
		.BYTE	$AB ; ´
		.BYTE	$B0 ; ∞
		.BYTE	$AF ; Ø
		.BYTE	$AA ; ™
		.BYTE	$22 ; "
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$33 ; 3
		.BYTE	3
		.BYTE	$83 ; É
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	0
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$2E ; .
		.BYTE	$33 ; 3
		.BYTE	$2E ; .
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$3B ; ;
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	$EE ; Ó
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$1B
		.BYTE	5
		.BYTE	$2A ; *
		.BYTE	$22 ; "
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$BA ; ∫
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$2A ; *
		.BYTE	2
		.BYTE	$85 ; Ö
		.BYTE	$A1 ; °
		.BYTE	$A1 ; °
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	 $C
		.BYTE	$4F ; O
		.BYTE	$4F ; O
		.BYTE	$53 ; S
		.BYTE	$53 ; S
		.BYTE	$14
		.BYTE	$85 ; Ö
		.BYTE	$85 ; Ö
		.BYTE	$FF
		.BYTE	$F3 ; Û
		.BYTE	$33 ; 3
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	3
		.BYTE	$33 ; 3
		.BYTE	$1B
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EC ; Ï
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$B8 ; ∏
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$F2 ; Ú
		.BYTE	$F0 ; 
		.BYTE	$32 ; 2
		.BYTE	$30 ; 0
		.BYTE	$32 ; 2
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$1B
		.BYTE	4
		.BYTE	 $F
		.BYTE	$1B
		.BYTE	2
		.BYTE	$3F ; ?
		.BYTE	$32 ; 2
		.BYTE	$22 ; "
		.BYTE	$32 ; 2
		.BYTE	$22 ; "
		.BYTE	$3A ; :
		.BYTE	$2E ; .
		.BYTE	$28 ; (
		.BYTE	$2C ; ,
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$E0 ; ‡
		.BYTE	$8B ; ã
		.BYTE	$CC ; Ã
		.BYTE	$83 ; É
		.BYTE	$C0 ; ¿
		.BYTE	$83 ; É
		.BYTE	 $C
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$C2 ; ¬
		.BYTE	3
		.BYTE	$CE ; Œ
		.BYTE	$14
		.BYTE	$15
		.BYTE	$15
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	 $C
		.BYTE	$3F ; ?
		.BYTE	$2E ; .
		.BYTE	5
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FF
		.BYTE	$CC ; Ã
		.BYTE	$3F ; ?
		.BYTE	$2E ; .
		.BYTE	$54 ; T
		.BYTE	$53 ; S
		.BYTE	$53 ; S
		.BYTE	 $F
		.BYTE	$CC ; Ã
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$22 ; "
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	$31 ; 1
		.BYTE	$21 ; !
		.BYTE	$85 ; Ö
		.BYTE	$C5 ; ≈
		.BYTE	$15
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$45 ; E
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$4C ; L
		.BYTE	$4C ; L
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$CC ; Ã
		.BYTE	$C1 ; ¡
		.BYTE	$C1 ; ¡
		.BYTE	$C5 ; ≈
		.BYTE	$C4 ; -
		.BYTE	$14
		.BYTE	$14
		.BYTE	$53 ; S
		.BYTE	$53 ; S
		.BYTE	$42 ; B
		.BYTE	2
		.BYTE	0
		.BYTE	$C0 ; ¿
		.BYTE	$C8 ; »
		.BYTE	$C0 ; ¿
		.BYTE	$CA ;  
		.BYTE	$CA ;  
		.BYTE	$12
		.BYTE	$12
		.BYTE	$52 ; R
		.BYTE	$4A ; J
		.BYTE	$4A ; J
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$E8 ; Ë
		.BYTE	$E8 ; Ë
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$A1 ; °
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EC ; Ï
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$5D ; ]
		.BYTE	$51 ; Q
		.BYTE	1
		.BYTE	1
		.BYTE	$11
		.BYTE	$10
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$11
		.BYTE	0
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$11
		.BYTE	0
		.BYTE	0
		.BYTE	$45 ; E
		.BYTE	$40 ; @
		.BYTE	$45 ; E
		.BYTE	$1B
		.BYTE	2
		.BYTE	$11
		.BYTE	0
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$11
		.BYTE	0
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$11
		.BYTE	0
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$11
		.BYTE	0
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$11
		.BYTE	0
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$11
		.BYTE	0
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$11
		.BYTE	0
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$10
		.BYTE	0
		.BYTE	0
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$2E ; .
		.BYTE	$2A ; *
		.BYTE	$8B ; ã
		.BYTE	$8A ; ä
		.BYTE	2
		.BYTE	8
		.BYTE	$A1 ; °
		.BYTE	$A1 ; °
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AA ; ™
		.BYTE	$BA ; ∫
		.BYTE	$43 ; C
		.BYTE	$43 ; C
		.BYTE	$53 ; S
		.BYTE	$54 ; T
		.BYTE	$14
		.BYTE	$85 ; Ö
		.BYTE	$85 ; Ö
		.BYTE	$A1 ; °
		.BYTE	$1B
		.BYTE	5
		.BYTE	$3C ; <
		.BYTE	$4C ; L
		.BYTE	$4C ; L
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	$E0 ; ‡
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EE ; Ó
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	$E0 ; ‡
		.BYTE	$B8 ; ∏
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$EC ; Ï
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$F3 ; Û
		.BYTE	0
		.BYTE	$15
		.BYTE	$C5 ; ≈
		.BYTE	$BB ; ª
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	4
		.BYTE	 $F
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$28 ; (
		.BYTE	$2C ; ,
		.BYTE	$28 ; (
		.BYTE	$2C ; ,
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$B0 ; ∞
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	 $B
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CC ; Ã
		.BYTE	$83 ; É
		.BYTE	$C0 ; ¿
		.BYTE	$33 ; 3
		.BYTE	$22 ; "
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	0
		.BYTE	$2E ; .
		.BYTE	0
		.BYTE	0
		.BYTE	$33 ; 3
		.BYTE	$E2 ; ‚
		.BYTE	$B3 ; ≥
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$EE ; Ó
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$8F ; è
		.BYTE	$CC ; Ã
		.BYTE	$8C ; å
		.BYTE	$CC ; Ã
		.BYTE	$8F ; è
		.BYTE	$CC ; Ã
		.BYTE	$8C ; å
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$C1 ; ¡
		.BYTE	$C1 ; ¡
		.BYTE	$C5 ; ≈
		.BYTE	5
		.BYTE	5
		.BYTE	$14
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	1
		.BYTE	$54 ; T
		.BYTE	$14
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$4C ; L
		.BYTE	$4C ; L
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$CC ; Ã
		.BYTE	$C1 ; ¡
		.BYTE	$C1 ; ¡
		.BYTE	$C5 ; ≈
		.BYTE	5
		.BYTE	$15
		.BYTE	$10
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$4F ; O
		.BYTE	 $F
		.BYTE	$4F ; O
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$F3 ; Û
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	4
		.BYTE	$12
		.BYTE	$12
		.BYTE	$52 ; R
		.BYTE	$4A ; J
		.BYTE	0
		.BYTE	$88 ; à
		.BYTE	$88 ; à
		.BYTE	0
		.BYTE	$BA ; ∫
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	1
		.BYTE	$21 ; !
		.BYTE	$A1 ; °
		.BYTE	5
		.BYTE	$1B
		.BYTE	2
		.BYTE	$85 ; Ö
		.BYTE	$15
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	3
		.BYTE	$51 ; Q
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$51 ; Q
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	1
		.BYTE	$1B
		.BYTE	2
		.BYTE	$51 ; Q
		.BYTE	$55 ; U
		.BYTE	$44 ; D
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$44 ; D
		.BYTE	$55 ; U
		.BYTE	$44 ; D
		.BYTE	$45 ; E
		.BYTE	$41 ; A
		.BYTE	$45 ; E
		.BYTE	$40 ; @
		.BYTE	$4F ; O
		.BYTE	$4A ; J
		.BYTE	$4E ; N
		.BYTE	$40 ; @
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$44 ; D
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$44 ; D
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	$10
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	$10
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	$10
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	8
		.BYTE	$48 ; H
		.BYTE	0
		.BYTE	$50 ; P
		.BYTE	 $C
		.BYTE	$FC ; ¸
		.BYTE	$A8 ; ®
		.BYTE	$EC ; Ï
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	$2A ; *
		.BYTE	$8A ; ä
		.BYTE	$88 ; à
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	8
		.BYTE	$A1 ; °
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$1B
		.BYTE	3
		.BYTE	$AA ; ™
		.BYTE	0
		.BYTE	$50 ; P
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	0
		.BYTE	$B0 ; ∞
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	$FA ; ˙
		.BYTE	$AE ; Æ
		.BYTE	0
		.BYTE	$8C ; å
		.BYTE	$4C ; L
		.BYTE	$5D ; ]
		.BYTE	$1D
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	0
		.BYTE	$B0 ; ∞
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	0
		.BYTE	$B8 ; ∏
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	$F1 ; Ò
		.BYTE	$F1 ; Ò
		.BYTE	$FC ; ¸
		.BYTE	$1B
		.BYTE	3
		.BYTE	$F3 ; Û
		.BYTE	$F0 ; 
		.BYTE	$14
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$C5 ; ≈
		.BYTE	$C5 ; ≈
		.BYTE	$F1 ; Ò
		.BYTE	$CC ; Ã
		.BYTE	$51 ; Q
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$1B
		.BYTE	3
		.BYTE	$54 ; T
		.BYTE	$45 ; E
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$51 ; Q
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$C0 ; ¿
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CE ; Œ
		.BYTE	 $B
		.BYTE	 $E
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	0
		.BYTE	 $C
		.BYTE	$83 ; É
		.BYTE	 $C
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	$3B ; ;
		.BYTE	2
		.BYTE	3
		.BYTE	2
		.BYTE	3
		.BYTE	2
		.BYTE	3
		.BYTE	2
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	$8C ; å
		.BYTE	$CC ; Ã
		.BYTE	$8C ; å
		.BYTE	$CC ; Ã
		.BYTE	$8C ; å
		.BYTE	$C1 ; ¡
		.BYTE	$81 ; Å
		.BYTE	$C5 ; ≈
		.BYTE	$C1 ; ¡
		.BYTE	$15
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$51 ; Q
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	4
		.BYTE	4
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$4C ; L
		.BYTE	$4C ; L
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$CC ; Ã
		.BYTE	$1B
		.BYTE	2
		.BYTE	$C1 ; ¡
		.BYTE	$C5 ; ≈
		.BYTE	5
		.BYTE	$15
		.BYTE	$11
		.BYTE	$14
		.BYTE	$53 ; S
		.BYTE	$13
		.BYTE	$4F ; O
		.BYTE	$4F ; O
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	0
		.BYTE	$C3 ; √
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$31 ; 1
		.BYTE	5
		.BYTE	4
		.BYTE	0
		.BYTE	$14
		.BYTE	 $A
		.BYTE	$4A ; J
		.BYTE	$2B ; +
		.BYTE	$2B ; +
		.BYTE	$2A ; *
		.BYTE	$AE ; Æ
		.BYTE	$AE ; Æ
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$1B
		.BYTE	3
		.BYTE	$A8 ; ®
		.BYTE	$A1 ; °
		.BYTE	$1B
		.BYTE	2
		.BYTE	$15
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	$52 ; R
		.BYTE	$50 ; P
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$40 ; @
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$51 ; Q
		.BYTE	1
		.BYTE	$E1 ; ·
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$44 ; D
		.BYTE	$44 ; D
		.BYTE	$55 ; U
		.BYTE	$44 ; D
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$4A ; J
		.BYTE	$4E ; N
		.BYTE	$4A ; J
		.BYTE	$4E ; N
		.BYTE	$4B ; K
		.BYTE	$4E ; N
		.BYTE	$4B ; K
		.BYTE	$4E ; N
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	2
		.BYTE	$23 ; #
		.BYTE	$22 ; "
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	$8A ; ä
		.BYTE	$CA ;  
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$E0 ; ‡
		.BYTE	$B2 ; ≤
		.BYTE	$E2 ; ‚
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	$A8 ; ®
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$2C ; ,
		.BYTE	$31 ; 1
		.BYTE	$21 ; !
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$15
		.BYTE	$1B
		.BYTE	2
		.BYTE	$45 ; E
		.BYTE	$51 ; Q
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$45 ; E
		.BYTE	$14
		.BYTE	$40 ; @
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$FF
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$EC ; Ï
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$10
		.BYTE	0
		.BYTE	8
		.BYTE	$C8 ; »
		.BYTE	0
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$8A ; ä
		.BYTE	$A3 ; £
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$4A ; J
		.BYTE	$48 ; H
		.BYTE	$12
		.BYTE	$28 ; (
		.BYTE	$88 ; à
		.BYTE	0
		.BYTE	$A2 ; ¢
		.BYTE	$38 ; 8
		.BYTE	$8A ; ä
		.BYTE	0
		.BYTE	$AB ; ´
		.BYTE	$CB ; À
		.BYTE	$8A ; ä
		.BYTE	$8E ; é
		.BYTE	$8E ; é
		.BYTE	$AB ; ´
		.BYTE	$2A ; *
		.BYTE	0
		.BYTE	$82 ; Ç
		.BYTE	$8A ; ä
		.BYTE	$E0 ; ‡
		.BYTE	$B8 ; ∏
		.BYTE	$AC ; ¨
		.BYTE	$AF ; Ø
		.BYTE	$EB ; Î
		.BYTE	0
		.BYTE	 $A
		.BYTE	$A2 ; ¢
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$3F ; ?
		.BYTE	$8A ; ä
		.BYTE	0
		.BYTE	$BA ; ∫
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$FC ; ¸
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$F3 ; Û
		.BYTE	$1B
		.BYTE	6
		.BYTE	$F0 ; 
		.BYTE	$1B
		.BYTE	2
		.BYTE	$CF ; œ
		.BYTE	$C3 ; √
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$C3 ; √
		.BYTE	$C3 ; √
		.BYTE	$14
		.BYTE	$15
		.BYTE	$C5 ; ≈
		.BYTE	$F1 ; Ò
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	 $F
		.BYTE	$3C ; <
		.BYTE	3
		.BYTE	0
		.BYTE	$40 ; @
		.BYTE	$40 ; @
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$15
		.BYTE	$C5 ; ≈
		.BYTE	$38 ; 8
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$8B ; ã
		.BYTE	$CC ; Ã
		.BYTE	$83 ; É
		.BYTE	$CC ; Ã
		.BYTE	$83 ; É
		.BYTE	 $C
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$C2 ; ¬
		.BYTE	3
		.BYTE	$CE ; Œ
		.BYTE	 $B
		.BYTE	 $E
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$33 ; 3
		.BYTE	2
		.BYTE	3
		.BYTE	2
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$C1 ; ¡
		.BYTE	$85 ; Ö
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$2A ; *
		.BYTE	$84 ; Ñ
		.BYTE	$15
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	4
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$4C ; L
		.BYTE	$4C ; L
		.BYTE	$1B
		.BYTE	2
		.BYTE	$3C ; <
		.BYTE	$C0 ; ¿
		.BYTE	$1B
		.BYTE	2
		.BYTE	$C1 ; ¡
		.BYTE	5
		.BYTE	$15
		.BYTE	$15
		.BYTE	$11
		.BYTE	$54 ; T
		.BYTE	$50 ; P
		.BYTE	$10
		.BYTE	$50 ; P
		.BYTE	$4C ; L
		.BYTE	$4F ; O
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$F3 ; Û
		.BYTE	$F3 ; Û
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$31 ; 1
		.BYTE	$12
		.BYTE	$12
		.BYTE	$52 ; R
		.BYTE	$4A ; J
		.BYTE	 $A
		.BYTE	$4A ; J
		.BYTE	$2A ; *
		.BYTE	$2A ; *
		.BYTE	$AA ; ™
		.BYTE	$BA ; ∫
		.BYTE	$BA ; ∫
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A1 ; °
		.BYTE	$1B
		.BYTE	3
		.BYTE	$85 ; Ö
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	5
		.BYTE	$1B
		.BYTE	2
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	$41 ; A
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	1
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$15
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$48 ; H
		.BYTE	$4E ; N
		.BYTE	$4B ; K
		.BYTE	$40 ; @
		.BYTE	$4F ; O
		.BYTE	$20
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$E3 ; „
		.BYTE	$B0 ; ∞
		.BYTE	$20
		.BYTE	$33 ; 3
		.BYTE	$20
		.BYTE	$4B ; K
		.BYTE	 $C
		.BYTE	$C8 ; »
		.BYTE	$CC ; Ã
		.BYTE	$C8 ; »
		.BYTE	$CC ; Ã
		.BYTE	$C0 ; ¿
		.BYTE	$CF ; œ
		.BYTE	$23 ; #
		.BYTE	$20
		.BYTE	$A8 ; ®
		.BYTE	$EC ; Ï
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	$FF
		.BYTE	$8B ; ã
		.BYTE	$C8 ; »
		.BYTE	$88 ; à
		.BYTE	$C8 ; »
		.BYTE	$CB ; À
		.BYTE	$CA ;  
		.BYTE	0
		.BYTE	$FF
		.BYTE	$B8 ; ∏
		.BYTE	$1B
		.BYTE	2
		.BYTE	$88 ; à
		.BYTE	$B8 ; ∏
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	$FF
		.BYTE	$B2 ; ≤
		.BYTE	$C2 ; ¬
		.BYTE	$8A ; ä
		.BYTE	$CE ; Œ
		.BYTE	$8A ; ä
		.BYTE	$CA ;  
		.BYTE	0
		.BYTE	$FF
		.BYTE	$31 ; 1
		.BYTE	 $C
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$88 ; à
		.BYTE	$8F ; è
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	$1B
		.BYTE	2
		.BYTE	$51 ; Q
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$14
		.BYTE	$15
		.BYTE	$15
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$14
		.BYTE	$15
		.BYTE	$15
		.BYTE	5
		.BYTE	5
		.BYTE	1
		.BYTE	$31 ; 1
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$2E ; .
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$15
		.BYTE	$45 ; E
		.BYTE	$45 ; E
		.BYTE	$51 ; Q
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$13
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$45 ; E
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	$2A ; *
		.BYTE	$4A ; J
		.BYTE	$52 ; R
		.BYTE	$12
		.BYTE	$54 ; T
		.BYTE	$8E ; é
		.BYTE	$C2 ; ¬
		.BYTE	$BA ; ∫
		.BYTE	$AA ; ™
		.BYTE	$AE ; Æ
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AA ; ™
		.BYTE	$3E ; >
		.BYTE	 $E
		.BYTE	$AB ; ´
		.BYTE	$1B
		.BYTE	4
		.BYTE	$AA ; ™
		.BYTE	$BA ; ∫
		.BYTE	$AE ; Æ
		.BYTE	$AB ; ´
		.BYTE	$EA ; Í
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AA ; ™
		.BYTE	$A0 ; †
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A8 ; ®
		.BYTE	$E8 ; Ë
		.BYTE	$E8 ; Ë
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F3 ; Û
		.BYTE	$C3 ; √
		.BYTE	$F3 ; Û
		.BYTE	$F3 ; Û
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$1B
		.BYTE	4
		.BYTE	$C3 ; √
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$1B
		.BYTE	5
		.BYTE	 $C
		.BYTE	$F1 ; Ò
		.BYTE	$31 ; 1
		.BYTE	$F0 ; 
		.BYTE	$F3 ; Û
		.BYTE	$F3 ; Û
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$1B
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$B0 ; ∞
		.BYTE	$CC ; Ã
		.BYTE	$80 ; Ä
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$C2 ; ¬
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CC ; Ã
		.BYTE	$83 ; É
		.BYTE	$C0 ; ¿
		.BYTE	$83 ; É
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	2
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	3
		.BYTE	2
		.BYTE	$2A ; *
		.BYTE	$2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	$3B ; ;
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$EE ; Ó
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$EE ; Ó
		.BYTE	 $C
		.BYTE	$31 ; 1
		.BYTE	$31 ; 1
		.BYTE	5
		.BYTE	5
		.BYTE	$C5 ; ≈
		.BYTE	$B1 ; ±
		.BYTE	$E1 ; ·
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	2
		.BYTE	$50 ; P
		.BYTE	$4C ; L
		.BYTE	$4C ; L
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$F3 ; Û
		.BYTE	$F3 ; Û
		.BYTE	$1B
		.BYTE	2
		.BYTE	$F0 ; 
		.BYTE	5
		.BYTE	4
		.BYTE	0
		.BYTE	$14
		.BYTE	$12
		.BYTE	$52 ; R
		.BYTE	$52 ; R
		.BYTE	 $A
		.BYTE	$2B ; +
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AE ; Æ
		.BYTE	$AE ; Æ
		.BYTE	$1B
		.BYTE	4
		.BYTE	$AA ; ™
		.BYTE	$1B
		.BYTE	3
		.BYTE	$A8 ; ®
		.BYTE	$A1 ; °
		.BYTE	$1B
		.BYTE	2
		.BYTE	$15
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$51 ; Q
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$40 ; @
		.BYTE	$45 ; E
		.BYTE	$45 ; E
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$15
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	2
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	5
		.BYTE	$45 ; E
		.BYTE	$45 ; E
		.BYTE	$3B ; ;
		.BYTE	$20
		.BYTE	$33 ; 3
		.BYTE	$23 ; #
		.BYTE	$33 ; 3
		.BYTE	$20
		.BYTE	$38 ; 8
		.BYTE	$20
		.BYTE	$B0 ; ∞
		.BYTE	$20
		.BYTE	$33 ; 3
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	$B0 ; ∞
		.BYTE	$20
		.BYTE	$CA ;  
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$CE ; Œ
		.BYTE	$CA ;  
		.BYTE	$CE ; Œ
		.BYTE	$C0 ; ¿
		.BYTE	$CF ; œ
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$AA ; ™
		.BYTE	$EE ; Ó
		.BYTE	0
		.BYTE	$FF
		.BYTE	$A8 ; ®
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	$C0 ; ¿
		.BYTE	$8C ; å
		.BYTE	$CC ; Ã
		.BYTE	 $C
		.BYTE	$C0 ; ¿
		.BYTE	$C4 ; -
		.BYTE	$C5 ; ≈
		.BYTE	$C5 ; ≈
		.BYTE	$C4 ; -
		.BYTE	$C5 ; ≈
		.BYTE	$1B
		.BYTE	2
		.BYTE	$C1 ; ¡
		.BYTE	$15
		.BYTE	$1B
		.BYTE	2
		.BYTE	$45 ; E
		.BYTE	$1B
		.BYTE	2
		.BYTE	$51 ; Q
		.BYTE	$54 ; T
		.BYTE	$3B ; ;
		.BYTE	$2E ; .
		.BYTE	$4B ; K
		.BYTE	$4E ; N
		.BYTE	$4B ; K
		.BYTE	$4E ; N
		.BYTE	$53 ; S
		.BYTE	$52 ; R
		.BYTE	$15
		.BYTE	$C5 ; ≈
		.BYTE	$85 ; Ö
		.BYTE	$E1 ; ·
		.BYTE	$B1 ; ±
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	3
		.BYTE	$4C ; L
		.BYTE	$40 ; @
		.BYTE	$3F ; ?
		.BYTE	$40 ; @
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$45 ; E
		.BYTE	$51 ; Q
		.BYTE	$11
		.BYTE	$14
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$15
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	$4A ; J
		.BYTE	$4A ; J
		.BYTE	$52 ; R
		.BYTE	$52 ; R
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AA ; ™
		.BYTE	$AE ; Æ
		.BYTE	$AB ; ´
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	$1B
		.BYTE	3
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$BA ; ∫
		.BYTE	$54 ; T
		.BYTE	$14
		.BYTE	$85 ; Ö
		.BYTE	$85 ; Ö
		.BYTE	$A1 ; °
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$AA ; ™
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$30 ; 0
		.BYTE	$40 ; @
		.BYTE	$40 ; @
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$14
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	$1B
		.BYTE	4
		.BYTE	$C3 ; √
		.BYTE	 $C
		.BYTE	$1B
		.BYTE	4
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$1B
		.BYTE	3
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$F0 ; 
		.BYTE	$F3 ; Û
		.BYTE	$F3 ; Û
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$C0 ; ¿
		.BYTE	8
		.BYTE	$CC ; Ã
		.BYTE	 $B
		.BYTE	$CE ; Œ
		.BYTE	 $B
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CE ; Œ
		.BYTE	$38 ; 8
		.BYTE	$2C ; ,
		.BYTE	$38 ; 8
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$C2 ; ¬
		.BYTE	 $B
		.BYTE	0
		.BYTE	0
		.BYTE	$2E ; .
		.BYTE	0
		.BYTE	0
		.BYTE	$3B ; ;
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	$B8 ; ∏
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$EE ; Ó
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	$1B
		.BYTE	7
		.BYTE	$33 ; 3
		.BYTE	1
		.BYTE	$31 ; 1
		.BYTE	$31 ; 1
		.BYTE	5
		.BYTE	5
		.BYTE	0
		.BYTE	$14
		.BYTE	$14
		.BYTE	$4A ; J
		.BYTE	$4A ; J
		.BYTE	$1B
		.BYTE	2
		.BYTE	$2A ; *
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$BA ; ∫
		.BYTE	$BA ; ∫
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AA ; ™
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A1 ; °
		.BYTE	$1B
		.BYTE	3
		.BYTE	$85 ; Ö
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$45 ; E
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$14
		.BYTE	$1B
		.BYTE	2
		.BYTE	$54 ; T
		.BYTE	$15
		.BYTE	$14
		.BYTE	$13
		.BYTE	$10
		.BYTE	$53 ; S
		.BYTE	$43 ; C
		.BYTE	$40 ; @
		.BYTE	$4C ; L
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	5
		.BYTE	$1B
		.BYTE	2
		.BYTE	$31 ; 1
		.BYTE	$F1 ; Ò
		.BYTE	$F1 ; Ò
		.BYTE	$45 ; E
		.BYTE	$44 ; D
		.BYTE	$44 ; D
		.BYTE	$1B
		.BYTE	4
		.BYTE	$14
		.BYTE	$33 ; 3
		.BYTE	$23 ; #
		.BYTE	$30 ; 0
		.BYTE	$23 ; #
		.BYTE	$B3 ; ≥
		.BYTE	$E3 ; „
		.BYTE	$B0 ; ∞
		.BYTE	$EC ; Ï
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$23 ; #
		.BYTE	$33 ; 3
		.BYTE	$23 ; #
		.BYTE	$33 ; 3
		.BYTE	$E0 ; ‡
		.BYTE	$C0 ; ¿
		.BYTE	$CE ; Œ
		.BYTE	$CB ; À
		.BYTE	$CE ; Œ
		.BYTE	$CB ; À
		.BYTE	$CE ; Œ
		.BYTE	$CB ; À
		.BYTE	$CE ; Œ
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	 $E
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	 $E
		.BYTE	3
		.BYTE	$C3 ; √
		.BYTE	$83 ; É
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$CC ; Ã
		.BYTE	1
		.BYTE	$1B
		.BYTE	2
		.BYTE	 $C
		.BYTE	$1B
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	$54 ; T
		.BYTE	$44 ; D
		.BYTE	$44 ; D
		.BYTE	$51 ; Q
		.BYTE	$51 ; Q
		.BYTE	$1B
		.BYTE	2
		.BYTE	$15
		.BYTE	$53 ; S
		.BYTE	$54 ; T
		.BYTE	$54 ; T
		.BYTE	$14
		.BYTE	$15
		.BYTE	$15
		.BYTE	$45 ; E
		.BYTE	$45 ; E
		.BYTE	$B1 ; ±
		.BYTE	$E1 ; ·
		.BYTE	$85 ; Ö
		.BYTE	$C5 ; ≈
		.BYTE	$15
		.BYTE	0
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$3C ; <
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$40 ; @
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$40 ; @
		.BYTE	$4F ; O
		.BYTE	$40 ; @
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$45 ; E
		.BYTE	$11
		.BYTE	$14
		.BYTE	$14
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$40 ; @
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	5
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	$2A ; *
		.BYTE	$4A ; J
		.BYTE	$4A ; J
		.BYTE	$52 ; R
		.BYTE	$52 ; R
		.BYTE	$54 ; T
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$AE ; Æ
		.BYTE	$AE ; Æ
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	$2A ; *
		.BYTE	$1B
		.BYTE	3
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$BA ; ∫
		.BYTE	$BA ; ∫
		.BYTE	$AE ; Æ
		.BYTE	$85 ; Ö
		.BYTE	$85 ; Ö
		.BYTE	$A1 ; °
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AA ; ™
		.BYTE	3
		.BYTE	$43 ; C
		.BYTE	$43 ; C
		.BYTE	$53 ; S
		.BYTE	$54 ; T
		.BYTE	$14
		.BYTE	$85 ; Ö
		.BYTE	$85 ; Ö
		.BYTE	$1B
		.BYTE	6
		.BYTE	 $C
		.BYTE	$4C ; L
		.BYTE	$F3 ; Û
		.BYTE	$F0 ; 
		.BYTE	$1B
		.BYTE	2
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$38 ; 8
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$B8 ; ∏
		.BYTE	$EC ; Ï
		.BYTE	$88 ; à
		.BYTE	$CC ; Ã
		.BYTE	$83 ; É
		.BYTE	$CC ; Ã
		.BYTE	$83 ; É
		.BYTE	 $C
		.BYTE	3
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	3
		.BYTE	$CE ; Œ
		.BYTE	 $B
		.BYTE	 $E
		.BYTE	 $B
		.BYTE	$CE ; Œ
		.BYTE	$8B ; ã
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	$2E ; .
		.BYTE	$3B ; ;
		.BYTE	0
		.BYTE	0
		.BYTE	 $C
		.BYTE	0
		.BYTE	 $C
		.BYTE	$80 ; Ä
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$CC ; Ã
		.BYTE	$80 ; Ä
		.BYTE	$CC ; Ã
		.BYTE	$80 ; Ä
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$CC ; Ã
		.BYTE	$80 ; Ä
		.BYTE	$CC ; Ã
		.BYTE	$80 ; Ä
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$CC ; Ã
		.BYTE	$80 ; Ä
		.BYTE	$CC ; Ã
		.BYTE	$33 ; 3
		.BYTE	$1B
		.BYTE	2
		.BYTE	$30 ; 0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$31 ; 1
		.BYTE	5
		.BYTE	$12
		.BYTE	$52 ; R
		.BYTE	$52 ; R
		.BYTE	$1B
		.BYTE	2
		.BYTE	$4A ; J
		.BYTE	$2A ; *
		.BYTE	$2A ; *
		.BYTE	$AB ; ´
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AE ; Æ
		.BYTE	$BA ; ∫
		.BYTE	$1B
		.BYTE	5
		.BYTE	$AA ; ™
		.BYTE	$1B
		.BYTE	3
		.BYTE	$A8 ; ®
		.BYTE	$A1 ; °
		.BYTE	$1B
		.BYTE	2
		.BYTE	$15
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$45 ; E
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$51 ; Q
		.BYTE	$45 ; E
		.BYTE	$1B
		.BYTE	2
		.BYTE	$44 ; D
		.BYTE	$40 ; @
		.BYTE	0
		.BYTE	$33 ; 3
		.BYTE	 $C
		.BYTE	$33 ; 3
		.BYTE	$CC ; Ã
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$F1 ; Ò
		.BYTE	1
		.BYTE	5
		.BYTE	$C5 ; ≈
		.BYTE	5
		.BYTE	$C4 ; -
		.BYTE	4
		.BYTE	4
		.BYTE	$1B
		.BYTE	2
		.BYTE	$14
		.BYTE	$10
		.BYTE	$10
		.BYTE	$1B
		.BYTE	2
		.BYTE	$50 ; P
		.BYTE	$B0 ; ∞
		.BYTE	$E3 ; „
		.BYTE	$B0 ; ∞
		.BYTE	$E3 ; „
		.BYTE	$B3 ; ≥
		.BYTE	$E3 ; „
		.BYTE	$B0 ; ∞
		.BYTE	$EC ; Ï
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$E3 ; „
		.BYTE	$CB ; À
		.BYTE	$CE ; Œ
		.BYTE	$CB ; À
		.BYTE	$CE ; Œ
		.BYTE	$CB ; À
		.BYTE	$CE ; Œ
		.BYTE	$CB ; À
		.BYTE	$CE ; Œ
		.BYTE	$8F ; è
		.BYTE	$C0 ; ¿
		.BYTE	 $C
		.BYTE	$3F ; ?
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$F3 ; Û
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	 $C
		.BYTE	$CC ; Ã
		.BYTE	 $C
		.BYTE	$CC ; Ã
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$FF
		.BYTE	$C0 ; ¿
		.BYTE	$CC ; Ã
		.BYTE	$C0 ; ¿
		.BYTE	$CF ; œ
		.BYTE	$CB ; À
		.BYTE	 $E
		.BYTE	$C3 ; √
		.BYTE	$F2 ; Ú
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$33 ; 3
		.BYTE	$32 ; 2
		.BYTE	$83 ; É
		.BYTE	$C2 ; ¬
		.BYTE	$83 ; É
		.BYTE	$C2 ; ¬
		.BYTE	$83 ; É
		.BYTE	$C2 ; ¬
		.BYTE	$83 ; É
		.BYTE	$C2 ; ¬
		.BYTE	$1B
		.BYTE	3
		.BYTE	$30 ; 0
		.BYTE	$80 ; Ä
		.BYTE	$CC ; Ã
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$11
		.BYTE	$1B
		.BYTE	3
		.BYTE	$C5 ; ≈
		.BYTE	$C1 ; ¡
		.BYTE	$C1 ; ¡
		.BYTE	$C0 ; ¿
		.BYTE	$45 ; E
		.BYTE	$51 ; Q
		.BYTE	$50 ; P
		.BYTE	$4E ; N
		.BYTE	$4B ; K
		.BYTE	$20
		.BYTE	$3B ; ;
		.BYTE	0
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$11
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$11
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$45 ; E
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$EE ; Ó
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$4A ; J
		.BYTE	$4A ; J
		.BYTE	2
		.BYTE	$EC ; Ï
		.BYTE	$BB ; ª
		.BYTE	$CC ; Ã
		.BYTE	$BB ; ª
		.BYTE	0
		.BYTE	$AE ; Æ
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	$2A ; *
		.BYTE	$8A ; ä
		.BYTE	2
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$BA ; ∫
		.BYTE	$AE ; Æ
		.BYTE	$AE ; Æ
		.BYTE	$AB ; ´
		.BYTE	$A1 ; °
		.BYTE	$A1 ; °
		.BYTE	$A8 ; ®
		.BYTE	$1B
		.BYTE	4
		.BYTE	$AA ; ™
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$54 ; T
		.BYTE	$15
		.BYTE	$15
		.BYTE	$85 ; Ö
		.BYTE	$A1 ; °
		.BYTE	$A1 ; °
		.BYTE	$1B
		.BYTE	2
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$40 ; @
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$1B
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$1B
		.BYTE	$FF
		.BYTE	$D5 ; ’
		.BYTE	$E5 ; Â
		.BYTE	$E5 ; Â
		.BYTE	$1B
		.BYTE	5
		.BYTE	$E7 ; Á
		.BYTE	$1B
		.BYTE	6
		.BYTE	$E8 ; Ë
		.BYTE	$1B
		.BYTE	5
		.BYTE	$EA ; Í
		.BYTE	$1B
		.BYTE	3
		.BYTE	$EB ; Î
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$1B
		.BYTE	2
		.BYTE	$E8 ; Ë
		.BYTE	$1B
		.BYTE	4
		.BYTE	$E7 ; Á
		.BYTE	$F7 ; ˜
		.BYTE	$F7 ; ˜
		.BYTE	$F6 ; ˆ
		.BYTE	$F6 ; ˆ
		.BYTE	$F8 ; ¯
		.BYTE	$F8 ; ¯
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$1B
		.BYTE	3
		.BYTE	$35 ; 5
		.BYTE	$1B
		.BYTE	2
		.BYTE	$36 ; 6
		.BYTE	$37 ; 7
		.BYTE	$38 ; 8
		.BYTE	$38 ; 8
		.BYTE	$39 ; 9
		.BYTE	$39 ; 9
		.BYTE	$F7 ; ˜
		.BYTE	$F7 ; ˜
		.BYTE	$F8 ; ¯
		.BYTE	$F7 ; ˜
		.BYTE	$F6 ; ˆ
		.BYTE	$F5 ; ı
		.BYTE	$F4 ; Ù
		.BYTE	$1B
		.BYTE	3
		.BYTE	$E7 ; Á
		.BYTE	$E8 ; Ë
		.BYTE	$EA ; Í
		.BYTE	$9E ; û
		.BYTE	$9C ; ú
		.BYTE	$9A ; ö
		.BYTE	$99 ; ô
		.BYTE	$1B
		.BYTE	$16
		.BYTE	$E7 ; Á
		.BYTE	$1B
		.BYTE	$43 ; C
		.BYTE	9
		.BYTE	$43 ; C
		.BYTE	$26 ; &
		.BYTE	$26 ; &
		.BYTE	$1B
		.BYTE	$18
		.BYTE	9
		.BYTE	$1B
		.BYTE	$15
		.BYTE	$77 ; w
		.BYTE	$1B
		.BYTE	6
		.BYTE	$78 ; x
		.BYTE	$1B
		.BYTE	7
		.BYTE	$7A ; z
		.BYTE	$1B
		.BYTE	7
		.BYTE	$7C ; |
		.BYTE	$1B
		.BYTE	3
		.BYTE	$7E ; ~
		.BYTE	$7F ; 
		.BYTE	$7E ; ~
		.BYTE	$7F ; 
		.BYTE	$7E ; ~
		.BYTE	$7F ; 
		.BYTE	$1B
		.BYTE	4
		.BYTE	$9F ; ü
		.BYTE	$9E ; û
		.BYTE	$9D ; ù
		.BYTE	$9D ; ù
		.BYTE	$9A ; ö
		.BYTE	$9A ; ö
		.BYTE	$99 ; ô
		.BYTE	$99 ; ô
		.BYTE	$97 ; ó
		.BYTE	$97 ; ó
		.BYTE	$23 ; #
		.BYTE	$34 ; 4
		.BYTE	$35 ; 5
		.BYTE	$37 ; 7
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$9F ; ü
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A9 ; ©
		.BYTE	$1B
		.BYTE	4
		.BYTE	$AB ; ´
		.BYTE	$1B
		.BYTE	 $A
		.BYTE	$AD ; ≠
		.BYTE	$1B
		.BYTE	4
		.BYTE	$AE ; Æ
		.BYTE	$AD ; ≠
		.BYTE	$AC ; ¨
		.BYTE	$1B
		.BYTE	8
		.BYTE	$AD ; ≠
		.BYTE	$1B
		.BYTE	7
		.BYTE	$AE ; Æ
		.BYTE	$1B
		.BYTE	$34 ; 4
		.BYTE	$9C ; ú
		.BYTE	$1B
		.BYTE	$40 ; @
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE	$E0 ; ‡
		.BYTE	 $F
		.BYTE	0
		.BYTE	0
		.BYTE	$27 ; '
		.BYTE	$F0 ; 
		.BYTE	3
		.BYTE	$12
		.BYTE	0
		.BYTE	$1F
		.BYTE	$F0 ; 
		.BYTE	 $F
		.BYTE	$3A ; :
		.BYTE	0
		.BYTE	 $F
		.BYTE	$F0 ; 
		.BYTE	 $F
		.BYTE	$74 ; t
		.BYTE	$1F
		.BYTE	$FC ; ¸
		.BYTE	 $D
		.BYTE	 $F
		.BYTE	$FC ; ¸
		.BYTE	$DF ; ﬂ
		.BYTE	$FF
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$E8 ; Ë
		.BYTE	$7F ; 
		.BYTE	$94 ; î
		.BYTE	$8F ; è
		.BYTE	 $F
		.BYTE	$D0 ; –
		.BYTE	$7F ; 
		.BYTE	$DC ; ‹
		.BYTE	$6F ; o
		.BYTE	 $F
		.BYTE	$F3 ; Û
		.BYTE	$7F ; 
		.BYTE	$DE ; ﬁ
		.BYTE	$37 ; 7
		.BYTE	 $F
		.BYTE	$A3 ; £
		.BYTE	$7F ; 
		.BYTE	$FF
		.BYTE	$F9 ; ˘
		.BYTE	$1B
		.BYTE	$1D
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	$5A ; Z
		.BYTE	0
		.BYTE	$E7 ; Á
		.BYTE	9
		.BYTE	$9F ; ü
		.BYTE	$9C ; ú
		.BYTE	$97 ; ó
		.BYTE	$1B
		.BYTE	$FF
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$7E ; ~
		.BYTE	$7E ; ~
		.BYTE	$7E ; ~
		.BYTE	$7E ; ~
		.BYTE	$7E ; ~
		.BYTE	$7E ; ~
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$BC ; º
		.BYTE	$BC ; º
		.BYTE	$BC ; º
		.BYTE	$BC ; º
		.BYTE	$BC ; º
		.BYTE	$BC ; º
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	3
		.BYTE	3
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	6
		.BYTE	6
		.BYTE	6
		.BYTE	6
		.BYTE	6
		.BYTE	6
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$1C
		.BYTE	$1C
		.BYTE	$1C
		.BYTE	$18
		.BYTE	$18
		.BYTE	$18
		.BYTE	$18
		.BYTE	$38 ; 8
		.BYTE	$38 ; 8
		.BYTE	$38 ; 8
		.BYTE	$38 ; 8
		.BYTE	$38 ; 8
		.BYTE	$38 ; 8
		.BYTE	$78 ; x
		.BYTE	$70 ; p
		.BYTE	$70 ; p
		.BYTE	$70 ; p
		.BYTE	$70 ; p
		.BYTE	$70 ; p
		.BYTE	$70 ; p
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$40 ; @
		.BYTE	$40 ; @
		.BYTE	$40 ; @
		.BYTE	$40 ; @
		.BYTE	$60 ; `
		.BYTE	$60 ; `
		.BYTE	$20
		.BYTE	$20
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$10
		.BYTE	$18
		.BYTE	$18
		.BYTE	$18
		.BYTE	$18
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	6
		.BYTE	6
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$70 ; p
		.BYTE	$70 ; p
		.BYTE	$78 ; x
		.BYTE	$78 ; x
		.BYTE	$78 ; x
		.BYTE	$78 ; x
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$3E ; >
		.BYTE	$3E ; >
		.BYTE	$1E
		.BYTE	$1E
		.BYTE	$1E
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F8 ; ¯
		.BYTE	$F8 ; ¯
		.BYTE	$F8 ; ¯
		.BYTE	$F8 ; ¯
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$7E ; ~
		.BYTE	$7E ; ~
		.BYTE	$7E ; ~
		.BYTE	$7E ; ~
		.BYTE	$7F ; 
		.BYTE	$7F ; 
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F8 ; ¯
		.BYTE	$F8 ; ¯
		.BYTE	$F8 ; ¯
		.BYTE	$F8 ; ¯
		.BYTE	$F8 ; ¯
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FC ; ¸
		.BYTE	$E0 ; ‡
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$7F ; 
		.BYTE	$7F ; 
		.BYTE	$7F ; 
		.BYTE	$7E ; ~
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$1F
		.BYTE	$3E ; >
		.BYTE	$3E ; >
		.BYTE	$3E ; >
		.BYTE	$3E ; >
		.BYTE	$7E ; ~
		.BYTE	$7C ; |
		.BYTE	$7C ; |
		.BYTE	$7C ; |
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$F8 ; ¯
		.BYTE	$F8 ; ¯
		.BYTE	$F8 ; ¯
		.BYTE	$F8 ; ¯
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	7
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	$1E
		.BYTE	$1C
		.BYTE	$1C
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$38 ; 8
		.BYTE	$38 ; 8
		.BYTE	$78 ; x
		.BYTE	$78 ; x
		.BYTE	$78 ; x
		.BYTE	$70 ; p
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE	1
		.BYTE	3
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	6
		.BYTE	6
		.BYTE	4
		.BYTE	4
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	8
		.BYTE	8
		.BYTE	$18
		.BYTE	$18
		.BYTE	$18
		.BYTE	$10
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$60 ; `
		.BYTE	$60 ; `
		.BYTE	$60 ; `
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$40 ; @
		.BYTE	$40 ; @
		.BYTE	$20
		.BYTE	$20
		.BYTE	$10
		.BYTE	$18
		.BYTE	8
		.BYTE	 $C
		.BYTE	4
		.BYTE	6
		.BYTE	3
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$E0 ; ‡
		.BYTE	$60 ; `
		.BYTE	$70 ; p
		.BYTE	$30 ; 0
		.BYTE	$38 ; 8
		.BYTE	$1C
		.BYTE	$1C
		.BYTE	 $E
		.BYTE	6
		.BYTE	7
		.BYTE	3
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$F0 ; 
		.BYTE	$70 ; p
		.BYTE	$78 ; x
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$1E
		.BYTE	$1E
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	7
		.BYTE	7
		.BYTE	3
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$E0 ; ‡
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F8 ; ¯
		.BYTE	$F8 ; ¯
		.BYTE	$7C ; |
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_5198:	.BYTE	<$4918		; DATA XREF: sub_2538:loc_256E^r
		.BYTE	<$49A0
		.BYTE	<$4A28
		.BYTE	<$4AB0
		.BYTE	<$4B38
		.BYTE	<$4BC0
		.BYTE	<$4C48
		.BYTE	<$4CD0
		.BYTE	<$4D58
		.BYTE	<$4DE0
		.BYTE	<$4E68
		.BYTE	<$4EF0
		.BYTE	<$4F78
		.BYTE	<$5000
		.BYTE	<$5088
		.BYTE	<$5110
unk_51A8:	.BYTE	>$4918		; DATA XREF: sub_2538+3B^r
		.BYTE	>$49A0
		.BYTE	>$4A28
		.BYTE	>$4AB0
		.BYTE	>$4B38
		.BYTE	>$4BC0
		.BYTE	>$4C48
		.BYTE	>$4CD0
		.BYTE	>$4D58
		.BYTE	>$4DE0
		.BYTE	>$4E68
		.BYTE	>$4EF0
		.BYTE	>$4F78
		.BYTE	>$5000
		.BYTE	>$5088
		.BYTE	>$5110
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$AA ; ™
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$5A ; Z
		.BYTE	$AA ; ™
		.BYTE	$A5 ; •
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$AA ; ™
		.BYTE	$55 ; U
		.BYTE	$AA ; ™
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$5A ; Z
		.BYTE	$9A ; ö
		.BYTE	$AA ; ™
		.BYTE	$A6 ; ¶
		.BYTE	$A5 ; •
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$52 ; R
		.BYTE	$8A ; ä
		.BYTE	$28 ; (
		.BYTE	$A2 ; ¢
		.BYTE	$85 ; Ö
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$57 ; W
		.BYTE	$D5 ; ’
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$57 ; W
		.BYTE	$D5 ; ’
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$5F ; _
		.BYTE	$F5 ; ı
		.BYTE	$7F ; 
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FD ; ˝
		.BYTE	$5F ; _
		.BYTE	$F5 ; ı
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$7F ; 
		.BYTE	$FD ; ˝
		.BYTE	$5A ; Z
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$A5 ; •
		.BYTE	$7F ; 
		.BYTE	$FD ; ˝
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$15
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	5
		.BYTE	$54 ; T
		.BYTE	$14
		.BYTE	$14
		.BYTE	$14
		.BYTE	$14
		.BYTE	$14
		.BYTE	$15
		.BYTE	$50 ; P
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	$56 ; V
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$95 ; ï
		.BYTE	$5A ; Z
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$A5 ; •
		.BYTE	$62 ; b
		.BYTE	$AA ; ™
		.BYTE	$8A ; ä
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$AA ; ™
		.BYTE	$A2 ; ¢
		.BYTE	$AA ; ™
		.BYTE	$89 ; â
		.BYTE	$CF ; œ
		.BYTE	$FF
		.BYTE	$3F ; ?
		.BYTE	$FC ; ¸
		.BYTE	$FF
		.BYTE	$F3 ; Û
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$FF
		.BYTE	$3F ; ?
		.BYTE	$FC ; ¸
		.BYTE	$FF
		.BYTE	$F3 ; Û
		.BYTE	$CF ; œ
		.BYTE	$5F ; _
		.BYTE	$3D ; =
		.BYTE	$7C ; |
		.BYTE	$F5 ; ı
		.BYTE	$F3 ; Û
		.BYTE	$D7 ; ◊
		.BYTE	$CF ; œ
		.BYTE	$5F ; _
		.BYTE	$3D ; =
		.BYTE	$7C ; |
		.BYTE	$F5 ; ı
		.BYTE	$F3 ; Û
		.BYTE	$CF ; œ
		.BYTE	$5F ; _
		.BYTE	$3D ; =
		.BYTE	$7C ; |
		.BYTE	$F5 ; ı
		.BYTE	$F3 ; Û
		.BYTE	$D7 ; ◊
		.BYTE	$CF ; œ
		.BYTE	$5F ; _
		.BYTE	$3D ; =
		.BYTE	$7C ; |
		.BYTE	$F5 ; ı
		.BYTE	$F3 ; Û
		.BYTE	$CF ; œ
		.BYTE	$FF
		.BYTE	$3F ; ?
		.BYTE	$FC ; ¸
		.BYTE	$FF
		.BYTE	$F3 ; Û
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$FF
		.BYTE	$3F ; ?
		.BYTE	$FC ; ¸
		.BYTE	$FF
		.BYTE	$F3 ; Û
		.BYTE	$62 ; b
		.BYTE	$AA ; ™
		.BYTE	$8A ; ä
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$AA ; ™
		.BYTE	$A2 ; ¢
		.BYTE	$AA ; ™
		.BYTE	$89 ; â
		.BYTE	$5A ; Z
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$A5 ; •
		.BYTE	$56 ; V
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$95 ; ï
		.BYTE	$55 ; U
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$40 ; @
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
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$52 ; R
		.BYTE	$8A ; ä
		.BYTE	$28 ; (
		.BYTE	$A2 ; ¢
		.BYTE	$8A ; ä
		.BYTE	$28 ; (
		.BYTE	$A2 ; ¢
		.BYTE	$8A ; ä
		.BYTE	$28 ; (
		.BYTE	$A2 ; ¢
		.BYTE	$85 ; Ö
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$56 ; V
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$95 ; ï
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$56 ; V
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$95 ; ï
		.BYTE	$6A ; j
		.BYTE	$AA ; ™
		.BYTE	$A9 ; ©
		.BYTE	$56 ; V
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$95 ; ï
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$40 ; @
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$40 ; @
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$55 ; U
		.BYTE	$5A ; Z
		.BYTE	$AA ; ™
		.BYTE	$A5 ; •
		.BYTE	$55 ; U
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$6A ; j
		.BYTE	$A9 ; ©
		.BYTE	$55 ; U
		.BYTE	$56 ; V
		.BYTE	$AA ; ™
		.BYTE	$95 ; ï
		.BYTE	$55 ; U
		.BYTE	$6A ; j
		.BYTE	$A9 ; ©
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	5
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$56 ; V
		.BYTE	$A9 ; ©
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$6A ; j
		.BYTE	$AA ; ™
		.BYTE	$95 ; ï
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$F5 ; ı
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$42 ; B
		.BYTE	8
		.BYTE	$15
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$57 ; W
		.BYTE	$DF ; ﬂ
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$7D ; }
		.BYTE	$55 ; U
		.BYTE	$5F ; _
		.BYTE	$F6 ; ˆ
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$A9 ; ©
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$5A ; Z
		.BYTE	$8A ; ä
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	$55 ; U
		.BYTE	$62 ; b
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$95 ; ï
		.BYTE	$CD ; Õ
		.BYTE	$CD ; Õ
		.BYTE	$CF ; œ
		.BYTE	$7C ; |
		.BYTE	$DC ; ‹
		.BYTE	$DC ; ‹
		.BYTE	$F5 ; ı
		.BYTE	$CD ; Õ
		.BYTE	$CD ; Õ
		.BYTE	$CF ; œ
		.BYTE	$7C ; |
		.BYTE	$DC ; ‹
		.BYTE	$DC ; ‹
		.BYTE	$F5 ; ı
		.BYTE	$62 ; b
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$95 ; ï
		.BYTE	$5A ; Z
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$54 ; T
		.BYTE	$88 ; à
		.BYTE	$88 ; à
		.BYTE	$88 ; à
		.BYTE	$88 ; à
		.BYTE	$89 ; â
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$AA ; ™
		.BYTE	$56 ; V
		.BYTE	$A9 ; ©
		.BYTE	$5A ; Z
		.BYTE	$A5 ; •
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$69 ; i
		.BYTE	$55 ; U
		.BYTE	$A5 ; •
		.BYTE	$56 ; V
		.BYTE	$95 ; ï
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$6A ; j
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$FF
		.BYTE	$D5 ; ’
		.BYTE	$55 ; U
		.BYTE	$7D ; }
		.BYTE	$FF
		.BYTE	$DF ; ﬂ
		.BYTE	$55 ; U
		.BYTE	$6A ; j
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$55 ; U
		.BYTE	$DD ; ›
		.BYTE	$DD ; ›
		.BYTE	$DD ; ›
		.BYTE	$D5 ; ’
		.BYTE	$6A ; j
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	0
		.BYTE	1
		.BYTE	$55 ; U
		.BYTE	$5A ; Z
		.BYTE	$59 ; Y
		.BYTE	$69 ; i
		.BYTE	$55 ; U
		.BYTE	$56 ; V
		.BYTE	$55 ; U
		.BYTE	$5F ; _
		.BYTE	$D5 ; ’
		.BYTE	$FF
		.BYTE	$FD ; ˝
		.BYTE	$40 ; @
		.BYTE	5
		.BYTE	$59 ; Y
		.BYTE	$95 ; ï
unk_53F2:	.BYTE	<$78DA		; DATA XREF: sub_2A3B+11^r
		.BYTE	<$7B5A
		.BYTE	<$805C
		.BYTE	<$7A1A
		.BYTE	<$7C98
		.BYTE	<$7A1E
		.BYTE	<$7C98
		.BYTE	<$7A20
		.BYTE	<$7C95
		.BYTE	<$7A1D
		.BYTE	<$7C90
		.BYTE	<$78DC
		.BYTE	<$7CA4
		.BYTE	<$7DE0
unk_5400:	.BYTE	>$78DA		; DATA XREF: sub_2A3B+16^r
		.BYTE	>$7B5A
		.BYTE	>$805C
		.BYTE	>$7A1A
		.BYTE	>$7C98
		.BYTE	>$7A1E
		.BYTE	>$7C98
		.BYTE	>$7A20
		.BYTE	>$7C95
		.BYTE	>$7A1D
		.BYTE	>$7C90
		.BYTE	>$78DC
		.BYTE	>$7CA4
		.BYTE	>$7DE0
unk_540E:	.BYTE	0		; DATA XREF: sub_2A3B^r
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_541C:	.BYTE	$E8 ; Ë		; DATA XREF: RAM:21B0^r
		.BYTE	$C8 ; »
		.BYTE	$58 ; X
unk_541F:	.BYTE	$53 ; S		; DATA XREF: RAM:21B6^r
		.BYTE	$53 ; S
		.BYTE	$53 ; S
unk_5422:	.BYTE	2		; DATA XREF: RAM:219C^r
		.BYTE	4
		.BYTE	7
unk_5425:	.BYTE	4		; DATA XREF: RAM:21A1^r
unk_5426:	.BYTE	8		; DATA XREF: RAM:21EF^r
		.BYTE	$10
		.BYTE	$20
unk_5429:	.BYTE	$13		; DATA XREF: RAM:21A6^r
		.BYTE	$12
		.BYTE	$10
unk_542C:	.BYTE	$52 ; R		; DATA XREF: RAM:21AB^r
unk_542D:	.BYTE	$56 ; V		; DATA XREF: RAM:21EA^r
		.BYTE	$5E ; ^
		.BYTE	$6E ; n
unk_5430:	.BYTE	$60 ; `		; DATA XREF: sub_31A2+32^r
		.BYTE	$88 ; à
		.BYTE	$B0 ; ∞
		.BYTE	$D8 ; ÿ
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$50 ; P
		.BYTE	$78 ; x
unk_5438:	.BYTE	$69 ; i		; DATA XREF: sub_31A2+37^r
		.BYTE	$69 ; i
		.BYTE	$69 ; i
		.BYTE	$69 ; i
		.BYTE	$6A ; j
		.BYTE	$6A ; j
		.BYTE	$6A ; j
		.BYTE	$6A ; j
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$20
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$20
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$20
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$22 ; "
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE	$20
		.BYTE	$80 ; Ä
		.BYTE	$A8 ; ®
		.BYTE	$82 ; Ç
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	8
		.BYTE	 $A
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	8
		.BYTE	$8A ; ä
		.BYTE	 $A
		.BYTE	$20
		.BYTE	$2A ; *
		.BYTE	8
		.BYTE	$20
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	8
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	8
		.BYTE	$A0 ; †
		.BYTE	8
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	8
		.BYTE	$20
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	8
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	$20
		.BYTE	$80 ; Ä
		.BYTE	8
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	8
		.BYTE	$22 ; "
		.BYTE	0
		.BYTE	2
		.BYTE	8
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	8
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	8
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	2
		.BYTE	$28 ; (
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	8
		.BYTE	$80 ; Ä
		.BYTE	8
		.BYTE	$20
		.BYTE	$8A ; ä
		.BYTE	8
		.BYTE	$20
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$8A ; ä
		.BYTE	8
		.BYTE	$22 ; "
		.BYTE	$A0 ; †
		.BYTE	$80 ; Ä
		.BYTE	8
		.BYTE	$28 ; (
		.BYTE	$22 ; "
		.BYTE	$82 ; Ç
		.BYTE	$2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $A
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$A0 ; †
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$A0 ; †
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	$22 ; "
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	8
		.BYTE	0
		.BYTE	2
		.BYTE	$3C ; <
		.BYTE	3
		.BYTE	$C2 ; ¬
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$22 ; "
		.BYTE	$80 ; Ä
		.BYTE	$F0 ; 
		.BYTE	$F3 ; Û
		.BYTE	$22 ; "
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$FF
		.BYTE	$F3 ; Û
		.BYTE	$F2 ; Ú
		.BYTE	$8F ; è
		.BYTE	$C8 ; »
		.BYTE	0
		.BYTE	2
		.BYTE	$3F ; ?
		.BYTE	 $F
		.BYTE	$F0 ; 
		.BYTE	 $F
		.BYTE	$FF
		.BYTE	$22 ; "
		.BYTE	 $F
		.BYTE	$F0 ; 
		.BYTE	$FF
		.BYTE	$22 ; "
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$FF
		.BYTE	$C0 ; ¿
		.BYTE	$F2 ; Ú
		.BYTE	$8F ; è
		.BYTE	$CA ;  
		.BYTE	0
		.BYTE	2
		.BYTE	$3F ; ?
		.BYTE	 $C
		.BYTE	$FC ; ¸
		.BYTE	$3F ; ?
		.BYTE	$CF ; œ
		.BYTE	$22 ; "
		.BYTE	$3F ; ?
		.BYTE	$F0 ; 
		.BYTE	$FF
		.BYTE	$22 ; "
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	8
		.BYTE	$F2 ; Ú
		.BYTE	$83 ; É
		.BYTE	$C2 ; ¬
		.BYTE	0
		.BYTE	2
		.BYTE	 $F
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$3F ; ?
		.BYTE	 $C
		.BYTE	$22 ; "
		.BYTE	$3F ; ?
		.BYTE	$F0 ; 
		.BYTE	$FF
		.BYTE	$22 ; "
		.BYTE	$3F ; ?
		.BYTE	3
		.BYTE	$F2 ; Ú
		.BYTE	$A8 ; ®
		.BYTE	$F0 ; 
		.BYTE	$A3 ; £
		.BYTE	$F2 ; Ú
		.BYTE	0
		.BYTE	2
		.BYTE	$8F ; è
		.BYTE	$30 ; 0
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$3F ; ?
		.BYTE	$F0 ; 
		.BYTE	$FF
		.BYTE	$22 ; "
		.BYTE	 $F
		.BYTE	3
		.BYTE	$F2 ; Ú
		.BYTE	8
		.BYTE	$FC ; ¸
		.BYTE	$A3 ; £
		.BYTE	$F2 ; Ú
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	$F0 ; 
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	0
		.BYTE	0
		.BYTE	$3C ; <
		.BYTE	$F0 ; 
		.BYTE	$3F ; ?
		.BYTE	$22 ; "
		.BYTE	$8F ; è
		.BYTE	3
		.BYTE	$C2 ; ¬
		.BYTE	8
		.BYTE	$3C ; <
		.BYTE	$A3 ; £
		.BYTE	$F0 ; 
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	$C0 ; ¿
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$3C ; <
		.BYTE	$FC ; ¸
		.BYTE	$3C ; <
		.BYTE	$F0 ; 
		.BYTE	$3F ; ?
		.BYTE	$20
		.BYTE	$8F ; è
		.BYTE	3
		.BYTE	$CA ;  
		.BYTE	 $A
		.BYTE	$3C ; <
		.BYTE	$A0 ; †
		.BYTE	$FC ; ¸
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	$C0 ; ¿
		.BYTE	$F0 ; 
		.BYTE	$3F ; ?
		.BYTE	$F0 ; 
		.BYTE	$CF ; œ
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$3F ; ?
		.BYTE	$20
		.BYTE	$8F ; è
		.BYTE	3
		.BYTE	$C8 ; »
		.BYTE	2
		.BYTE	$3C ; <
		.BYTE	$28 ; (
		.BYTE	$FC ; ¸
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	$FF
		.BYTE	$C0 ; ¿
		.BYTE	$FF
		.BYTE	0
		.BYTE	$C0 ; ¿
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$3F ; ?
		.BYTE	$20
		.BYTE	$8F ; è
		.BYTE	$C3 ; √
		.BYTE	$C8 ; »
		.BYTE	2
		.BYTE	$3F ; ?
		.BYTE	$28 ; (
		.BYTE	$FC ; ¸
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	$CF ; œ
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$FF
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$20
		.BYTE	$83 ; É
		.BYTE	$C3 ; √
		.BYTE	$C8 ; »
		.BYTE	2
		.BYTE	 $F
		.BYTE	$20
		.BYTE	$FC ; ¸
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	$C3 ; √
		.BYTE	$C0 ; ¿
		.BYTE	$3C ; <
		.BYTE	0
		.BYTE	$30 ; 0
		.BYTE	$C0 ; ¿
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$20
		.BYTE	$A3 ; £
		.BYTE	$C3 ; √
		.BYTE	$C8 ; »
		.BYTE	2
		.BYTE	$8F ; è
		.BYTE	$23 ; #
		.BYTE	$FC ; ¸
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	$C3 ; √
		.BYTE	$C0 ; ¿
		.BYTE	$3C ; <
		.BYTE	0
		.BYTE	$30 ; 0
		.BYTE	$C8 ; »
		.BYTE	$3C ; <
		.BYTE	 $F
		.BYTE	$2A ; *
		.BYTE	$A3 ; £
		.BYTE	$C3 ; √
		.BYTE	$CA ;  
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	3
		.BYTE	$FC ; ¸
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$3C ; <
		.BYTE	0
		.BYTE	$33 ; 3
		.BYTE	$CA ;  
		.BYTE	$3C ; <
		.BYTE	 $F
		.BYTE	$28 ; (
		.BYTE	3
		.BYTE	$C3 ; √
		.BYTE	$C2 ; ¬
		.BYTE	$A8 ; ®
		.BYTE	$8F ; è
		.BYTE	$CF ; œ
		.BYTE	$FC ; ¸
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	$28 ; (
		.BYTE	$F0 ; 
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$33 ; 3
		.BYTE	 $A
		.BYTE	$3F ; ?
		.BYTE	 $F
		.BYTE	$20
		.BYTE	$F3 ; Û
		.BYTE	$C3 ; √
		.BYTE	$F0 ; 
		.BYTE	 $A
		.BYTE	$83 ; É
		.BYTE	$FC ; ¸
		.BYTE	$F0 ; 
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	$28 ; (
		.BYTE	$3C ; <
		.BYTE	$3F ; ?
		.BYTE	3
		.BYTE	$3F ; ?
		.BYTE	$2A ; *
		.BYTE	$3F ; ?
		.BYTE	 $F
		.BYTE	3
		.BYTE	$F3 ; Û
		.BYTE	$F0 ; 
		.BYTE	$FC ; ¸
		.BYTE	$CA ;  
		.BYTE	$A3 ; £
		.BYTE	$F0 ; 
		.BYTE	$F2 ; Ú
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	 $A
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$CF ; œ
		.BYTE	 $C
		.BYTE	$22 ; "
		.BYTE	$3F ; ?
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$F3 ; Û
		.BYTE	$F0 ; 
		.BYTE	$FF
		.BYTE	$C8 ; »
		.BYTE	$20
		.BYTE	$F0 ; 
		.BYTE	$F2 ; Ú
		.BYTE	0
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	$CA ;  
		.BYTE	 $C
		.BYTE	 $F
		.BYTE	$FC ; ¸
		.BYTE	 $C
		.BYTE	$A2 ; ¢
		.BYTE	$33 ; 3
		.BYTE	3
		.BYTE	$FF
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	 $F
		.BYTE	8
		.BYTE	$28 ; (
		.BYTE	$C3 ; √
		.BYTE	$C2 ; ¬
		.BYTE	0
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	 $A
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$82 ; Ç
		.BYTE	0
		.BYTE	$20
		.BYTE	0
		.BYTE	8
		.BYTE	 $A
		.BYTE	$80 ; Ä
		.BYTE	$28 ; (
		.BYTE	$20
		.BYTE	$C3 ; √
		.BYTE	$CA ;  
		.BYTE	0
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	$A2 ; ¢
		.BYTE	$A8 ; ®
		.BYTE	2
		.BYTE	$A2 ; ¢
		.BYTE	$82 ; Ç
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	$A3 ; £
		.BYTE	$CF ; œ
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	 $A
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$83 ; É
		.BYTE	$FC ; ¸
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$8F ; è
		.BYTE	$C0 ; ¿
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	 $A
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$20
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$88 ; à
		.BYTE	$20
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE	$20
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
		.BYTE	$22 ; "
		.BYTE	$80 ; Ä
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	8
		.BYTE	$22 ; "
		.BYTE	8
		.BYTE	$A2 ; ¢
		.BYTE	$80 ; Ä
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$82 ; Ç
		.BYTE	$82 ; Ç
		.BYTE	$8A ; ä
		.BYTE	0
		.BYTE	8
		.BYTE	$28 ; (
		.BYTE	$82 ; Ç
		.BYTE	8
		.BYTE	0
		.BYTE	8
		.BYTE	$22 ; "
		.BYTE	8
		.BYTE	$28 ; (
		.BYTE	$82 ; Ç
		.BYTE	 $A
		.BYTE	$20
		.BYTE	$8A ; ä
		.BYTE	$20
		.BYTE	$A2 ; ¢
		.BYTE	0
		.BYTE	8
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	$20
		.BYTE	0
		.BYTE	8
		.BYTE	$22 ; "
		.BYTE	8
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	8
		.BYTE	$22 ; "
		.BYTE	8
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	0
		.BYTE	8
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	8
		.BYTE	$22 ; "
		.BYTE	8
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	8
		.BYTE	$28 ; (
		.BYTE	8
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	0
		.BYTE	8
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	8
		.BYTE	0
		.BYTE	8
		.BYTE	$A2 ; ¢
		.BYTE	$28 ; (
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	8
		.BYTE	$20
		.BYTE	$88 ; à
		.BYTE	$A0 ; †
		.BYTE	$82 ; Ç
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$20
		.BYTE	$A2 ; ¢
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$80 ; Ä
		.BYTE	$A2 ; ¢
		.BYTE	$20
		.BYTE	$A0 ; †
		.BYTE	$88 ; à
		.BYTE	$2A ; *
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$82 ; Ç
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	 $F
		.BYTE	 $C
		.BYTE	$C0 ; ¿
		.BYTE	 $C
		.BYTE	$CC ; Ã
		.BYTE	$C3 ; √
		.BYTE	 $C
		.BYTE	3
		.BYTE	 $F
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$C3 ; √
		.BYTE	0
		.BYTE	 $C
		.BYTE	$CC ; Ã
		.BYTE	$C0 ; ¿
		.BYTE	 $C
		.BYTE	$CF ; œ
		.BYTE	3
		.BYTE	 $C
		.BYTE	$C3 ; √
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	$C3 ; √
		.BYTE	0
		.BYTE	 $F
		.BYTE	3
		.BYTE	0
		.BYTE	 $C
		.BYTE	$CC ; Ã
		.BYTE	$C3 ; √
		.BYTE	 $C
		.BYTE	$C3 ; √
		.BYTE	 $F
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	0
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	3
		.BYTE	0
		.BYTE	 $C
		.BYTE	$C3 ; √
		.BYTE	0
		.BYTE	 $F
		.BYTE	$CC ; Ã
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$CC ; Ã
		.BYTE	3
		.BYTE	0
		.BYTE	 $F
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
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A2 ; ¢
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	$8A ; ä
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	$8A ; ä
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$80 ; Ä
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$A8 ; ®
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	 $A
		.BYTE	$80 ; Ä
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	 $A
		.BYTE	$8A ; ä
		.BYTE	 $A
		.BYTE	$8A ; ä
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$8A ; ä
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	$8A ; ä
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$A2 ; ¢
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$80 ; Ä
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$3F ; ?
		.BYTE	$3C ; <
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$CC ; Ã
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$3F ; ?
		.BYTE	$3C ; <
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$3C ; <
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$3C ; <
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$33 ; 3
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$33 ; 3
		.BYTE	$3F ; ?
		.BYTE	$3C ; <
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$30 ; 0
		.BYTE	$AA ; ™
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$CC ; Ã
		.BYTE	$C0 ; ¿
		.BYTE	$30 ; 0
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$30 ; 0
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	 $C
		.BYTE	$30 ; 0
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$30 ; 0
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	$A2 ; ¢
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A2 ; ¢
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$8A ; ä
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$CC ; Ã
		.BYTE	$C0 ; ¿
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$F0 ; 
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$30 ; 0
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	$F0 ; 
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$30 ; 0
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$C0 ; ¿
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	$FC ; ¸
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$C0 ; ¿
		.BYTE	$CC ; Ã
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	$CC ; Ã
		.BYTE	$CC ; Ã
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$30 ; 0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $A
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$A0 ; †
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$88 ; à
		.BYTE	$80 ; Ä
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$8A ; ä
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$8A ; ä
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$A2 ; ¢
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $A
		.BYTE	$88 ; à
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$A8 ; ®
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	$2A ; *
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$A8 ; ®
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	$2A ; *
		.BYTE	$A8 ; ®
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$28 ; (
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$28 ; (
		.BYTE	$8A ; ä
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$22 ; "
		.BYTE	$A0 ; †
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	 $A
		.BYTE	$A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE	$A0 ; †
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	$8A ; ä
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $B
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$3B ; ;
		.BYTE	$CB ; À
		.BYTE	$C0 ; ¿
		.BYTE	$2F ; /
		.BYTE	$AC ; ¨
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$2F ; /
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	$FF
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$EF ; Ô
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	$FF
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$F0 ; 
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	 $F
		.BYTE	$F0 ; 
		.BYTE	2
		.BYTE	$FF
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	3
		.BYTE	$BF ; ø
		.BYTE	0
		.BYTE	$3B ; ;
		.BYTE	0
		.BYTE	$2F ; /
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	3
		.BYTE	$FC ; ¸
		.BYTE	3
		.BYTE	$FF
		.BYTE	 $F
		.BYTE	$EC ; Ï
		.BYTE	3
		.BYTE	$FF
		.BYTE	0
		.BYTE	$BF ; ø
		.BYTE	0
		.BYTE	$BF ; ø
		.BYTE	$C0 ; ¿
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$EC ; Ï
		.BYTE	$3F ; ?
		.BYTE	3
		.BYTE	$FC ; ¸
		.BYTE	3
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$FC ; ¸
		.BYTE	3
		.BYTE	$FF
		.BYTE	$C2 ; ¬
		.BYTE	$FF
		.BYTE	2
		.BYTE	$FF
		.BYTE	$F0 ; 
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FC ; ¸
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$FF
		.BYTE	2
		.BYTE	$F3 ; Û
		.BYTE	$F0 ; 
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FC ; ¸
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	 $F
		.BYTE	$CB ; À
		.BYTE	$F0 ; 
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	 $F
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	$3B ; ;
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$3B ; ;
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	$EF ; Ô
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$EF ; Ô
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	$FF
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$FF
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$F0 ; 
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C3 ; √
		.BYTE	$FC ; ¸
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	3
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C3 ; √
		.BYTE	$FF
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	2
		.BYTE	$F0 ; 
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$FF
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$BC ; º
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	 $F
		.BYTE	$F0 ; 
		.BYTE	$FF
		.BYTE	 $F
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$FF
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$F3 ; Û
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	$2F ; /
		.BYTE	$C0 ; ¿
		.BYTE	$FF
		.BYTE	$8F ; è
		.BYTE	$CF ; œ
		.BYTE	$B8 ; ∏
		.BYTE	$FF
		.BYTE	$8F ; è
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	$C3 ; √
		.BYTE	$FA ; ˙
		.BYTE	$F0 ; 
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$B8 ; ∏
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$C0 ; ¿
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$CF ; œ
		.BYTE	$FC ; ¸
		.BYTE	$FF
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	$C0 ; ¿
		.BYTE	$FF
		.BYTE	$C0 ; ¿
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	$FC ; ¸
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$CF ; œ
		.BYTE	$C3 ; √
		.BYTE	$FC ; ¸
		.BYTE	$3F ; ?
		.BYTE	$CF ; œ
		.BYTE	$C0 ; ¿
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	3
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	 $B
		.BYTE	$C0 ; ¿
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$3F ; ?
		.BYTE	$C0 ; ¿
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	$2F ; /
		.BYTE	$C0 ; ¿
		.BYTE	 $F
		.BYTE	$F0 ; 
		.BYTE	$FF
		.BYTE	0
		.BYTE	3
		.BYTE	$FE ; ˛
		.BYTE	$BF ; ø
		.BYTE	0
		.BYTE	3
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	0
		.BYTE	0
		.BYTE	$FF
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$F0 ; 
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$22 ; "
		.BYTE	$A2 ; ¢
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	$22 ; "
		.BYTE	$22 ; "
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	$A0 ; †
		.BYTE	$82 ; Ç
		.BYTE	0
		.BYTE	2
		.BYTE	$A2 ; ¢
		.BYTE	$82 ; Ç
		.BYTE	$82 ; Ç
		.BYTE	$A2 ; ¢
		.BYTE	$82 ; Ç
		.BYTE	$A0 ; †
		.BYTE	$82 ; Ç
		.BYTE	$A0 ; †
		.BYTE	2
		.BYTE	2
		.BYTE	$22 ; "
		.BYTE	0
		.BYTE	$22 ; "
		.BYTE	2
		.BYTE	$A0 ; †
		.BYTE	$80 ; Ä
		.BYTE	$20
		.BYTE	2
		.BYTE	2
		.BYTE	$22 ; "
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$A2 ; ¢
		.BYTE	$20
		.BYTE	$82 ; Ç
		.BYTE	$A0 ; †
unk_62DC:	.BYTE	<$5440		; DATA XREF: sub_2A3B:loc_2A42^r
		.BYTE	<$54D0
		.BYTE	<$56BE
		.BYTE	<$57AE
		.BYTE	<$5812
		.BYTE	<$5B8A
		.BYTE	<$5BCB
		.BYTE	<$5C8B
		.BYTE	<$5CB3
		.BYTE	<$5DA3
		.BYTE	<$5DE9
		.BYTE	<$60B9
		.BYTE	<$6251
		.BYTE	<$6279
unk_62EA:	.BYTE	>$5440		; DATA XREF: sub_2A3B+C^r
		.BYTE	>$54D0
		.BYTE	>$56BE
		.BYTE	>$57AE
		.BYTE	>$5812
		.BYTE	>$5B8A
		.BYTE	>$5BCB
		.BYTE	>$5C8B
		.BYTE	>$5CB3
		.BYTE	>$5DA3
		.BYTE	>$5DE9
		.BYTE	>$60B9
		.BYTE	>$6251
		.BYTE	>$6279
unk_62F8:				; DATA XREF: sub_2A3B+1B^r
		.BYTE	 $0C,$1A,$0F,$05,$25,$05,$08,$05,$08,$05,$12,$18,$0A,$0B
unk_6306:				 ; DATA XREF: sub_2A3B+20^r
		.BYTE	 $0C,$13,$10,$14,$18,$0D,$18,$08,$1E,$0E,$28,$11,$04,$09
		.BYTE	$39 ; 9
		.BYTE	$90 ; ê
		.BYTE	$87 ; á
		.BYTE	$4D ; M
		.BYTE	$55 ; U
		.BYTE	$4C ; L
		.BYTE	$54 ; T
		.BYTE	$38 ; 8
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$51 ; Q
		.BYTE	$90 ; ê
		.BYTE	$88 ; à
		.BYTE	$43 ; C
		.BYTE	$4C ; L
		.BYTE	$52 ; R
		.BYTE	$45 ; E
		.BYTE	$4E ; N
		.BYTE	$43 ; C
		.BYTE	$4C ; L
		.BYTE	$4E ; N
		.BYTE	$57 ; W
		.BYTE	$90 ; ê
		.BYTE	$88 ; à
		.BYTE	$50 ; P
		.BYTE	$52 ; R
		.BYTE	$52 ; R
		.BYTE	$45 ; E
		.BYTE	$4D ; M
		.BYTE	$41 ; A
		.BYTE	$49 ; I
		.BYTE	$4E ; N
		.BYTE	$62 ; b
		.BYTE	$90 ; ê
		.BYTE	$87 ; á
		.BYTE	$53 ; S
		.BYTE	$4C ; L
		.BYTE	$49 ; I
		.BYTE	$50 ; P
		.BYTE	$49 ; I
		.BYTE	$4E ; N
		.BYTE	$51 ; Q
		.BYTE	$71 ; q
		.BYTE	$90 ; ê
		.BYTE	$88 ; à
		.BYTE	$53 ; S
		.BYTE	$4C ; L
		.BYTE	$49 ; I
		.BYTE	$50 ; P
		.BYTE	$49 ; I
		.BYTE	$4E ; N
		.BYTE	$31 ; 1
		.BYTE	$30 ; 0
		.BYTE	$87 ; á
		.BYTE	$90 ; ê
		.BYTE	$88 ; à
		.BYTE	$4B ; K
		.BYTE	$49 ; I
		.BYTE	$4C ; L
		.BYTE	$4C ; L
		.BYTE	$49 ; I
		.BYTE	$4D ; M
		.BYTE	$42 ; B
		.BYTE	$4F ; O
		.BYTE	$B3 ; ≥
		.BYTE	$90 ; ê
		.BYTE	$88 ; à
		.BYTE	$54 ; T
		.BYTE	$4F ; O
		.BYTE	$41 ; A
		.BYTE	$53 ; S
		.BYTE	$54 ; T
		.BYTE	$53 ; S
		.BYTE	$51 ; Q
		.BYTE	$52 ; R
		.BYTE	$BD ; Ω
		.BYTE	$90 ; ê
		.BYTE	$88 ; à
		.BYTE	$54 ; T
		.BYTE	$4F ; O
		.BYTE	$41 ; A
		.BYTE	$53 ; S
		.BYTE	$54 ; T
		.BYTE	$59 ; Y
		.BYTE	$31 ; 1		; CODE XREF: RAM:1E58^p	RAM:1E73^p
		.BYTE	$30 ; 0
		.BYTE	$EB ; Î
		.BYTE	$90 ; ê
		.BYTE	$86 ; Ü
		.BYTE	$41 ; A
		.BYTE	$44 ; D
		.BYTE	$44 ; D
		.BYTE	$4D ; M
		.BYTE	$4F ; O
		.BYTE	$4E ; N
		.BYTE	$F0 ; 
		.BYTE	$90 ; ê
		.BYTE	$88 ; à
		.BYTE	$41 ; A
		.BYTE	$44 ; D
		.BYTE	$44 ; D
		.BYTE	$4D ; M
		.BYTE	$4F ; O
		.BYTE	$4E ; N
		.BYTE	$31 ; 1
		.BYTE	$30 ; 0
		.BYTE	 $F
		.BYTE	$91 ; ë
		.BYTE	$86 ; Ü
		.BYTE	$41 ; A
		.BYTE	$44 ; D
		.BYTE	$44 ; D
		.BYTE	$45 ; E
		.BYTE	$58 ; X
		.BYTE	$50 ; P
		.BYTE	$14
		.BYTE	$91 ; ë
		.BYTE	$88 ; à
		.BYTE	$41 ; A
		.BYTE	$44 ; D
		.BYTE	$44 ; D
		.BYTE	$45 ; E
		.BYTE	$58 ; X
		.BYTE	$50 ; P
		.BYTE	$30		; DATA XREF: RAM:1EC7^r	RAM:1EF2^r
		.BYTE	$35 ; 5		; CODE XREF: RAM:1E76^p
		.BYTE	$32 ; 2
		.BYTE	$91 ; ë
		DBGSYM	"ADDEXP10", $9151
		DBGSYM	"XADDEXP", $915D
		DBGSYM	"ADDEXP20", $915E
		DBGSYM	"ADDEXP50", $9165
		DBGSYM	"ADDEXP51", $9195
		DBGSYM	"ADDEXP52", $91A2
		.BYTE	8,"ADDEXP60"
		.WORD	$91B3
		DBGSYM	"COPYDOWN", $9209
		DBGSYM	"CD10", $9218
		DBGSYM	"]L3", $9233
		DBGSYM	"CD30", $923F
		.BYTE	$84
; end of 'RAM'


		.END
