#!/bin/sh
#
# these are some script templates I've used in the process of disassembly:
#
#hexdump -v -C ~/ard/31-s236.bin |awk '{print "\t.BYTE\t $" $2 ",$" $3 ",$" $4 ",$" $5 ",$" $6 ",$" $7 ",$" $8 ",$" $9 ",$" $10 ",$" $11 ",$" $12 ",$" $13 ",$" $14 ",$" $15 ",$" $16 ",$" $17 " ; " substr($0,61)}'
#
#hexdump -C 31-s001.bin |head -1|cut -b 11-58|sed 's/ //g'
