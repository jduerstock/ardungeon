
		.include	"globals.inc"

		.ORG	$9EF0
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
		.BYTE $A5,"A sly looking stranger sits down.",$D,$FF

byte_A003:	MOVEXY	0,2
		.BYTE $A5,"A sloppy guy stumbles in.",$D,$FF

byte_A022:	MOVEXY	0,2
		.BYTE $A5,"A dwarf wearing a raincoat walks over.",$D,$FF

byte_A04E:	MOVEXY	0,1
		.BYTE $A5,"A human wearing a fur-lined outfit",$D,$D
		.BYTE $A5,"says ",$22,"Hello Adventurer!",$22,$D,$FF

byte_A091:	MOVEXY	0,2
		.BYTE $A5,"A large, burly human approaches.",$D,$FF

byte_A0B7:	MOVEXY	0,1
		.BYTE $A5,"It's too bad they beefed up",$D,$D
		.BYTE $A5,"the security in the Dungeon.",$D,$D
		.BYTE $A5,"It used to be an easy life stealing",$D,$D
		.BYTE $A5,"from others.",$D,$FF

byte_A12C:	MOVEXY	0,2
		.BYTE $A5,"It's been...",$D,$D
		.BYTE $A5,"Why, I can't remember the",$D,$D
		.BYTE $A5,"last time I've had a drink.",$D,$FF

byte_A178:	MOVEXY	0,1
		.BYTE $A5,"I'm tired. I've just finished",$D,$D
		.BYTE $A5,"a show in The City. I hate",$D,$D
		.BYTE $A5,"dancing, but it's a living.",$D,$FF

byte_A1D6:	MOVEXY	0,1
		.BYTE $A5,"I've just lost a third of",$D,$D
		.BYTE $A5,"what I own. You sure can't",$D,$D
		.BYTE $A5,"trust the banks around here.",$D,$FF

byte_A231:	MOVEXY	0,2
		.BYTE $A5,"Greetings Adventurer.",$D,$D
		.BYTE $A5,"I'm known as Salin Wauthra.",$D,$FF

byte_A26A:	MOVEXY	0,2
		.BYTE $A5,"A wise oracle dwells beneath",$D,$D
		.BYTE $A5,"the Floating Gate.",$D,$FF

byte_A2A1:	MOVEXY	0,2
		.BYTE $A5,"Bank vault basements can be found",$D,$D
		.BYTE $A5,"on the first level.",$D,$FF

byte_A2DE:	MOVEXY	0,3
		.BYTE $A5,"Acrinimiril's Tomb is haunted.",$D,$FF

byte_A302:	MOVEXY	0,2
		.BYTE $A5,"The Chapel dispenses",$D,$D
		.BYTE $A5,"pragmatic salvation",$D,$FF

byte_A332:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F20o
		.BYTE $A5
aAFountainThatH:.BYTE "A fountain that heals wounds"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIsOnTheFirstLe:.BYTE "is on the first level."
		.BYTE $D
		.BYTE $FF
byte_A36D:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F22o
		.BYTE $A5
aTheTrollKingEa:.BYTE "The Troll King eats"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aPunksLikeYouFo:.BYTE "punks like you for breakfast."
		.BYTE $D
		.BYTE $FF
byte_A3A6:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F24o
		.BYTE $A5
aTheGoblinKing:	.BYTE "The Goblin King"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIsAnUnderhande:.BYTE "is an underhanded fink.",$D
		.BYTE $FF
byte_A3D5:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F26o
		.BYTE $A5
aThereIsNoHonor:.BYTE "There is no honor among Thieves."
		.BYTE $D
		.BYTE $FF
byte_A3FB:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F28o
		.BYTE $A5
aAllMagicHasAPr:.BYTE "All magic has a price."
		.BYTE $D
		.BYTE $FF
byte_A417:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F2Ao
		.BYTE $A5
aTheGuildsOfThe:.BYTE "The Guilds of the undercity"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWarUponEachOth:.BYTE "war upon each other."
		.BYTE $D
		.BYTE $FF
byte_A44F:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F2Co
		.BYTE $A5
aTheRiverLeadsT:.BYTE "The river leads to"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aLandsOfTheUnde:.BYTE "lands of the Undead."
		.BYTE $D
		.BYTE $FF
byte_A47E:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F2Eo
		.BYTE $A5
aThereIsAFounta:.BYTE "There is a fountain that cures disease"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOnTheSecondLev:.BYTE "on the second level."
		.BYTE $D
		.BYTE $FF
byte_A4C1:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F30o
		.BYTE $A5
aYouCanAlwaysTr:.BYTE "You can always trust the guards."
		.BYTE $D
		.BYTE $FF
byte_A4E7:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F32o
		.BYTE $A5
aStepLightlyInT:.BYTE "Step lightly in the crystal caverns."
		.BYTE $D
		.BYTE $FF
byte_A511:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F34o
		.BYTE $A5
aLuckySGotTheBr:.BYTE "Lucky's got the brew for you."
		.BYTE $D
		.BYTE $FF
byte_A534:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F36o
		.BYTE $A5
aYouCanTrustWha:.BYTE "You can trust what you hear"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aFromTheHorseSM:.BYTE "from the Horse's mouth."
		.BYTE $D
		.BYTE $FF
byte_A56F:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F38o
		.BYTE $A5
aNeverTrustADem:.BYTE "Never trust a demon."
		.BYTE $D
		.BYTE $FF
byte_A589:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F3Ao
		.BYTE $A5
aTheDwarfOnTheS:.BYTE "The dwarf on the second level is"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aInterestedInOl:.BYTE "interested in old weapons and armor."
		.BYTE $D
		.BYTE $FF
byte_A5D6:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F3Co
		.BYTE $A5
aASpecialFounta:.BYTE "A special fountain on the third level"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aCanEnlivenYour:.BYTE "can enliven your day."
		.BYTE $D
		.BYTE $FF
byte_A619:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F3Eo
		.BYTE $A5
aThereIsADreade:.BYTE "There is a dreaded dragon"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOnTheThirdLeve:.BYTE "on the third level."
		.BYTE $D
		.BYTE $FF
byte_A64E:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F40o
		.BYTE $A5
aBewareTheGaunt:.BYTE "Beware the gauntlet of doom"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOnTheThirdLe_0:.BYTE "on the third level."
		.BYTE $D
		.BYTE $FF
byte_A685:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F42o
		.BYTE $A5
aThereIsAVerySp:.BYTE "There is a very special door"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aHiddenOnTheThi:.BYTE "hidden on the third level."
		.BYTE $D
		.BYTE $FF
byte_A6C4:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F44o
		.BYTE $A5
aEvilMagicTakes:.BYTE "Evil magic takes a special toll."
		.BYTE $D
		.BYTE $FF
byte_A6EA:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F46o
		.BYTE $A5
aSeekTheWaysOfT:.BYTE "Seek the ways of the Wizards of Law."
		.BYTE $D
		.BYTE $FF
byte_A714:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F48o
		.BYTE $A5
aWeReBeingWatch:.BYTE "We're being watched all the time."
		.BYTE $D
		.BYTE $FF
byte_A73B:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F4Ao
		.BYTE $A5
aTheMusicHeardI:.BYTE "The music heard in the tavern"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aComesFromBeyon:.BYTE "comes from beyond this world."
		.BYTE $D
		.BYTE $FF
byte_A77E:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F4Co
		.BYTE $A5
aTheTemptations:.BYTE "The temptations of evil are strong."
		.BYTE $D
		.BYTE $FF
byte_A7A7:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F4Eo
		.BYTE $A5
aFruitJuiceIs:	.BYTE "Fruit juice is"
		.BYTE $D
		.BYTE $A5
aVeryInvigorati:.BYTE "very invigorating."
		.BYTE $D
		.BYTE $FF
byte_A7CF:	.BYTE $A6,  0,	1	; DATA XREF: RAM:9F50o
		.BYTE $A5
aManyGreatTreas:.BYTE "Many great treasures"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAreCarefullyGu:.BYTE "are carefully guarded."
		.BYTE $D
		.BYTE $FF
byte_A802:	.BYTE $A6,  0,	1	; DATA XREF: RAM:9F52o
		.BYTE $A5
aBeSureYourFrie:.BYTE "Be sure your friends"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAreNotYourFoes:.BYTE "are not your foes."
		.BYTE $D
		.BYTE $FF
byte_A831:	.BYTE $A6,  0,	1	; DATA XREF: RAM:9F54o
		.BYTE $A5
aAlwaysLeaveATi:.BYTE "Always leave a tip"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aForServicesRen:.BYTE "for services rendered."
		.BYTE $D
		.BYTE $FF
byte_A862:	.BYTE $A6,  0,	1	; DATA XREF: RAM:9F56o
		.BYTE $A5
aThePureInHeart:.BYTE "The pure in heart know"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aHowToShowMercy:.BYTE "how to show mercy."
		.BYTE $D
		.BYTE $FF
byte_A893:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F58o
		.BYTE $A5
aTheOracleAlway:.BYTE "The Oracle always tells the truth."
		.BYTE $D
		.BYTE $FF
byte_A8BB:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F5Ao
		.BYTE $A5
aNeverFightFire:.BYTE "Never fight fire with fire."
		.BYTE $D
		.BYTE $FF
byte_A8DC:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F5Co
		.BYTE $A5
aTheTrulyBraveA:.BYTE "The truly brave are not"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAfraidToMakePe:.BYTE "afraid to make peace."
		.BYTE $D
		.BYTE $FF
byte_A911:	.BYTE $A6,  0,	1	; DATA XREF: RAM:9F5Eo
aInTheRoomsOfCo:.BYTE "In the Rooms of Confusion,"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aSeekOutASecret:.BYTE "seek out a secret door."
		.BYTE $D
		.BYTE $FF
byte_A94A:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F60o
		.BYTE $A5
aFineClothingAt:.BYTE "Fine clothing attracts more friends."
		.BYTE $D
		.BYTE $FF
byte_A974:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F62o
		.BYTE $A5
aGluttonyIsHaza:.BYTE "Gluttony is hazardous to your health."
		.BYTE $D
		.BYTE $FF
byte_A99F:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F64o
		.BYTE $A5
aSomeTreasuresA:.BYTE "Some treasures are better left alone."
		.BYTE $D
		.BYTE $FF
byte_A9CA:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F66o
		.BYTE $A5
aCrossTheRiverA:.BYTE "Cross the river at midnight."
		.BYTE $D
		.BYTE $FF
byte_A9EC:	.BYTE $A6,  0,	1	; DATA XREF: RAM:9F68o
		.BYTE $A5
aOneMagicRing:	.BYTE "One magic ring"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aCanCauseALotOf:.BYTE "can cause a lot of trouble."
		.BYTE $D
		.BYTE $FF
byte_AA1E:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F6Ao
		.BYTE $A5
aAnsweringRiddl:.BYTE "Answering riddles brings great reward."
		.BYTE $D
		.BYTE $FF
byte_AA4A:	.BYTE $A6,  0,	1	; DATA XREF: RAM:9F6Co
		.BYTE $A5
aGiveAGenerousD:.BYTE "Give a generous donation at"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheRetreat_:	.BYTE "the Retreat."
		.BYTE $D
		.BYTE $FF
byte_AA7A:	.BYTE $A6,  0,	1	; DATA XREF: RAM:9F6Eo
		.BYTE $A5
aBeCarefulWhenD:.BYTE "Be careful when dealing with"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aHonestOmarAndH:.BYTE $22,"Honest",$22," Omar and his brother Jeff."
		.BYTE $D
		.BYTE $FF
byte_AAC2:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F70o
		.BYTE $A5
aTheDwarfLovesS:.BYTE "The Dwarf loves sparkling gems."
		.BYTE $D
		.BYTE $FF
byte_AAE7:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F72o
		.BYTE $A5
aGreedyAdventur:.BYTE "Greedy adventurers are often visited by"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aByTheDevourer:	.BYTE "by the Devourer!"
		.BYTE $D
		.BYTE $FF
byte_AB27:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F74o
		.BYTE $A5
aReadTheGuidebo:.BYTE "Read the Guidebook thoroughly!"
		.BYTE $D
		.BYTE $FF
byte_AB4B:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F76o
		.BYTE $A5
aSermonsAreGood:.BYTE "Sermons are good for your soul."
		.BYTE $D
		.BYTE $FF
byte_AB70:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F78o
		.BYTE $A5
aAboutHalfTheRu:.BYTE "About half the rumors you hear"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aInTheDungeonAr:.BYTE "in the Dungeon are false."
		.BYTE $D
		.BYTE $FF
byte_ABB0:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F7Ao
		.BYTE $A5
aBewareTheScrea:.BYTE "Beware the screamer that"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWalksOnTheWind:.BYTE "walks on the wind."
		.BYTE $D
		.BYTE $FF
byte_ABE3:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F7Co
		.BYTE $A5
aLockedDoorsReq:.BYTE "Locked doors require skill to pass."
		.BYTE $D
		.BYTE $FF
byte_AC0C:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F7Eo
		.BYTE $A5
aMuggersCanMake:.BYTE "Muggers can make powerful allies."
		.BYTE $D
		.BYTE $FF
byte_AC33:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F80o
		.BYTE $A5
aOccumGetsTheBe:.BYTE "Occum gets the best weapons for his shop"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aByCapturingThe:.BYTE "by capturing them in a clever trap."
		.BYTE $D
		.BYTE $FF
byte_AC87:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F82o
		.BYTE $A5
aKeepAnEyeOnYou:.BYTE "Keep an eye on your purse"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIfYouSleepAtTh:.BYTE "if you sleep at the Sanctuary."
		.BYTE $D
		.BYTE $FF
byte_ACC7:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F84o
		.BYTE $A5
aThereAreMagica:.BYTE "There are magical baths"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aHiddenOnTheFou:.BYTE "hidden on the fourth level."
		.BYTE $D
		.BYTE $FF
byte_AD02:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F86o
		.BYTE $A5
aAllGoblinsHave:.BYTE "All goblins have a hidden zipper."
		.BYTE $D
		.BYTE $FF
byte_AD29:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F88o
		.BYTE $A5
aSeekTheLegOfJe:.BYTE "Seek the leg of Jeerbeef."
		.BYTE $D
		.BYTE $FF
byte_AD48:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F8Ao
		.BYTE $A5
aBeKindToZombie:.BYTE "Be kind to zombies."
		.BYTE $D
		.BYTE $FF
byte_AD61:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F8Co
		.BYTE $A5
aTheThirdLevelO:.BYTE "The third level of the dungeon"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIsPatrolledByE:.BYTE "is patrolled by elephants."
		.BYTE $D
		.BYTE $FF
byte_ADA2:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F8Eo
		.BYTE $A5
aTheTroglodytes:.BYTE "The Troglodytes are valuable friends."
		.BYTE $D
		.BYTE $FF
byte_ADCD:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F90o
		.BYTE $A5
aDonTDrinkFromT:.BYTE "Don't drink from the fountains."
		.BYTE $D
		.BYTE $FF
byte_ADF2:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F92o
		.BYTE $A5
aTheTrollTyrant:.BYTE "The Troll Tyrant is fair"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAndHonorable_:	.BYTE "and honorable."
		.BYTE $D
		.BYTE $FF
byte_AE21:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F94o
		.BYTE $A5
aTheGoblinLordI:.BYTE "The Goblin Lord is a decent fellow."
		.BYTE $D
		.BYTE $FF
byte_AE4A:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F96o
		.BYTE $A5
aBlackMagicIsMo:.BYTE "Black Magic is more powerful"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThanWhiteMagic:.BYTE "than White Magic."
		.BYTE $D
		.BYTE $FF
byte_AE80:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F98o
		.BYTE $A5
aTheThievesGuil:.BYTE "The Thieves' Guild is a"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTrustworthyOrg:.BYTE "Trustworthy organization.",$D
		.BYTE $FF
byte_AEB9:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9F9Ao
		.BYTE $A5
aMyDogToldMeToW:.BYTE "My dog told me to watch out for you."
		.BYTE $D
		.BYTE $FF
byte_AEE3:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F9Co
		.BYTE $A5
aSeekMagicalKno:.BYTE "Seek magical knowledge"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAtTheGreenWiza:.BYTE "at the Green Wizards Academy."
		.BYTE $D
		.BYTE $FF
byte_AF1F:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9F9Eo
		.BYTE $A5
aNeverEatAnythi:.BYTE "Never eat anything"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aYouDidnTKillYo:.BYTE "you didn't kill yourself.",$D
		.BYTE $FF
byte_AF53:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9FA0o
		.BYTE $A5
aTheRedWizardsT:.BYTE "The Red Wizards teach the Black Arts."
		.BYTE $D
		.BYTE $FF
byte_AF7E:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FA2o
		.BYTE $A5
aBewareTheClown:.BYTE "Beware the Clown that"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aLaughsByTheBed:.BYTE "laughs by the bedside.",$D
		.BYTE $FF
byte_AFB2:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FA4o
		.BYTE $A5
aTheGuildsConsp:.BYTE "The Guilds conspire together"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAgainstTheKing:.BYTE "against the King."
		.BYTE $D
		.BYTE $FF
byte_AFE8:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FA6o
		.BYTE $A5
aThoseAboutToDi:.BYTE "Those about to die dwell beneath"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheArenaOnTheT:.BYTE "the Arena on the third level."
		.BYTE $D
		.BYTE $FF
byte_B02E:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9FA8o
		.BYTE $A5
aTheyNeedANewJe:.BYTE "They need a new jester at the Palace."
		.BYTE $D
		.BYTE $FF
byte_B059:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FAAo
		.BYTE $A5
aThePalacePriso:.BYTE "The Palace Prison is full of"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aConvictsAndMad:.BYTE "convicts and madmen.",$D
		.BYTE $FF
byte_B092:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9FACo
		.BYTE $A5
aBewareTheBoatm:.BYTE "Beware the boatman on the second level."
		.BYTE $D
		.BYTE $FF
byte_B0BF:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FAEo
		.BYTE $A5
aThereIsAFoun_0:.BYTE "There is a fountain on the fourth level"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThatMakesYouIn:.BYTE "that makes you invulnerable."
		.BYTE $D
		.BYTE $FF
byte_B10B:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9FB0o
		.BYTE $A5
aMutilationHasI:.BYTE "Mutilation has its good points."
		.BYTE $D
		.BYTE $FF
byte_B130:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9FB2o
		.BYTE $A5
aBewareOfThePoi:.BYTE "Beware of the poisoner named Lucky."
		.BYTE $D
		.BYTE $FF
byte_B159:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FB4o
		.BYTE $A5
aTheClothesHors:.BYTE "The Clothes Horse will let you ride him"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIfYouBringHimA:.BYTE "if you bring him a nice hat."
		.BYTE $D
		.BYTE $FF
byte_B1A5:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9FB6o
		.BYTE $A5
aDemonsAreGreat:.BYTE "Demons are great guys."
		.BYTE $D
		.BYTE $FF
byte_B1C1:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9FB8o
		.BYTE $A5
aSeekTheDwarfBy:.BYTE "Seek the Dwarf by the Wharf."
		.BYTE $D
		.BYTE $FF
byte_B1E3:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FBAo
		.BYTE $A5
aTheFountainOnT:.BYTE "The fountain on the third level"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aFlowsDirectlyF:.BYTE "flows directly from Hell."
		.BYTE $D
		.BYTE $FF
byte_B224:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9FBCo
		.BYTE $A5
aTheGreatWyrmLi:.BYTE "The Great Wyrm likes to bluff."
		.BYTE $D
		.BYTE $FF
byte_B248:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FBEo
		.BYTE $A5
aTheThirdLevelI:.BYTE "The third level is actually"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aSaferThanTheFi:.BYTE "safer than the first."
		.BYTE $D
		.BYTE $FF
byte_B281:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FC0o
		.BYTE $A5
aIfYouPushSomet:.BYTE "If you push something hard enough,"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aItWillFallOver:.BYTE "it will fall over."
		.BYTE $D
		.BYTE $FF
byte_B2BE:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FC2o
		.BYTE $A5
aTwoAndTwoDoesN:.BYTE "Two and two does not always equal four"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOnTheFourthLev:.BYTE "on the fourth level."
		.BYTE $D
		.BYTE $FF
byte_B301:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FC4o
		.BYTE $A5
aSeekTheTelepor:.BYTE "Seek the teleporters"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aToRapidlyTrave:.BYTE "to rapidly travel The Dungeon."
		.BYTE $D
		.BYTE $FF
byte_B33C:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FC6o
		.BYTE $A5
aLookOutForTheG:.BYTE "Look out for the guy"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWithTheHighArc:.BYTE "with the high arches in his feet."
		.BYTE $D
		.BYTE $FF
byte_B37A:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FC8o
		.BYTE $A5
aExploringTheTh:.BYTE "Exploring the third level"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aRequiresHighSt:.BYTE "requires high stamina."
		.BYTE $D
		.BYTE $FF
byte_B3B2:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9FCAo
		.BYTE $A5
aTheOneWingedDo:.BYTE "The one-winged dog flies tonight."
		.BYTE $D
		.BYTE $FF
byte_B3D9:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FCCo
		.BYTE $A5
aYouCanGetRichQ:.BYTE "You can get rich quick"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOnTheFourthL_0:.BYTE "on the fourth level."
		.BYTE $D
		.BYTE $FF
byte_B40C:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9FCEo
		.BYTE $A5
aArmorTakesSkil:.BYTE "Armor takes skill to use well."
		.BYTE $D
		.BYTE $FF
byte_B430:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FD0o
		.BYTE $A5
aAnUnspeakableH:.BYTE "An unspeakable horror dwells"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAtTheCenterOfT:.BYTE "at the center of time."
		.BYTE $D
		.BYTE $FF
byte_B46B:	.BYTE $A6,  0,	3	; DATA XREF: RAM:9FD2o
		.BYTE $A5
aAvoidTheElfInT:.BYTE "Avoid the elf in the raincoat."
		.BYTE $D
		.BYTE $FF
byte_B48F:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FD4o
		.BYTE $A5
aQuestForTheMan:.BYTE "Quest for the man"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aInThePurpleTro:.BYTE "in the purple trousers."
		.BYTE $D
		.BYTE $FF
byte_B4C0:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FD6o
		.BYTE $A5
aNeverAllowAnEn:.BYTE "Never allow an enemy to surrender,"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheyHaveNothin:.BYTE "They have nothing true to say."
		.BYTE $D
		.BYTE $FF
byte_B509:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FD8o
		.BYTE $A5
aWalkBackwardsT:.BYTE "Walk backwards through"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheHallOfMirro:.BYTE "the Hall of Mirrors."
		.BYTE $D
		.BYTE $FF
byte_B53C:	.BYTE $A6,  0,	2	; DATA XREF: RAM:9FDAo
		.BYTE $A5
aThereSMoneyToB:.BYTE "There's money to be made"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aInTheBlacksmit:.BYTE "in the blacksmithing trade."
		.BYTE $D
		.BYTE $FF
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0


		.END
