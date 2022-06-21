<?php
require_once 'vendor/autoload.php';

use ReturnTypeDeclaration\Email;
use ReturnTypeDeclaration\SMS;
use ReturnTypeDeclaration\User;

$user = new User();
echo $user->returnUserAge(32);
echo "\n";
echo $user->returnUserHeight(30.1);
echo "\n";
echo $user->returnUserName('110');
echo "\n";
var_dump($user->returnUserFullName(['firstname' => 'Ahmad', 'lastname' => 'Bakhshian']));
echo "\n";
echo $user->isDeveloper(true);
echo "\n";
var_dump($user->sendMessage(new Email));
echo "\n";
var_dump($user->sendMessage(new SMS()));
echo "\n";
echo $user->checkGender('male');



