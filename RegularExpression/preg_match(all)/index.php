<?php
$string = 'Ahmad AHMAD ahmad';
$regex = "/ahmad/i";//Case-insensitive

//return first find pattern
preg_match($regex, $string,$match);
print_r($match);
echo "<br>";

//return all pattern
preg_match_all($regex, $string,$match);
print_r($match);
