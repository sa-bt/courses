<?php
$string = "html, css,     javascript,           php";
$regex = "/,\s+/"; // /s+ => refer one space or more than one
print_r(preg_split($regex, $string));

echo "<br>";

$string = "html|css|javascript|php";
$regex = "/\|/";
print_r(preg_split($regex, $string));
