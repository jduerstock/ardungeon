;
; 32-s575.asm - tavern dialog
;
; Copyright (c) 2008 Jason Duerstock
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

		.include	"globals.inc"

;		.ORG	$0100
	.SEGMENT "SEG_3A_KEY"

		.BYTE	$56,$3f,$00,$17,$b5,$5e,$38,$18,$cc,$9f,$51,$61,$e3,$46,$85,$1b ; |V?..µ^8.Ì.QaãF..|
		.BYTE	$36,$ba,$fd,$bc,$21,$21,$44,$71,$a0,$06,$b1,$21,$65,$f0,$71,$13 ; |6ºý¼!!Dq .±!eðq.|
		.BYTE	$a6,$77,$b3,$da,$66,$c8,$a8,$4c,$b9,$d2,$e1,$b0,$4c,$56,$89,$6d ; |¦w³ÚfÈ¨L¹Òá°LV.m|
		.BYTE	$b4,$43,$ac,$08,$05,$57,$8f,$6e,$a8,$ec,$a6,$44,$7a,$cf,$4a,$18 ; |´C¬..W.n¨ì¦DzÏJ.|
		.BYTE	$58,$4a,$c0,$d2,$1a,$52,$c5,$1a,$21,$1e,$c8,$18,$f0,$7e,$a8,$66 ; |XJÀÒ.RÅ.!.È.ð~¨f|
		.BYTE	$8b,$18,$01,$a2,$c2,$a0,$14,$a6,$b9,$ae,$4e,$e2,$6d,$32,$65,$83 ; |...¢Â .¦¹®Nâm2e.|
		.BYTE	$7d,$b7,$c9,$16,$33,$d6,$84,$84,$0a,$12,$90,$8c,$0c,$12,$2a,$04 ; |}·É.3Ö........*.|
		.BYTE	$23,$12,$0b,$e4,$fb,$64,$85,$d5,$13,$9d,$cd,$41,$61,$a1,$a1,$f1 ; |#..äûd.Õ..ÍAa¡¡ñ|

;		.ORG	$9EF0
	.SEGMENT "SEG_3A"

		.WORD	byte_9FDC
		.WORD	byte_9FDC
		.WORD	byte_A003
		.WORD	byte_A003
		.WORD	byte_A022
		.WORD	byte_A022
		.WORD	byte_A04E
		.WORD	byte_A04E
		.WORD	byte_A091
		.WORD	byte_A091
		.WORD	byte_A0B7
		.WORD	byte_A0B7
		.WORD	byte_A12C
		.WORD	byte_A12C
		.WORD	byte_A178
		.WORD	byte_A178
		.WORD	byte_A1D6
		.WORD	byte_A1D6
		.WORD	byte_A231
		.WORD	byte_A231
		.WORD	byte_A26A
		.WORD	byte_A2A1
		.WORD	byte_A2DE
		.WORD	byte_A302
		.WORD	byte_A332
		.WORD	byte_A36D
		.WORD	byte_A3A6
		.WORD	byte_A3D5
		.WORD	byte_A3FB
		.WORD	byte_A417
		.WORD	byte_A44F
		.WORD	byte_A47E
		.WORD	byte_A4C1
		.WORD	byte_A4E7
		.WORD	byte_A511
		.WORD	byte_A534
		.WORD	byte_A56F
		.WORD	byte_A589
		.WORD	byte_A5D6
		.WORD	byte_A619
		.WORD	byte_A64E
		.WORD	byte_A685
		.WORD	byte_A6C4
		.WORD	byte_A6EA
		.WORD	byte_A714
		.WORD	byte_A73B
		.WORD	byte_A77E
		.WORD	byte_A7A7
		.WORD	byte_A7CF
		.WORD	byte_A802
		.WORD	byte_A831
		.WORD	byte_A862
		.WORD	byte_A893
		.WORD	byte_A8BB
		.WORD	byte_A8DC
		.WORD	byte_A911
		.WORD	byte_A94A
		.WORD	byte_A974
		.WORD	byte_A99F
		.WORD	byte_A9CA
		.WORD	byte_A9EC
		.WORD	byte_AA1E
		.WORD	byte_AA4A
		.WORD	byte_AA7A
		.WORD	byte_AAC2
		.WORD	byte_AAE7
		.WORD	byte_AB27
		.WORD	byte_AB4B
		.WORD	byte_AB70
		.WORD	byte_ABB0
		.WORD	byte_ABE3
		.WORD	byte_AC0C
		.WORD	byte_AC33
		.WORD	byte_AC87
		.WORD	byte_ACC7
		.WORD	byte_AD02
		.WORD	byte_AD29
		.WORD	byte_AD48
		.WORD	byte_AD61
		.WORD	byte_ADA2
		.WORD	byte_ADCD
		.WORD	byte_ADF2
		.WORD	byte_AE21
		.WORD	byte_AE4A
		.WORD	byte_AE80
		.WORD	byte_AEB9
		.WORD	byte_AEE3
		.WORD	byte_AF1F
		.WORD	byte_AF53
		.WORD	byte_AF7E
		.WORD	byte_AFB2
		.WORD	byte_AFE8
		.WORD	byte_B02E
		.WORD	byte_B059
		.WORD	byte_B092
		.WORD	byte_B0BF
		.WORD	byte_B10B
		.WORD	byte_B130
		.WORD	byte_B159
		.WORD	byte_B1A5
		.WORD	byte_B1C1
		.WORD	byte_B1E3
		.WORD	byte_B224
		.WORD	byte_B248
		.WORD	byte_B281
		.WORD	byte_B2BE
		.WORD	byte_B301
		.WORD	byte_B33C
		.WORD	byte_B37A
		.WORD	byte_B3B2
		.WORD	byte_B3D9
		.WORD	byte_B40C
		.WORD	byte_B430
		.WORD	byte_B46B
		.WORD	byte_B48F
		.WORD	byte_B4C0
		.WORD	byte_B509
		.WORD	byte_B53C

byte_9FDC:	MOVEXY	0,2
		.BYTE	$A5,"A sly looking stranger sits down.",$D,$FF

byte_A003:	MOVEXY	0,2
		.BYTE	$A5,"A sloppy guy stumbles in.",$D,$FF

byte_A022:	MOVEXY	0,2
		.BYTE	$A5,"A dwarf wearing a raincoat walks over.",$D,$FF

byte_A04E:	MOVEXY	0,1
		.BYTE	$A5,"A human wearing a fur-lined outfit",$D,$D
		.BYTE	$A5,"says ",$22,"Hello Adventurer!",$22,$D,$FF

byte_A091:	MOVEXY	0,2
		.BYTE	$A5,"A large, burly human approaches.",$D,$FF

byte_A0B7:	MOVEXY	0,1
		.BYTE	$A5,"It's too bad they beefed up",$D,$D
		.BYTE	$A5,"the security in the Dungeon.",$D,$D
		.BYTE	$A5,"It used to be an easy life stealing",$D,$D
		.BYTE	$A5,"from others.",$D,$FF

byte_A12C:	MOVEXY	0,2
		.BYTE	$A5,"It's been...",$D,$D
		.BYTE	$A5,"Why, I can't remember the",$D,$D
		.BYTE	$A5,"last time I've had a drink.",$D,$FF

byte_A178:	MOVEXY	0,1
		.BYTE	$A5,"I'm tired. I've just finished",$D,$D
		.BYTE	$A5,"a show in The City. I hate",$D,$D
		.BYTE	$A5,"dancing, but it's a living.",$D,$FF

byte_A1D6:	MOVEXY	0,1
		.BYTE	$A5,"I've just lost a third of",$D,$D
		.BYTE	$A5,"what I own. You sure can't",$D,$D
		.BYTE	$A5,"trust the banks around here.",$D,$FF

byte_A231:	MOVEXY	0,2
		.BYTE	$A5,"Greetings Adventurer.",$D,$D
		.BYTE	$A5,"I'm known as Salin Wauthra.",$D,$FF

byte_A26A:	MOVEXY	0,2
		.BYTE	$A5,"A wise oracle dwells beneath",$D,$D
		.BYTE	$A5,"the Floating Gate.",$D,$FF

byte_A2A1:	MOVEXY	0,2
		.BYTE	$A5,"Bank vault basements can be found",$D,$D
		.BYTE	$A5,"on the first level.",$D,$FF

byte_A2DE:	MOVEXY	0,3
		.BYTE	$A5,"Acrinimiril's Tomb is haunted.",$D,$FF

byte_A302:	MOVEXY	0,2
		.BYTE	$A5,"The Chapel dispenses",$D,$D
		.BYTE	$A5,"pragmatic salvation",$D,$FF

byte_A332:	MOVEXY	0,2
		.BYTE	$A5,"A fountain that heals wounds",$D,$D
		.BYTE	$A5,"is on the first level.",$D,$FF

byte_A36D:	MOVEXY	0,2
		.BYTE	$A5,"The Troll King eats",$D,$D
		.BYTE	$A5,"punks like you for breakfast.",$D,$FF

byte_A3A6:	MOVEXY	0,2
		.BYTE	$A5,"The Goblin King",$D,$D
		.BYTE	$A5,"is an underhanded fink.",$D,$FF

byte_A3D5:	MOVEXY	0,3
		.BYTE	$A5,"There is no honor among Thieves.",$D,$FF

byte_A3FB:	MOVEXY	0,3
		.BYTE	$A5,"All magic has a price.",$D,$FF

byte_A417:	MOVEXY	0,2
		.BYTE	$A5,"The Guilds of the undercity",$D,$D
		.BYTE	$A5,"war upon each other.",$D,$FF

byte_A44F:	MOVEXY	0,2
		.BYTE	$A5,"The river leads to",$D,$D
		.BYTE	$A5,"lands of the Undead.",$D,$FF

byte_A47E:	MOVEXY	0,2
		.BYTE	$A5,"There is a fountain that cures disease",$D,$D
		.BYTE	$A5,"on the second level.",$D,$FF

byte_A4C1:	MOVEXY	0,3
		.BYTE	$A5,"You can always trust the guards.",$D,$FF

byte_A4E7:	MOVEXY	0,3
		.BYTE	$A5,"Step lightly in the crystal caverns.",$D,$FF

byte_A511:	MOVEXY	0,3
		.BYTE	$A5,"Lucky's got the brew for you.",$D,$FF

byte_A534:	MOVEXY	0,2
		.BYTE	$A5,"You can trust what you hear",$D,$D
		.BYTE	$A5,"from the Horse's mouth.",$D,$FF

byte_A56F:	MOVEXY	0,3
		.BYTE	$A5,"Never trust a demon.",$D,$FF

byte_A589:	MOVEXY	0,2
		.BYTE	$A5,"The dwarf on the second level is",$D,$D
		.BYTE	$A5,"interested in old weapons and armor.",$D,$FF

byte_A5D6:	MOVEXY	0,2
		.BYTE	$A5,"A special fountain on the third level",$D,$D
		.BYTE	$A5,"can enliven your day.",$D,$FF

byte_A619:	MOVEXY	0,2
		.BYTE	$A5,"There is a dreaded dragon",$D,$D
		.BYTE	$A5,"on the third level.",$D,$FF

byte_A64E:	MOVEXY	0,2
		.BYTE	$A5,"Beware the gauntlet of doom",$D,$D
		.BYTE	$A5,"on the third level.",$D,$FF

byte_A685:	MOVEXY	0,2
		.BYTE	$A5,"There is a very special door",$D,$D
		.BYTE	$A5,"hidden on the third level.",$D,$FF

byte_A6C4:	MOVEXY	0,3
		.BYTE	$A5,"Evil magic takes a special toll.",$D,$FF

byte_A6EA:	MOVEXY	0,3
		.BYTE	$A5,"Seek the ways of the Wizards of Law.",$D,$FF

byte_A714:	MOVEXY	0,3
		.BYTE	$A5,"We're being watched all the time.",$D,$FF

byte_A73B:	MOVEXY	0,2
		.BYTE	$A5,"The music heard in the tavern",$D,$D
		.BYTE	$A5,"comes from beyond this world.",$D,$FF

byte_A77E:	MOVEXY	0,3
		.BYTE	$A5,"The temptations of evil are strong.",$D,$FF

byte_A7A7:	MOVEXY	0,2
		.BYTE	$A5,"Fruit juice is",$D
		.BYTE	$A5,"very invigorating.",$D,$FF

byte_A7CF:	MOVEXY	0,1
		.BYTE	$A5,"Many great treasures",$D,$D
		.BYTE	$A5,"are carefully guarded.",$D,$FF

byte_A802:	MOVEXY	0,1
		.BYTE	$A5,"Be sure your friends",$D,$D
		.BYTE	$A5,"are not your foes.",$D,$FF

byte_A831:	MOVEXY	0,1
		.BYTE	$A5,"Always leave a tip",$D,$D
		.BYTE	$A5,"for services rendered.",$D,$FF

byte_A862:	MOVEXY	0,1
		.BYTE	$A5,"The pure in heart know",$D,$D
		.BYTE	$A5,"how to show mercy.",$D,$FF

byte_A893:	MOVEXY	0,2
		.BYTE	$A5,"The Oracle always tells the truth.",$D,$FF

byte_A8BB:	MOVEXY	0,2
		.BYTE	$A5,"Never fight fire with fire.",$D,$FF

byte_A8DC:	MOVEXY	0,2
		.BYTE	$A5,"The truly brave are not",$D,$D
		.BYTE	$A5,"afraid to make peace.",$D,$FF

byte_A911:	MOVEXY	0,1
		.BYTE	"In the Rooms of Confusion,",$D,$D
		.BYTE	$A5,"seek out a secret door.",$D,$FF

byte_A94A:	MOVEXY	0,2
		.BYTE	$A5,"Fine clothing attracts more friends.",$D,$FF

byte_A974:	MOVEXY	0,2
		.BYTE	$A5,"Gluttony is hazardous to your health.",$D,$FF

byte_A99F:	MOVEXY	0,2
		.BYTE	$A5,"Some treasures are better left alone.",$D,$FF

byte_A9CA:	MOVEXY	0,2
		.BYTE	$A5,"Cross the river at midnight.",$D,$FF

byte_A9EC:	MOVEXY	0,1
		.BYTE	$A5,"One magic ring",$D,$D
		.BYTE	$A5,"can cause a lot of trouble.",$D,$FF

byte_AA1E:	MOVEXY	0,2
		.BYTE	$A5,"Answering riddles brings great reward.",$D,$FF

byte_AA4A:	MOVEXY	0,1
		.BYTE	$A5,"Give a generous donation at",$D,$D
		.BYTE	$A5,"the Retreat.",$D,$FF

byte_AA7A:	MOVEXY	0,1
		.BYTE	$A5,"Be careful when dealing with",$D,$D
		.BYTE	$A5,$22,"Honest",$22," Omar and his brother Jeff.",$D,$FF

byte_AAC2:	MOVEXY	0,2
		.BYTE	$A5,"The Dwarf loves sparkling gems.",$D,$FF
	
byte_AAE7:	MOVEXY	0,2
		.BYTE	$A5,"Greedy adventurers are often visited by",$D,$D
		.BYTE	$A5,"by the Devourer!",$D,$FF

byte_AB27:	MOVEXY	0,2
		.BYTE	$A5,"Read the Guidebook thoroughly!",$D,$FF

byte_AB4B:	MOVEXY	0,2
		.BYTE	$A5,"Sermons are good for your soul.",$D,$FF

byte_AB70:	MOVEXY	0,2
		.BYTE	$A5,"About half the rumors you hear",$D,$D
		.BYTE	$A5,"in the Dungeon are false.",$D,$FF

byte_ABB0:	MOVEXY	0,2
		.BYTE	$A5,"Beware the screamer that",$D,$D
		.BYTE	$A5,"walks on the wind.",$D,$FF

byte_ABE3:	MOVEXY	0,3
		.BYTE	$A5,"Locked doors require skill to pass.",$D,$FF

byte_AC0C:	MOVEXY	0,3
		.BYTE	$A5,"Muggers can make powerful allies.",$D,$FF

byte_AC33:	MOVEXY	0,2
		.BYTE	$A5,"Occum gets the best weapons for his shop",$D,$D
		.BYTE	$A5,"by capturing them in a clever trap.",$D,$FF

byte_AC87:	MOVEXY	0,2
		.BYTE	$A5,"Keep an eye on your purse",$D,$D
		.BYTE	$A5,"if you sleep at the Sanctuary.",$D,$FF

byte_ACC7:	MOVEXY	0,2
		.BYTE	$A5,"There are magical baths",$D,$D
		.BYTE	$A5,"hidden on the fourth level.",$D,$FF

byte_AD02:	MOVEXY	0,3
		.BYTE	$A5,"All goblins have a hidden zipper.",$D,$FF

byte_AD29:	MOVEXY	0,3
		.BYTE	$A5,"Seek the leg of Jeerbeef.",$D,$FF

byte_AD48:	MOVEXY	0,3
		.BYTE	$A5,"Be kind to zombies.",$D,$FF

byte_AD61:	MOVEXY	0,2
		.BYTE	$A5,"The third level of the dungeon",$D,$D
		.BYTE	$A5,"is patrolled by elephants.",$D,$FF

byte_ADA2:	MOVEXY	0,3
		.BYTE	$A5,"The Troglodytes are valuable friends.",$D,$FF

byte_ADCD:	MOVEXY	0,3
		.BYTE	$A5,"Don't drink from the fountains.",$D,$FF

byte_ADF2:	MOVEXY	0,2
		.BYTE	$A5,"The Troll Tyrant is fair",$D,$D
		.BYTE	$A5,"and honorable.",$D,$FF

byte_AE21:	MOVEXY	0,3
		.BYTE	$A5,"The Goblin Lord is a decent fellow.",$D,$FF

byte_AE4A:	MOVEXY	0,2
		.BYTE	$A5,"Black Magic is more powerful",$D,$D
		.BYTE	$A5,"than White Magic.",$D,$FF

byte_AE80:	MOVEXY	0,2
		.BYTE	$A5,"The Thieves' Guild is a",$D,$D
		.BYTE	$A5,"Trustworthy organization.",$D,$FF

byte_AEB9:	MOVEXY	0,3
		.BYTE	$A5,"My dog told me to watch out for you.",$D,$FF

byte_AEE3:	MOVEXY	0,2
		.BYTE	$A5,"Seek magical knowledge",$D,$D
		.BYTE	$A5,"at the Green Wizards Academy.",$D,$FF

byte_AF1F:	MOVEXY	0,2
		.BYTE	$A5,"Never eat anything",$D,$D
		.BYTE	$A5,"you didn't kill yourself.",$D,$FF

byte_AF53:	MOVEXY	0,3
		.BYTE	$A5,"The Red Wizards teach the Black Arts.",$D,$FF

byte_AF7E:	MOVEXY	0,2
		.BYTE	$A5,"Beware the Clown that",$D,$D
		.BYTE	$A5,"laughs by the bedside.",$D,$FF

byte_AFB2:	MOVEXY	0,2
		.BYTE	$A5,"The Guilds conspire together",$D,$D
		.BYTE	$A5,"against the King.",$D,$FF
	
byte_AFE8:	MOVEXY	0,2
		.BYTE	$A5,"Those about to die dwell beneath",$D,$D
		.BYTE	$A5,"the Arena on the third level.",$D,$FF

byte_B02E:	MOVEXY	0,3
		.BYTE	$A5,"They need a new jester at the Palace.",$D,$FF
	
byte_B059:	MOVEXY	0,2
		.BYTE	$A5,"The Palace Prison is full of",$D,$D
		.BYTE	$A5,"convicts and madmen.",$D,$FF

byte_B092:	MOVEXY	0,3
		.BYTE	$A5,"Beware the boatman on the second level.",$D,$FF

byte_B0BF:	MOVEXY	0,2
		.BYTE	$A5,"There is a fountain on the fourth level",$D,$D
		.BYTE	$A5,"that makes you invulnerable.",$D,$FF

byte_B10B:	MOVEXY	0,3
		.BYTE	$A5,"Mutilation has its good points.",$D,$FF

byte_B130:	MOVEXY	0,3
		.BYTE	$A5,"Beware of the poisoner named Lucky.",$D,$FF

byte_B159:	MOVEXY	0,2
		.BYTE	$A5,"The Clothes Horse will let you ride him",$D,$D
		.BYTE	$A5,"if you bring him a nice hat.",$D,$FF

byte_B1A5:	MOVEXY	0,3
		.BYTE	$A5,"Demons are great guys.",$D,$FF
	
byte_B1C1:	MOVEXY	0,3
		.BYTE	$A5,"Seek the Dwarf by the Wharf.",$D,$FF
	
byte_B1E3:	MOVEXY	0,2
		.BYTE	$A5,"The fountain on the third level",$D,$D
		.BYTE	$A5,"flows directly from Hell.",$D,$FF

byte_B224:	MOVEXY	0,3
		.BYTE	$A5,"The Great Wyrm likes to bluff.",$D,$FF

byte_B248:	MOVEXY	0,2
		.BYTE	$A5,"The third level is actually",$D,$D
		.BYTE	$A5,"safer than the first.",$D,$FF

byte_B281:	MOVEXY	0,2
		.BYTE	$A5,"If you push something hard enough,",$D,$D
		.BYTE	$A5,"it will fall over.",$D,$FF

byte_B2BE:	MOVEXY	0,2
		.BYTE	$A5,"Two and two does not always equal four",$D,$D
		.BYTE	$A5,"on the fourth level.",$D,$FF

byte_B301:	MOVEXY	0,2
		.BYTE	$A5,"Seek the teleporters",$D,$D
		.BYTE	$A5,"to rapidly travel The Dungeon.",$D,$FF

byte_B33C:	MOVEXY	0,2
		.BYTE	$A5,"Look out for the guy",$D,$D
		.BYTE	$A5,"with the high arches in his feet.",$D,$FF

byte_B37A:	MOVEXY	0,2
		.BYTE	$A5,"Exploring the third level",$D,$D
		.BYTE	$A5,"requires high stamina.",$D,$FF

byte_B3B2:	MOVEXY	0,3
		.BYTE	$A5,"The one-winged dog flies tonight.",$D,$FF

byte_B3D9:	MOVEXY	0,2
		.BYTE	$A5,"You can get rich quick",$D,$D
		.BYTE	$A5,"on the fourth level.",$D,$FF

byte_B40C:	MOVEXY	0,3
		.BYTE	$A5,"Armor takes skill to use well.",$D,$FF

byte_B430:	MOVEXY	0,2
		.BYTE	$A5,"An unspeakable horror dwells",$D,$D
		.BYTE	$A5,"at the center of time.",$D,$FF

byte_B46B:	MOVEXY	0,3
		.BYTE	$A5,"Avoid the elf in the raincoat.",$D,$FF

byte_B48F:	MOVEXY	0,2
		.BYTE	$A5,"Quest for the man",$D,$D
		.BYTE	$A5,"in the purple trousers.",$D,$FF

byte_B4C0:	MOVEXY	0,2
		.BYTE	$A5,"Never allow an enemy to surrender,",$D,$D
		.BYTE	$A5,"They have nothing true to say.",$D,$FF

byte_B509:	MOVEXY	0,2
		.BYTE	$A5,"Walk backwards through",$D,$D
		.BYTE	$A5,"the Hall of Mirrors.",$D,$FF

byte_B53C:	MOVEXY	0,2
		.BYTE	$A5,"There's money to be made",$D,$D
		.BYTE	$A5,"in the blacksmithing trade.",$D,$FF
		.RES	120,$00
