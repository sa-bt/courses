<?php

$string = '16-06-2020';
$regex = "/([0-9]{1,2})-([0-9]{1,2})-([0-9]{4})/";
$replace = "$2-$1-$3";
echo preg_replace($regex, $replace, $string);

echo "<br>";

// Non-capturing Group
$string = '16-06-2020';
$regex = "/([0-9]{1,2})-([0-9]{1,2})-(?:[0-9]{4})/";
$replace = "$2-$1-$3";
echo preg_replace($regex, $replace, $string);
