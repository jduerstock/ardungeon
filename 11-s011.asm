;
; 11-s011.asm - alternate boot screen for ardungeon
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
		.include	"macros.inc"

		.SEGMENT	"BOOTTXT2"
;		.ORG	$BD80

		StrAtasciiToANTIC	"          DATASOFT (R) PRESENTS         "
		StrAtasciiToANTIC	"       "
		.BYTE "Q"		; this is more portable than
		.RES 24,$52		; pumping control characters
		.BYTE "E"		; through the atascii -> antic macro
		StrAtasciiToANTIC	"       "
		StrAtasciiToANTIC	"       |  Alternate Reality (R) |       "
		StrAtasciiToANTIC	"       |                        |       "
		StrAtasciiToANTIC	"       |      The Dungeon       |       "
		StrAtasciiToANTIC	"       "
		.BYTE	"Z"
		.RES	24,$52
		.BYTE	"C"
		StrAtasciiToANTIC	"       "
		StrAtasciiToANTIC	"           (p) Pirated 1987 by          "
		StrAtasciiToANTIC	"          †††ŸÔıÚ†Œ·ÌÂ†»ÂÚÂ††††         "
		StrAtasciiToANTIC	"                                        "
		StrAtasciiToANTIC	"   Alternate Reality is one of the few  "
		StrAtasciiToANTIC	"  pieces of software to be designed for "
		StrAtasciiToANTIC	"    a handful of paying customers.      "
		StrAtasciiToANTIC	"   Your rampant distribution of this    "
		StrAtasciiToANTIC	" product will assist software developers"
		StrAtasciiToANTIC	" in abandoning this machine altogether. "
		StrAtasciiToANTIC	"           -Have a nice day-            "
