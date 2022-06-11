<?php
ini_set('display_errors', '1');
require_once 'vendor/autoload.php';

$user=new AbstractCourse\User();
echo $user->anAbstractMethod();
echo "\n";
echo $user->getPropertyValue();
echo "\n";
echo $user->doSomething();
echo "\n";
