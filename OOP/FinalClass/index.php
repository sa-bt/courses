<?php
ini_set('display_errors', '1');
require_once 'vendor/autoload.php';

$user = new \FinalClass\User();
echo $user->doSomething();
echo "\n";

$author=new \FinalClass\Author();
echo $author->doSomething();
echo "\n";
echo 66;
