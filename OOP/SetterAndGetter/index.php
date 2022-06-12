<?php
ini_set('display_errors', '1');
require_once 'vendor/autoload.php';

$user = new \SetterAndGetter\User();
$user->setName('Ahmad');
echo $user->getName();
echo "\n";
$user->setProperty('age', 33);
echo $user->age;
