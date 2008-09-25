#!/usr/bin/php -q
<?php
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
