<?php
$languages = ['C', 'php', 'c++', 'kotlin', 'C#', 'java'];

//search in array fields where start with c and case-insensitive
$regex = "/^c/i";

//search pattern in array
print_r(preg_grep($regex, $languages));
echo "<br>";


