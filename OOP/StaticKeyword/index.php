<?php
require_once 'vendor/autoload.php';

//use StaticKeyword\User;
//use StaticKeyword\Author;
//
//echo User::$userNumber;
//echo "\n";
//$user = new User();
//$user->runAddToUsersNoMethod();
//$user->runAddToUsersNoMethod();
//echo User::$userNumber;
//echo "\n";
//
//echo $user->runDoSomething();
//echo "\n";
//
//
//$author = new Author();
//echo $author->getStaticUserNoProperty();
//echo "\n";
//$author->runAddToUsersNoMethod();
//echo $author->getStaticUserNoProperty();
//echo "\n";
//\StaticKeyword\Utility::redirect("https://sa-bt.ir");

use StaticKeyword\Session;

Session::init();

Session::set("username","Sabt");
echo Session::get('username');
echo "\n";
Session::destroyByName('username');
echo Session::get('username');