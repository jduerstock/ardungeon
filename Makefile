#
# Makefile - makefile for ardungeon
#
# Copyright (c) 2008 Jason Duerstock
#
# This file is part of the ardungeon project which is an attempt to
# reverse engineer "Alternate Reality: The Dungeon" for the Atari 8-bit
# computer. 
#
# ardungeon is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# as published by the Free Software Foundation.
#
# ardungeon is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with ardungeon; if not, write to the 
# Free Software Foundation, Inc.
# 51 Franklin Street, Fifth Floor
# Boston, MA  02110-1301  USA
#

CA=ca65
RM=rm -f
AFLAGS=-g
ASM_SOURCES= \
	11-s001.asm \
	11-s002.asm \
	11-s006.asm \
	11-s011.asm \
	11-s016.asm \
	11-s017.asm \
	11-s205.asm \
	11-s225.asm \
	11-s258.asm \
	11-s311.asm \
	11-s376.asm \
	11-s451.asm \
	11-s466.asm \
	11-s480.asm \
	11-s517.asm \
	11-s679.asm \
	21-s297.asm \
	22-s365.asm \
	31-s671.asm \
	31-s682.asm \
	32-s001.asm \
	32-s034.asm \
	32-s091.asm \
	32-s126.asm \
	32-s183.asm \
	32-s262.asm \
	32-s327.asm \
	32-s382.asm \
	32-s431.asm \
	32-s494.asm \
	32-s510.asm \
	32-s526.asm \
	32-s553.asm \
	32-s566.asm \
	32-s575.asm \
	32-s622.asm \
	32-s655.asm \
	32-s684.asm \
	32-s695.asm

ASM2_SOURCES= \
	11-s676.asm 11-s677.asm \
	11-s682.asm \
	21-s001.asm \
	21-s010.asm 21-s011.asm \
	21-s051.asm 21-s052.asm \
	21-s092.asm 21-s093.asm \
	21-s133.asm 21-s134.asm \
	21-s174.asm 21-s175.asm \
	21-s215.asm 21-s216.asm \
	21-s256.asm 21-s257.asm \
	21-s297.asm 21-s298.asm \
	21-s341.asm 21-s342.asm \
	21-s385.asm 21-s386.asm \
	21-s429.asm 21-s430.asm \
	21-s473.asm 21-s474.asm \
	21-s517.asm 21-s518.asm \
	21-s561.asm 21-s562.asm \
	21-s572.asm 21-s573.asm \
	21-s639.asm 21-s640.asm \
	21-s652.asm 21-s653.asm \
	21-s697.asm \
	22-s001.asm 22-s002.asm \
	22-s036.asm 22-s037.asm \
	22-s093.asm 22-s094.asm \
	22-s134.asm 22-s135.asm \
	22-s167.asm 22-s168.asm \
	22-s198.asm 22-s199.asm \
	22-s263.asm 22-s264.asm \
	22-s322.asm 22-s323.asm \
	22-s408.asm 22-s409.asm \
	22-s431.asm 22-s432.asm \
	22-s494.asm 22-s495.asm \
	22-s509.asm 22-s510.asm \
	22-s518.asm 22-s519.asm \
	22-s536.asm 22-s537.asm \
	22-s547.asm \
	31-s001.asm 31-s002.asm \
	31-s114.asm 31-s115.asm \
	31-s199.asm 31-s200.asm \
	31-s236.asm \
	31-s588.asm \
	31-s589.asm 31-s590.asm \
	31-s604.asm 31-s605.asm \
	32-s034.asm 32-s035.asm \
	32-s526.asm 32-s527.asm \

OBJECTS=$(ASM_SOURCES:.asm=.o)

BINARIES=$(ASM_SOURCES:.asm=.bin)

OLD_BINARIES=$(ASM2_SOURCES:.asm=.bin)

SUMS=$(ASM_SOURCES:.asm=.sha1)

all: ar11.img ar21.img ar22.img ar31.img ar32.img

%.o: %.asm
	$(CA) $(AFLAGS) -o $@ $<

$(BINARIES) 11-s680.bin: $(OBJECTS)
	ld65 -C 11-s001.cfg $(OBJECTS)
	sha1sum -c checksums.sha1

11-s259.bin.crypt: 11-s259.bin
	./encrypt.py 11-s259.bin 4102001a983277ddd64843acbaf7d040

11-s312.bin.crypt: 11-s312.bin
	./encrypt.py 11-s312.bin 413700204ce23c41cde1a12857f6d83a

11-s377.bin.crypt: 11-s377.bin
	./encrypt.py 11-s377.bin 4178002547123a1dffaaa0d4ac13cc22

11-s452.bin.crypt: 11-s452.bin
	./encrypt.py 11-s452.bin 41c300074f7512e77eb2f1b645eb0dcd

11-s467.bin.crypt: 11-s467.bin
	./encrypt.py 11-s467.bin 41d200064bc5aea0920931376c30af6e

11-s481.bin.crypt: 11-s481.bin
	./encrypt.py 11-s481.bin 41e00012ce2968152c088c20cabc4d9d

11-s518.bin.crypt: 11-s518.bin
	./encrypt.py 11-s518.bin 4205004fd4eeca7c58be41ff111a97bd

11-s676.bin: 11-s676.asm
	cl65 --start-addr 0x0100 -t none 11-s676.asm -o 11-s676.bin
	sha1sum -c 11-s676.sha1

11-s677.bin: 11-s677.asm
	cl65 --start-addr 0x9000 -t none 11-s677.asm -o 11-s677.bin
	sha1sum -c 11-s677.sha1
	./encrypt.py 11-s677.bin 42a4000198528330ebd15088a888464a

11-s680.bin.crypt: 11-s680.bin
	./encrypt.py 11-s680.bin 42a70001985273ef37bb9374faa9db68

11-s682.bin: 11-s682.asm
	cl65 --start-addr 0x1400 -t none 11-s682.asm -o 11-s682.bin
	sha1sum -c 11-s682.sha1

21-s001.bin: 21-s001.asm
	ca65 -o 21-s001.o 21-s001.asm
	ld65 -o 21-s001.bin -C 21-s001.cfg 21-s001.o
	sha1sum -c 21-s001.sha1

21-s010.bin: 21-s010.asm
	cl65 --start-addr 0x0100 -t none 21-s010.asm -o 21-s010.bin
	sha1sum -c 21-s010.sha1

21-s011.bin: 21-s011.asm
	cl65 --start-addr 0xAC00 -t none 21-s011.asm -o 21-s011.bin
	sha1sum -c 21-s011.sha1
	./encrypt.py 21-s011.bin 480a00140701d7aad31a3267b2a36fe6

21-s051.bin: 21-s051.asm
	cl65 --start-addr 0x0100 -t none 21-s051.asm -o 21-s051.bin
	sha1sum -c 21-s051.sha1

21-s052.bin: 21-s052.asm
	cl65 --start-addr 0xAC00 -t none 21-s052.asm -o 21-s052.bin
	sha1sum -c 21-s052.sha1
	./encrypt.py 21-s052.bin 4833001465901386ea070ccfc955bdf0

21-s092.bin: 21-s092.asm
	cl65 --start-addr 0x0100 -t none 21-s092.asm -o 21-s092.bin
	sha1sum -c 21-s092.sha1

21-s093.bin: 21-s093.asm
	cl65 --start-addr 0xAC00 -t none 21-s093.asm -o 21-s093.bin
	sha1sum -c 21-s093.sha1
	./encrypt.py 21-s093.bin 485c001408c35769c3630e0a201cbeaa

21-s133.bin: 21-s133.asm
	cl65 --start-addr 0x0100 -t none 21-s133.asm -o 21-s133.bin
	sha1sum -c 21-s133.sha1

21-s134.bin: 21-s134.asm
	cl65 --start-addr 0xAC00 -t none 21-s134.asm -o 21-s134.bin
	sha1sum -c 21-s134.sha1
	./encrypt.py 21-s134.bin 48850014f99125ed7ce0a9ead0cb01fe

21-s174.bin: 21-s174.asm
	cl65 --start-addr 0x0100 -t none 21-s174.asm -o 21-s174.bin
	sha1sum -c 21-s174.sha1

21-s175.bin: 21-s175.asm
	cl65 --start-addr 0xAC00 -t none 21-s175.asm -o 21-s175.bin
	sha1sum -c 21-s175.sha1
	./encrypt.py 21-s175.bin 48ae00140f440b8d1e26b98c5c7a8b98

21-s215.bin: 21-s215.asm
	cl65 --start-addr 0x0100 -t none $< -o $@
	sha1sum -c 21-s215.sha1

21-s216.bin: 21-s216.asm
	cl65 --start-addr 0xAC00 -t none $< -o $@
	sha1sum -c 21-s216.sha1
	./encrypt.py 21-s216.bin 48d700145c3854ea62676f9652bb2e66

21-s256.bin: 21-s256.asm
	cl65 --start-addr 0x0100 -t none $< -o $@
	sha1sum -c 21-s256.sha1

21-s257.bin: 21-s257.asm
	cl65 --start-addr 0xAC00 -t none $< -o $@
	sha1sum -c 21-s257.sha1
	./encrypt.py 21-s257.bin 49000014777d4ccee8a87674abfae899

21-s298.bin.crypt: 21-s298.bin
	./encrypt.py 21-s298.bin 49291015cfb36435a36778265e8742c4

21-s341.bin: 21-s341.asm
	cl65 --start-addr 0x0100 -t none $< -o $@
	sha1sum -c 21-s341.sha1

21-s342.bin: 21-s342.asm
	cl65 --start-addr 0x96F0 -t none $< -o $@
	sha1sum -c 21-s342.sha1
	./encrypt.py 21-s342.bin 495510150c73dbbdf8c1e78f1b638880

21-s385.bin: 21-s385.asm
	cl65 --start-addr 0x0100 -t none $< -o $@
	sha1sum -c 21-s385.sha1

21-s386.bin: 21-s386.asm
	cl65 --start-addr 0x96F0 -t none $< -o $@
	sha1sum -c 21-s386.sha1
	./encrypt.py 21-s386.bin 498110156789a346853f939ebe74c029

21-s429.bin: 21-s429.asm
	cl65 --start-addr 0x0100 -t none $< -o $@
	sha1sum -c 21-s429.sha1

21-s430.bin: 21-s430.asm
	cl65 --start-addr 0x96F0 -t none $< -o $@
	sha1sum -c 21-s430.sha1
	./encrypt.py 21-s430.bin 49ad10153ce930547e87e90ce699d934

21-s473.bin: 21-s473.asm
	cl65 --start-addr 0x0100 -t none $< -o $@
	sha1sum -c 21-s473.sha1

21-s474.bin: 21-s474.asm
	cl65 --start-addr 0x96F0 -t none $< -o $@
	sha1sum -c 21-s474.sha1
	./encrypt.py 21-s474.bin 49d9101558e47ef07dc15a4902399323

21-s517.bin: 21-s517.asm
	cl65 --start-addr 0x0100 -t none $< -o $@
	sha1sum -c 21-s517.sha1

21-s518.bin: 21-s518.asm
	cl65 --start-addr 0x96F0 -t none $< -o $@
	sha1sum -c 21-s518.sha1
	./encrypt.py 21-s518.bin 4a0510159e6c47b6757d09d1606fe295

21-s561.bin: 21-s561.asm
	cl65 --start-addr 0x0100 -t none $< -o $@
	sha1sum -c 21-s561.sha1

21-s562.bin: 21-s562.asm
	cl65 --start-addr 0x96F0 -t none $< -o $@
	sha1sum -c 21-s562.sha1
	./encrypt.py 21-s562.bin 4a3100059e9f856b4097a277650c3855

21-s572.bin: 21-s572.asm
	cl65 --start-addr 0x0100 -t none $< -o $@
	sha1sum -c 21-s572.sha1

21-s573.bin: 31-s605.asm
#	cl65 -v -v -v -v --start-addr 0x7600 -t none -D D2S1 31-s605.asm -o $@
	ca65 -D D2S1 -t none 31-s605.asm  -o 21-s573.o
	ld65 -S 0x7600 -t none -o 21-s573.bin 21-s573.o 
	sha1sum -c 21-s573.sha1
	./encrypt.py 21-s573.bin 4a3cf020b96d440d7354693bd1c29c78

21-s639.bin: 21-s639.asm
	cl65 --start-addr 0x0100 -t none $< -o $@
	sha1sum -c 21-s639.sha1

21-s640.bin: 21-s640.asm
	cl65 --start-addr 0x7600 -t none $< -o $@
	sha1sum -c 21-s640.sha1
	./encrypt.py 21-s640.bin 4a7f0006ef443ea2a15a6d2ccbeaa719

21-s652.bin: 21-s652.asm
	cl65 --start-addr 0x0100 -t none $< -o $@
	sha1sum -c 21-s652.sha1

21-s653.bin: 21-s653.asm
	cl65 --start-addr 0x7600 -t none $< -o $@
	sha1sum -c 21-s653.sha1
	./encrypt.py 21-s653.bin 4a8c00169cec8be6c28a80d7714853eb

21-s697.bin: 21-s697.asm
	cl65 --start-addr 0x1000 -t none $< -o $@
	sha1sum -c 21-s697.sha1

22-s001.bin: 22-s001.asm
	cl65 --start-addr 0x0100 -t none 22-s001.asm -o 22-s001.bin
	sha1sum -c 22-s001.sha1

22-s002.bin: 22-s002.asm
	cl65 --start-addr 0x7600 -t none 22-s002.asm -o 22-s002.bin
	sha1sum -c 22-s002.sha1
	./encrypt.py 22-s002.bin 4c01001186504a5424a90c7d0039d1a8

22-s036.bin: 22-s036.asm
	cl65 --start-addr 0x0100 -t none 22-s036.asm -o 22-s036.bin
	sha1sum -c 22-s036.sha1

22-s037.bin: 22-s037.asm
	cl65 --start-addr 0x7600 -t none 22-s037.asm -o 22-s037.bin
	sha1sum -c 22-s037.sha1
	./encrypt.py 22-s037.bin 4c24001c27979f0b09df260581395d49

22-s093.bin: 22-s093.asm
	cl65 --start-addr 0x0100 -t none 22-s093.asm -o 22-s093.bin
	sha1sum -c 22-s093.sha1

22-s094.bin: 22-s094.asm
	cl65 --start-addr 0x7600 -t none 22-s094.asm -o 22-s094.bin
	sha1sum -c 22-s094.sha1
	./encrypt.py 22-s094.bin 4c5d001478244b84acdb1b20c6310ae9

22-s134.bin: 22-s134.asm
	cl65 --start-addr 0x0100 -t none 22-s134.asm -o 22-s134.bin
	sha1sum -c 22-s134.sha1

22-s135.bin: 22-s135.asm
	cl65 --start-addr 0x7600 -t none 22-s135.asm -o 22-s135.bin
	sha1sum -c 22-s135.sha1
	./encrypt.py 22-s135.bin 4c8600109d95bd998fe6e377a3ba21ca

22-s167.bin: 22-s167.asm
	cl65 --start-addr 0x0100 -t none 22-s167.asm -o 22-s167.bin
	sha1sum -c 22-s167.sha1

22-s168.bin: 22-s168.asm
	cl65 --start-addr 0x7600 -t none 22-s168.asm -o 22-s168.bin
	sha1sum -c 22-s168.sha1
	./encrypt.py 22-s168.bin 4ca7000f70994ef6378acc8dac478494

22-s198.bin: 22-s198.asm
	cl65 --start-addr 0x0100 -t none 22-s198.asm -o 22-s198.bin
	sha1sum -c 22-s198.sha1

22-s199.bin: 22-s199.asm
	cl65 --start-addr 0x7600 -t none 22-s199.asm -o 22-s199.bin
	sha1sum -c 22-s199.sha1
	./encrypt.py 22-s199.bin 4cc600205b702188ee817322afd5716d

22-s263.bin: 22-s263.asm
	cl65 --start-addr 0x0100 -t none 22-s263.asm -o 22-s263.bin
	sha1sum -c 22-s263.sha1

22-s264.bin: 22-s264.asm
	cl65 --start-addr 0x7600 -t none 22-s264.asm -o 22-s264.bin
	sha1sum -c 22-s264.sha1
	./encrypt.py 22-s264.bin 4d070022e81d752c134e4b9d68059d22

22-s322.bin: 22-s322.asm
	cl65 --start-addr 0x0100 -t none 22-s322.asm -o 22-s322.bin
	sha1sum -c 22-s322.sha1

22-s323.bin: 22-s323.asm
	cl65 --start-addr 0x7600 -t none 22-s323.asm -o 22-s323.bin
	sha1sum -c 22-s323.sha1
	./encrypt.py 22-s323.bin 4d4c00103447f075cb8a1c2aa8059458

22-s366.bin.crypt: 22-s366.bin
	./encrypt.py 22-s366.bin 4d6d001583762d5fb6a7a9a80c21a204

22-s408.bin: 22-s408.asm
	cl65 --start-addr 0x0100 -t none 22-s408.asm -o 22-s408.bin
	sha1sum -c 22-s408.sha1

22-s409.bin: 22-s409.asm
	cl65 --start-addr 0x7600 -t none 22-s409.asm -o 22-s409.bin
	sha1sum -c 22-s409.sha1
	./encrypt.py 22-s409.bin 4d98000bc49ad0fdea9e2edbf4b33776

22-s431.bin: 22-s431.asm
	cl65 --start-addr 0x0100 -t none 22-s431.asm -o 22-s431.bin
	sha1sum -c 22-s431.sha1

22-s432.bin: 22-s432.asm
	cl65 --start-addr 0x7600 -t none 22-s432.asm -o 22-s432.bin
	sha1sum -c 22-s432.sha1
	./encrypt.py 22-s432.bin 4daf001fc23f6bcde8dbbe36ffa5eb2b

22-s494.bin: 22-s494.asm
	cl65 --start-addr 0x0100 -t none 22-s494.asm -o 22-s494.bin
	sha1sum -c 22-s494.sha1

22-s495.bin: 22-s495.asm
	cl65 --start-addr 0x7600 -t none 22-s495.asm -o 22-s495.bin
	sha1sum -c 22-s495.sha1
	./encrypt.py 22-s495.bin 4dee0007244a59b3e9244ec068dbe4c2

22-s509.bin: 22-s509.asm
	cl65 --start-addr 0x0100 -t none 22-s509.asm -o 22-s509.bin
	sha1sum -c 22-s509.sha1

22-s510.bin: 22-s510.asm
	cl65 --start-addr 0x7600 -t none 22-s510.asm -o 22-s510.bin
	sha1sum -c 22-s510.sha1
	./encrypt.py 22-s510.bin 4dfd0004d5da77b37f30b253f51eed35

22-s518.bin: 22-s518.asm
	cl65 --start-addr 0x0100 -t none 22-s518.asm -o 22-s518.bin
	sha1sum -c 22-s518.sha1

22-s519.bin: 22-s519.asm
	cl65 --start-addr 0x7600 -t none 22-s519.asm -o 22-s519.bin
	sha1sum -c 22-s519.sha1
	./encrypt.py 22-s519.bin 4e0680081fb8e48ed09e5149acbe74e2

22-s536.bin: 22-s536.asm
	cl65 --start-addr 0x0100 -t none 22-s536.asm -o 22-s536.bin
	sha1sum -c 22-s536.sha1

22-s537.bin: 22-s537.asm
	cl65 --start-addr 0x96F0 -t none 22-s537.asm -o 22-s537.bin
	sha1sum -c 22-s537.sha1
	./encrypt.py 22-s537.bin 4e1800056a9e8dd3251cec89d66e91d4

22-s547.bin: 22-s547.asm
	cl65 --start-addr 0x1000 -t none 22-s547.asm -o 22-s547.bin
	sha1sum -c 22-s547.sha1

31-s001.bin: 31-s001.asm
	cl65 --start-addr 0x0100 -t none 31-s001.asm -o 31-s001.bin
	sha1sum -c 31-s001.sha1

31-s002.bin: 31-s002.asm
	cl65 --start-addr 0x7600 -t none 31-s002.asm -o 31-s002.bin
	sha1sum -c 31-s002.sha1
	./encrypt.py 31-s002.bin 5001003897e7837b8138bbe947bdc804

31-s114.bin: 31-s114.asm
	cl65 --start-addr 0x0100 -t none 31-s114.asm -o 31-s114.bin
	sha1sum -c 31-s114.sha1

31-s115.bin: 31-s115.asm
	cl65 --start-addr 0x7600 -t none 31-s115.asm -o 31-s115.bin
	sha1sum -c 31-s115.sha1
	./encrypt.py 31-s115.bin 5072002ab373dd0bb46538f8f006a515

31-s199.bin: 31-s199.asm
	cl65 --start-addr 0x0100 -t none 31-s199.asm -o 31-s199.bin
	sha1sum -c 31-s199.sha1

31-s200.bin: 31-s200.asm
	cl65 --start-addr 0x7600 -t none 31-s200.asm -o 31-s200.bin
	sha1sum -c 31-s200.sha1
	./encrypt.py 31-s200.bin 50c70012858d6deaeda0885b036337d8

31-s236.bin: 31-s236.asm 31-s236.cfg
	ca65 -o 31-s236.o 31-s236.asm
	ld65 -o 31-s236.bin -C 31-s236.cfg 31-s236.o
	sha1sum -c 31-s236.sha1
	./encrypt.py 31-s236.bin 00000000000000000000000000000000

31-s588.bin: 31-s588.asm
	cl65 --start-addr 0x1400 -t none 31-s588.asm -o 31-s588.bin
	sha1sum -c 31-s588.sha1

31-s589.bin: 31-s589.asm
	cl65 --start-addr 0x0100 -t none 31-s589.asm -o 31-s589.bin
	sha1sum -c 31-s589.sha1

31-s590.bin: 31-s590.asm
	cl65 --start-addr 0x7600 -t none 31-s590.asm -o 31-s590.bin
	sha1sum -c 31-s590.sha1
	./encrypt.py 31-s590.bin 524d00074f752ca80d01c68231b9a298

31-s604.bin: 31-s604.asm
	cl65 --start-addr 0x0100 -t none 31-s604.asm -o 31-s604.bin
	sha1sum -c 31-s604.sha1

31-s605.bin: 31-s605.asm
#	cl65 -v --start-addr 0x7600 -t none -D D3S1 31-s605.asm -o 31-s605.bin
	ca65 -D D3S1 -t none 31-s605.asm -o 31-s605.o
	ld65 -S 0x7600 -t none -o 31-s605.bin 31-s605.o 
	sha1sum -c 31-s605.sha1
	./encrypt.py 31-s605.bin 525cf020b96d3e0fea81bd265e2a247b

31-s672.bin.crypt: 31-s672.bin
	./encrypt.py 31-s672.bin 529f0005669d88b13ed148e210e57f83

32-s002.bin.crypt: 32-s002.bin
	./encrypt.py 32-s002.bin 54010010a05fd0547bd9ae31b386849c

32-s035.bin.crypt: 32-s035.bin
	./encrypt.py 32-s035.bin 5422001cc443275ea2a1a8a800a5da1e

32-s092.bin.crypt: 32-s092.bin
	./encrypt.py 32-s092.bin 545b00112026f08728733f4de9dceb2c

32-s127.bin.crypt: 32-s127.bin
	./encrypt.py 32-s127.bin 547e001cd04061c7b2e9e2a38787b592

32-s184.bin.crypt: 32-s184.bin
	./encrypt.py 32-s184.bin 54b70027140ebef8a25661c5160a2805

32-s263.bin.crypt: 32-s263.bin
	./encrypt.py 32-s263.bin 550600204b948601bd9f8bbeccff9b70

32-s328.bin.crypt: 32-s328.bin
	./encrypt.py 32-s328.bin 5547001b9df7abe47b3c558d4a969e51

32-s383.bin.crypt: 32-s383.bin
	./encrypt.py 32-s383.bin 557e0018f5430fe6e47fe06607cbbcb2

32-s432.bin.crypt: 32-s432.bin
	./encrypt.py 32-s432.bin 55af001f7b462cdfe12dfa0facb0bd3e

32-s495.bin.crypt: 32-s495.bin
	./encrypt.py 32-s495.bin 55ee800795b90cbc9502b50cdb7e93d2

32-s511.bin.crypt: 32-s511.bin
	./encrypt.py 32-s511.bin 55fe800714cfcd4f32c02942e0be7cc1

32-s527.bin.crypt: 32-s527.bin
	./encrypt.py 32-s527.bin 560e000df6e170d349d75895b4c8857a

32-s554.bin.crypt: 32-s554.bin
	./encrypt.py 32-s554.bin 56290006753cd7db9ee05661f2768f85

32-s567.bin.crypt: 32-s567.bin
	./encrypt.py 32-s567.bin 56360004a2ce1f783637657983d63b83

32-s576.bin.crypt: 32-s576.bin
	./encrypt.py 32-s576.bin 563f0017b55e3818cc9f5161e346851b

32-s623.bin.crypt: 32-s623.bin
	./encrypt.py 32-s623.bin 566e00102139428c5333f472a9792e0d

32-s656.bin.crypt: 32-s656.bin
	./encrypt.py 32-s656.bin 568f000ef9b4d14b437b2e8928108dd7

32-s685.bin.crypt: 32-s685.bin
	./encrypt.py 32-s685.bin 56ac00056a9ea390ed15fd6cb04c2891

ar11.img: $(OLD_BINARIES) $(OBJECTS) \
	11-s017.bin 11-s205.bin 11-s225.bin \
	11-s258.bin 11-s259.bin.crypt 11-s311.bin 11-s312.bin.crypt \
	11-s376.bin 11-s377.bin.crypt 11-s451.bin 11-s452.bin.crypt \
	11-s466.bin 11-s467.bin.crypt 11-s480.bin 11-s481.bin.crypt \
	11-s517.bin 11-s518.bin.crypt 11-s676.bin 11-s677.bin.crypt \
	11-s680.bin.crypt 11-s682.bin
	cat 11-s001.bin > ar11.img
	cat 11-s002.bin >> ar11.img
	cat 11-s006.bin >> ar11.img
	cat 11-s011.bin >> ar11.img
	cat 11-s016.bin >> ar11.img
	cat 11-s017.bin >> ar11.img
	cat 11-s205.bin >> ar11.img
	cat 11-s225.bin >> ar11.img
	cat 11-s258.bin 11-s259.bin.crypt >> ar11.img
	cat 11-s311.bin 11-s312.bin.crypt >> ar11.img
	cat 11-s376.bin 11-s377.bin.crypt >> ar11.img
	cat 11-s451.bin 11-s452.bin.crypt >> ar11.img
	cat 11-s466.bin 11-s467.bin.crypt >> ar11.img
	cat 11-s480.bin 11-s481.bin.crypt >> ar11.img
	cat 11-s517.bin 11-s518.bin.crypt >> ar11.img
	cat 11-s676.bin 11-s677.bin.crypt >> ar11.img
	cat 11-s679.bin 11-s680.bin.crypt >> ar11.img
	cat 11-s682.bin >> ar11.img
	sha1sum -c ar11.sha1

ar21.img: 21-s001.bin 21-s010.bin 21-s011.bin.crypt \
	21-s051.bin 21-s052.bin.crypt 21-s092.bin 21-s093.bin.crypt \
	21-s133.bin 21-s134.bin.crypt 21-s174.bin 21-s175.bin.crypt \
	21-s215.bin 21-s216.bin.crypt 21-s256.bin 21-s257.bin.crypt \
	21-s297.bin 21-s298.bin.crypt 21-s341.bin 21-s342.bin.crypt \
	21-s385.bin 21-s386.bin.crypt 21-s429.bin 21-s430.bin.crypt \
	21-s473.bin 21-s474.bin.crypt 21-s517.bin 21-s518.bin.crypt \
	21-s561.bin 21-s562.bin.crypt 21-s572.bin 21-s573.bin.crypt \
	21-s639.bin 21-s640.bin.crypt 21-s652.bin 21-s653.bin.crypt \
	21-s697.bin
	cat 21-s001.bin > ar21.img
	cat 21-s010.bin 21-s011.bin.crypt >> ar21.img
	cat 21-s051.bin 21-s052.bin.crypt >> ar21.img
	cat 21-s092.bin 21-s093.bin.crypt >> ar21.img
	cat 21-s133.bin 21-s134.bin.crypt >> ar21.img
	cat 21-s174.bin 21-s175.bin.crypt >> ar21.img
	cat 21-s215.bin 21-s216.bin.crypt >> ar21.img
	cat 21-s256.bin 21-s257.bin.crypt >> ar21.img
	cat 21-s297.bin 21-s298.bin.crypt >> ar21.img
	cat 21-s341.bin 21-s342.bin.crypt >> ar21.img
	cat 21-s385.bin 21-s386.bin.crypt >> ar21.img
	cat 21-s429.bin 21-s430.bin.crypt >> ar21.img
	cat 21-s473.bin 21-s474.bin.crypt >> ar21.img
	cat 21-s517.bin 21-s518.bin.crypt >> ar21.img
	cat 21-s561.bin 21-s562.bin.crypt >> ar21.img
	cat 21-s572.bin 21-s573.bin.crypt >> ar21.img
	cat 21-s639.bin 21-s640.bin.crypt >> ar21.img
	cat 21-s652.bin 21-s653.bin.crypt >> ar21.img
	cat 21-s697.bin >> ar21.img
	sha1sum -c ar21.sha1

ar22.img: 22-s001.bin 22-s002.bin.crypt 22-s036.bin 22-s037.bin.crypt \
	22-s093.bin 22-s094.bin.crypt 22-s134.bin 22-s135.bin.crypt \
	22-s167.bin 22-s168.bin.crypt 22-s198.bin 22-s199.bin.crypt \
	22-s263.bin 22-s264.bin.crypt 22-s322.bin 22-s323.bin.crypt \
	22-s365.bin 22-s366.bin.crypt 22-s408.bin 22-s409.bin.crypt \
	22-s431.bin 22-s432.bin.crypt 22-s494.bin 22-s495.bin.crypt \
	22-s509.bin 22-s510.bin.crypt 22-s518.bin 22-s519.bin.crypt \
	22-s536.bin 22-s537.bin.crypt 22-s547.bin
	cat 22-s001.bin 22-s002.bin.crypt > ar22.img
	cat 22-s036.bin 22-s037.bin.crypt >> ar22.img
	cat 22-s093.bin 22-s094.bin.crypt >> ar22.img
	cat 22-s134.bin 22-s135.bin.crypt >> ar22.img
	cat 22-s167.bin 22-s168.bin.crypt >> ar22.img
	cat 22-s198.bin 22-s199.bin.crypt >> ar22.img
	cat 22-s263.bin 22-s264.bin.crypt >> ar22.img
	cat 22-s322.bin 22-s323.bin.crypt >> ar22.img
	cat 22-s365.bin 22-s366.bin.crypt >> ar22.img
	cat 22-s408.bin 22-s409.bin.crypt >> ar22.img
	cat 22-s431.bin 22-s432.bin.crypt >> ar22.img
	cat 22-s494.bin 22-s495.bin.crypt >> ar22.img
	cat 22-s509.bin 22-s510.bin.crypt >> ar22.img
	cat 22-s518.bin	22-s519.bin.crypt >> ar22.img
	cat 22-s536.bin 22-s537.bin.crypt >> ar22.img
	cat 22-s547.bin >> ar22.img
	sha1sum -c ar22.sha1

ar31.img: 31-s001.bin 31-s002.bin.crypt 31-s114.bin 31-s115.bin.crypt \
	31-s199.bin 31-s200.bin.crypt 31-s236.bin.crypt 31-s588.bin \
	31-s589.bin 31-s590.bin.crypt 31-s604.bin 31-s605.bin.crypt \
	31-s671.bin 31-s672.bin.crypt 31-s682.bin
	cat 31-s001.bin 31-s002.bin.crypt > ar31.img
	cat 31-s114.bin 31-s115.bin.crypt >> ar31.img
	cat 31-s199.bin 31-s200.bin.crypt >> ar31.img 
	cat 31-s236.bin.crypt >> ar31.img
	cat 31-s588.bin >> ar31.img
	cat 31-s589.bin 31-s590.bin.crypt >> ar31.img
	cat 31-s604.bin 31-s605.bin.crypt >> ar31.img
	cat 31-s671.bin 31-s672.bin.crypt >> ar31.img
	cat 31-s682.bin >> ar31.img
	sha1sum -c ar31.sha1

ar32.img: 32-s001.bin 32-s002.bin.crypt 32-s034.bin 32-s035.bin.crypt \
	32-s091.bin 32-s092.bin.crypt 32-s126.bin 32-s127.bin.crypt \
	32-s183.bin 32-s184.bin.crypt 32-s262.bin 32-s263.bin.crypt \
	32-s327.bin 32-s328.bin.crypt 32-s382.bin 32-s383.bin.crypt \
	32-s431.bin 32-s432.bin.crypt 32-s494.bin 32-s495.bin.crypt \
	32-s510.bin 32-s511.bin.crypt 32-s526.bin 32-s527.bin.crypt \
	32-s553.bin 32-s554.bin.crypt 32-s566.bin 32-s567.bin.crypt \
	32-s575.bin 32-s576.bin.crypt 32-s622.bin 32-s623.bin.crypt \
	32-s655.bin 32-s656.bin.crypt 32-s684.bin 32-s685.bin.crypt \
	32-s695.bin
	cat 32-s001.bin 32-s002.bin.crypt > ar32.img
	cat 32-s034.bin 32-s035.bin.crypt >> ar32.img
	cat 32-s091.bin 32-s092.bin.crypt >> ar32.img
	cat 32-s126.bin 32-s127.bin.crypt >> ar32.img
	cat 32-s183.bin 32-s184.bin.crypt >> ar32.img
	cat 32-s262.bin 32-s263.bin.crypt >> ar32.img
	cat 32-s327.bin 32-s328.bin.crypt >> ar32.img
	cat 32-s382.bin 32-s383.bin.crypt >> ar32.img
	cat 32-s431.bin 32-s432.bin.crypt >> ar32.img
	cat 32-s494.bin 32-s495.bin.crypt >> ar32.img
	cat 32-s510.bin 32-s511.bin.crypt >> ar32.img
	cat 32-s526.bin 32-s527.bin.crypt >> ar32.img
	cat 32-s553.bin 32-s554.bin.crypt >> ar32.img
	cat 32-s566.bin 32-s567.bin.crypt >> ar32.img
	cat 32-s575.bin 32-s576.bin.crypt >> ar32.img
	cat 32-s622.bin 32-s623.bin.crypt >> ar32.img
	cat 32-s655.bin 32-s656.bin.crypt >> ar32.img
	cat 32-s684.bin 32-s685.bin.crypt >> ar32.img
	cat 32-s695.bin >> ar32.img
	sha1sum -c ar32.sha1

clean:
	$(RM) -f $(OBJECTS) *.*~ *.bin *.bin.crypt *.o ar11.img ar21.img ar22.img ar31.img ar32.img
