#!/usr/bin/php -q
<?php

//
// encrypt.php - segment encrypter for ardungeon
//
// Copyright (c) 2008 Jason Duerstock
//
// This file is part of the ardungeon project which is an attempt to
// reverse engineer "Alternate Reality: The Dungeon" for the Atari 8-bit
// computer. 
//
// ardungeon is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License version 2
// as published by the Free Software Foundation.
//
// ardungeon is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with ardungeon; if not, write to the 
// Free Software Foundation, Inc.
// 51 Franklin Street, Fifth Floor
// Boston, MA  02110-1301  USA
//
	$f = $argv[1];
	if (!file_exists($f)) {
		echo "file not found: ".$f."\n";
		exit(1);
	}
	$keystring = $argv[2];
	$keyarray = array();

	while (strlen($keystring) > 0) {
		$keyarray[] = hexdec(substr($keystring,0,2));
		$keystring = substr($keystring, 2);
	}

	$buffer = file_get_contents($f);

	for($i=0;$i<strlen($buffer);$i++) {
		$b = ord($buffer[$i]);
		$b = $b ^ $keyarray[$i & 15];
		$bit = ($b & 0x80) >> 7;
		$b = ($b << 1) | $bit;
		$buffer[$i] = chr($b);
	}

	file_put_contents($f.".crypt", $buffer);
?>
