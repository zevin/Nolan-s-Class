<?php

$sum = 0;
$counter = 0;
if ( $_REQUEST['max'] == NULL ) {
	$max = 1000;
	} else {
	$max = $_REQUEST['max'];
}

if ( $_REQUEST['mod1'] == NULL ) {
	$mod1 = 3;
	} else {
	$mod1 = $_REQUEST['mod1'];
}

if ( $_REQUEST['mod2'] == NULL ) {
	$mod2 = 5;
	} else {
	$mod2 = $_REQUEST['mod2'];
}

while ($counter < $max) {
	if ($counter%$mod1 == 0 || $counter%$mod2 == 0) {
	$sum = $sum + $counter;
	}
	$counter = $counter + 1;
}

return "The sum of all the numbers between 0 and 1000 that are divisible by 3 or 5 is $sum";

	
