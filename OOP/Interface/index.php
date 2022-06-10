<?php
ini_set('display_errors', '1');
require_once 'vendor/autoload.php';

$user=new \InterfaceCourse\User();
echo $user->jsonSerialize();
echo "\n";
echo $user->count();
echo "\n";
