#!/usr/bin/env python
"""

encrypt.py - segment encrypter for ardungeon

Copyright (c) 2008 Jason Duerstock

This file is part of the ardungeon project which is an attempt to
reverse engineer "Alternate Reality: The Dungeon" for the Atari 8-bit
computer. 

ardungeon is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License version 2
as published by the Free Software Foundation.

ardungeon is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with ardungeon; if not, write to the 
Free Software Foundation, Inc.
51 Franklin Street, Fifth Floor
Boston, MA  02110-1301  USA
"""
import sys

a = sys.argv[1].partition("-")
ds = a[0]
b = a[2].partition(".")
b = b[0].partition("s")
sec = b[2]
sec2 = str((int(sec)-1)).zfill(3)

if len(sys.argv) == 3:
    ka = bytearray.fromhex(sys.argv[2])
else:
    kf = open("{}-s{}.bin".format(ds,sec2), "rb")
    ka = bytearray(kf.read())
    kf.close()

sf = open("{}-s{}.bin".format(ds,sec), "rb")
sa = bytearray(sf.read())
sf.close()

ea = bytearray()
i = 0
for byte in sa:
	j = byte ^ ka[i & 15]
	j = (j << 1 | j >> 7) & 255
	ea.append(j)
	i = i + 1

ef = open("{}-s{}.bin.crypt".format(ds,sec), "wb")
ef.write(ea)
ef.close()
